; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vkms/vkms_composer.c_pt.bc'
source_filename = "../drivers/gpu/drm/vkms/vkms_composer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vkms_output = type { %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector, %struct.drm_writeback_connector, %struct.hrtimer, i64, ptr, ptr, %struct.spinlock, i8, ptr, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vkms_plane_state = type { %struct.drm_shadow_plane_state, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.vkms_writeback_job = type { [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vkms_composer = type { %struct.drm_framebuffer, %struct.drm_rect, %struct.drm_rect, [4 x %struct.dma_buf_map], i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@pipe_crc_sources = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown source %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot allocate memory for output frame.\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/vkms/vkms_composer.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"pipe_crc_sources\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 288, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 319, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 185, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 190, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [40 x i8] c"../drivers/gpu/drm/vkms/vkms_composer.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 288, i32 49 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @pipe_crc_sources, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_crc_sources to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vkms_composer_worker(ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %pixel.i = alloca i32, align 4
  %crc32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc32) #9
  %2 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %crc32, align 4
  %composer_lock = getelementptr inbounds %struct.vkms_output, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %composer_lock) #9
  %frame_start5 = getelementptr i8, ptr %work, i32 60
  %3 = ptrtoint ptr %frame_start5 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %frame_start5, align 8
  %frame_end6 = getelementptr i8, ptr %work, i32 68
  %5 = ptrtoint ptr %frame_end6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %frame_end6, align 8
  %crc_pending7 = getelementptr i8, ptr %work, i32 56
  %7 = ptrtoint ptr %crc_pending7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %crc_pending7, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %wb_pending8 = getelementptr i8, ptr %work, i32 57
  %9 = ptrtoint ptr %wb_pending8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wb_pending8, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %crc_pending7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %crc_pending7, align 4
  %12 = call ptr @memset(ptr %frame_start5, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %composer_lock) #9
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_active_planes = getelementptr i8, ptr %work, i32 44
  %13 = ptrtoint ptr %num_active_planes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_active_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end
  %active_planes = getelementptr i8, ptr %work, i32 48
  %15 = ptrtoint ptr %active_planes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_planes, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %type = getelementptr inbounds %struct.drm_plane, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp19 = icmp eq i32 %22, 1
  br i1 %cmp19, label %if.end22, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then16
  %composer = getelementptr inbounds %struct.vkms_plane_state, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %composer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %composer, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  br i1 %tobool9.not, label %if.end29.thread, label %if.end29

if.end29.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call.i92 = tail call ptr @drm_gem_fb_get_obj(ptr noundef nonnull %24, i32 noundef 0) #9
  br label %if.end8.i.i.i

if.end29:                                         ; preds = %if.end25
  %active_writeback = getelementptr i8, ptr %work, i32 52
  %25 = ptrtoint ptr %active_writeback to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %active_writeback, align 8
  %data = getelementptr inbounds %struct.vkms_writeback_job, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef nonnull %24, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end29.if.end8.i.i.i_crit_edge, label %if.end29.if.end5.i_crit_edge

if.end29.if.end5.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end29.if.end8.i.i.i_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end29.if.end8.i.i.i_crit_edge, %if.end29.thread
  %call.i95 = phi ptr [ %call.i92, %if.end29.thread ], [ %call.i, %if.end29.if.end8.i.i.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i95, i32 0, i32 5
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #12
  %tobool3.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i, label %compose_active_planes.exit.thread102, label %if.end8.i.i.i.if.end5.i_crit_edge

if.end8.i.i.i.if.end5.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

compose_active_planes.exit.thread102:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end8.i.i.i.if.end5.i_crit_edge, %if.end29.if.end5.i_crit_edge
  %call.i94 = phi ptr [ %call.i95, %if.end8.i.i.i.if.end5.i_crit_edge ], [ %call.i, %if.end29.if.end5.i_crit_edge ]
  %vaddr_out.1 = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.if.end5.i_crit_edge ], [ %28, %if.end29.if.end5.i_crit_edge ]
  %map.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.in.i.i = load ptr, ptr %map.i, align 4
  %retval.0.i.i = icmp eq ptr %retval.0.in.i.i, null
  br i1 %retval.0.i.i, label %land.lhs.true, label %if.end30.i, !prof !20

if.end30.i:                                       ; preds = %if.end5.i
  %size33.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i94, i32 0, i32 5
  %32 = ptrtoint ptr %size33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size33.i, align 8
  %34 = call ptr @memcpy(ptr %vaddr_out.1, ptr %retval.0.in.i.i, i32 %33)
  %35 = ptrtoint ptr %num_active_planes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_active_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp52.i = icmp sgt i32 %36, 1
  br i1 %cmp52.i, label %for.body.lr.ph.i, label %if.end30.i.if.end36_crit_edge

if.end30.i.if.end36_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.body.lr.ph.i:                                 ; preds = %if.end30.i
  %offset.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 4
  %pitch.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 5
  %cpp.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %compose_plane.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %compose_plane.exit.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %active_planes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %active_planes, align 4
  %arrayidx34.i = getelementptr ptr, ptr %38, i32 %i.053.i
  %39 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx34.i, align 4
  %composer.i = getelementptr inbounds %struct.vkms_plane_state, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %composer.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %composer.i, align 4
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %retval.0.in.i.i.i = load ptr, ptr %map.i, align 4
  %retval.0.i.i.i = icmp eq ptr %retval.0.in.i.i.i, null
  br i1 %retval.0.i.i.i, label %do.end.i.i, label %if.end22.i.i, !prof !20

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %compose_plane.exit.i

if.end22.i.i:                                     ; preds = %for.body.i
  %map23.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 3
  %44 = ptrtoint ptr %map23.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map23.i.i, align 8
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %42, i32 0, i32 4
  %46 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %format.i.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713089, i32 %49)
  %cmp.i.i = icmp eq i32 %49, 875713089
  %alpha_blend.x_blend.i.i = select i1 %cmp.i.i, ptr @alpha_blend, ptr @x_blend
  %src.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src.i.i.i, align 8
  %shr.i.i.i = ashr i32 %51, 16
  %y1.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %y1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %y1.i.i.i, align 4
  %shr2.i.i.i = ashr i32 %53, 16
  %dst.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 2
  %54 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst.i.i.i, align 8
  %y15.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %y15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %y15.i.i.i, align 4
  %y2.i.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %y2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %y2.i.i.i.i, align 4
  %x2.i.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %x2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %x2.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %shr2.i.i.i, %57
  %add.i.i.i = add i32 %sub.i.i.i.i, %59
  %sub.i47.i.i.i = sub i32 %shr.i.i.i, %55
  %add9.i.i.i = add i32 %61, %sub.i47.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i.i.i, i32 %add.i.i.i)
  %cmp52.i.i.i = icmp slt i32 %shr2.i.i.i, %add.i.i.i
  br i1 %cmp52.i.i.i, label %for.cond10.preheader.lr.ph.i.i.i, label %if.end22.i.i.compose_plane.exit.i_crit_edge

if.end22.i.i.compose_plane.exit.i_crit_edge:      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compose_plane.exit.i

for.cond10.preheader.lr.ph.i.i.i:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %add9.i.i.i)
  %cmp1149.i.i.i = icmp slt i32 %shr.i.i.i, %add9.i.i.i
  %offset16.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 4
  %pitch17.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 5
  %cpp20.i.i.i = getelementptr inbounds %struct.vkms_composer, ptr %42, i32 0, i32 6
  br label %for.cond10.preheader.i.i.i

for.cond10.preheader.i.i.i:                       ; preds = %for.end.i.i.i.for.cond10.preheader.i.i.i_crit_edge, %for.cond10.preheader.lr.ph.i.i.i
  %i.054.i.i.i = phi i32 [ %shr2.i.i.i, %for.cond10.preheader.lr.ph.i.i.i ], [ %inc27.i.i.i, %for.end.i.i.i.for.cond10.preheader.i.i.i_crit_edge ]
  %i_dst.053.i.i.i = phi i32 [ %57, %for.cond10.preheader.lr.ph.i.i.i ], [ %inc25.i.i.i, %for.end.i.i.i.for.cond10.preheader.i.i.i_crit_edge ]
  br i1 %cmp1149.i.i.i, label %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge, label %for.cond10.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond10.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i.i
  br label %for.body12.i.i.i

for.body12.i.i.i:                                 ; preds = %for.body12.i.i.i.for.body12.i.i.i_crit_edge, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge
  %j.051.i.i.i = phi i32 [ %inc24.i.i.i, %for.body12.i.i.i.for.body12.i.i.i_crit_edge ], [ %shr.i.i.i, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %j_dst.050.i.i.i = phi i32 [ %inc.i.i.i, %for.body12.i.i.i.for.body12.i.i.i_crit_edge ], [ %55, %for.cond10.preheader.i.i.i.for.body12.i.i.i_crit_edge ]
  %62 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset.i.i.i, align 8
  %64 = ptrtoint ptr %pitch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pitch.i.i.i, align 4
  %mul.i.i.i = mul i32 %65, %i_dst.053.i.i.i
  %add13.i.i.i = add i32 %mul.i.i.i, %63
  %inc.i.i.i = add i32 %j_dst.050.i.i.i, 1
  %66 = ptrtoint ptr %cpp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpp.i.i.i, align 8
  %mul14.i.i.i = mul i32 %67, %j_dst.050.i.i.i
  %add15.i.i.i = add i32 %add13.i.i.i, %mul14.i.i.i
  %68 = ptrtoint ptr %offset16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset16.i.i.i, align 8
  %70 = ptrtoint ptr %pitch17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pitch17.i.i.i, align 4
  %mul18.i.i.i = mul i32 %71, %i.054.i.i.i
  %add19.i.i.i = add i32 %mul18.i.i.i, %69
  %72 = ptrtoint ptr %cpp20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpp20.i.i.i, align 8
  %mul21.i.i.i = mul i32 %73, %j.051.i.i.i
  %add22.i.i.i = add i32 %add19.i.i.i, %mul21.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %add22.i.i.i
  %add.ptr23.i.i.i = getelementptr i8, ptr %vaddr_out.1, i32 %add15.i.i.i
  tail call void %alpha_blend.x_blend.i.i(ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr23.i.i.i) #9, !callees !21
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr23.i.i.i, i32 3
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %arrayidx.i.i.i, align 1
  %inc24.i.i.i = add i32 %j.051.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc24.i.i.i, %add9.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body12.i.i.i.for.end.i.i.i_crit_edge, label %for.body12.i.i.i.for.body12.i.i.i_crit_edge

for.body12.i.i.i.for.body12.i.i.i_crit_edge:      ; preds = %for.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i.i.i

for.body12.i.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body12.i.i.i.for.end.i.i.i_crit_edge, %for.cond10.preheader.i.i.i.for.end.i.i.i_crit_edge
  %inc25.i.i.i = add i32 %i_dst.053.i.i.i, 1
  %inc27.i.i.i = add nsw i32 %i.054.i.i.i, 1
  %exitcond56.not.i.i.i = icmp eq i32 %inc27.i.i.i, %add.i.i.i
  br i1 %exitcond56.not.i.i.i, label %for.end.i.i.i.compose_plane.exit.i_crit_edge, label %for.end.i.i.i.for.cond10.preheader.i.i.i_crit_edge

for.end.i.i.i.for.cond10.preheader.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader.i.i.i

for.end.i.i.i.compose_plane.exit.i_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compose_plane.exit.i

compose_plane.exit.i:                             ; preds = %for.end.i.i.i.compose_plane.exit.i_crit_edge, %if.end22.i.i.compose_plane.exit.i_crit_edge, %do.end.i.i
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %75 = ptrtoint ptr %num_active_planes to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_active_planes, align 8
  %cmp.i = icmp slt i32 %inc.i, %76
  br i1 %cmp.i, label %compose_plane.exit.i.for.body.i_crit_edge, label %compose_plane.exit.i.if.end36_crit_edge

compose_plane.exit.i.if.end36_crit_edge:          ; preds = %compose_plane.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

compose_plane.exit.i.for.body.i_crit_edge:        ; preds = %compose_plane.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

land.lhs.true:                                    ; preds = %if.end5.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #9
  br i1 %tobool9.not, label %if.then34, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %vaddr_out.1) #9
  br label %cleanup

if.end36:                                         ; preds = %compose_plane.exit.i.if.end36_crit_edge, %if.end30.i.if.end36_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixel.i) #9
  %src.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 1
  %77 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src.i, align 8
  %shr.i = ashr i32 %78, 16
  %y1.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %y1.i, align 4
  %shr2.i = ashr i32 %80, 16
  %y2.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %y2.i.i, align 4
  %sub.i.i = sub i32 %82, %80
  %shr4.i = ashr i32 %sub.i.i, 16
  %add.i = add nsw i32 %shr4.i, %shr2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i.i)
  %cmp32.i = icmp sgt i32 %sub.i.i, 65535
  br i1 %cmp32.i, label %for.cond8.preheader.lr.ph.i, label %if.end36.compute_crc.exit_crit_edge

if.end36.compute_crc.exit_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_crc.exit

for.cond8.preheader.lr.ph.i:                      ; preds = %if.end36
  %x2.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %x2.i.i, align 4
  %sub.i28.i = sub i32 %84, %78
  %shr7.i = ashr i32 %sub.i28.i, 16
  %add9.i = add nsw i32 %shr7.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i28.i)
  %cmp1029.i = icmp sgt i32 %sub.i28.i, 65535
  %offset.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 4
  %pitch.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 5
  %cpp.i.i = getelementptr inbounds %struct.vkms_composer, ptr %24, i32 0, i32 6
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc14.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.lr.ph.i
  %crc.035.i = phi i32 [ 0, %for.cond8.preheader.lr.ph.i ], [ %crc.1.lcssa.i, %for.inc14.i.for.cond8.preheader.i_crit_edge ]
  %y.033.i = phi i32 [ %shr2.i, %for.cond8.preheader.lr.ph.i ], [ %inc15.i, %for.inc14.i.for.cond8.preheader.i_crit_edge ]
  br i1 %cmp1029.i, label %for.body11.lr.ph.i, label %for.cond8.preheader.i.for.inc14.i_crit_edge

for.cond8.preheader.i.for.inc14.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.body11.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %85 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset.i.i, align 8
  %87 = ptrtoint ptr %pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pitch.i.i, align 4
  %mul.i.i = mul i32 %88, %y.033.i
  %add.i.i = add i32 %mul.i.i, %86
  %89 = ptrtoint ptr %cpp.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpp.i.i, align 8
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %crc.131.i = phi i32 [ %crc.035.i, %for.body11.lr.ph.i ], [ %call13.i, %for.body11.i.for.body11.i_crit_edge ]
  %x.030.i = phi i32 [ %shr.i, %for.body11.lr.ph.i ], [ %inc.i81, %for.body11.i.for.body11.i_crit_edge ]
  %mul1.i.i = mul i32 %x.030.i, %90
  %add2.i.i = add i32 %add.i.i, %mul1.i.i
  %arrayidx.i.i = getelementptr i8, ptr %vaddr_out.1, i32 %add2.i.i
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  %93 = ptrtoint ptr %pixel.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pixel.i, align 4
  %call13.i = call i32 @crc32_le(i32 noundef %crc.131.i, ptr noundef nonnull %pixel.i, i32 noundef 4) #13
  %inc.i81 = add nsw i32 %x.030.i, 1
  %cmp10.i = icmp slt i32 %inc.i81, %add9.i
  br i1 %cmp10.i, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.for.inc14.i_crit_edge

for.body11.i.for.inc14.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.inc14.i:                                      ; preds = %for.body11.i.for.inc14.i_crit_edge, %for.cond8.preheader.i.for.inc14.i_crit_edge
  %crc.1.lcssa.i = phi i32 [ %crc.035.i, %for.cond8.preheader.i.for.inc14.i_crit_edge ], [ %call13.i, %for.body11.i.for.inc14.i_crit_edge ]
  %inc15.i = add nsw i32 %y.033.i, 1
  %cmp.i82 = icmp slt i32 %inc15.i, %add.i
  br i1 %cmp.i82, label %for.inc14.i.for.cond8.preheader.i_crit_edge, label %for.inc14.i.compute_crc.exit_crit_edge

for.inc14.i.compute_crc.exit_crit_edge:           ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_crc.exit

for.inc14.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader.i

compute_crc.exit:                                 ; preds = %for.inc14.i.compute_crc.exit_crit_edge, %if.end36.compute_crc.exit_crit_edge
  %crc.0.lcssa.i = phi i32 [ 0, %if.end36.compute_crc.exit_crit_edge ], [ %crc.1.lcssa.i, %for.inc14.i.compute_crc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixel.i) #9
  %94 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %crc.0.lcssa.i, ptr %crc32, align 4
  br i1 %tobool9.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %compute_crc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wb_connector = getelementptr inbounds %struct.vkms_output, ptr %1, i32 0, i32 3
  call void @drm_writeback_signal_completion(ptr noundef %wb_connector, i32 noundef 0) #9
  call void @_raw_spin_lock_irq(ptr noundef %composer_lock) #9
  %95 = ptrtoint ptr %wb_pending8 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %wb_pending8, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %composer_lock) #9
  br label %if.end43

if.else:                                          ; preds = %compute_crc.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %vaddr_out.1) #9
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then39
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp44.not106 = icmp ugt i64 %4, %6
  br i1 %cmp44.not106, label %if.end43.cleanup_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  br label %while.body

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end43.while.body_crit_edge
  %frame_start.0107 = phi i64 [ %inc, %while.body.while.body_crit_edge ], [ %4, %if.end43.while.body_crit_edge ]
  %inc = add i64 %frame_start.0107, 1
  %conv = trunc i64 %frame_start.0107 to i32
  %call45 = call i32 @drm_crtc_add_crc_entry(ptr noundef %1, i1 noundef zeroext true, i32 noundef %conv, ptr noundef nonnull %crc32) #9
  %cmp44.not = icmp ugt i64 %inc, %6
  br i1 %cmp44.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then34, %land.lhs.true.cleanup_crit_edge, %compose_active_planes.exit.thread102, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc32) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_signal_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local nonnull ptr @vkms_get_crc_sources(ptr nocapture noundef readnone %crtc, ptr nocapture noundef writeonly %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 4
  ret ptr @pipe_crc_sources
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vkms_verify_crc_source(ptr nocapture noundef readnone %crtc, ptr noundef %src_name, ptr nocapture noundef writeonly %values_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %src_name, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.else.i.if.end_crit_edge, label %if.then

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %src_name) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %values_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vkms_set_composer(ptr noundef %out, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  br i1 %enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %out) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.vkms_output, ptr %out, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %composer_enabled = getelementptr inbounds %struct.vkms_output, ptr %out, i32 0, i32 9
  %0 = ptrtoint ptr %composer_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %composer_enabled, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %composer_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %composer_enabled, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_crtc_vblank_put(ptr noundef %out) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vkms_set_crc_source(ptr noundef %crtc, ptr noundef readonly %src_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %src_name, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %vkms_crc_parse_source.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

vkms_crc_parse_source.exit:                       ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %src_name, ptr noundef nonnull dereferenceable(5) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %vkms_crc_parse_source.exit.if.end.i_crit_edge

vkms_crc_parse_source.exit.if.end.i_crit_edge:    ; preds = %vkms_crc_parse_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %vkms_crc_parse_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i1 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %vkms_crc_parse_source.exit.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %frombool.i7 = phi i8 [ 1, %if.then.i ], [ 0, %vkms_crc_parse_source.exit.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %ret.0.i6 = phi i32 [ 0, %if.then.i ], [ -22, %vkms_crc_parse_source.exit.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #9
  %composer_enabled.i = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 9
  %0 = ptrtoint ptr %composer_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %composer_enabled.i, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %composer_enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool.i7, ptr %composer_enabled.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #9
  br i1 %tobool1.not.i, label %if.end.i.vkms_set_composer.exit_crit_edge, label %if.then8.i

if.end.i.vkms_set_composer.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vkms_set_composer.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #9
  br label %vkms_set_composer.exit

vkms_set_composer.exit:                           ; preds = %if.then8.i, %if.end.i.vkms_set_composer.exit_crit_edge
  ret i32 %ret.0.i6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @alpha_blend(ptr nocapture noundef readonly %argb_src, ptr nocapture noundef %argb_dst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %argb_src, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %argb_src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %argb_src, align 1
  %4 = ptrtoint ptr %argb_dst to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %argb_dst, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 255
  %conv1.i = zext i8 %5 to i32
  %6 = xor i8 %1, -1
  %sub.i = zext i8 %6 to i32
  %mul3.i = mul nuw nsw i32 %conv1.i, %sub.i
  %add.i = add nuw nsw i32 %mul3.i, %mul.i
  %add4.i = add nuw nsw i32 %add.i, 257
  %shr.i = lshr i32 %add4.i, 8
  %add5.i = add nuw nsw i32 %shr.i, %add.i
  %shr6.i = lshr i32 %add5.i, 8
  %conv7.i = trunc i32 %shr6.i to i8
  store i8 %conv7.i, ptr %argb_dst, align 1
  %arrayidx4 = getelementptr i8, ptr %argb_src, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %argb_dst, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv.i22 = zext i8 %8 to i32
  %mul.i23 = mul nuw nsw i32 %conv.i22, 255
  %conv1.i24 = zext i8 %10 to i32
  %mul3.i26 = mul nuw nsw i32 %conv1.i24, %sub.i
  %add.i27 = add nuw nsw i32 %mul3.i26, %mul.i23
  %add4.i28 = add nuw nsw i32 %add.i27, 257
  %shr.i29 = lshr i32 %add4.i28, 8
  %add5.i30 = add nuw nsw i32 %shr.i29, %add.i27
  %shr6.i31 = lshr i32 %add5.i30, 8
  %conv7.i32 = trunc i32 %shr6.i31 to i8
  store i8 %conv7.i32, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr i8, ptr %argb_src, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %argb_dst, i32 2
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %conv.i33 = zext i8 %12 to i32
  %mul.i34 = mul nuw nsw i32 %conv.i33, 255
  %conv1.i35 = zext i8 %14 to i32
  %mul3.i37 = mul nuw nsw i32 %conv1.i35, %sub.i
  %add.i38 = add nuw nsw i32 %mul3.i37, %mul.i34
  %add4.i39 = add nuw nsw i32 %add.i38, 257
  %shr.i40 = lshr i32 %add4.i39, 8
  %add5.i41 = add nuw nsw i32 %shr.i40, %add.i38
  %shr6.i42 = lshr i32 %add5.i41, 8
  %conv7.i43 = trunc i32 %shr6.i42 to i8
  store i8 %conv7.i43, ptr %arrayidx9, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @x_blend(ptr nocapture noundef readonly %xrgb_src, ptr nocapture noundef writeonly %xrgb_dst) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %xrgb_dst, ptr %xrgb_src, i32 3)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vkms/vkms_composer.c", i32 319, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vkms/vkms_composer.c", i32 185, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vkms/vkms_composer.c", i32 190, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vkms/vkms_composer.c", i32 288, i32 49}
!8 = !{ptr @pipe_crc_sources, !9, !"pipe_crc_sources", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vkms/vkms_composer.c", i32 288, i32 27}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{ptr @alpha_blend, ptr @x_blend}
