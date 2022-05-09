; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/shmobile/shmob_drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/shmobile/shmob_drm_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.shmob_drm_crtc = type { %struct.drm_crtc, ptr, i32, ptr, [2 x i32], i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.anon.85 = type { i32, ptr }
%struct.shmob_drm_device = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, %struct.shmob_drm_crtc, %struct.shmob_drm_encoder, %struct.shmob_drm_connector }
%struct.shmob_drm_encoder = type { %struct.drm_encoder, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.shmob_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.shmob_drm_platform_data = type { i32, %struct.shmob_drm_interface_data, %struct.shmob_drm_panel_data, %struct.shmob_drm_backlight_data }
%struct.shmob_drm_interface_data = type { i32, %struct.shmob_drm_sys_interface_data, i32, i32 }
%struct.shmob_drm_sys_interface_data = type { i32, i32 }
%struct.shmob_drm_panel_data = type { i32, i32, %struct.drm_mode_modeinfo }
%struct.drm_mode_modeinfo = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [32 x i8] }
%struct.shmob_drm_backlight_data = type { ptr, i32, ptr, ptr }
%struct.shmob_drm_format_info = type { i32, i32, i8, i32 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.86 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.86 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
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

@crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_crtc_helper_set_config, ptr @shmob_drm_crtc_page_flip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmob_drm_enable_vblank, ptr @shmob_drm_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @shmob_drm_crtc_dpms, ptr @shmob_drm_crtc_mode_prepare, ptr @shmob_drm_crtc_mode_commit, ptr null, ptr null, ptr @shmob_drm_crtc_mode_set, ptr null, ptr @shmob_drm_crtc_mode_set_base, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @shmob_drm_encoder_dpms, ptr null, ptr @shmob_drm_encoder_mode_fixup, ptr @shmob_drm_encoder_mode_prepare, ptr @shmob_drm_encoder_mode_commit, ptr @shmob_drm_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @shmob_drm_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @shmob_drm_connector_get_modes, ptr null, ptr null, ptr null, ptr @shmob_drm_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/shmobile/shmob_drm_crtc.c\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@shmob_drm_crtc_mode_set.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shmob_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"shmob_drm_crtc_mode_set\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mode_set: unsupported format %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@shmob_drm_encoder_mode_fixup.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"shmob_drm_encoder_mode_fixup\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mode_fixup: empty modes list\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 875710290, i64 875714126, i64 909199186, i64 909203022]
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"crtc_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 470, i32 36 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"crtc_helper_funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 382, i32 43 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"encoder_helper_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 554, i32 46 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"connector_funcs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 640, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"connector_helper_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 626, i32 48 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 167, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 356, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [45 x i8] c"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 525, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @crtc_funcs, ptr @crtc_helper_funcs, ptr @encoder_helper_funcs, ptr @connector_funcs, ptr @connector_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmob_drm_crtc_suspend(ptr nocapture noundef %scrtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %started.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 6
  %0 = ptrtoint ptr %started.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %started.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.shmob_drm_crtc_stop.exit_crit_edge, label %if.end.i

entry.shmob_drm_crtc_stop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_stop.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scrtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  tail call fastcc void @shmob_drm_crtc_start_stop(ptr noundef %scrtc, i1 noundef zeroext false) #5
  %mmio.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !32
  %clock.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.shmob_drm_clk_off.exit.i_crit_edge, label %if.then.i.i

if.end.i.shmob_drm_clk_off.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_clk_off.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %9) #5
  tail call void @clk_unprepare(ptr noundef nonnull %9) #5
  br label %shmob_drm_clk_off.exit.i

shmob_drm_clk_off.exit.i:                         ; preds = %if.then.i.i, %if.end.i.shmob_drm_clk_off.exit.i_crit_edge
  %10 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %started.i, align 8
  br label %shmob_drm_crtc_stop.exit

shmob_drm_crtc_stop.exit:                         ; preds = %shmob_drm_clk_off.exit.i, %entry.shmob_drm_crtc_stop.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmob_drm_crtc_resume(ptr noundef %scrtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpms = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 2
  %0 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @shmob_drm_crtc_start(ptr noundef %scrtc)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmob_drm_crtc_start(ptr noundef %scrtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scrtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pdata = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddev, align 8
  %started = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 6
  %8 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %started, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 6
  %10 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %format3 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format3, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call = tail call ptr @shmob_drm_format_info(i32 noundef %17) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end28, !prof !33

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %clock.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end28.if.end32_crit_edge, label %if.then.i

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then.i:                                        ; preds = %if.end28
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.clk_prepare_enable.exit.i_crit_edge

if.then.i.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end32_crit_edge, label %if.then3.i.i

if.end.i.i.if.end32_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %19) #5
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %clk_prepare_enable.exit.i.cleanup_crit_edge, label %clk_prepare_enable.exit.i.if.end32_crit_edge

clk_prepare_enable.exit.i.if.end32_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

clk_prepare_enable.exit.i.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %clk_prepare_enable.exit.i.if.end32_crit_edge, %if.end.i.i.if.end32_crit_edge, %if.end28.if.end32_crit_edge
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 1140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %23 = or i32 %22, 65536
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i130 = getelementptr i8, ptr %25, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %23) #5, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %26, 1
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i1.i = getelementptr i8, ptr %28, i32 1140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not3.i = icmp eq i32 %30, 0
  br i1 %cmp.not3.i, label %if.end32.lcdc_wait_bit.exit_crit_edge, label %if.end32.while.body.i_crit_edge

if.end32.while.body.i_crit_edge:                  ; preds = %if.end32
  br label %while.body.i

if.end32.lcdc_wait_bit.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end32.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 0
  br i1 %cmp2.i, label %while.body.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i

while.body.i.lcdc_wait_bit.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !37
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 1140
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %35 = and i32 %34, 65536
  %cmp.not.i = icmp eq i32 %35, 0
  br i1 %cmp.not.i, label %do.end.i.lcdc_wait_bit.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end.i.lcdc_wait_bit.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit

lcdc_wait_bit.exit:                               ; preds = %do.end.i.lcdc_wait_bit.exit_crit_edge, %while.body.i.lcdc_wait_bit.exit_crit_edge, %if.end32.lcdc_wait_bit.exit_crit_edge
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i132 = getelementptr i8, ptr %37, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 33554432) #5, !srcloc !32
  tail call fastcc void @shmob_drm_crtc_start_stop(ptr noundef %scrtc, i1 noundef zeroext false)
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i134 = getelementptr i8, ptr %39, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 0) #5, !srcloc !32
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i136 = getelementptr i8, ptr %41, i32 1120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 0) #5, !srcloc !32
  %lddckr = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %lddckr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lddckr, align 8
  %clk_div = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %5, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clk_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool35.not = icmp eq i32 %45, 0
  br i1 %tobool35.not, label %lcdc_wait_bit.exit.if.end45_crit_edge, label %if.then36

lcdc_wait_bit.exit.if.end45_crit_edge:            ; preds = %lcdc_wait_bit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then36:                                        ; preds = %lcdc_wait_bit.exit
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %47, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 0) #5, !srcloc !32
  %48 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clk_div, align 4
  %div128 = lshr i32 %49, 1
  %notmask = shl nsw i32 -1, %div128
  %sub = xor i32 %notmask, -1
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i140 = getelementptr i8, ptr %51, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %sub) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %52) #5, !srcloc !32
  %53 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clk_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp39 = icmp eq i32 %54, 1
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %or41 = or i32 %43, 64
  br label %if.end45

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %or43 = or i32 %54, %43
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then40, %lcdc_wait_bit.exit.if.end45_crit_edge
  %value.0 = phi i32 [ %or41, %if.then40 ], [ %or43, %if.else ], [ %43, %lcdc_wait_bit.exit.if.end45_crit_edge ]
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %56, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %value.0) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %57) #5, !srcloc !32
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %59, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 0) #5, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add.i145 = add i32 %60, 1
  %61 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i1.i147 = getelementptr i8, ptr %62, i32 1044
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i147) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not3.i148 = icmp eq i32 %63, 0
  br i1 %cmp.not3.i148, label %if.end45.lcdc_wait_bit.exit155_crit_edge, label %if.end45.while.body.i151_crit_edge

if.end45.while.body.i151_crit_edge:               ; preds = %if.end45
  br label %while.body.i151

if.end45.lcdc_wait_bit.exit155_crit_edge:         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit155

while.body.i151:                                  ; preds = %do.end.i154.while.body.i151_crit_edge, %if.end45.while.body.i151_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %sub.i149 = sub i32 %add.i145, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i149)
  %cmp2.i150 = icmp slt i32 %sub.i149, 0
  br i1 %cmp2.i150, label %while.body.i151.lcdc_wait_bit.exit155_crit_edge, label %do.end.i154

while.body.i151.lcdc_wait_bit.exit155_crit_edge:  ; preds = %while.body.i151
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit155

do.end.i154:                                      ; preds = %while.body.i151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !37
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i152 = getelementptr i8, ptr %66, i32 1044
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %cmp.not.i153 = icmp eq i32 %67, 0
  br i1 %cmp.not.i153, label %do.end.i154.lcdc_wait_bit.exit155_crit_edge, label %do.end.i154.while.body.i151_crit_edge

do.end.i154.while.body.i151_crit_edge:            ; preds = %do.end.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i151

do.end.i154.lcdc_wait_bit.exit155_crit_edge:      ; preds = %do.end.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %lcdc_wait_bit.exit155

lcdc_wait_bit.exit155:                            ; preds = %do.end.i154.lcdc_wait_bit.exit155_crit_edge, %while.body.i151.lcdc_wait_bit.exit155_crit_edge, %if.end45.lcdc_wait_bit.exit155_crit_edge
  %68 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scrtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_private.i, align 4
  %pdata.i = getelementptr inbounds %struct.shmob_drm_device, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdata.i, align 4
  %iface.i = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %73, i32 0, i32 1
  %ldmt1r.i = getelementptr inbounds %struct.shmob_drm_device, ptr %71, i32 0, i32 5
  %74 = ptrtoint ptr %ldmt1r.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ldmt1r.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 11
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %and.i156 = shl i32 %77, 26
  %78 = and i32 %and.i156, 268435456
  %79 = xor i32 %78, 268435456
  %or.i = or i32 %79, %75
  %and4.i = shl i32 %77, 27
  %80 = and i32 %and4.i, 134217728
  %81 = xor i32 %80, 134217728
  %or7.i = or i32 %or.i, %81
  %flags8.i = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %73, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags8.i, align 4
  %and9.i = shl i32 %83, 26
  %84 = and i32 %and9.i, 67108864
  %or12.i = or i32 %or7.i, %84
  %and14.i = shl i32 %83, 24
  %85 = and i32 %and14.i, 33554432
  %or17.i = or i32 %or12.i, %85
  %and19.i = shl i32 %83, 22
  %86 = and i32 %and19.i, 16777216
  %or22.i = or i32 %or17.i, %86
  %and24.i = shl i32 %83, 14
  %87 = and i32 %and24.i, 131072
  %or27.i = or i32 %or22.i, %87
  %and29.i = shl i32 %83, 12
  %88 = and i32 %and29.i, 65536
  %or32.i = or i32 %or27.i, %88
  %mmio.i.i157 = getelementptr inbounds %struct.shmob_drm_device, ptr %71, i32 0, i32 2
  %89 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i.i158 = getelementptr i8, ptr %90, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %91 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 %91) #5, !srcloc !32
  %92 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %93, i32 5144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %91) #5, !srcloc !32
  %94 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iface.i, align 4
  %96 = add i32 %95, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %96)
  %97 = icmp ult i32 %96, 11
  br i1 %97, label %if.then.i159, label %lcdc_wait_bit.exit155.shmob_drm_crtc_setup_geometry.exit_crit_edge

lcdc_wait_bit.exit155.shmob_drm_crtc_setup_geometry.exit_crit_edge: ; preds = %lcdc_wait_bit.exit155
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_setup_geometry.exit

if.then.i159:                                     ; preds = %lcdc_wait_bit.exit155
  call void @__sanitizer_cov_trace_pc() #7
  %sys.i = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %73, i32 0, i32 1, i32 1
  %cs_setup.i = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %73, i32 0, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %cs_setup.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i = load i32, ptr %cs_setup.i, align 4
  %99 = shl i32 %bf.load.i, 21
  %or48.i = and i32 %99, 520093696
  %100 = lshr i32 %bf.load.i, 8
  %shl52.i = and i32 %100, 16711680
  %or53.i = or i32 %or48.i, %shl52.i
  %shl58.i = and i32 %100, 65280
  %or59.i = or i32 %or53.i, %shl58.i
  %bf.clear63.i = and i32 %100, 255
  %or65.i = or i32 %or59.i, %bf.clear63.i
  %101 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i183.i = getelementptr i8, ptr %102, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %103 = tail call i32 @llvm.bswap.i32(i32 %or65.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183.i, i32 %103) #5, !srcloc !32
  %104 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i185.i = getelementptr i8, ptr %105, i32 5148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i185.i, i32 %103) #5, !srcloc !32
  %106 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load67.i = load i32, ptr %sys.i, align 4
  %107 = lshr i32 %bf.load67.i, 2
  %108 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i187.i = getelementptr i8, ptr %109, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %110 = tail call i32 @llvm.bswap.i32(i32 %107) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187.i, i32 %110) #5, !srcloc !32
  %111 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i189.i = getelementptr i8, ptr %112, i32 5152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i189.i, i32 %110) #5, !srcloc !32
  br label %shmob_drm_crtc_setup_geometry.exit

shmob_drm_crtc_setup_geometry.exit:               ; preds = %if.then.i159, %lcdc_wait_bit.exit155.shmob_drm_crtc_setup_geometry.exit_crit_edge
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 1
  %113 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %hdisplay.i, align 4
  %115 = lshr i16 %114, 3
  %div.i = zext i16 %115 to i32
  %shl88.i = shl nuw nsw i32 %div.i, 16
  %htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 4
  %116 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %htotal.i, align 2
  %118 = lshr i16 %117, 3
  %div90.i = zext i16 %118 to i32
  %or91.i = or i32 %shl88.i, %div90.i
  %119 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i191.i = getelementptr i8, ptr %120, i32 1096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %121 = tail call i32 @llvm.bswap.i32(i32 %or91.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 %121) #5, !srcloc !32
  %122 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i193.i = getelementptr i8, ptr %123, i32 5192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i193.i, i32 %121) #5, !srcloc !32
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 3
  %124 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %hsync_end.i, align 4
  %conv92.i = zext i16 %125 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 2
  %126 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %hsync_start.i, align 2
  %conv93.i = zext i16 %127 to i32
  %sub.i160 = sub nsw i32 %conv92.i, %conv93.i
  %div94.i = sdiv i32 %sub.i160, 8
  %shl95.i = shl nsw i32 %div94.i, 16
  %div98181.i = lshr i32 %conv93.i, 3
  %or99.i = or i32 %shl95.i, %div98181.i
  %128 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i195.i = getelementptr i8, ptr %129, i32 1100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %130 = tail call i32 @llvm.bswap.i32(i32 %or99.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195.i, i32 %130) #5, !srcloc !32
  %131 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i197.i = getelementptr i8, ptr %132, i32 5196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i197.i, i32 %130) #5, !srcloc !32
  %133 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %hdisplay.i, align 4
  %135 = and i16 %134, 7
  %and102.i = zext i16 %135 to i32
  %shl103.i = shl nuw nsw i32 %and102.i, 24
  %136 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %htotal.i, align 2
  %138 = and i16 %137, 7
  %and106.i = zext i16 %138 to i32
  %shl107.i = shl nuw nsw i32 %and106.i, 16
  %or108.i = or i32 %shl107.i, %shl103.i
  %139 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %hsync_end.i, align 4
  %conv110.i = zext i16 %140 to i32
  %141 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %hsync_start.i, align 2
  %conv112.i = zext i16 %142 to i32
  %sub113.i = sub nsw i32 %conv110.i, %conv112.i
  %and114.i = shl nsw i32 %sub113.i, 8
  %shl115.i = and i32 %and114.i, 1792
  %or116.i = or i32 %shl115.i, %or108.i
  %and119.i = and i32 %conv112.i, 7
  %or120.i = or i32 %or116.i, %and119.i
  %143 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i199.i = getelementptr i8, ptr %144, i32 1184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %145 = tail call i32 @llvm.bswap.i32(i32 %or120.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i, i32 %145) #5, !srcloc !32
  %146 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i201.i = getelementptr i8, ptr %147, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i201.i, i32 %145) #5, !srcloc !32
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 6
  %148 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %vdisplay.i, align 2
  %conv121.i = zext i16 %149 to i32
  %shl122.i = shl nuw i32 %conv121.i, 16
  %vtotal.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 9
  %150 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vtotal.i, align 4
  %conv123.i = zext i16 %151 to i32
  %or124.i = or i32 %shl122.i, %conv123.i
  %152 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i203.i = getelementptr i8, ptr %153, i32 1104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %154 = tail call i32 @llvm.bswap.i32(i32 %or124.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203.i, i32 %154) #5, !srcloc !32
  %155 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i205.i = getelementptr i8, ptr %156, i32 5200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i205.i, i32 %154) #5, !srcloc !32
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 8
  %157 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %vsync_end.i, align 2
  %conv125.i = zext i16 %158 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 12, i32 7
  %159 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %vsync_start.i, align 4
  %conv126.i = zext i16 %160 to i32
  %sub127.i = sub nsw i32 %conv125.i, %conv126.i
  %shl128.i = shl i32 %sub127.i, 16
  %or131.i = or i32 %shl128.i, %conv126.i
  %161 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr.i207.i = getelementptr i8, ptr %162, i32 1108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %163 = tail call i32 @llvm.bswap.i32(i32 %or131.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207.i, i32 %163) #5, !srcloc !32
  %164 = ptrtoint ptr %mmio.i.i157 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i.i157, align 8
  %add.ptr3.i209.i = getelementptr i8, ptr %165, i32 5204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i209.i, i32 %163) #5, !srcloc !32
  %lddfr = getelementptr inbounds %struct.shmob_drm_format_info, ptr %call, i32 0, i32 3
  %166 = ptrtoint ptr %lddfr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lddfr, align 4
  %or47 = or i32 %167, 262144
  %168 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i162 = getelementptr i8, ptr %169, i32 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %170 = tail call i32 @llvm.bswap.i32(i32 %or47) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %170) #5, !srcloc !32
  %171 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %172, i32 5156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %170) #5, !srcloc !32
  %line_size = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 5
  %173 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %line_size, align 4
  %175 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %176, i32 1080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %177 = tail call i32 @llvm.bswap.i32(i32 %174) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %177) #5, !srcloc !32
  %178 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i167 = getelementptr i8, ptr %179, i32 5176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i167, i32 %177) #5, !srcloc !32
  %dma = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 4
  %180 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma, align 4
  %182 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %183, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %184 = tail call i32 @llvm.bswap.i32(i32 %181) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %184) #5, !srcloc !32
  %185 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i172 = getelementptr i8, ptr %186, i32 5168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i172, i32 %184) #5, !srcloc !32
  %yuv = getelementptr inbounds %struct.shmob_drm_format_info, ptr %call, i32 0, i32 2
  %187 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %yuv, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool48.not = icmp eq i8 %188, 0
  br i1 %tobool48.not, label %shmob_drm_crtc_setup_geometry.exit.if.end52_crit_edge, label %if.then49

shmob_drm_crtc_setup_geometry.exit.if.end52_crit_edge: ; preds = %shmob_drm_crtc_setup_geometry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %shmob_drm_crtc_setup_geometry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx51 = getelementptr %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 4, i32 1
  %189 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx51, align 4
  %191 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i175 = getelementptr i8, ptr %192, i32 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %193 = tail call i32 @llvm.bswap.i32(i32 %190) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %193) #5, !srcloc !32
  %194 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i177 = getelementptr i8, ptr %195, i32 5172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i177, i32 %193) #5, !srcloc !32
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %shmob_drm_crtc_setup_geometry.exit.if.end52_crit_edge
  %196 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i180 = getelementptr i8, ptr %197, i32 1064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 0) #5, !srcloc !32
  %198 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i, align 8
  %add.ptr3.i182 = getelementptr i8, ptr %199, i32 5160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i182, i32 0) #5, !srcloc !32
  %200 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %call, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values)
  switch i32 %201, label %sw.default [
    i32 909199186, label %if.end52.sw.epilog_crit_edge
    i32 825382478, label %if.end52.sw.epilog_crit_edge202
    i32 825644622, label %if.end52.sw.epilog_crit_edge203
    i32 842290766, label %if.end52.sw.epilog_crit_edge204
    i32 875710290, label %if.end52.sw.bb53_crit_edge
    i32 842094158, label %if.end52.sw.bb53_crit_edge205
    i32 909203022, label %if.end52.sw.bb53_crit_edge206
    i32 875714126, label %if.end52.sw.bb53_crit_edge207
  ]

if.end52.sw.bb53_crit_edge207:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end52.sw.bb53_crit_edge206:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end52.sw.bb53_crit_edge205:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end52.sw.bb53_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end52.sw.epilog_crit_edge204:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end52.sw.epilog_crit_edge203:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end52.sw.epilog_crit_edge202:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end52.sw.bb53_crit_edge, %if.end52.sw.bb53_crit_edge205, %if.end52.sw.bb53_crit_edge206, %if.end52.sw.bb53_crit_edge207
  br label %sw.epilog

sw.default:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb53, %if.end52.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge202, %if.end52.sw.epilog_crit_edge203, %if.end52.sw.epilog_crit_edge204
  %value.1 = phi i32 [ 67108864, %sw.default ], [ 117440512, %sw.bb53 ], [ 100663296, %if.end52.sw.epilog_crit_edge ], [ 100663296, %if.end52.sw.epilog_crit_edge202 ], [ 100663296, %if.end52.sw.epilog_crit_edge203 ], [ 100663296, %if.end52.sw.epilog_crit_edge204 ]
  %203 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %204, i32 1148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %value.1) #5, !srcloc !32
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %205 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pn197 = load ptr, ptr %plane_list, align 4
  %cmp58.not199 = icmp eq ptr %.pn197, %plane_list
  br i1 %cmp58.not199, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %.pn200 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn197, %sw.epilog.for.body_crit_edge ]
  %plane.0201 = getelementptr i8, ptr %.pn200, i32 -4
  %type = getelementptr i8, ptr %.pn200, i32 476
  %206 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp61 = icmp eq i32 %207, 0
  br i1 %cmp61, label %if.else63, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else63:                                        ; preds = %for.body
  %crtc64 = getelementptr i8, ptr %.pn200, i32 164
  %208 = ptrtoint ptr %crtc64 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %crtc64, align 8
  %cmp65 = icmp eq ptr %209, %scrtc
  br i1 %cmp65, label %if.then66, label %if.else63.for.inc_crit_edge

if.else63.for.inc_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then66:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @shmob_drm_plane_setup(ptr noundef %plane.0201) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %if.else63.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %210 = ptrtoint ptr %.pn200 to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pn = load ptr, ptr %.pn200, align 4
  %cmp58.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp58.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %211 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i187 = getelementptr i8, ptr %212, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 16777216) #5, !srcloc !32
  %213 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %scrtc, align 8
  %dev_private.i188 = getelementptr inbounds %struct.drm_device, ptr %214, i32 0, i32 5
  %215 = ptrtoint ptr %dev_private.i188 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev_private.i188, align 4
  %mmio.i.i189 = getelementptr inbounds %struct.shmob_drm_device, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %mmio.i.i189 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %mmio.i.i189, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %218, i32 1140
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %220 = or i32 %219, 16777216
  %221 = ptrtoint ptr %mmio.i.i189 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mmio.i.i189, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %222, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %220) #5, !srcloc !32
  %223 = ptrtoint ptr %mmio.i.i189 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mmio.i.i189, align 8
  %add.ptr.i3640.i = getelementptr i8, ptr %224, i32 1120
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3640.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %226 = and i32 %225, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool4.not41.i.not = icmp eq i32 %226, 0
  br i1 %tobool4.not41.i.not, label %for.end.do.end.i193_crit_edge, label %for.end.shmob_drm_crtc_start_stop.exit_crit_edge

for.end.shmob_drm_crtc_start_stop.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_start_stop.exit

for.end.do.end.i193_crit_edge:                    ; preds = %for.end
  br label %do.end.i193

do.end.i193:                                      ; preds = %do.end.i193.do.end.i193_crit_edge, %for.end.do.end.i193_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !39
  %227 = ptrtoint ptr %mmio.i.i189 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mmio.i.i189, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %228, i32 1120
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %230 = and i32 %229, 50331648
  %tobool4.not.i.not = icmp eq i32 %230, 0
  br i1 %tobool4.not.i.not, label %do.end.i193.do.end.i193_crit_edge, label %do.end.i193.shmob_drm_crtc_start_stop.exit_crit_edge

do.end.i193.shmob_drm_crtc_start_stop.exit_crit_edge: ; preds = %do.end.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_start_stop.exit

do.end.i193.do.end.i193_crit_edge:                ; preds = %do.end.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i193

shmob_drm_crtc_start_stop.exit:                   ; preds = %do.end.i193.shmob_drm_crtc_start_stop.exit_crit_edge, %for.end.shmob_drm_crtc_start_stop.exit_crit_edge
  %231 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %started, align 8
  br label %cleanup

cleanup:                                          ; preds = %shmob_drm_crtc_start_stop.exit, %clk_prepare_enable.exit.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmob_drm_crtc_finish_page_flip(ptr noundef %scrtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scrtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %event6 = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 1
  %2 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event6, align 8
  store ptr null, ptr %event6, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_send_vblank_event(ptr noundef %scrtc, ptr noundef nonnull %3) #5
  tail call void @drm_crtc_vblank_put(ptr noundef %scrtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmob_drm_crtc_create(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 9
  %dpms = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %dpms, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 8
  %1 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ddev, align 8
  %call = tail call i32 @drm_crtc_init(ptr noundef %2, ptr noundef %crtc1, ptr noundef nonnull @crtc_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %helper_private.i = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 9, i32 0, i32 19
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmob_drm_encoder_create(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder1 = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 10
  %dpms = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %dpms, align 8
  %possible_crtcs = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 10, i32 0, i32 6
  %1 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %possible_crtcs, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 8
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 8
  %call = tail call i32 @drm_simple_encoder_init(ptr noundef %3, ptr noundef %encoder1, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %helper_private.i = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 10, i32 0, i32 11
  %4 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @encoder_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmob_drm_connector_create(ptr noundef %sdev, ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connector1 = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11
  %encoder4 = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %encoder4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %encoder, ptr %encoder4, align 8
  %pdata = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata, align 4
  %panel = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %panel, align 4
  %display_info = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %2, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height_mm, align 4
  %height_mm9 = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %height_mm9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height_mm9, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 8
  %9 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddev, align 8
  %call = tail call i32 @drm_connector_init(ptr noundef %10, ptr noundef %connector1, ptr noundef nonnull @connector_funcs, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_private.i = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @connector_helper_funcs, ptr %helper_private.i, align 4
  %call11 = tail call i32 @shmob_drm_backlight_init(ptr noundef %connector1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.err_cleanup_crit_edge, label %if.end14

if.end.err_cleanup_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1, ptr noundef %encoder) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %err_backlight, label %if.end18

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector1, i32 noundef 3) #5
  %base = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 11, i32 0, i32 6
  %12 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev, align 8
  %dpms_property = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 36
  %14 = ptrtoint ptr %dpms_property to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dpms_property, align 4
  %call21 = tail call i32 @drm_object_property_set_value(ptr noundef %base, ptr noundef %15, i64 noundef 3) #5
  br label %cleanup

err_backlight:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @shmob_drm_backlight_exit(ptr noundef %connector1) #5
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_backlight, %if.end.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end.err_cleanup_crit_edge ], [ %call15, %err_backlight ]
  tail call void @drm_connector_cleanup(ptr noundef %connector1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_cleanup ], [ 0, %if.end18 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_backlight_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_backlight_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmob_drm_crtc_start_stop(ptr nocapture noundef readonly %scrtc, i1 noundef zeroext %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scrtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %7, 1
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %9, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %10) #5, !srcloc !32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %7, -2
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %12, i32 1140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %13) #5, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i3640 = getelementptr i8, ptr %15, i32 1120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3640) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %17 = and i32 %16, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not41 = icmp eq i32 %17, 0
  %or.cond3942 = xor i1 %tobool4.not41, %start
  br i1 %or.cond3942, label %if.end.while.end_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !39
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %19, i32 1120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %21 = and i32 %20, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  %or.cond39 = xor i1 %tobool4.not, %start
  br i1 %or.cond39, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end.while.end_crit_edge
  br i1 %start, label %while.end.if.end18_crit_edge, label %if.then17

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 16777216) #5, !srcloc !32
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmob_drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_plane_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_crtc_page_flip(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %page_flip_flags, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %event8 = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %event8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event8, align 8
  %cmp9.not = icmp eq ptr %3, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call5) #5
  br i1 %cmp9.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %fb13 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %fb13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fb, ptr %fb13, align 4
  tail call fastcc void @shmob_drm_crtc_update_base(ptr noundef %crtc)
  %tobool.not = icmp eq ptr %event, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pipe = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %event, i32 0, i32 1
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pipe, align 4
  %call16 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #5
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #5
  %8 = ptrtoint ptr %event8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %event, ptr %event8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %irq_lock.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #5
  %mmio.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %7 = or i32 %6, -16711680
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %9, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %7) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %irq_lock.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #5
  %mmio.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %7 = and i32 %6, 16711679
  %8 = or i32 %7, -16777216
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %8) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmob_drm_crtc_update_base(ptr nocapture noundef %scrtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scrtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %x = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 14
  %4 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 15
  %6 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %scrtc, i32 0, i32 6
  %8 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary.i, align 4
  %fb2.i = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb2.i, align 4
  %format.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 3
  %12 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format.i, align 8
  %yuv.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %yuv.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %yuv.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bpp4.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %bpp4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpp4.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.false.i ], [ 8, %entry.cond.end.i_crit_edge ]
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %11, i32 noundef 0) #5
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 7
  %20 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offsets.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pitches.i, align 8
  %mul.i = mul i32 %23, %7
  %mul7.i = mul i32 %cond.i, %5
  %div48.i = lshr i32 %mul7.i, 3
  %add.i = add i32 %div48.i, %19
  %add6.i = add i32 %add.i, %21
  %add8.i = add i32 %add6.i, %mul.i
  %dma.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 4
  %24 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add8.i, ptr %dma.i, align 4
  %25 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %format.i, align 8
  %yuv11.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %yuv11.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %yuv11.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not.i = icmp eq i8 %28, 0
  br i1 %tobool12.not.i, label %cond.end.i.shmob_drm_crtc_compute_base.exit_crit_edge, label %if.then.i

cond.end.i.shmob_drm_crtc_compute_base.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_compute_base.exit

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bpp14.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %bpp14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bpp14.i, align 4
  %sub.i = add i32 %30, -8
  %call15.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %11, i32 noundef 1) #5
  %paddr16.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call15.i, i32 0, i32 1
  %31 = ptrtoint ptr %paddr16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr16.i, align 8
  %arrayidx18.i = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 4
  %cond20.i = select i1 %cmp.i, i32 2, i32 1
  %div21.i = sdiv i32 %7, %cond20.i
  %arrayidx23.i = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx23.i, align 4
  %mul24.i = mul i32 %36, %div21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp26.i = icmp eq i32 %sub.i, 16
  %cond27.i = select i1 %cmp26.i, i32 2, i32 1
  %mul28.i = mul i32 %cond27.i, %5
  %add25.i = add i32 %add19.i, %mul28.i
  %add29.i = add i32 %add25.i, %mul24.i
  %arrayidx31.i = getelementptr %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add29.i, ptr %arrayidx31.i, align 4
  br label %shmob_drm_crtc_compute_base.exit

shmob_drm_crtc_compute_base.exit:                 ; preds = %if.then.i, %cond.end.i.shmob_drm_crtc_compute_base.exit_crit_edge
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma.i, align 4
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %41, i32 9264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %42) #5, !srcloc !32
  %43 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %format.i, align 8
  %yuv = getelementptr inbounds %struct.shmob_drm_format_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %yuv, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %shmob_drm_crtc_compute_base.exit.if.end_crit_edge, label %if.then

shmob_drm_crtc_compute_base.exit.if.end_crit_edge: ; preds = %shmob_drm_crtc_compute_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %shmob_drm_crtc_compute_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.shmob_drm_crtc, ptr %scrtc, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx3, align 4
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 8
  %add.ptr1.i15 = getelementptr i8, ptr %50, i32 9268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i15, i32 %51) #5, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %shmob_drm_crtc_compute_base.exit.if.end_crit_edge
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %53, i32 1144
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %55 = xor i32 %54, 33554432
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %57, i32 1144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %55) #5, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_crtc_dpms(ptr noundef %crtc, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpms = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp1 = icmp eq i32 %mode, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @shmob_drm_crtc_start(ptr noundef %crtc)
  br label %if.end3

if.else:                                          ; preds = %if.end
  %started.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 6
  %2 = ptrtoint ptr %started.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %started.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.if.end3_crit_edge, label %if.end.i

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.i:                                         ; preds = %if.else
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  tail call fastcc void @shmob_drm_crtc_start_stop(ptr noundef %crtc, i1 noundef zeroext false) #5
  %mmio.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !32
  %clock.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.shmob_drm_clk_off.exit.i_crit_edge, label %if.then.i.i

if.end.i.shmob_drm_clk_off.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_clk_off.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %11) #5
  tail call void @clk_unprepare(ptr noundef nonnull %11) #5
  br label %shmob_drm_clk_off.exit.i

shmob_drm_clk_off.exit.i:                         ; preds = %if.then.i.i, %if.end.i.shmob_drm_clk_off.exit.i_crit_edge
  %12 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %started.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %shmob_drm_clk_off.exit.i, %if.else.if.end3_crit_edge, %if.then2
  %13 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mode, ptr %dpms, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_crtc_mode_prepare(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpms.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %dpms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %entry.shmob_drm_crtc_dpms.exit_crit_edge, label %if.end.i

entry.shmob_drm_crtc_dpms.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_dpms.exit

if.end.i:                                         ; preds = %entry
  %started.i.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 6
  %2 = ptrtoint ptr %started.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %started.i.i, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end3.i_crit_edge, label %if.end.i.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.end.i.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  tail call fastcc void @shmob_drm_crtc_start_stop(ptr noundef %crtc, i1 noundef zeroext false) #5
  %mmio.i.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 1136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !32
  %clock.i.i.i = getelementptr inbounds %struct.shmob_drm_device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.shmob_drm_clk_off.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.shmob_drm_clk_off.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_clk_off.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %11) #5
  tail call void @clk_unprepare(ptr noundef nonnull %11) #5
  br label %shmob_drm_clk_off.exit.i.i

shmob_drm_clk_off.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i.i.shmob_drm_clk_off.exit.i.i_crit_edge
  %12 = ptrtoint ptr %started.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %started.i.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %shmob_drm_clk_off.exit.i.i, %if.end.i.if.end3.i_crit_edge
  %13 = ptrtoint ptr %dpms.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %dpms.i, align 4
  br label %shmob_drm_crtc_dpms.exit

shmob_drm_crtc_dpms.exit:                         ; preds = %if.end3.i, %entry.shmob_drm_crtc_dpms.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_crtc_mode_commit(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpms.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %dpms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.shmob_drm_crtc_dpms.exit_crit_edge, label %if.end.i

entry.shmob_drm_crtc_dpms.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %shmob_drm_crtc_dpms.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @shmob_drm_crtc_start(ptr noundef %crtc) #5
  %2 = ptrtoint ptr %dpms.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dpms.i, align 4
  br label %shmob_drm_crtc_dpms.exit

shmob_drm_crtc_dpms.exit:                         ; preds = %if.end.i, %entry.shmob_drm_crtc_dpms.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_crtc_mode_set(ptr nocapture noundef %crtc, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr nocapture noundef readnone %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %format1 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call = tail call ptr @shmob_drm_format_info(i32 noundef %11) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_crtc_mode_set.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_crtc_mode_set, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !40

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %14 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %primary, align 4
  %fb10 = getelementptr inbounds %struct.drm_plane, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %fb10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb10, align 4
  %format11 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %format11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %format11, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_crtc_mode_set.__UNIQUE_ID_ddebug316, ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %21) #5
  br label %cleanup

if.end13:                                         ; preds = %entry
  %format14 = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 3
  %22 = ptrtoint ptr %format14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %format14, align 8
  %23 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %primary, align 4
  %fb16 = getelementptr inbounds %struct.drm_plane, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %fb16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fb16, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pitches, align 8
  %line_size = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 5
  %29 = ptrtoint ptr %line_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %line_size, align 4
  %30 = load ptr, ptr %fb16, align 4
  %yuv.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %yuv.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %yuv.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end13.cond.end.i_crit_edge

if.end13.cond.end.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %bpp4.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %bpp4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bpp4.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end13.cond.end.i_crit_edge
  %cond.i = phi i32 [ %34, %cond.false.i ], [ 8, %if.end13.cond.end.i_crit_edge ]
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %30, i32 noundef 0) #5
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 7
  %37 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offsets.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 6
  %39 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pitches.i, align 8
  %mul.i = mul i32 %40, %y
  %mul7.i = mul i32 %cond.i, %x
  %div48.i = lshr i32 %mul7.i, 3
  %add.i = add i32 %div48.i, %36
  %add6.i = add i32 %add.i, %38
  %add8.i = add i32 %add6.i, %mul.i
  %dma.i = getelementptr inbounds %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 4
  %41 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add8.i, ptr %dma.i, align 4
  %42 = ptrtoint ptr %format14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %format14, align 8
  %yuv11.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %yuv11.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %yuv11.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool12.not.i = icmp eq i8 %45, 0
  br i1 %tobool12.not.i, label %cond.end.i.cleanup_crit_edge, label %if.then.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bpp14.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %bpp14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bpp14.i, align 4
  %sub.i = add i32 %47, -8
  %call15.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %30, i32 noundef 1) #5
  %paddr16.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call15.i, i32 0, i32 1
  %48 = ptrtoint ptr %paddr16.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %paddr16.i, align 8
  %arrayidx18.i = getelementptr %struct.drm_framebuffer, ptr %30, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %51, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 4
  %cond20.i = select i1 %cmp.i, i32 2, i32 1
  %div21.i = sdiv i32 %y, %cond20.i
  %arrayidx23.i = getelementptr %struct.drm_framebuffer, ptr %30, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx23.i, align 4
  %mul24.i = mul i32 %53, %div21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp26.i = icmp eq i32 %sub.i, 16
  %cond27.i = select i1 %cmp26.i, i32 2, i32 1
  %mul28.i = mul i32 %cond27.i, %x
  %add25.i = add i32 %add19.i, %mul28.i
  %add29.i = add i32 %add25.i, %mul24.i
  %arrayidx31.i = getelementptr %struct.shmob_drm_crtc, ptr %crtc, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add29.i, ptr %arrayidx31.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %cond.end.i.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %do.body ], [ 0, %cond.end.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_crtc_mode_set_base(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y, ptr nocapture noundef readnone %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @shmob_drm_crtc_update_base(ptr noundef %crtc)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_encoder_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpms = getelementptr inbounds %struct.shmob_drm_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %connector = getelementptr inbounds %struct.shmob_drm_device, ptr %5, i32 0, i32 11
  tail call void @shmob_drm_backlight_dpms(ptr noundef %connector, i32 noundef %mode) #5
  %6 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mode, ptr %dpms, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @shmob_drm_encoder_mode_fixup(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %modes = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 11, i32 0, i32 17
  %4 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %modes, align 4
  %cmp.i = icmp ne ptr %5, %modes
  br i1 %cmp.i, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_encoder_mode_fixup.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_encoder_mode_fixup, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !40

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_encoder_mode_fixup.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %5, i32 -64
  tail call void @drm_mode_copy(ptr noundef %adjusted_mode, ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body
  ret i1 %cmp.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @shmob_drm_encoder_mode_prepare(ptr nocapture noundef %encoder) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @shmob_drm_encoder_mode_commit(ptr nocapture noundef %encoder) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @shmob_drm_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_backlight_dpms(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @shmob_drm_backlight_exit(ptr noundef %connector) #5
  tail call void @drm_connector_unregister(ptr noundef %connector) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @drm_mode_create(ptr noundef %1) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  %pdata = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %mode2 = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %6, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode2, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call, align 4
  %10 = load ptr, ptr %pdata, align 4
  %hdisplay = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %10, i32 0, i32 2, i32 2, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %hdisplay7 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %hdisplay7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %hdisplay7, align 4
  %14 = load ptr, ptr %pdata, align 4
  %hsync_start = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %14, i32 0, i32 2, i32 2, i32 2
  %15 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hsync_start, align 2
  %hsync_start11 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %hsync_start11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %hsync_start11, align 2
  %18 = load ptr, ptr %pdata, align 4
  %hsync_end = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %18, i32 0, i32 2, i32 2, i32 3
  %19 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hsync_end, align 4
  %hsync_end15 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %hsync_end15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %hsync_end15, align 4
  %22 = load ptr, ptr %pdata, align 4
  %htotal = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %22, i32 0, i32 2, i32 2, i32 4
  %23 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal, align 2
  %htotal19 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %htotal19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %htotal19, align 2
  %26 = load ptr, ptr %pdata, align 4
  %vdisplay = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %26, i32 0, i32 2, i32 2, i32 6
  %27 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vdisplay, align 2
  %vdisplay23 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %vdisplay23 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vdisplay23, align 2
  %30 = load ptr, ptr %pdata, align 4
  %vsync_start = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %30, i32 0, i32 2, i32 2, i32 7
  %31 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vsync_start, align 4
  %vsync_start27 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 7
  %33 = ptrtoint ptr %vsync_start27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vsync_start27, align 4
  %34 = load ptr, ptr %pdata, align 4
  %vsync_end = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %34, i32 0, i32 2, i32 2, i32 8
  %35 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vsync_end, align 2
  %vsync_end31 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 8
  %37 = ptrtoint ptr %vsync_end31 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vsync_end31, align 2
  %38 = load ptr, ptr %pdata, align 4
  %vtotal = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %38, i32 0, i32 2, i32 2, i32 9
  %39 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vtotal, align 4
  %vtotal35 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 9
  %41 = ptrtoint ptr %vtotal35 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vtotal35, align 4
  %42 = load ptr, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %42, i32 0, i32 2, i32 2, i32 12
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %flags39 = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 11
  %45 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flags39, align 4
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata, align 4
  %panel41 = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %panel41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %panel41, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %50 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %display_info, align 8
  %51 = load ptr, ptr %pdata, align 4
  %height_mm = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %51, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height_mm, align 4
  %height_mm46 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %54 = ptrtoint ptr %height_mm46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %height_mm46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @shmob_drm_connector_best_encoder(ptr nocapture noundef readonly %connector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.shmob_drm_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 167, i32 6}
!2 = !{ptr @crtc_funcs, !3, !"crtc_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 470, i32 36}
!4 = !{ptr @crtc_helper_funcs, !5, !"crtc_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 382, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 356, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @shmob_drm_crtc_mode_set.__UNIQUE_ID_ddebug316, !7, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!11 = !{ptr @encoder_helper_funcs, !12, !"encoder_helper_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 554, i32 46}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 525, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @shmob_drm_encoder_mode_fixup.__UNIQUE_ID_ddebug317, !14, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!17 = !{ptr @connector_funcs, !18, !"connector_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 640, i32 41}
!19 = !{ptr @connector_helper_funcs, !20, !"connector_helper_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_crtc.c", i32 626, i32 48}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{i64 2152529590}
!32 = !{i64 4987468}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 4987886}
!35 = !{i64 2152528235}
!36 = !{i64 2156730405}
!37 = !{i64 2156730247}
!38 = !{i64 2156730948}
!39 = !{i64 2156730790}
!40 = !{i64 2148307445, i64 2148307450, i64 2148307463, i64 2148307507, i64 2148307541, i64 2148307562}
