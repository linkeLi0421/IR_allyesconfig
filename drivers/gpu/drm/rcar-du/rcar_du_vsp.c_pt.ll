; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_vsp.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_vsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_du_lif_config = type { i32, i32, i8, ptr, ptr }
%struct.rcar_du_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.89, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.89 = type { ptr }
%struct.vsp1_du_atomic_pipe_config = type { %struct.vsp1_du_crc_config, %struct.vsp1_du_writeback_config }
%struct.vsp1_du_crc_config = type { i32, i32 }
%struct.vsp1_du_writeback_config = type { i32, i32, [3 x i32] }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rcar_du_vsp_plane = type { %struct.drm_plane, ptr, i32 }
%struct.rcar_du_vsp_plane_state = type { %struct.drm_plane_state, ptr, [3 x %struct.sg_table] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.vsp1_du_atomic_config = type { i32, i32, [3 x i32], %struct.v4l2_rect, %struct.v4l2_rect, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_du_vsp_cleanup\00", [44 x i8] zeroinitializer }, align 32
@rcar_du_vsp_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @rcar_du_vsp_plane_reset, ptr null, ptr @rcar_du_vsp_plane_atomic_duplicate_state, ptr @rcar_du_vsp_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_du_vsp_formats = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 943867730, i32 842093121, i32 842093144, i32 892424769, i32 892424792, i32 909199186, i32 875710274, i32 875710290, i32 875708738, i32 875714626, i32 875713089, i32 875713112, i32 1498831189, i32 1448695129, i32 1431918169, i32 842094158, i32 825382478, i32 909203022, i32 825644622, i32 842093913, i32 842094169, i32 909202777, i32 909203033, i32 875713881, i32 875714137], [60 x i8] zeroinitializer }, align 32
@rcar_du_vsp_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @rcar_du_vsp_plane_prepare_fb, ptr @rcar_du_vsp_plane_cleanup_fb, ptr @rcar_du_vsp_plane_atomic_check, ptr @rcar_du_vsp_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_vsp.c\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 410, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"rcar_du_vsp_plane_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 368, i32 37 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"rcar_du_vsp_formats\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 122, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"rcar_du_vsp_plane_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 320, i32 44 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [41 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 332, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @rcar_du_vsp_plane_funcs, ptr @rcar_du_vsp_formats, ptr @rcar_du_vsp_plane_helper_funcs, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_vsp_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_vsp_formats to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_vsp_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_vsp_enable(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.vsp1_du_lif_config, align 4
  %state3 = alloca %struct.rcar_du_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #5
  %4 = getelementptr inbounds i8, ptr %cfg, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %cfg, align 4
  %height = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %cfg, i32 0, i32 1
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %10 to i32
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2, ptr %height, align 4
  %interlaced = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %cfg, i32 0, i32 2
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %interlaced to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %interlaced, align 4
  %callback = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rcar_du_vsp_complete, ptr %callback, align 4
  %callback_data = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %cfg, i32 0, i32 4
  %19 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %crtc, ptr %callback_data, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %state3) #5
  %20 = call ptr @memset(ptr %state3, i32 0, i32 140)
  %crtc5 = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 1
  %21 = ptrtoint ptr %crtc5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %crtc, ptr %crtc5, align 4
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 12
  %22 = ptrtoint ptr %alpha to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %alpha, align 4
  %x2 = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 20, i32 2
  %23 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdisplay, align 4
  %conv8 = zext i16 %24 to i32
  %shl = shl nuw i32 %conv8, 16
  %25 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %x2, align 4
  %y2 = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 20, i32 3
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv10 = zext i16 %27 to i32
  %shl11 = shl nuw i32 %conv10, 16
  %28 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl11, ptr %y2, align 4
  %x212 = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 21, i32 2
  %29 = load i16, ptr %hdisplay, align 4
  %conv14 = zext i16 %29 to i32
  %30 = ptrtoint ptr %x212 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv14, ptr %x212, align 4
  %y215 = getelementptr inbounds %struct.drm_plane_state, ptr %state3, i32 0, i32 21, i32 3
  %31 = load i16, ptr %vdisplay, align 2
  %conv17 = zext i16 %31 to i32
  %32 = ptrtoint ptr %y215 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv17, ptr %y215, align 4
  %format = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state3, i32 0, i32 1
  %call = tail call ptr @rcar_du_format_info(i32 noundef 875713089) #5
  %33 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call, ptr %format, align 4
  %source = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state3, i32 0, i32 3
  %34 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %source, align 4
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp = icmp ugt i32 %38, 2
  %index = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 5
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 8
  %rem = shl i32 %40, 1
  %41 = and i32 %rem, 2
  %rem22 = and i32 %40, 1
  %rem22.sink = select i1 %cmp, i32 %41, i32 %rem22
  %42 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state3, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %rem22.sink, ptr %42, align 4
  %group = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 14
  %44 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %group, align 4
  call void @__rcar_du_plane_setup(ptr noundef %45, ptr noundef nonnull %state3) #5
  %46 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %group, align 4
  %need_restart = getelementptr inbounds %struct.rcar_du_group, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %need_restart to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %need_restart, align 8
  %vsp = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %49 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vsp, align 4
  %vsp25 = getelementptr inbounds %struct.rcar_du_vsp, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %vsp25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vsp25, align 4
  %vsp_pipe = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 17
  %53 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vsp_pipe, align 8
  %call26 = call i32 @vsp1_du_setup_lif(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %cfg) #5
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %state3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_complete(ptr noundef %private, i32 noundef %status, i32 noundef %crc) #0 align 64 {
entry:
  %crc.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crc.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %crc, ptr %crc.addr, align 4
  %vblank_enable = getelementptr inbounds %struct.rcar_du_crtc, ptr %private, i32 0, i32 8
  %1 = ptrtoint ptr %vblank_enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vblank_enable, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %private) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rcar_du_crtc_finish_page_flip(ptr noundef %private) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %call10 = call i32 @drm_crtc_add_crc_entry(ptr noundef %private, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %crc.addr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rcar_du_plane_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_du_setup_lif(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_vsp_disable(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsp = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %0 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp, align 4
  %vsp1 = getelementptr inbounds %struct.rcar_du_vsp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsp1, align 4
  %vsp_pipe = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 17
  %4 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsp_pipe, align 8
  %call = tail call i32 @vsp1_du_setup_lif(ptr noundef %3, i32 noundef %5, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_vsp_atomic_begin(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsp = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %0 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp, align 4
  %vsp1 = getelementptr inbounds %struct.rcar_du_vsp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsp1, align 4
  %vsp_pipe = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 17
  %4 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsp_pipe, align 8
  tail call void @vsp1_du_atomic_begin(ptr noundef %3, i32 noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_du_atomic_begin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_vsp_atomic_flush(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.vsp1_du_atomic_pipe_config, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #5
  %0 = getelementptr inbounds i8, ptr %cfg, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 4
  %crc3 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %crc3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %crc3, align 4
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %cfg, align 8
  %vsp = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 16
  %7 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsp, align 4
  %vsp4 = getelementptr inbounds %struct.rcar_du_vsp, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %vsp4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsp4, align 4
  %vsp_pipe = getelementptr inbounds %struct.rcar_du_crtc, ptr %crtc, i32 0, i32 17
  %11 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsp_pipe, align 8
  call void @vsp1_du_atomic_flush(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %cfg) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_du_atomic_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_vsp_map_fb(ptr nocapture noundef readonly %vsp, ptr noundef %fb, ptr noundef %sg_tables) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %num_planes92 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_planes92 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp94.not = icmp eq i8 %5, 0
  br i1 %cmp94.not, label %entry.cleanup41_crit_edge, label %for.body.lr.ph

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %entry
  %vsp25 = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc34.for.body_crit_edge ]
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef %i.095) #5
  %arrayidx = getelementptr %struct.sg_table, ptr %sg_tables, i32 %i.095
  %sgt2 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %sgt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents, align 4
  %call4 = tail call i32 @sg_alloc_table(ptr noundef %arrayidx, i32 noundef %9, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup30_crit_edge

if.then.cleanup30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %sgt2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt2, align 4
  %orig_nents1187 = getelementptr inbounds %struct.sg_table, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents1187 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents1187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1288.not = icmp eq i32 %13, 0
  br i1 %cmp1288.not, label %if.end.if.end24_crit_edge, label %for.body14.preheader

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.body14.preheader:                             ; preds = %if.end
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %for.body14

for.body14:                                       ; preds = %sg_set_page.exit.for.body14_crit_edge, %for.body14.preheader
  %dst.091 = phi ptr [ %call17, %sg_set_page.exit.for.body14_crit_edge ], [ %15, %for.body14.preheader ]
  %src.090 = phi ptr [ %call16, %sg_set_page.exit.for.body14_crit_edge ], [ %17, %for.body14.preheader ]
  %j.089 = phi i32 [ %inc, %sg_set_page.exit.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %18 = ptrtoint ptr %src.090 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src.090, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !20

do.body2.i:                                       ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

sg_page.exit:                                     ; preds = %for.body14
  %20 = ptrtoint ptr %dst.091 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst.091, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !20

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %src.090, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %src.090, i32 0, i32 2
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %and.i = and i32 %19, -4
  %and.i.i74 = and i32 %21, 3
  %or.i.i = or i32 %and.i.i74, %and.i
  %26 = ptrtoint ptr %dst.091 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i, ptr %dst.091, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %dst.091, i32 0, i32 1
  %27 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %dst.091, i32 0, i32 2
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %length.i, align 4
  %call16 = tail call ptr @sg_next(ptr noundef %src.090) #5
  %call17 = tail call ptr @sg_next(ptr noundef %dst.091) #5
  %inc = add nuw i32 %j.089, 1
  %29 = ptrtoint ptr %sgt2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt2, align 4
  %orig_nents11 = getelementptr inbounds %struct.sg_table, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %orig_nents11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %orig_nents11, align 4
  %cmp12 = icmp ult i32 %inc, %32
  br i1 %cmp12, label %sg_set_page.exit.for.body14_crit_edge, label %sg_set_page.exit.if.end24_crit_edge

sg_set_page.exit.if.end24_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

sg_set_page.exit.for.body14_crit_edge:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

if.else:                                          ; preds = %for.body
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 3
  %35 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr, align 8
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 1
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 8
  %call20 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %34, ptr noundef %arrayidx, ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else.if.end24_crit_edge, label %if.else.cleanup30_crit_edge

if.else.cleanup30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %sg_set_page.exit.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %41 = ptrtoint ptr %vsp25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vsp25, align 4
  %call26 = tail call i32 @vsp1_du_map_sg(ptr noundef %42, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.inc34, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sg_free_table(ptr noundef %arrayidx) #5
  br label %cleanup30

cleanup30:                                        ; preds = %if.then28, %if.else.cleanup30_crit_edge, %if.then.cleanup30_crit_edge
  %ret.0 = phi i32 [ %call26, %if.then28 ], [ %call20, %if.else.cleanup30_crit_edge ], [ %call4, %if.then.cleanup30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %tobool37.not97 = icmp eq i32 %i.095, 0
  br i1 %tobool37.not97, label %cleanup30.cleanup41_crit_edge, label %cleanup30.while.body_crit_edge

cleanup30.while.body_crit_edge:                   ; preds = %cleanup30
  br label %while.body

cleanup30.cleanup41_crit_edge:                    ; preds = %cleanup30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.inc34:                                        ; preds = %if.end24
  %inc35 = add nuw nsw i32 %i.095, 1
  %43 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %46 to i32
  %cmp = icmp ult i32 %inc35, %conv
  br i1 %cmp, label %for.inc34.for.body_crit_edge, label %for.inc34.cleanup41_crit_edge

for.inc34.cleanup41_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cleanup30.while.body_crit_edge
  %i.198 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.095, %cleanup30.while.body_crit_edge ]
  %dec = add nsw i32 %i.198, -1
  %arrayidx39 = getelementptr %struct.sg_table, ptr %sg_tables, i32 %dec
  %47 = ptrtoint ptr %vsp25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vsp25, align 4
  tail call void @vsp1_du_unmap_sg(ptr noundef %48, ptr noundef %arrayidx39) #5
  tail call void @sg_free_table(ptr noundef %arrayidx39) #5
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %while.body.cleanup41_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup41_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

cleanup41:                                        ; preds = %while.body.cleanup41_crit_edge, %for.inc34.cleanup41_crit_edge, %cleanup30.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup30.cleanup41_crit_edge ], [ 0, %entry.cleanup41_crit_edge ], [ %ret.0, %while.body.cleanup41_crit_edge ], [ 0, %for.inc34.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_du_map_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_du_unmap_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_vsp_unmap_fb(ptr nocapture noundef readonly %vsp, ptr nocapture noundef readonly %fb, ptr noundef %sg_tables) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes6 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vsp2 = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sg_table, ptr %sg_tables, i32 %i.09
  %4 = ptrtoint ptr %vsp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsp2, align 4
  tail call void @vsp1_du_unmap_sg(ptr noundef %5, ptr noundef %arrayidx) #5
  tail call void @sg_free_table(ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.09, 1
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_vsp_init(ptr noundef %vsp, ptr noundef %np, i32 noundef %crtcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %crtcs) #5
  %call280 = tail call ptr @of_find_device_by_node(ptr noundef %np) #5
  %tobool281.not = icmp eq ptr %call280, null
  br i1 %tobool281.not, label %entry.cleanup330_crit_edge, label %if.end

entry.cleanup330_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

if.end:                                           ; preds = %entry
  %dev282 = getelementptr inbounds %struct.platform_device, ptr %call280, i32 0, i32 3
  %vsp283 = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 1
  %2 = ptrtoint ptr %vsp283 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev282, ptr %vsp283, align 4
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  %call284 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %ddev, ptr noundef nonnull @rcar_du_vsp_cleanup, ptr noundef %vsp, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %cmp = icmp slt i32 %call284, 0
  br i1 %cmp, label %if.end.cleanup330_crit_edge, label %if.end287

if.end.cleanup330_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

if.end287:                                        ; preds = %if.end
  %3 = ptrtoint ptr %vsp283 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsp283, align 4
  %call289 = tail call i32 @vsp1_du_init(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %cmp290 = icmp slt i32 %call289, 0
  br i1 %cmp290, label %if.end287.cleanup330_crit_edge, label %if.end293

if.end287.cleanup330_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

if.end293:                                        ; preds = %if.end287
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp294 = icmp ugt i32 %8, 2
  %cond296 = select i1 %cmp294, i32 5, i32 4
  %9 = mul nuw nsw i32 %cond296, 536
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #8
  %planes = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 3
  %10 = ptrtoint ptr %planes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %planes, align 4
  %tobool299.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool299.not, label %if.end293.cleanup330_crit_edge, label %for.cond.preheader

if.end293.cleanup330_crit_edge:                   ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

for.cond.preheader:                               ; preds = %if.end293
  %sub = add nsw i32 %cond296, -1
  %num_planes327 = getelementptr inbounds %struct.rcar_du_vsp, ptr %vsp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0406 = phi i32 [ 0, %for.cond.preheader ], [ %inc329, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0406, i32 %call.i)
  %cmp304 = icmp ult i32 %i.0406, %call.i
  %cond306 = zext i1 %cmp304 to i32
  %11 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.rcar_du_vsp_plane, ptr %12, i32 %i.0406
  %vsp308 = getelementptr %struct.rcar_du_vsp_plane, ptr %12, i32 %i.0406, i32 1
  %13 = ptrtoint ptr %vsp308 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vsp, ptr %vsp308, align 8
  %index = getelementptr %struct.rcar_du_vsp_plane, ptr %12, i32 %i.0406, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0406, ptr %index, align 4
  %call311 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ddev, ptr noundef %arrayidx, i32 noundef %crtcs, ptr noundef nonnull @rcar_du_vsp_plane_funcs, ptr noundef nonnull @rcar_du_vsp_formats, i32 noundef 25, ptr noundef null, i32 noundef %cond306, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %cmp312 = icmp slt i32 %call311, 0
  br i1 %cmp312, label %for.body.cleanup330_crit_edge, label %if.end315

for.body.cleanup330_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

if.end315:                                        ; preds = %for.body
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx, i32 0, i32 18
  %15 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rcar_du_vsp_plane_helper_funcs, ptr %helper_private.i, align 8
  br i1 %cmp304, label %if.then319, label %if.else

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  %call321 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %arrayidx, i32 noundef 0) #5
  br label %for.inc

if.else:                                          ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  %call323 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %arrayidx) #5
  %call325 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1, i32 noundef %sub) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then319
  %16 = ptrtoint ptr %num_planes327 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes327, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_planes327, align 4
  %inc329 = add nuw nsw i32 %i.0406, 1
  %exitcond.not = icmp eq i32 %inc329, %cond296
  br i1 %exitcond.not, label %for.inc.cleanup330_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup330_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup330

cleanup330:                                       ; preds = %for.inc.cleanup330_crit_edge, %for.body.cleanup330_crit_edge, %if.end293.cleanup330_crit_edge, %if.end287.cleanup330_crit_edge, %if.end.cleanup330_crit_edge, %entry.cleanup330_crit_edge
  %retval.2 = phi i32 [ -6, %entry.cleanup330_crit_edge ], [ %call284, %if.end.cleanup330_crit_edge ], [ %call289, %if.end287.cleanup330_crit_edge ], [ -12, %if.end293.cleanup330_crit_edge ], [ %call311, %for.body.cleanup330_crit_edge ], [ 0, %for.inc.cleanup330_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_cleanup(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes = getelementptr inbounds %struct.rcar_du_vsp, ptr %res, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %planes = getelementptr inbounds %struct.rcar_du_vsp, ptr %res, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.rcar_du_vsp_plane, ptr %3, i32 %i.010
  tail call void @drm_plane_cleanup(ptr noundef %arrayidx) #5
  %inc = add nuw i32 %i.010, 1
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %planes2 = getelementptr inbounds %struct.rcar_du_vsp, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %planes2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %planes2, align 4
  tail call void @kfree(ptr noundef %7) #5
  %vsp3 = getelementptr inbounds %struct.rcar_du_vsp, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %vsp3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsp3, align 4
  tail call void @put_device(ptr noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_du_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_crtc_finish_page_flip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 164) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #5
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7 = icmp ne i32 %5, 1
  %cond = zext i1 %cmp7 to i32
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %zpos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_du_vsp_plane_atomic_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 332, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end25 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_plane_atomic_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #5
  tail call void @kfree(ptr noundef %state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_vsp_plane_prepare_fb(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %0 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %visible, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsp2 = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 1
  %2 = ptrtoint ptr %vsp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsp2, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %sg_tables = getelementptr inbounds %struct.rcar_du_vsp_plane_state, ptr %state, i32 0, i32 2
  %call3 = tail call i32 @rcar_du_vsp_map_fb(ptr noundef %3, ptr noundef %5, ptr noundef %sg_tables)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %state) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_plane_cleanup_fb(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %0 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %visible, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %sg_tables = getelementptr inbounds %struct.rcar_du_vsp_plane_state, ptr %state, i32 0, i32 2
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format.i, align 8
  %num_planes6.i = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num_planes6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_planes6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp8.not.i = icmp eq i8 %7, 0
  br i1 %cmp8.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %vsp2 = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %vsp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsp2, align 8
  %vsp2.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %9, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sg_table, ptr %sg_tables, i32 %i.09.i
  %10 = ptrtoint ptr %vsp2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsp2.i, align 4
  tail call void @vsp1_du_unmap_sg(ptr noundef %11, ptr noundef %arrayidx.i) #5
  tail call void @sg_free_table(ptr noundef %arrayidx.i) #5
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %12 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_vsp_plane_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %format = getelementptr inbounds %struct.rcar_du_vsp_plane_state, ptr %5, i32 0, i32 1
  %call2 = tail call i32 @__rcar_du_plane_atomic_check(ptr noundef %plane, ptr noundef %5, ptr noundef %format) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_vsp_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %cfg.i = alloca %struct.vsp1_du_atomic_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %crtc3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc3, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %10 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %visible, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state2.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %12 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state2.i, align 4
  %crtc4.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %crtc4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc4.i, align 4
  %fb7.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fb7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb7.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cfg.i) #5
  %18 = getelementptr inbounds i8, ptr %cfg.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 12)
  %pitch.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 1
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pitches.i, align 8
  %22 = ptrtoint ptr %pitch.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pitch.i, align 4
  %alpha.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 5
  %alpha9.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 12
  %23 = ptrtoint ptr %alpha9.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %alpha9.i, align 4
  %25 = lshr i16 %24, 8
  %26 = zext i16 %25 to i32
  %27 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %alpha.i, align 4
  %zpos.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 6
  %zpos11.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 15
  %28 = ptrtoint ptr %zpos11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zpos11.i, align 4
  %30 = ptrtoint ptr %zpos.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %zpos.i, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 20
  %31 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src.i, align 4
  %shr13.i = ashr i32 %32, 16
  %src14.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 3
  %33 = ptrtoint ptr %src14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr13.i, ptr %src14.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 20, i32 1
  %34 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %y1.i, align 4
  %shr17.i = ashr i32 %35, 16
  %top.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr17.i, ptr %top.i, align 4
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 20, i32 2
  %37 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %x2.i.i, align 4
  %sub.i.i = sub i32 %38, %32
  %shr22.i = ashr i32 %sub.i.i, 16
  %width.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr22.i, ptr %width.i, align 4
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 20, i32 3
  %40 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %y2.i.i, align 4
  %sub.i78.i = sub i32 %41, %35
  %shr27.i = ashr i32 %sub.i78.i, 16
  %height.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr27.i, ptr %height.i, align 4
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 21
  %43 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst.i, align 4
  %dst31.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 4
  %45 = ptrtoint ptr %dst31.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dst31.i, align 4
  %y135.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 21, i32 1
  %46 = ptrtoint ptr %y135.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %y135.i, align 4
  %top37.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %top37.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %top37.i, align 4
  %x2.i79.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 21, i32 2
  %49 = ptrtoint ptr %x2.i79.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %x2.i79.i, align 4
  %sub.i80.i = sub i32 %50, %44
  %width42.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %width42.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i80.i, ptr %width42.i, align 4
  %y2.i81.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 21, i32 3
  %52 = ptrtoint ptr %y2.i81.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %y2.i81.i, align 4
  %sub.i83.i = sub i32 %53, %47
  %height47.i = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %height47.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i83.i, ptr %height47.i, align 4
  %format48.i = getelementptr inbounds %struct.rcar_du_vsp_plane_state, ptr %13, i32 0, i32 1
  %55 = ptrtoint ptr %format48.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format48.i, align 4
  %planes84.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %planes84.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %planes84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp85.not.i = icmp eq i32 %58, 0
  br i1 %cmp85.not.i, label %if.then.rcar_du_vsp_plane_setup.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.rcar_du_vsp_plane_setup.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_du_vsp_plane_setup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.086.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx50.i = getelementptr %struct.rcar_du_vsp_plane_state, ptr %13, i32 0, i32 2, i32 %i.086.i
  %59 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx50.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_address.i, align 4
  %arrayidx51.i = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 7, i32 %i.086.i
  %63 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx51.i, align 4
  %add.i = add i32 %64, %62
  %arrayidx52.i = getelementptr %struct.vsp1_du_atomic_config, ptr %cfg.i, i32 0, i32 2, i32 %i.086.i
  %65 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i, ptr %arrayidx52.i, align 4
  %inc.i = add nuw i32 %i.086.i, 1
  %66 = ptrtoint ptr %format48.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %format48.i, align 4
  %planes.i18 = getelementptr inbounds %struct.rcar_du_format_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %planes.i18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %planes.i18, align 4
  %cmp.i = icmp ult i32 %inc.i, %69
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rcar_du_vsp_plane_setup.exit_crit_edge

for.body.i.rcar_du_vsp_plane_setup.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_du_vsp_plane_setup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

rcar_du_vsp_plane_setup.exit:                     ; preds = %for.body.i.rcar_du_vsp_plane_setup.exit_crit_edge, %if.then.rcar_du_vsp_plane_setup.exit_crit_edge
  %.lcssa.i = phi ptr [ %56, %if.then.rcar_du_vsp_plane_setup.exit_crit_edge ], [ %67, %for.body.i.rcar_du_vsp_plane_setup.exit_crit_edge ]
  %70 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %.lcssa.i, align 4
  %call54.i = tail call ptr @rcar_du_format_info(i32 noundef %71) #5
  %v4l2.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %call54.i, i32 0, i32 1
  %72 = ptrtoint ptr %v4l2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %v4l2.i, align 4
  %74 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %cfg.i, align 4
  %vsp.i = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 1
  %75 = ptrtoint ptr %vsp.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vsp.i, align 8
  %vsp55.i = getelementptr inbounds %struct.rcar_du_vsp, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %vsp55.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vsp55.i, align 4
  %vsp_pipe.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %15, i32 0, i32 17
  %79 = ptrtoint ptr %vsp_pipe.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vsp_pipe.i, align 8
  %index.i = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 2
  %81 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i, align 4
  %call56.i = call i32 @vsp1_du_atomic_update(ptr noundef %78, i32 noundef %80, i32 noundef %82, ptr noundef nonnull %cfg.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cfg.i) #5
  br label %if.end9

if.else:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %vsp = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 1
  %83 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vsp, align 8
  %vsp7 = getelementptr inbounds %struct.rcar_du_vsp, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %vsp7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vsp7, align 4
  %vsp_pipe = getelementptr inbounds %struct.rcar_du_crtc, ptr %9, i32 0, i32 17
  %87 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vsp_pipe, align 8
  %index = getelementptr inbounds %struct.rcar_du_vsp_plane, ptr %plane, i32 0, i32 2
  %89 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index, align 4
  %call8 = tail call i32 @vsp1_du_atomic_update(ptr noundef %86, i32 noundef %88, i32 noundef %90, ptr noundef null) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge, %rcar_du_vsp_plane_setup.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rcar_du_plane_atomic_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_du_atomic_update(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c", i32 410, i32 8}
!2 = !{ptr @rcar_du_vsp_plane_funcs, !3, !"rcar_du_vsp_plane_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c", i32 368, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c", i32 332, i32 6}
!6 = !{ptr @rcar_du_vsp_formats, !7, !"rcar_du_vsp_formats", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c", i32 122, i32 18}
!8 = !{ptr @rcar_du_vsp_plane_helper_funcs, !9, !"rcar_du_vsp_plane_helper_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_vsp.c", i32 320, i32 44}
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
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2156556946, i64 2156557438, i64 2156556983, i64 2156557039, i64 2156557073, i64 2156557097, i64 2156557138, i64 2156557159, i64 2156557187, i64 2156557221}
!22 = !{i64 2156554998, i64 2156555490, i64 2156555035, i64 2156555091, i64 2156555125, i64 2156555149, i64 2156555190, i64 2156555211, i64 2156555239, i64 2156555273}
!23 = !{!"branch_weights", i32 1, i32 2000}
