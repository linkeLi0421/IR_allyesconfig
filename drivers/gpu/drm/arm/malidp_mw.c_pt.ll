; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/malidp_mw.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/malidp_mw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.malidp_hw = type { %struct.malidp_hw_regmap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.malidp_hw_regmap = type { i16, i16, i16, i16, i8, i8, ptr, %struct.malidp_irq_map, %struct.malidp_irq_map, %struct.malidp_irq_map, ptr, i8, i8 }
%struct.malidp_irq_map = type { i32, i32, i32 }
%struct.malidp_drm = type { ptr, %struct.drm_crtc, %struct.drm_writeback_connector, %struct.wait_queue_head, ptr, %struct.atomic_t, i32, %struct.malidp_error_stats, %struct.malidp_error_stats, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.malidp_error_stats = type { i32, i32, i64 }
%struct.malidp_format_id = type { i32, i8, i8 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.malidp_mw_connector_state = type { %struct.drm_connector_state, [2 x i32], [2 x i32], i8, i8, i8, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
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

@malidp_mw_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @malidp_mw_connector_get_modes, ptr null, ptr @malidp_mw_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@malidp_mw_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @malidp_mw_connector_reset, ptr @malidp_mw_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @malidp_mw_connector_destroy, ptr @malidp_mw_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@malidp_mw_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @malidp_mw_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Enable memwrite %ux%u:%d %pad fmt: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable memwrite\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_mw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Writeback framebuffer does not support modifiers\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid pixel format %p4cc\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid pitch %u for plane %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rgb2yuv_coeffs_bt709_limited = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 47, i16 157, i16 16, i16 -26, i16 -87, i16 112, i16 112, i16 -102, i16 -10, i16 16, i16 128, i16 128], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [33 x i8] c"malidp_mw_connector_helper_funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 59, i32 48 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"malidp_mw_connector_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"malidp_mw_encoder_helper_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 181, i32 46 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 251, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 266, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 92, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 140, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 146, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 154, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 166, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"rgb2yuv_coeffs_bt709_limited\00", align 1
@___asan_gen_.38 = private constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_mw.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 117, i32 18 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @malidp_mw_connector_helper_funcs, ptr @malidp_mw_connector_funcs, ptr @malidp_mw_encoder_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rgb2yuv_coeffs_bt709_limited], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_mw_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_mw_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_mw_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb2yuv_coeffs_bt709_limited to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_mw_connector_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %enable_memwrite = getelementptr inbounds %struct.malidp_hw, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %enable_memwrite to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_memwrite, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %shl = shl nuw i32 1, %9
  %mw_connector = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2
  %possible_crtcs = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2, i32 1, i32 6
  %10 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %possible_crtcs, align 4
  %helper_private.i = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @malidp_mw_connector_helper_funcs, ptr %helper_private.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %n_pixel_formats.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %n_pixel_formats.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_pixel_formats.i, align 4
  %conv.i = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %conv.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %17 = ptrtoint ptr %n_pixel_formats.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %n_pixel_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp28.not.i = icmp eq i8 %18, 0
  br i1 %cmp28.not.i, label %for.cond.preheader.i.if.end5_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end5_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pixel_formats.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %13, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %n.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %pixel_formats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pixel_formats.i, align 4
  %layer.i = getelementptr %struct.malidp_format_id, ptr %20, i32 %i.030.i, i32 1
  %21 = ptrtoint ptr %layer.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %layer.i, align 4
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not.i = icmp eq i8 %23, 0
  br i1 %tobool6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.malidp_format_id, ptr %20, i32 %i.030.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %n.029.i, 1
  %arrayidx10.i = getelementptr i32, ptr %call8.i.i.i, i32 %n.029.i
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx10.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %inc.i, %if.then7.i ], [ %n.029.i, %for.body.i.for.inc.i_crit_edge ]
  %inc12.i = add nuw nsw i32 %i.030.i, 1
  %27 = ptrtoint ptr %n_pixel_formats.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %n_pixel_formats.i, align 4
  %conv3.i = zext i8 %28 to i32
  %cmp.i = icmp ult i32 %inc12.i, %conv3.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %for.cond.preheader.i.if.end5_crit_edge
  %n_formats.0 = phi i32 [ 0, %for.cond.preheader.i.if.end5_crit_edge ], [ %n.1.i, %for.inc.i.if.end5_crit_edge ]
  %call7 = tail call i32 @drm_writeback_connector_init(ptr noundef %drm, ptr noundef %mw_connector, ptr noundef nonnull @malidp_mw_connector_funcs, ptr noundef nonnull @malidp_mw_encoder_helper_funcs, ptr noundef nonnull %call8.i.i.i, i32 noundef %n_formats.0) #6
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.end5 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_connector_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_mw_atomic_commit(ptr nocapture noundef readonly %drm, ptr nocapture noundef readnone %old_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mw_connector = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2
  %state = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2, i32 0, i32 52
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeback_job, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %fb4 = getelementptr inbounds %struct.drm_writeback_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb4, align 4
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %pitches = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pitches, align 4
  %addrs = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 1
  %format = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %format, align 4
  %conv = zext i8 %19 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %11, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %addrs, i32 noundef %conv) #6
  tail call void @drm_writeback_queue_job(ptr noundef %mw_connector, ptr noundef nonnull %3) #6
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %enable_memwrite = getelementptr inbounds %struct.malidp_hw, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %enable_memwrite to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_memwrite, align 4
  %n_planes = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %n_planes, align 1
  %conv10 = zext i8 %25 to i32
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width, align 8
  %conv12 = trunc i32 %27 to i16
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %conv14 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %format, align 4
  %conv16 = zext i8 %31 to i32
  %rgb2yuv_initialized = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %rgb2yuv_initialized to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rgb2yuv_initialized, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool17.not = icmp eq i8 %33, 0
  br i1 %tobool17.not, label %cond.true, label %if.then2.cond.end_crit_edge

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %rgb2yuv_coeffs = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %rgb2yuv_coeffs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rgb2yuv_coeffs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then2.cond.end_crit_edge
  %cond = phi ptr [ %35, %cond.true ], [ null, %if.then2.cond.end_crit_edge ]
  %call = tail call i32 %23(ptr noundef %5, ptr noundef %addrs, ptr noundef %pitches, i32 noundef %conv10, i16 noundef zeroext %conv12, i16 noundef zeroext %conv14, i32 noundef %conv16, ptr noundef %cond) #6
  %rgb2yuv_coeffs18 = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %rgb2yuv_coeffs18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rgb2yuv_coeffs18, align 4
  %tobool19 = icmp ne ptr %37, null
  %frombool = zext i1 %tobool19 to i8
  %38 = ptrtoint ptr %rgb2yuv_initialized to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %rgb2yuv_initialized, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %39 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev22, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %40, i32 noundef 2, ptr noundef nonnull @.str.1) #6
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %disable_memwrite = getelementptr inbounds %struct.malidp_hw, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %disable_memwrite to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disable_memwrite, align 4
  tail call void %44(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_queue_job(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_mw_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_height, align 4
  %call = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef %3, i32 noundef %5) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp_mw_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %5 to i32
  %min_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 23
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp sgt i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5 = icmp slt i32 %9, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %min_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 24
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp7 = icmp sgt i32 %11, %conv3
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3)
  %cmp10 = icmp slt i32 %13, %conv3
  %spec.select = select i1 %cmp10, i32 19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 18, %lor.lhs.false.cleanup_crit_edge ], [ 18, %entry.cleanup_crit_edge ], [ 19, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_mw_connector_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 140) #10
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  tail call void @kfree(ptr noundef %4) #6
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %connector, ptr noundef %call7.i.i) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp_mw_connector_detect(ptr nocapture noundef readnone %connector, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_mw_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @malidp_mw_connector_duplicate_state(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 140) #10
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %rgb2yuv_coeffs = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %rgb2yuv_coeffs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rgb2yuv_coeffs, align 4
  %rgb2yuv_coeffs28 = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %rgb2yuv_coeffs28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rgb2yuv_coeffs28, align 8
  %rgb2yuv_initialized = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %rgb2yuv_initialized to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rgb2yuv_initialized, align 2, !range !31
  %rgb2yuv_initialized30 = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rgb2yuv_initialized30 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rgb2yuv_initialized30, align 2
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end26 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_mw_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 14
  %4 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writeback_job, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end:                                           ; preds = %entry
  %fb2 = getelementptr inbounds %struct.drm_writeback_job, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb2, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp.not = icmp eq i32 %9, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv5 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv5)
  %cmp6.not = icmp eq i32 %13, %conv5
  br i1 %cmp6.not, label %if.end11, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %height10 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %16 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %17) #6
  br label %cleanup55

if.end11:                                         ; preds = %lor.lhs.false
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool12.not = icmp eq i64 %19, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #6
  br label %cleanup55

if.end14:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %format, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %call = tail call zeroext i8 @malidp_hw_get_format_id(ptr noundef %23, i8 noundef zeroext 32, i32 noundef %27, i1 noundef zeroext false) #6
  %format20 = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %conn_state, i32 0, i32 3
  %28 = ptrtoint ptr %format20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call, ptr %format20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp23 = icmp eq i8 %call, -1
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %format, align 8
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %30) #6
  br label %cleanup55

if.end28:                                         ; preds = %if.end14
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_planes, align 1
  %conv30 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp3194.not = icmp eq i8 %32, 0
  br i1 %cmp3194.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %if.end41.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %call33 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %7, i32 noundef %i.095) #6
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %bus_align_bytes.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %bus_align_bytes.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bus_align_bytes.i, align 1
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 %i.095
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %conv36 = zext i8 %38 to i32
  %sub = add nsw i32 %conv36, -1
  %and = and i32 %sub, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %40, i32 noundef %i.095) #6
  br label %cleanup55

if.end41:                                         ; preds = %for.body
  %arrayidx45 = getelementptr %struct.malidp_mw_connector_state, ptr %conn_state, i32 0, i32 2, i32 %i.095
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx45, align 4
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call33, i32 0, i32 1
  %42 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %paddr, align 8
  %arrayidx46 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 %i.095
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx46, align 4
  %add = add i32 %45, %43
  %arrayidx47 = getelementptr %struct.malidp_mw_connector_state, ptr %conn_state, i32 0, i32 1, i32 %i.095
  %46 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %arrayidx47, align 4
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %conv30
  br i1 %exitcond.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end41.for.end_crit_edge, %if.end28.for.end_crit_edge
  %n_planes50 = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %conn_state, i32 0, i32 4
  %47 = ptrtoint ptr %n_planes50 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %32, ptr %n_planes50, align 1
  %48 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_yuv, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool52.not = icmp eq i8 %51, 0
  br i1 %tobool52.not, label %for.end.cleanup55_crit_edge, label %if.then53

for.end.cleanup55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %rgb2yuv_coeffs = getelementptr inbounds %struct.malidp_mw_connector_state, ptr %conn_state, i32 0, i32 6
  %52 = ptrtoint ptr %rgb2yuv_coeffs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @rgb2yuv_coeffs_bt709_limited, ptr %rgb2yuv_coeffs, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %if.then53, %for.end.cleanup55_crit_edge, %if.then38, %if.then25, %if.then13, %if.then8, %entry.cleanup55_crit_edge
  %retval.2 = phi i32 [ -22, %if.then8 ], [ -22, %if.then13 ], [ -22, %if.then25 ], [ 0, %entry.cleanup55_crit_edge ], [ -22, %if.then38 ], [ 0, %if.then53 ], [ 0, %for.end.cleanup55_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @malidp_hw_get_format_id(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 251, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 266, i32 3}
!4 = !{ptr @malidp_mw_connector_helper_funcs, !5, !"malidp_mw_connector_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 59, i32 48}
!6 = !{ptr @malidp_mw_connector_funcs, !7, !"malidp_mw_connector_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 108, i32 41}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 92, i32 6}
!10 = !{ptr @malidp_mw_encoder_helper_funcs, !11, !"malidp_mw_encoder_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 181, i32 46}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 140, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 146, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 154, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 166, i32 4}
!20 = !{ptr @rgb2yuv_coeffs_bt709_limited, !21, !"rgb2yuv_coeffs_bt709_limited", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/malidp_mw.c", i32 117, i32 18}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 1, i32 2000}
