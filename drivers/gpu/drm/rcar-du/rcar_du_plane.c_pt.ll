; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.89, i32, i32, i32 }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.89 = type { ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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

@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcar_du_drm\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_du_atomic_check_planes\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_plane.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: checking plane (%u,%tu)\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: plane is being disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: plane needs reallocation\0A\00", [34 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: finding free planes for group %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: plane (%u,%tu) has been freed, skipping\0A\00", [51 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: plane (%u,%tu) uses %u hwplanes (index %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: group %u free planes mask 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: allocating plane (%u,%tu)\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: no available hardware plane\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: allocated %u hwplanes (index %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__rcar_du_plane_atomic_check.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__rcar_du_plane_atomic_check\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unsupported format %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_du_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @rcar_du_plane_reset, ptr null, ptr @rcar_du_plane_atomic_duplicate_state, ptr @rcar_du_plane_atomic_destroy_state, ptr @rcar_du_plane_atomic_set_property, ptr @rcar_du_plane_atomic_get_property, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@formats = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 909199186, i32 892424769, i32 892424792, i32 875713112, i32 875713089, i32 1498831189, i32 1448695129, i32 842094158, i32 825382478, i32 909203022], [56 x i8] zeroinitializer }, align 32
@rcar_du_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @rcar_du_plane_atomic_check, ptr @rcar_du_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 17]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199186]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 153, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 162, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 175, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 203, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 224, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 234, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 246, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 264, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 292, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 297, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 601, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"rcar_du_plane_funcs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 734, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 745, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"rcar_du_plane_helper_funcs\00", align 1
@___asan_gen_.69 = private constant [43 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_plane.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 650, i32 44 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rcar_du_plane_funcs, ptr @formats, ptr @rcar_du_plane_helper_funcs], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_atomic_check_planes(ptr noundef %dev, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %group_freed_planes = alloca [2 x i32], align 8
  %group_free_planes = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %group_freed_planes) #7
  %0 = ptrtoint ptr %group_freed_planes to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %group_freed_planes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %group_free_planes) #7
  %1 = ptrtoint ptr %group_free_planes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %group_free_planes, align 8
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %num_total_plane610 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 17
  %4 = ptrtoint ptr %num_total_plane610 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_total_plane610, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp611.not = icmp eq i32 %5, 0
  br i1 %cmp611.not, label %entry.cleanup391_crit_edge, label %for.body.lr.ph

entry.cleanup391_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

for.body.lr.ph:                                   ; preds = %entry
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %needs_realloc.0.off0616 = phi i1 [ false, %for.body.lr.ph ], [ %needs_realloc.3.off0, %for.inc.for.body_crit_edge ]
  %groups.0614 = phi i32 [ 0, %for.body.lr.ph ], [ %groups.3, %for.inc.for.body_crit_edge ]
  %i.0612 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.0612
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.0612, i32 2
  %10 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state, align 4
  %new_state = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.0612, i32 3
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then16)) #7
          to label %do.end [label %if.then16], !srcloc !54

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %group = getelementptr inbounds %struct.rcar_du_plane, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group, align 8
  %index18 = getelementptr inbounds %struct.rcar_du_group, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index18, align 8
  %planes20 = getelementptr inbounds %struct.rcar_du_group, ptr %17, i32 0, i32 11
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %planes20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 536
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug316, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %sub.ptr.div) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true
  %format = getelementptr inbounds %struct.rcar_du_plane_state, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %do.body23, label %if.end50

do.body23:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then35)) #7
          to label %do.end39 [label %if.then35], !srcloc !54

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug317, ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %group40 = getelementptr inbounds %struct.rcar_du_plane, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %group40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group40, align 8
  %planes41 = getelementptr inbounds %struct.rcar_du_group, ptr %25, i32 0, i32 11
  %sub.ptr.lhs.cast43 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast44 = ptrtoint ptr %planes41 to i32
  %sub.ptr.sub45 = sub i32 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %index48 = getelementptr inbounds %struct.rcar_du_group, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %index48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index48, align 8
  br label %for.inc.sink.split

if.end50:                                         ; preds = %do.end
  %format.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %format.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end50.do.body53_crit_edge, label %lor.lhs.false.i

if.end50.do.body53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

lor.lhs.false.i:                                  ; preds = %if.end50
  %planes.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %planes.i, align 4
  %planes3.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %21, i32 0, i32 3
  %32 = ptrtoint ptr %planes3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %planes3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.not.i = icmp eq i32 %31, %33
  br i1 %cmp.not.i, label %rcar_du_plane_needs_realloc.exit, label %lor.lhs.false.i.do.body53_crit_edge

lor.lhs.false.i.do.body53_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

rcar_du_plane_needs_realloc.exit:                 ; preds = %lor.lhs.false.i
  %source.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %11, i32 0, i32 3
  %34 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %source.i, align 4
  %source4.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %13, i32 0, i32 3
  %36 = ptrtoint ptr %source4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %source4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp5.not.i.not = icmp eq i32 %35, %37
  br i1 %cmp5.not.i.not, label %rcar_du_plane_needs_realloc.exit.for.inc_crit_edge, label %rcar_du_plane_needs_realloc.exit.do.body53_crit_edge

rcar_du_plane_needs_realloc.exit.do.body53_crit_edge: ; preds = %rcar_du_plane_needs_realloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

rcar_du_plane_needs_realloc.exit.for.inc_crit_edge: ; preds = %rcar_du_plane_needs_realloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body53:                                        ; preds = %rcar_du_plane_needs_realloc.exit.do.body53_crit_edge, %lor.lhs.false.i.do.body53_crit_edge, %if.end50.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then65)) #7
          to label %do.end69 [label %if.then65], !srcloc !54

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug318, ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body53
  %group70 = getelementptr inbounds %struct.rcar_du_plane, ptr %9, i32 0, i32 1
  %40 = ptrtoint ptr %group70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %group70, align 8
  %index71 = getelementptr inbounds %struct.rcar_du_group, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %index71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index71, align 8
  %shl72 = shl nuw i32 1, %43
  %or73 = or i32 %shl72, %groups.0614
  %planes75 = getelementptr inbounds %struct.rcar_du_group, ptr %41, i32 0, i32 11
  %sub.ptr.lhs.cast77 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast78 = ptrtoint ptr %planes75 to i32
  %sub.ptr.sub79 = sub i32 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %do.end69, %do.end39
  %.sink = phi i32 [ %43, %do.end69 ], [ %27, %do.end39 ]
  %sub.ptr.div46.pn.in = phi i32 [ %sub.ptr.sub79, %do.end69 ], [ %sub.ptr.sub45, %do.end39 ]
  %groups.3.ph = phi i32 [ %or73, %do.end69 ], [ %groups.0614, %do.end39 ]
  %needs_realloc.3.off0.ph = phi i1 [ true, %do.end69 ], [ %needs_realloc.0.off0616, %do.end39 ]
  %sub.ptr.div46.pn = sdiv exact i32 %sub.ptr.div46.pn.in, 536
  %shl.sink = shl nuw i32 1, %sub.ptr.div46.pn
  %arrayidx84 = getelementptr [2 x i32], ptr %group_freed_planes, i32 0, i32 %.sink
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx84, align 4
  %or = or i32 %shl.sink, %45
  store i32 %or, ptr %arrayidx84, align 4
  %hwindex = getelementptr inbounds %struct.rcar_du_plane_state, ptr %13, i32 0, i32 2
  %46 = ptrtoint ptr %hwindex to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %hwindex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %rcar_du_plane_needs_realloc.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %groups.3 = phi i32 [ %groups.0614, %for.body.for.inc_crit_edge ], [ %groups.0614, %rcar_du_plane_needs_realloc.exit.for.inc_crit_edge ], [ %groups.3.ph, %for.inc.sink.split ]
  %needs_realloc.3.off0 = phi i1 [ %needs_realloc.0.off0616, %for.body.for.inc_crit_edge ], [ %needs_realloc.0.off0616, %rcar_du_plane_needs_realloc.exit.for.inc_crit_edge ], [ %needs_realloc.3.off0.ph, %for.inc.sink.split ]
  %inc = add nuw i32 %i.0612, 1
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 17
  %49 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_total_plane, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %needs_realloc.3.off0, label %for.end.while.cond_crit_edge, label %for.end.cleanup391_crit_edge

for.end.cleanup391_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

for.end.while.cond_crit_edge:                     ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup226.while.cond_crit_edge, %for.end.while.cond_crit_edge
  %groups.4 = phi i32 [ %groups.5, %cleanup226.while.cond_crit_edge ], [ %groups.3, %for.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groups.4)
  %tobool95.not = icmp eq i32 %groups.4, 0
  br i1 %tobool95.not, label %for.cond231.preheader, label %while.body

for.cond231.preheader:                            ; preds = %while.cond
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  %num_total_plane234624 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 30, i32 17
  %53 = ptrtoint ptr %num_total_plane234624 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_total_plane234624, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp235625.not = icmp eq i32 %54, 0
  br i1 %cmp235625.not, label %for.cond231.preheader.cleanup391_crit_edge, label %for.body236.lr.ph

for.cond231.preheader.cleanup391_crit_edge:       ; preds = %for.cond231.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

for.body236.lr.ph:                                ; preds = %for.cond231.preheader
  %planes237 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body236

while.body:                                       ; preds = %while.cond
  %55 = tail call i32 @llvm.cttz.i32(i32 %groups.4, i1 true), !range !55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then112)) #7
          to label %do.end116 [label %if.then112], !srcloc !54

if.then112:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug319, ptr noundef %57, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %55) #7
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %while.body
  %num_planes = getelementptr %struct.rcar_du_device, ptr %add.ptr.i, i32 0, i32 6, i32 %55, i32 10
  %58 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp118618.not = icmp eq i32 %59, 0
  br i1 %cmp118618.not, label %do.end116.for.end202_crit_edge, label %for.body119.lr.ph

do.end116.for.end202_crit_edge:                   ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end202

for.body119.lr.ph:                                ; preds = %do.end116
  %arrayidx130 = getelementptr [2 x i32], ptr %group_freed_planes, i32 0, i32 %55
  br label %for.body119

for.body119:                                      ; preds = %for.inc200.for.body119_crit_edge, %for.body119.lr.ph
  %i.1620 = phi i32 [ 0, %for.body119.lr.ph ], [ %inc201, %for.inc200.for.body119_crit_edge ]
  %used_planes.0619 = phi i32 [ 0, %for.body119.lr.ph ], [ %used_planes.1581, %for.inc200.for.body119_crit_edge ]
  %arrayidx122 = getelementptr %struct.rcar_du_device, ptr %add.ptr.i, i32 0, i32 6, i32 %55, i32 11, i32 %i.1620
  %call125 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %state, ptr noundef %arrayidx122) #7
  %cmp.i = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup226.thread, label %if.end129

cleanup226.thread:                                ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %call125 to i32
  br label %cleanup391

if.end129:                                        ; preds = %for.body119
  %61 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx130, align 4
  %shl131 = shl nuw i32 1, %i.1620
  %and = and i32 %62, %shl131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool132.not = icmp eq i32 %and, 0
  br i1 %tobool132.not, label %if.end160, label %do.body134

do.body134:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then146)) #7
          to label %cleanup195 [label %if.then146], !srcloc !54

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %group148 = getelementptr %struct.rcar_du_device, ptr %add.ptr.i, i32 0, i32 6, i32 %55, i32 11, i32 %i.1620, i32 1
  %65 = ptrtoint ptr %group148 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %group148, align 8
  %index149 = getelementptr inbounds %struct.rcar_du_group, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %index149 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index149, align 8
  %planes151 = getelementptr inbounds %struct.rcar_du_group, ptr %66, i32 0, i32 11
  %sub.ptr.lhs.cast153 = ptrtoint ptr %arrayidx122 to i32
  %sub.ptr.rhs.cast154 = ptrtoint ptr %planes151 to i32
  %sub.ptr.sub155 = sub i32 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154
  %sub.ptr.div156 = sdiv exact i32 %sub.ptr.sub155, 536
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug320, ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %68, i32 noundef %sub.ptr.div156) #7
  br label %for.inc200

if.end160:                                        ; preds = %if.end129
  %hwindex.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call125, i32 0, i32 2
  %69 = ptrtoint ptr %hwindex.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hwindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i539 = icmp eq i32 %70, -1
  br i1 %cmp.i539, label %if.end160.rcar_du_plane_hwmask.exit_crit_edge, label %if.end.i542

if.end160.rcar_du_plane_hwmask.exit_crit_edge:    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_du_plane_hwmask.exit

if.end.i542:                                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %70
  %format.i540 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call125, i32 0, i32 1
  %71 = ptrtoint ptr %format.i540 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format.i540, align 4
  %planes.i541 = getelementptr inbounds %struct.rcar_du_format_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %planes.i541 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %planes.i541, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp2.i = icmp eq i32 %74, 2
  %add.i = add nuw i32 %70, 1
  %rem11.i = and i32 %add.i, 7
  %shl5.i = shl nuw nsw i32 1, %rem11.i
  %or.i = select i1 %cmp2.i, i32 %shl5.i, i32 0
  %mask.0.i = or i32 %or.i, %shl.i
  br label %rcar_du_plane_hwmask.exit

rcar_du_plane_hwmask.exit:                        ; preds = %if.end.i542, %if.end160.rcar_du_plane_hwmask.exit_crit_edge
  %retval.0.i543 = phi i32 [ %mask.0.i, %if.end.i542 ], [ 0, %if.end160.rcar_du_plane_hwmask.exit_crit_edge ]
  %or163 = or i32 %retval.0.i543, %used_planes.0619
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then176)) #7
          to label %cleanup195 [label %if.then176], !srcloc !54

if.then176:                                       ; preds = %rcar_du_plane_hwmask.exit
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 8
  %group178 = getelementptr %struct.rcar_du_device, ptr %add.ptr.i, i32 0, i32 6, i32 %55, i32 11, i32 %i.1620, i32 1
  %77 = ptrtoint ptr %group178 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %group178, align 8
  %index179 = getelementptr inbounds %struct.rcar_du_group, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %index179 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index179, align 8
  %planes181 = getelementptr inbounds %struct.rcar_du_group, ptr %78, i32 0, i32 11
  %sub.ptr.lhs.cast183 = ptrtoint ptr %arrayidx122 to i32
  %sub.ptr.rhs.cast184 = ptrtoint ptr %planes181 to i32
  %sub.ptr.sub185 = sub i32 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %sub.ptr.div186 = sdiv exact i32 %sub.ptr.sub185, 536
  %format187 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call125, i32 0, i32 1
  %81 = ptrtoint ptr %format187 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %format187, align 4
  %tobool188.not = icmp eq ptr %82, null
  br i1 %tobool188.not, label %if.then176.cond.end_crit_edge, label %cond.true

if.then176.cond.end_crit_edge:                    ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  %planes190 = getelementptr inbounds %struct.rcar_du_format_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %planes190 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %planes190, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then176.cond.end_crit_edge
  %cond = phi i32 [ %84, %cond.true ], [ 0, %if.then176.cond.end_crit_edge ]
  %85 = ptrtoint ptr %hwindex.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hwindex.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug321, ptr noundef %76, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %80, i32 noundef %sub.ptr.div186, i32 noundef %cond, i32 noundef %86) #7
  br label %for.inc200

cleanup195:                                       ; preds = %rcar_du_plane_hwmask.exit, %do.body134
  %used_planes.1 = phi i32 [ %used_planes.0619, %do.body134 ], [ %or163, %rcar_du_plane_hwmask.exit ]
  %cleanup.dest.slot.0 = phi i32 [ 17, %do.body134 ], [ 0, %rcar_du_plane_hwmask.exit ]
  %87 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0, label %cleanup195.cleanup226_crit_edge [
    i32 0, label %cleanup195.for.inc200_crit_edge
    i32 17, label %cleanup195.for.inc200_crit_edge648
  ]

cleanup195.for.inc200_crit_edge648:               ; preds = %cleanup195
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc200

cleanup195.for.inc200_crit_edge:                  ; preds = %cleanup195
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc200

cleanup195.cleanup226_crit_edge:                  ; preds = %cleanup195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup226

for.inc200:                                       ; preds = %cleanup195.for.inc200_crit_edge, %cleanup195.for.inc200_crit_edge648, %cond.end, %if.then146
  %used_planes.1581 = phi i32 [ %used_planes.1, %cleanup195.for.inc200_crit_edge ], [ %used_planes.1, %cleanup195.for.inc200_crit_edge648 ], [ %or163, %cond.end ], [ %used_planes.0619, %if.then146 ]
  %inc201 = add nuw i32 %i.1620, 1
  %88 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_planes, align 8
  %cmp118 = icmp ult i32 %inc201, %89
  br i1 %cmp118, label %for.inc200.for.body119_crit_edge, label %for.inc200.for.end202_crit_edge

for.inc200.for.end202_crit_edge:                  ; preds = %for.inc200
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end202

for.inc200.for.body119_crit_edge:                 ; preds = %for.inc200
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body119

for.end202:                                       ; preds = %for.inc200.for.end202_crit_edge, %do.end116.for.end202_crit_edge
  %used_planes.0.lcssa = phi i32 [ 0, %do.end116.for.end202_crit_edge ], [ %used_planes.1581, %for.inc200.for.end202_crit_edge ]
  %neg = and i32 %used_planes.0.lcssa, 255
  %and203 = xor i32 %neg, 255
  %arrayidx204 = getelementptr [2 x i32], ptr %group_free_planes, i32 0, i32 %55
  %90 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and203, ptr %arrayidx204, align 4
  %shl205 = shl nuw i32 1, %55
  %neg206 = xor i32 %shl205, -1
  %and207 = and i32 %groups.4, %neg206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then220)) #7
          to label %cleanup226 [label %if.then220], !srcloc !54

if.then220:                                       ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug322, ptr noundef %92, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %55, i32 noundef %and203) #7
  br label %cleanup226

cleanup226:                                       ; preds = %if.then220, %for.end202, %cleanup195.cleanup226_crit_edge
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.then220 ], [ 0, %for.end202 ], [ %cleanup.dest.slot.0, %cleanup195.cleanup226_crit_edge ]
  %groups.5 = phi i32 [ %and207, %if.then220 ], [ %and207, %for.end202 ], [ %groups.4, %cleanup195.cleanup226_crit_edge ]
  %cond400 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond400, label %cleanup226.while.cond_crit_edge, label %cleanup226.cleanup391_crit_edge

cleanup226.cleanup391_crit_edge:                  ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

cleanup226.while.cond_crit_edge:                  ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

for.body236:                                      ; preds = %for.inc388.for.body236_crit_edge, %for.body236.lr.ph
  %retval.4628 = phi i32 [ undef, %for.body236.lr.ph ], [ %retval.6, %for.inc388.for.body236_crit_edge ]
  %i.2626 = phi i32 [ 0, %for.body236.lr.ph ], [ %inc389, %for.inc388.for.body236_crit_edge ]
  %93 = ptrtoint ptr %planes237 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %planes237, align 4
  %arrayidx238 = getelementptr %struct.__drm_planes_state, ptr %94, i32 %i.2626
  %95 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx238, align 4
  %tobool240.not = icmp eq ptr %96, null
  br i1 %tobool240.not, label %for.body236.for.inc388_crit_edge, label %land.lhs.true241

for.body236.for.inc388_crit_edge:                 ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc388

land.lhs.true241:                                 ; preds = %for.body236
  %old_state247 = getelementptr %struct.__drm_planes_state, ptr %94, i32 %i.2626, i32 2
  %97 = ptrtoint ptr %old_state247 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %old_state247, align 4
  %new_state250 = getelementptr %struct.__drm_planes_state, ptr %94, i32 %i.2626, i32 3
  %99 = ptrtoint ptr %new_state250 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %new_state250, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then271)) #7
          to label %do.end284 [label %if.then271], !srcloc !54

if.then271:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %group273 = getelementptr inbounds %struct.rcar_du_plane, ptr %96, i32 0, i32 1
  %103 = ptrtoint ptr %group273 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %group273, align 8
  %index274 = getelementptr inbounds %struct.rcar_du_group, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %index274 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %index274, align 8
  %planes276 = getelementptr inbounds %struct.rcar_du_group, ptr %104, i32 0, i32 11
  %sub.ptr.lhs.cast278 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast279 = ptrtoint ptr %planes276 to i32
  %sub.ptr.sub280 = sub i32 %sub.ptr.lhs.cast278, %sub.ptr.rhs.cast279
  %sub.ptr.div281 = sdiv exact i32 %sub.ptr.sub280, 536
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug323, ptr noundef %102, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %106, i32 noundef %sub.ptr.div281) #7
  br label %do.end284

do.end284:                                        ; preds = %if.then271, %land.lhs.true241
  %format285 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %100, i32 0, i32 1
  %107 = ptrtoint ptr %format285 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %format285, align 4
  %tobool286.not = icmp eq ptr %108, null
  br i1 %tobool286.not, label %do.end284.for.inc388_crit_edge, label %lor.lhs.false

do.end284.for.inc388_crit_edge:                   ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc388

lor.lhs.false:                                    ; preds = %do.end284
  %format.i544 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %98, i32 0, i32 1
  %109 = ptrtoint ptr %format.i544 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %format.i544, align 4
  %tobool.not.i545 = icmp eq ptr %110, null
  br i1 %tobool.not.i545, label %lor.lhs.false.if.end289_crit_edge, label %lor.lhs.false.i550

lor.lhs.false.if.end289_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

lor.lhs.false.i550:                               ; preds = %lor.lhs.false
  %planes.i546 = getelementptr inbounds %struct.rcar_du_format_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %planes.i546 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %planes.i546, align 4
  %planes3.i548 = getelementptr inbounds %struct.rcar_du_format_info, ptr %108, i32 0, i32 3
  %113 = ptrtoint ptr %planes3.i548 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %planes3.i548, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp.not.i549 = icmp eq i32 %112, %114
  br i1 %cmp.not.i549, label %rcar_du_plane_needs_realloc.exit556, label %lor.lhs.false.i550.if.end289_crit_edge

lor.lhs.false.i550.if.end289_crit_edge:           ; preds = %lor.lhs.false.i550
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

rcar_du_plane_needs_realloc.exit556:              ; preds = %lor.lhs.false.i550
  %source.i551 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %98, i32 0, i32 3
  %115 = ptrtoint ptr %source.i551 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %source.i551, align 4
  %source4.i552 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %100, i32 0, i32 3
  %117 = ptrtoint ptr %source4.i552 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %source4.i552, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp5.not.i553.not = icmp eq i32 %116, %118
  br i1 %cmp5.not.i553.not, label %rcar_du_plane_needs_realloc.exit556.for.inc388_crit_edge, label %rcar_du_plane_needs_realloc.exit556.if.end289_crit_edge

rcar_du_plane_needs_realloc.exit556.if.end289_crit_edge: ; preds = %rcar_du_plane_needs_realloc.exit556
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

rcar_du_plane_needs_realloc.exit556.for.inc388_crit_edge: ; preds = %rcar_du_plane_needs_realloc.exit556
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc388

if.end289:                                        ; preds = %rcar_du_plane_needs_realloc.exit556.if.end289_crit_edge, %lor.lhs.false.i550.if.end289_crit_edge, %lor.lhs.false.if.end289_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %100, i32 0, i32 1
  %119 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %crtc, align 4
  %index292 = getelementptr inbounds %struct.rcar_du_crtc, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %index292 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %index292, align 8
  %rem = and i32 %122, 1
  %group297 = getelementptr inbounds %struct.rcar_du_plane, ptr %96, i32 0, i32 1
  %123 = ptrtoint ptr %group297 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %group297, align 8
  %dptsr_planes298 = getelementptr inbounds %struct.rcar_du_group, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %dptsr_planes298 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dptsr_planes298, align 4
  %sext = add nsw i32 %rem, -1
  %cond301 = xor i32 %126, %sext
  %group302 = getelementptr inbounds %struct.rcar_du_plane, ptr %96, i32 0, i32 1
  %index303 = getelementptr inbounds %struct.rcar_du_group, ptr %124, i32 0, i32 2
  %127 = ptrtoint ptr %index303 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %index303, align 8
  %arrayidx304 = getelementptr [2 x i32], ptr %group_free_planes, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx304, align 4
  %and305 = and i32 %130, %cond301
  %call306 = tail call fastcc i32 @rcar_du_plane_hwalloc(ptr noundef nonnull %96, ptr noundef %100, i32 noundef %and305)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %cmp307 = icmp slt i32 %call306, 0
  br i1 %cmp307, label %if.end310, label %if.end289.do.body331_crit_edge

if.end289.do.body331_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body331

if.end310:                                        ; preds = %if.end289
  %call309 = tail call fastcc i32 @rcar_du_plane_hwalloc(ptr noundef nonnull %96, ptr noundef %100, i32 noundef %130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %cmp311 = icmp slt i32 %call309, 0
  br i1 %cmp311, label %do.body313, label %if.end310.do.body331_crit_edge

if.end310.do.body331_crit_edge:                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body331

do.body313:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %cleanup379.thread602)) #7
          to label %cleanup379 [label %cleanup379.thread602], !srcloc !54

cleanup379.thread602:                             ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug324, ptr noundef %132, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #7
  br label %cleanup391

do.body331:                                       ; preds = %if.end310.do.body331_crit_edge, %if.end289.do.body331_crit_edge
  %idx.0596 = phi i32 [ %call309, %if.end310.do.body331_crit_edge ], [ %call306, %if.end289.do.body331_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then343)) #7
          to label %rcar_du_plane_hwmask.exit570 [label %if.then343], !srcloc !54

if.then343:                                       ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 8
  %135 = ptrtoint ptr %format285 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %format285, align 4
  %planes346 = getelementptr inbounds %struct.rcar_du_format_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %planes346 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %planes346, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug325, ptr noundef %134, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %138, i32 noundef %idx.0596) #7
  br label %rcar_du_plane_hwmask.exit570

rcar_du_plane_hwmask.exit570:                     ; preds = %if.then343, %do.body331
  %hwindex350 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %100, i32 0, i32 2
  %139 = ptrtoint ptr %hwindex350 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %idx.0596, ptr %hwindex350, align 4
  %shl.i559 = shl nuw i32 1, %idx.0596
  %140 = ptrtoint ptr %format285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %format285, align 4
  %planes.i561 = getelementptr inbounds %struct.rcar_du_format_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %planes.i561 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %planes.i561, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp2.i562 = icmp eq i32 %143, 2
  %add.i563 = add nuw i32 %idx.0596, 1
  %rem11.i564 = and i32 %add.i563, 7
  %shl5.i565 = shl nuw nsw i32 1, %rem11.i564
  %or.i566 = select i1 %cmp2.i562, i32 %shl5.i565, i32 0
  %mask.0.i567 = or i32 %or.i566, %shl.i559
  %neg352 = xor i32 %mask.0.i567, -1
  %144 = ptrtoint ptr %group302 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %group302, align 8
  %index354 = getelementptr inbounds %struct.rcar_du_group, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %index354 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %index354, align 8
  %arrayidx355 = getelementptr [2 x i32], ptr %group_free_planes, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx355, align 4
  %and356 = and i32 %149, %neg352
  store i32 %and356, ptr %arrayidx355, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_atomic_check_planes, %if.then369)) #7
          to label %cleanup379 [label %if.then369], !srcloc !54

if.then369:                                       ; preds = %rcar_du_plane_hwmask.exit570
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 8
  %152 = ptrtoint ptr %group302 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %group302, align 8
  %index372 = getelementptr inbounds %struct.rcar_du_group, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %index372 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %index372, align 8
  %arrayidx375 = getelementptr [2 x i32], ptr %group_free_planes, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx375, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug326, ptr noundef %151, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %155, i32 noundef %157) #7
  br label %for.inc388

cleanup379:                                       ; preds = %rcar_du_plane_hwmask.exit570, %do.body313
  %cond605 = phi i1 [ true, %rcar_du_plane_hwmask.exit570 ], [ false, %do.body313 ]
  %retval.5 = phi i32 [ %retval.4628, %rcar_du_plane_hwmask.exit570 ], [ %call309, %do.body313 ]
  br i1 %cond605, label %cleanup379.for.inc388_crit_edge, label %cleanup379.cleanup391_crit_edge

cleanup379.cleanup391_crit_edge:                  ; preds = %cleanup379
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

cleanup379.for.inc388_crit_edge:                  ; preds = %cleanup379
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc388

for.inc388:                                       ; preds = %cleanup379.for.inc388_crit_edge, %if.then369, %rcar_du_plane_needs_realloc.exit556.for.inc388_crit_edge, %do.end284.for.inc388_crit_edge, %for.body236.for.inc388_crit_edge
  %retval.6 = phi i32 [ %retval.5, %cleanup379.for.inc388_crit_edge ], [ %retval.4628, %for.body236.for.inc388_crit_edge ], [ %retval.4628, %rcar_du_plane_needs_realloc.exit556.for.inc388_crit_edge ], [ %retval.4628, %do.end284.for.inc388_crit_edge ], [ %retval.4628, %if.then369 ]
  %inc389 = add nuw i32 %i.2626, 1
  %158 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev1, align 4
  %num_total_plane234 = getelementptr inbounds %struct.drm_device, ptr %159, i32 0, i32 30, i32 17
  %160 = ptrtoint ptr %num_total_plane234 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_total_plane234, align 4
  %cmp235 = icmp ult i32 %inc389, %161
  br i1 %cmp235, label %for.inc388.for.body236_crit_edge, label %for.inc388.cleanup391_crit_edge

for.inc388.cleanup391_crit_edge:                  ; preds = %for.inc388
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup391

for.inc388.for.body236_crit_edge:                 ; preds = %for.inc388
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body236

cleanup391:                                       ; preds = %for.inc388.cleanup391_crit_edge, %cleanup379.cleanup391_crit_edge, %cleanup379.thread602, %cleanup226.cleanup391_crit_edge, %cleanup226.thread, %for.cond231.preheader.cleanup391_crit_edge, %for.end.cleanup391_crit_edge, %entry.cleanup391_crit_edge
  %retval.7 = phi i32 [ 0, %for.end.cleanup391_crit_edge ], [ %60, %cleanup226.thread ], [ %call309, %cleanup379.thread602 ], [ 0, %for.cond231.preheader.cleanup391_crit_edge ], [ 0, %entry.cleanup391_crit_edge ], [ 0, %for.inc388.cleanup391_crit_edge ], [ %retval.5, %cleanup379.cleanup391_crit_edge ], [ undef, %cleanup226.cleanup391_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %group_free_planes) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %group_freed_planes) #7
  ret i32 %retval.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_plane_hwalloc(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state, i32 noundef %free) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %source, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %for.cond.preheader [
    i32 1, label %if.then
    i32 2, label %if.then5
  ]

for.cond.preheader:                               ; preds = %entry
  %format = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %format, align 4
  %planes = getelementptr inbounds %struct.rcar_du_format_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp21 = icmp eq i32 %6, 1
  %and17 = and i32 %free, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.inc, label %if.end20

if.then:                                          ; preds = %entry
  %group = getelementptr inbounds %struct.rcar_du_plane, ptr %plane, i32 0, i32 1
  %7 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group, align 8
  %index = getelementptr inbounds %struct.rcar_du_group, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not = icmp eq i32 %10, 0
  br i1 %cmp1.not, label %if.then.if.then12_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %group6 = getelementptr inbounds %struct.rcar_du_plane, ptr %plane, i32 0, i32 1
  %11 = ptrtoint ptr %group6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group6, align 8
  %index7 = getelementptr inbounds %struct.rcar_du_group, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp eq i32 %14, 0
  %cond = zext i1 %cmp8 to i32
  br label %if.then12

if.then12:                                        ; preds = %if.then5, %if.then.if.then12_crit_edge
  %fixed.0.ph = phi i32 [ 0, %if.then.if.then12_crit_edge ], [ %cond, %if.then5 ]
  %shl = shl nuw nsw i32 1, %fixed.0.ph
  %and = and i32 %shl, %free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -16, i32 %fixed.0.ph
  br label %cleanup

if.end20:                                         ; preds = %for.cond.preheader
  %and23 = and i32 %free, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %15 = or i1 %cmp21, %tobool24.not
  br i1 %15, label %if.end20.cleanup_crit_edge, label %for.inc.thread

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %and17.1 = and i32 %free, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.1)
  %tobool18.not.1 = icmp eq i32 %and17.1, 0
  %cmp21.not76 = xor i1 %cmp21, true
  %brmerge = select i1 %tobool18.not.1, i1 true, i1 %cmp21.not76
  br i1 %brmerge, label %for.inc.for.inc.1_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.thread:                                   ; preds = %if.end20
  %and17.153 = and i32 %free, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.153)
  %tobool18.not.154 = icmp eq i32 %and17.153, 0
  br i1 %tobool18.not.154, label %for.inc.thread.for.inc.1_crit_edge, label %for.inc.thread.cleanup_crit_edge

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.thread.for.inc.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.thread.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %tobool18.not.156 = phi i1 [ true, %for.inc.thread.for.inc.1_crit_edge ], [ %tobool18.not.1, %for.inc.for.inc.1_crit_edge ]
  %and17.2 = and i32 %free, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.2)
  %tobool18.not.2 = icmp eq i32 %and17.2, 0
  br i1 %tobool18.not.2, label %for.inc.2, label %if.end20.2

if.end20.2:                                       ; preds = %for.inc.1
  %tobool18.not.156.not = xor i1 %tobool18.not.156, true
  %brmerge77 = or i1 %cmp21, %tobool18.not.156.not
  br i1 %brmerge77, label %if.end20.2.cleanup_crit_edge, label %for.inc.2.thread

if.end20.2.cleanup_crit_edge:                     ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %and17.3 = and i32 %free, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.3)
  %tobool18.not.3 = icmp eq i32 %and17.3, 0
  %cmp21.not78 = xor i1 %cmp21, true
  %brmerge79 = select i1 %tobool18.not.3, i1 true, i1 %cmp21.not78
  br i1 %brmerge79, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.2.thread:                                 ; preds = %if.end20.2
  %and17.360 = and i32 %free, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.360)
  %tobool18.not.361 = icmp eq i32 %and17.360, 0
  br i1 %tobool18.not.361, label %for.inc.2.thread.for.inc.3_crit_edge, label %for.inc.2.thread.cleanup_crit_edge

for.inc.2.thread.cleanup_crit_edge:               ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2.thread.for.inc.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2.thread.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %tobool18.not.363 = phi i1 [ true, %for.inc.2.thread.for.inc.3_crit_edge ], [ %tobool18.not.3, %for.inc.2.for.inc.3_crit_edge ]
  %and17.4 = and i32 %free, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.4)
  %tobool18.not.4 = icmp eq i32 %and17.4, 0
  br i1 %tobool18.not.4, label %for.inc.4, label %if.end20.4

if.end20.4:                                       ; preds = %for.inc.3
  %tobool18.not.363.not = xor i1 %tobool18.not.363, true
  %brmerge81 = or i1 %cmp21, %tobool18.not.363.not
  br i1 %brmerge81, label %if.end20.4.cleanup_crit_edge, label %for.inc.4.thread

if.end20.4.cleanup_crit_edge:                     ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %and17.5 = and i32 %free, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.5)
  %tobool18.not.5 = icmp eq i32 %and17.5, 0
  %cmp21.not82 = xor i1 %cmp21, true
  %brmerge83 = select i1 %tobool18.not.5, i1 true, i1 %cmp21.not82
  br i1 %brmerge83, label %for.inc.4.for.inc.5_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.4.thread:                                 ; preds = %if.end20.4
  %and17.567 = and i32 %free, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.567)
  %tobool18.not.568 = icmp eq i32 %and17.567, 0
  br i1 %tobool18.not.568, label %for.inc.4.thread.for.inc.5_crit_edge, label %for.inc.4.thread.cleanup_crit_edge

for.inc.4.thread.cleanup_crit_edge:               ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4.thread.for.inc.5_crit_edge:             ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4.thread.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool18.not.570 = phi i1 [ true, %for.inc.4.thread.for.inc.5_crit_edge ], [ %tobool18.not.5, %for.inc.4.for.inc.5_crit_edge ]
  %and17.6 = and i32 %free, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.6)
  %tobool18.not.6 = icmp eq i32 %and17.6, 0
  br i1 %tobool18.not.6, label %for.inc.6, label %if.end20.6

if.end20.6:                                       ; preds = %for.inc.5
  %tobool18.not.570.not = xor i1 %tobool18.not.570, true
  %brmerge85 = or i1 %cmp21, %tobool18.not.570.not
  br i1 %brmerge85, label %if.end20.6.cleanup_crit_edge, label %for.inc.6.thread

if.end20.6.cleanup_crit_edge:                     ; preds = %if.end20.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %and17.7 = and i32 %free, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.7)
  %tobool18.not.7 = icmp eq i32 %and17.7, 0
  %cmp21.not86 = xor i1 %cmp21, true
  %brmerge87 = select i1 %tobool18.not.7, i1 true, i1 %cmp21.not86
  br i1 %brmerge87, label %for.inc.6.for.inc.7_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.6.thread:                                 ; preds = %if.end20.6
  %and17.774 = and i32 %free, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.774)
  %tobool18.not.775 = icmp eq i32 %and17.774, 0
  br i1 %tobool18.not.775, label %for.inc.6.thread.for.inc.7_crit_edge, label %for.inc.6.thread.cleanup_crit_edge

for.inc.6.thread.cleanup_crit_edge:               ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6.thread.for.inc.7_crit_edge:             ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6.thread.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %for.inc.6.thread.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.end20.6.cleanup_crit_edge, %for.inc.4.thread.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %if.end20.4.cleanup_crit_edge, %for.inc.2.thread.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end20.2.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then12 ], [ -22, %if.then.cleanup_crit_edge ], [ -16, %for.inc.7 ], [ 1, %if.end20.6.cleanup_crit_edge ], [ 3, %if.end20.4.cleanup_crit_edge ], [ 5, %if.end20.2.cleanup_crit_edge ], [ 7, %if.end20.cleanup_crit_edge ], [ 6, %for.inc.thread.cleanup_crit_edge ], [ 4, %for.inc.2.thread.cleanup_crit_edge ], [ 2, %for.inc.4.thread.cleanup_crit_edge ], [ 0, %for.inc.6.thread.cleanup_crit_edge ], [ 6, %for.inc.cleanup_crit_edge ], [ 4, %for.inc.2.cleanup_crit_edge ], [ 2, %for.inc.4.cleanup_crit_edge ], [ 0, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rcar_du_plane_setup(ptr noundef %rgrp, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  %dma.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %hwindex = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %hwindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwindex, align 4
  tail call fastcc void @rcar_du_plane_setup_format(ptr noundef %rgrp, i32 noundef %3, ptr noundef %state)
  %format = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 4
  %planes = getelementptr inbounds %struct.rcar_du_format_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hwindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwindex, align 4
  %add = add i32 %9, 1
  %rem = srem i32 %add, 8
  tail call fastcc void @rcar_du_plane_setup_format(ptr noundef %rgrp, i32 noundef %rem, ptr noundef %state)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp2 = icmp ult i32 %13, 3
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src.i, align 4
  %shr.i = ashr i32 %15, 16
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y1.i, align 4
  %shr4.i = ashr i32 %17, 16
  %18 = ptrtoint ptr %hwindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwindex, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma.i) #7
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dma.i, align 4, !annotation !56
  %21 = getelementptr inbounds [2 x i32], ptr %dma.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !56
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %23 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc.i, align 4
  %state6.i = getelementptr inbounds %struct.drm_crtc, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state6.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 7, i32 11
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %source.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 3
  %29 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then.i, label %if.else19.i

if.then.i:                                        ; preds = %if.then3
  %fb8.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %31 = ptrtoint ptr %fb8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb8.i, align 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format, align 4
  %planes.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp9.i = icmp eq i32 %36, 2
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pitches.i, align 8
  br i1 %cmp9.i, label %if.then.i.for.body.i.preheader_crit_edge, label %if.end.i

if.then.i.for.body.i.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.end.i:                                         ; preds = %if.then.i
  %mul.i = shl i32 %38, 3
  %bpp.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bpp.i, align 4
  %div.i = udiv i32 %mul.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp16161.not.i = icmp eq i32 %36, 0
  br i1 %cmp16161.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.end.i.for.body.i.preheader_crit_edge

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

for.body.i.preheader:                             ; preds = %if.end.i.for.body.i.preheader_crit_edge, %if.then.i.for.body.i.preheader_crit_edge
  %pitch.0.i29 = phi i32 [ %div.i, %if.end.i.for.body.i.preheader_crit_edge ], [ %38, %if.then.i.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0162.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %32, i32 noundef %i.0162.i) #7
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %paddr.i, align 8
  %arrayidx17.i = getelementptr %struct.drm_framebuffer, ptr %32, i32 0, i32 7, i32 %i.0162.i
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %44, %42
  %arrayidx18.i = getelementptr [2 x i32], ptr %dma.i, i32 0, i32 %i.0162.i
  %45 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %arrayidx18.i, align 4
  %inc.i = add nuw i32 %i.0162.i, 1
  %46 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %format, align 4
  %planes15.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %planes15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %planes15.i, align 4
  %cmp16.i = icmp ult i32 %inc.i, %49
  br i1 %cmp16.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end26.i_crit_edge

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.else19.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %50 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %x2.i.i, align 4
  %sub.i.i = sub i32 %51, %15
  %shr23.i = ashr i32 %sub.i.i, 16
  %52 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %dma.i, align 4
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %21, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else19.i, %for.body.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  %pitch.1.i = phi i32 [ %shr23.i, %if.else19.i ], [ %div.i, %if.end.i.if.end26.i_crit_edge ], [ %pitch.0.i29, %for.body.i.if.end26.i_crit_edge ]
  br i1 %tobool.not.i, label %land.rhs.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %54 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %format, align 4
  %bpp29.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %bpp29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bpp29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %57)
  %cmp30.i = icmp eq i32 %57, 32
  br i1 %cmp30.i, label %cond.true.i, label %land.end.critedge.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul31.i = shl i32 %pitch.1.i, 1
  %58 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %60 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mmio_offset.i.i, align 4
  %mul.i.i = shl i32 %19, 8
  %add.i.i = add i32 %mul.i.i, 260
  %add1.i.i = add i32 %add.i.i, %61
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %59, i32 0, i32 2
  %62 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 %add1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %mul31.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %64) #7, !srcloc !58
  %65 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rgrp, align 8
  %67 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i96.i = add i32 %mul.i.i, 304
  %add1.i97.i = add i32 %add.i96.i, %68
  %mmio.i.i98.i = getelementptr inbounds %struct.rcar_du_device, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %mmio.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i.i98.i, align 8
  %add.ptr.i.i99.i = getelementptr i8, ptr %70, i32 %add1.i97.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99.i, i32 %71) #7, !srcloc !58
  br label %land.end.i

land.rhs.critedge.i:                              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i100.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %74 = ptrtoint ptr %mmio_offset.i100.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mmio_offset.i100.i, align 4
  %mul.i101.i = shl i32 %19, 8
  %add.i102.i = add i32 %mul.i101.i, 260
  %add1.i103.i = add i32 %add.i102.i, %75
  %mmio.i.i104.i = getelementptr inbounds %struct.rcar_du_device, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %mmio.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i.i104.i, align 8
  %add.ptr.i.i105.i = getelementptr i8, ptr %77, i32 %add1.i103.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %78 = tail call i32 @llvm.bswap.i32(i32 %pitch.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105.i, i32 %78) #7, !srcloc !58
  %79 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rgrp, align 8
  %81 = ptrtoint ptr %mmio_offset.i100.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mmio_offset.i100.i, align 4
  %add.i108.i = add i32 %mul.i101.i, 304
  %add1.i109.i = add i32 %add.i108.i, %82
  %mmio.i.i110.i = getelementptr inbounds %struct.rcar_du_device, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %mmio.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i.i110.i, align 8
  %add.ptr.i.i111.i = getelementptr i8, ptr %84, i32 %add1.i109.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111.i, i32 %85) #7, !srcloc !58
  %86 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %format, align 4
  %bpp34.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %bpp34.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bpp34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %89)
  %cmp35.i = icmp eq i32 %89, 32
  %phi.sel.i = select i1 %cmp35.i, i32 2, i32 1
  br label %land.end.i

land.end.critedge.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i112.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %92 = ptrtoint ptr %mmio_offset.i112.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mmio_offset.i112.i, align 4
  %mul.i113.i = shl i32 %19, 8
  %add.i114.i = add i32 %mul.i113.i, 260
  %add1.i115.i = add i32 %add.i114.i, %93
  %mmio.i.i116.i = getelementptr inbounds %struct.rcar_du_device, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %mmio.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i116.i, align 8
  %add.ptr.i.i117.i = getelementptr i8, ptr %95, i32 %add1.i115.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %pitch.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117.i, i32 %96) #7, !srcloc !58
  %97 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rgrp, align 8
  %99 = ptrtoint ptr %mmio_offset.i112.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mmio_offset.i112.i, align 4
  %add.i120.i = add i32 %mul.i113.i, 304
  %add1.i121.i = add i32 %add.i120.i, %100
  %mmio.i.i122.i = getelementptr inbounds %struct.rcar_du_device, ptr %98, i32 0, i32 2
  %101 = ptrtoint ptr %mmio.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i.i122.i, align 8
  %add.ptr.i.i123.i = getelementptr i8, ptr %102, i32 %add1.i121.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123.i, i32 %103) #7, !srcloc !58
  br label %land.end.i

land.end.i:                                       ; preds = %land.end.critedge.i, %land.rhs.critedge.i, %cond.true.i
  %mul.i125.pre-phi.i = phi i32 [ %mul.i.i, %cond.true.i ], [ %mul.i113.i, %land.end.critedge.i ], [ %mul.i101.i, %land.rhs.critedge.i ]
  %104 = phi i32 [ 1, %cond.true.i ], [ 1, %land.end.critedge.i ], [ %phi.sel.i, %land.rhs.critedge.i ]
  %mul37.i = mul nsw i32 %104, %shr4.i
  %105 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i124.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %107 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mmio_offset.i124.i, align 4
  %add.i126.i = add i32 %mul.i125.pre-phi.i, 308
  %add1.i127.i = add i32 %add.i126.i, %108
  %mmio.i.i128.i = getelementptr inbounds %struct.rcar_du_device, ptr %106, i32 0, i32 2
  %109 = ptrtoint ptr %mmio.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i.i128.i, align 8
  %add.ptr.i.i129.i = getelementptr i8, ptr %110, i32 %add1.i127.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %mul37.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129.i, i32 %111) #7, !srcloc !58
  %112 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma.i, align 4
  %114 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rgrp, align 8
  %116 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mmio_offset.i124.i, align 4
  %add.i132.i = add i32 %mul.i125.pre-phi.i, 288
  %add1.i133.i = add i32 %add.i132.i, %117
  %mmio.i.i134.i = getelementptr inbounds %struct.rcar_du_device, ptr %115, i32 0, i32 2
  %118 = ptrtoint ptr %mmio.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i134.i, align 8
  %add.ptr.i.i135.i = getelementptr i8, ptr %119, i32 %add1.i133.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %120 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135.i, i32 %120) #7, !srcloc !58
  %121 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %format, align 4
  %planes40.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %planes40.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %planes40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp41.i = icmp eq i32 %124, 2
  br i1 %cmp41.i, label %if.then42.i, label %land.end.i.rcar_du_plane_setup_scanout.exit_crit_edge

land.end.i.rcar_du_plane_setup_scanout.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_du_plane_setup_scanout.exit

if.then42.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rgrp, align 8
  %127 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mmio_offset.i124.i, align 4
  %rem.i = add i32 %mul.i125.pre-phi.i, 256
  %mul.i137.i = and i32 %rem.i, 1792
  %add.i138.i = add nuw nsw i32 %mul.i137.i, 260
  %add1.i139.i = add i32 %add.i138.i, %128
  %mmio.i.i140.i = getelementptr inbounds %struct.rcar_du_device, ptr %126, i32 0, i32 2
  %129 = ptrtoint ptr %mmio.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i.i140.i, align 8
  %add.ptr.i.i141.i = getelementptr i8, ptr %130, i32 %add1.i139.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %131 = tail call i32 @llvm.bswap.i32(i32 %pitch.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141.i, i32 %131) #7, !srcloc !58
  %132 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rgrp, align 8
  %134 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mmio_offset.i124.i, align 4
  %add.i144.i = add nuw nsw i32 %mul.i137.i, 304
  %add1.i145.i = add i32 %add.i144.i, %135
  %mmio.i.i146.i = getelementptr inbounds %struct.rcar_du_device, ptr %133, i32 0, i32 2
  %136 = ptrtoint ptr %mmio.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i.i146.i, align 8
  %add.ptr.i.i147.i = getelementptr i8, ptr %137, i32 %add1.i145.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %138 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i, i32 %138) #7, !srcloc !58
  %139 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %format, align 4
  %bpp45.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %bpp45.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bpp45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %142)
  %cmp46.i = icmp eq i32 %142, 16
  %cond47.i = select i1 %cmp46.i, i32 2, i32 1
  %mul48.i = mul nsw i32 %cond47.i, %shr4.i
  %div4992.i = lshr i32 %mul48.i, 1
  %143 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rgrp, align 8
  %145 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mmio_offset.i124.i, align 4
  %add.i150.i = add nuw nsw i32 %mul.i137.i, 308
  %add1.i151.i = add i32 %add.i150.i, %146
  %mmio.i.i152.i = getelementptr inbounds %struct.rcar_du_device, ptr %144, i32 0, i32 2
  %147 = ptrtoint ptr %mmio.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i.i152.i, align 8
  %add.ptr.i.i153.i = getelementptr i8, ptr %148, i32 %add1.i151.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %149 = tail call i32 @llvm.bswap.i32(i32 %div4992.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i153.i, i32 %149) #7, !srcloc !58
  %150 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %21, align 4
  %152 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rgrp, align 8
  %154 = ptrtoint ptr %mmio_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mmio_offset.i124.i, align 4
  %add.i156.i = add nuw nsw i32 %mul.i137.i, 288
  %add1.i157.i = add i32 %add.i156.i, %155
  %mmio.i.i158.i = getelementptr inbounds %struct.rcar_du_device, ptr %153, i32 0, i32 2
  %156 = ptrtoint ptr %mmio.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i.i158.i, align 8
  %add.ptr.i.i159.i = getelementptr i8, ptr %157, i32 %add1.i157.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %158 = tail call i32 @llvm.bswap.i32(i32 %151) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.i, i32 %158) #7, !srcloc !58
  br label %rcar_du_plane_setup_scanout.exit

rcar_du_plane_setup_scanout.exit:                 ; preds = %if.then42.i, %land.end.i.rcar_du_plane_setup_scanout.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma.i) #7
  br label %if.end4

if.end4:                                          ; preds = %rcar_du_plane_setup_scanout.exit, %if.end.if.end4_crit_edge
  %source = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 3
  %159 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp5 = icmp eq i32 %160, 2
  br i1 %cmp5, label %if.then6, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %index = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %161 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not = icmp eq i32 %162, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %vspd1_sink7 = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 13
  %163 = ptrtoint ptr %vspd1_sink7 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vspd1_sink7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %cond)
  %cmp8.not = icmp eq i32 %164, %cond
  br i1 %cmp8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %vspd1_sink7 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %cond, ptr %vspd1_sink7, align 4
  %call = tail call i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef %1) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_du_plane_setup_format(ptr noundef readonly %rgrp, i32 noundef %index, ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %dst2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  %format.i.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 892424792, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 892424792
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mmio_offset.i.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %10 = ptrtoint ptr %mmio_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmio_offset.i.i.i, align 4
  %mul.i.i.i = shl i32 %index, 8
  %add.i.i.i = add i32 %mul.i.i.i, 264
  %add1.i.i.i = add i32 %add.i.i.i, %11
  %mmio.i.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 %add1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 1048576) #7, !srcloc !58
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %alpha.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 12
  %14 = ptrtoint ptr %alpha.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %alpha.i.i, align 4
  %16 = lshr i16 %15, 8
  %17 = or i16 %16, 8192
  %or.i.i = zext i16 %17 to i32
  %mmio_offset.i72.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %18 = ptrtoint ptr %mmio_offset.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmio_offset.i72.i.i, align 4
  %mul.i73.i.i = shl i32 %index, 8
  %add.i74.i.i = add i32 %mul.i73.i.i, 264
  %add1.i75.i.i = add i32 %add.i74.i.i, %19
  %mmio.i.i76.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %mmio.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i76.i.i, align 8
  %add.ptr.i.i77.i.i = getelementptr i8, ptr %21, i32 %add1.i75.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i.i, i32 %22) #7, !srcloc !58
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %mul.i79.pre-phi.i.i = phi i32 [ %mul.i73.i.i, %if.else.i.i ], [ %mul.i.i.i, %if.then.i.i ]
  %23 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format.i.i, align 4
  %pnmr3.i.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %pnmr3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pnmr3.i.i, align 4
  %colorkey5.i.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 4
  %27 = ptrtoint ptr %colorkey5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colorkey5.i.i, align 4
  %and.i.i = lshr i32 %28, 10
  %29 = and i32 %and.i.i, 16384
  %30 = xor i32 %29, 16384
  %31 = or i32 %30, %26
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %33)
  %cmp13.i.i = icmp eq i32 %33, 1448695129
  %or16.i.i = or i32 %31, 1048576
  %pnmr.1.i.i = select i1 %cmp13.i.i, i32 %or16.i.i, i32 %31
  %34 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i78.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %36 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %add.i80.i.i = add i32 %mul.i79.pre-phi.i.i, 256
  %add1.i81.i.i = add i32 %add.i80.i.i, %37
  %mmio.i.i82.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %mmio.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i82.i.i, align 8
  %add.ptr.i.i83.i.i = getelementptr i8, ptr %39, i32 %add1.i81.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %pnmr.1.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83.i.i, i32 %40) #7, !srcloc !58
  %41 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %format.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %44, label %if.end.i.i.rcar_du_plane_setup_mode.exit.i_crit_edge [
    i32 909199186, label %sw.bb.i.i
    i32 892424769, label %if.end.i.i.sw.bb31.i.i_crit_edge
    i32 892424792, label %if.end.i.i.sw.bb31.i.i_crit_edge83
    i32 875713112, label %if.end.i.i.sw.bb43.i.i_crit_edge
    i32 875713089, label %if.end.i.i.sw.bb43.i.i_crit_edge84
  ]

if.end.i.i.sw.bb43.i.i_crit_edge84:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i.i

if.end.i.i.sw.bb43.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i.i

if.end.i.i.sw.bb31.i.i_crit_edge83:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31.i.i

if.end.i.i.sw.bb31.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31.i.i

if.end.i.i.rcar_du_plane_setup_mode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_du_plane_setup_mode.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %colorkey5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %colorkey5.i.i, align 4
  %and21.i.i = lshr i32 %47, 8
  %shr22.i.i = and i32 %and21.i.i, 63488
  %and24.i.i = lshr i32 %47, 5
  %shr25.i.i = and i32 %and24.i.i, 2016
  %or26.i.i = or i32 %shr22.i.i, %shr25.i.i
  %and28.i.i = lshr i32 %47, 3
  %shr29.i.i = and i32 %and28.i.i, 31
  %or30.i.i = or i32 %or26.i.i, %shr29.i.i
  %48 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rgrp, align 8
  %50 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %add.i86.i.i = add i32 %mul.i79.pre-phi.i.i, 328
  %add1.i87.i.i = add i32 %add.i86.i.i, %51
  %mmio.i.i88.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %mmio.i.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i88.i.i, align 8
  %add.ptr.i.i89.i.i = getelementptr i8, ptr %53, i32 %add1.i87.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or30.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89.i.i, i32 %54) #7, !srcloc !58
  br label %rcar_du_plane_setup_mode.exit.i

sw.bb31.i.i:                                      ; preds = %if.end.i.i.sw.bb31.i.i_crit_edge, %if.end.i.i.sw.bb31.i.i_crit_edge83
  %55 = ptrtoint ptr %colorkey5.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %colorkey5.i.i, align 4
  %and33.i.i = lshr i32 %56, 9
  %shr34.i.i = and i32 %and33.i.i, 31744
  %and36.i.i = lshr i32 %56, 6
  %shr37.i.i = and i32 %and36.i.i, 992
  %or38.i.i = or i32 %shr34.i.i, %shr37.i.i
  %and40.i.i = lshr i32 %56, 3
  %shr41.i.i = and i32 %and40.i.i, 31
  %or42.i.i = or i32 %or38.i.i, %shr41.i.i
  %57 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rgrp, align 8
  %59 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %add.i92.i.i = add i32 %mul.i79.pre-phi.i.i, 328
  %add1.i93.i.i = add i32 %add.i92.i.i, %60
  %mmio.i.i94.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %mmio.i.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i.i94.i.i, align 8
  %add.ptr.i.i95.i.i = getelementptr i8, ptr %62, i32 %add1.i93.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or42.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95.i.i, i32 %63) #7, !srcloc !58
  br label %rcar_du_plane_setup_mode.exit.i

sw.bb43.i.i:                                      ; preds = %if.end.i.i.sw.bb43.i.i_crit_edge, %if.end.i.i.sw.bb43.i.i_crit_edge84
  %64 = ptrtoint ptr %colorkey5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %colorkey5.i.i, align 4
  %and45.i.i = and i32 %65, 16777215
  %or46.i.i = or i32 %and45.i.i, 1711276032
  %66 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rgrp, align 8
  %68 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %add.i98.i.i = add i32 %mul.i79.pre-phi.i.i, 332
  %add1.i99.i.i = add i32 %add.i98.i.i, %69
  %mmio.i.i100.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %mmio.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i100.i.i, align 8
  %add.ptr.i.i101.i.i = getelementptr i8, ptr %71, i32 %add1.i99.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %or46.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101.i.i, i32 %72) #7, !srcloc !58
  br label %rcar_du_plane_setup_mode.exit.i

rcar_du_plane_setup_mode.exit.i:                  ; preds = %sw.bb43.i.i, %sw.bb31.i.i, %sw.bb.i.i, %if.end.i.i.rcar_du_plane_setup_mode.exit.i_crit_edge
  %73 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %format.i.i, align 4
  %planes.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp.i = icmp eq i32 %76, 2
  br i1 %cmp.i, label %if.then.i, label %rcar_du_plane_setup_mode.exit.i.rcar_du_plane_setup_format_gen2.exit_crit_edge

rcar_du_plane_setup_mode.exit.i.rcar_du_plane_setup_format_gen2.exit_crit_edge: ; preds = %rcar_du_plane_setup_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_du_plane_setup_format_gen2.exit

if.then.i:                                        ; preds = %rcar_du_plane_setup_mode.exit.i
  %hwindex.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 2
  %77 = ptrtoint ptr %hwindex.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hwindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %index)
  %cmp1.not.i = icmp eq i32 %78, %index
  br i1 %cmp1.not.i, label %if.then.i.rcar_du_plane_setup_format_gen2.exit_crit_edge, label %if.then2.i

if.then.i.rcar_du_plane_setup_format_gen2.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_du_plane_setup_format_gen2.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %80)
  %switch.selectcmp.case1.i = icmp eq i32 %80, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %80)
  %switch.selectcmp.case2.i = icmp eq i32 %80, 825382478
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %81 = select i1 %switch.selectcmp.i, i32 2004221968, i32 2004221952
  %or13.i = or i32 %81, 32
  %spec.select.i = select i1 %switch.selectcmp.case2.i, i32 %or13.i, i32 %81
  %or15.i = or i32 %spec.select.i, 2
  br label %rcar_du_plane_setup_format_gen2.exit

rcar_du_plane_setup_format_gen2.exit:             ; preds = %if.then2.i, %if.then.i.rcar_du_plane_setup_format_gen2.exit_crit_edge, %rcar_du_plane_setup_mode.exit.i.rcar_du_plane_setup_format_gen2.exit_crit_edge
  %ddcr2.2.i = phi i32 [ %or15.i, %if.then2.i ], [ 2004221952, %rcar_du_plane_setup_mode.exit.i.rcar_du_plane_setup_format_gen2.exit_crit_edge ], [ 2004221953, %if.then.i.rcar_du_plane_setup_format_gen2.exit_crit_edge ]
  %82 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rgrp, align 8
  %84 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %mul.i.i = shl i32 %index, 8
  %add.i.i = add i32 %mul.i.i, 392
  %add1.i.i = add i32 %add.i.i, %85
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 %add1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %ddcr2.2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %88) #7, !srcloc !58
  %89 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %format.i.i, align 4
  %edf.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %edf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %edf.i, align 4
  %source.i = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 3
  %93 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp21.not.i = icmp eq i32 %94, 0
  %spec.select42.v.i = select i1 %cmp21.not.i, i32 2003173376, i32 2003181568
  %spec.select42.i = or i32 %spec.select42.v.i, %92
  %95 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rgrp, align 8
  %97 = ptrtoint ptr %mmio_offset.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mmio_offset.i78.i.i, align 4
  %add.i45.i = add i32 %mul.i.i, 400
  %add1.i46.i = add i32 %add.i45.i, %98
  %mmio.i.i47.i = getelementptr inbounds %struct.rcar_du_device, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %mmio.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i47.i, align 8
  %add.ptr.i.i48.i = getelementptr i8, ptr %100, i32 %add1.i46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %101 = tail call i32 @llvm.bswap.i32(i32 %spec.select42.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48.i, i32 %101) #7, !srcloc !58
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pnmr.i = getelementptr inbounds %struct.rcar_du_format_info, ptr %7, i32 0, i32 5
  %102 = ptrtoint ptr %pnmr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pnmr.i, align 4
  %or.i = or i32 %103, 16384
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %104 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mmio_offset.i.i, align 4
  %mul.i.i34 = shl i32 %index, 8
  %add.i.i35 = add i32 %mul.i.i34, 256
  %add1.i.i36 = add i32 %add.i.i35, %105
  %mmio.i.i.i37 = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %106 = ptrtoint ptr %mmio.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i.i.i37, align 8
  %add.ptr.i.i.i38 = getelementptr i8, ptr %107, i32 %add1.i.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i38, i32 %108) #7, !srcloc !58
  %109 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %format.i.i, align 4
  %edf.i39 = getelementptr inbounds %struct.rcar_du_format_info, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %edf.i39 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %edf.i39, align 4
  %or2.i = or i32 %112, 2003173376
  %113 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rgrp, align 8
  %115 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i8.i = add i32 %mul.i.i34, 400
  %add1.i9.i = add i32 %add.i8.i, %116
  %mmio.i.i10.i = getelementptr inbounds %struct.rcar_du_device, ptr %114, i32 0, i32 2
  %117 = ptrtoint ptr %mmio.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i.i10.i, align 8
  %add.ptr.i.i11.i = getelementptr i8, ptr %118, i32 %add1.i9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %119 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 %119) #7, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.else, %rcar_du_plane_setup_format_gen2.exit
  %mul.i.pre-phi = phi i32 [ %mul.i.i34, %if.else ], [ %mul.i.i, %rcar_du_plane_setup_format_gen2.exit ]
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 2
  %120 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %x2.i, align 4
  %122 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dst2, align 4
  %sub.i = sub i32 %121, %123
  %124 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %126 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mmio_offset.i, align 4
  %add.i = add i32 %mul.i.pre-phi, 272
  %add1.i = add i32 %add.i, %127
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %125, i32 0, i32 2
  %128 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %129, i32 %add1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %130 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %130) #7, !srcloc !58
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 3
  %131 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 1
  %133 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %y1.i, align 4
  %sub.i40 = sub i32 %132, %134
  %135 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rgrp, align 8
  %137 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mmio_offset.i, align 4
  %add.i43 = add i32 %mul.i.pre-phi, 276
  %add1.i44 = add i32 %add.i43, %138
  %mmio.i.i45 = getelementptr inbounds %struct.rcar_du_device, ptr %136, i32 0, i32 2
  %139 = ptrtoint ptr %mmio.i.i45 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i.i45, align 8
  %add.ptr.i.i46 = getelementptr i8, ptr %140, i32 %add1.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %141 = tail call i32 @llvm.bswap.i32(i32 %sub.i40) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 %141) #7, !srcloc !58
  %142 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dst2, align 4
  %144 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rgrp, align 8
  %146 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mmio_offset.i, align 4
  %add.i49 = add i32 %mul.i.pre-phi, 280
  %add1.i50 = add i32 %add.i49, %147
  %mmio.i.i51 = getelementptr inbounds %struct.rcar_du_device, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %mmio.i.i51 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mmio.i.i51, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %149, i32 %add1.i50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %150 = tail call i32 @llvm.bswap.i32(i32 %143) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %150) #7, !srcloc !58
  %151 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %y1.i, align 4
  %153 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rgrp, align 8
  %155 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mmio_offset.i, align 4
  %add.i55 = add i32 %mul.i.pre-phi, 284
  %add1.i56 = add i32 %add.i55, %156
  %mmio.i.i57 = getelementptr inbounds %struct.rcar_du_device, ptr %154, i32 0, i32 2
  %157 = ptrtoint ptr %mmio.i.i57 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mmio.i.i57, align 8
  %add.ptr.i.i58 = getelementptr i8, ptr %158, i32 %add1.i56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %159 = tail call i32 @llvm.bswap.i32(i32 %152) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %159) #7, !srcloc !58
  %160 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %info, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %163)
  %cmp6 = icmp ult i32 %163, 3
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rgrp, align 8
  %166 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mmio_offset.i, align 4
  %add.i61 = add i32 %mul.i.pre-phi, 312
  %add1.i62 = add i32 %add.i61, %167
  %mmio.i.i63 = getelementptr inbounds %struct.rcar_du_device, ptr %165, i32 0, i32 2
  %168 = ptrtoint ptr %mmio.i.i63 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i.i63, align 8
  %add.ptr.i.i64 = getelementptr i8, ptr %169, i32 %add1.i62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 0) #7, !srcloc !58
  %170 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rgrp, align 8
  %172 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mmio_offset.i, align 4
  %add.i67 = add i32 %mul.i.pre-phi, 316
  %add1.i68 = add i32 %add.i67, %173
  %mmio.i.i69 = getelementptr inbounds %struct.rcar_du_device, ptr %171, i32 0, i32 2
  %174 = ptrtoint ptr %mmio.i.i69 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i69, align 8
  %add.ptr.i.i70 = getelementptr i8, ptr %175, i32 %add1.i68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 -15794176) #7, !srcloc !58
  %176 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rgrp, align 8
  %178 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mmio_offset.i, align 4
  %add.i73 = add i32 %mul.i.pre-phi, 320
  %add1.i74 = add i32 %add.i73, %179
  %mmio.i.i75 = getelementptr inbounds %struct.rcar_du_device, ptr %177, i32 0, i32 2
  %180 = ptrtoint ptr %mmio.i.i75 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i.i75, align 8
  %add.ptr.i.i76 = getelementptr i8, ptr %181, i32 %add1.i74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 0) #7, !srcloc !58
  %182 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rgrp, align 8
  %184 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mmio_offset.i, align 4
  %add.i79 = add i32 %mul.i.pre-phi, 336
  %add1.i80 = add i32 %add.i79, %185
  %mmio.i.i81 = getelementptr inbounds %struct.rcar_du_device, ptr %183, i32 0, i32 2
  %186 = ptrtoint ptr %mmio.i.i81 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i.i81, align 8
  %add.ptr.i.i82 = getelementptr i8, ptr %187, i32 %add1.i80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 0) #7, !srcloc !58
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__rcar_du_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state, ptr nocapture noundef writeonly %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %4 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %visible, align 4
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %format, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %state2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %call = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %7, ptr noundef nonnull %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %state, ptr noundef %call, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %visible11 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %9 = ptrtoint ptr %visible11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %visible11, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %format, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %format15 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %format15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format15, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call17 = tail call ptr @rcar_du_format_info(i32 noundef %17) #7
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %format, align 4
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %do.body, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rcar_du_plane_atomic_check.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rcar_du_plane_atomic_check, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !54

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev25, align 4
  %21 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fb, align 4
  %format27 = getelementptr inbounds %struct.drm_framebuffer, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %format27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format27, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rcar_du_plane_atomic_check.__UNIQUE_ID_ddebug327, ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body, %if.end14.cleanup_crit_edge, %if.then13, %if.end7.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %8, %if.then5 ], [ 0, %if.then13 ], [ 0, %if.then ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %if.then24 ], [ 0, %if.end14.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_planes_init(ptr noundef %rgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %num_crtcs = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 5
  %2 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtcs, align 4
  %add = add i32 %3, 7
  %num_planes = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 10
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %num_planes, align 8
  %num_crtcs1 = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %num_crtcs1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_crtcs1, align 8
  %notmask = shl nsw i32 -1, %6
  %sub = xor i32 %notmask, -1
  %index = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 8
  %mul = shl i32 %8, 1
  %shl2 = shl i32 3, %mul
  %and = and i32 %shl2, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp47.not = icmp eq i32 %add, 0
  br i1 %cmp47.not, label %entry.cleanup20_crit_edge, label %for.body.lr.ph

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %entry
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 3
  %props = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048, i32 %10)
  %cmp5 = icmp ult i32 %i.048, %10
  %cond = zext i1 %cmp5 to i32
  %arrayidx = getelementptr %struct.rcar_du_group, ptr %rgrp, i32 0, i32 11, i32 %i.048
  %group = getelementptr %struct.rcar_du_group, ptr %rgrp, i32 0, i32 11, i32 %i.048, i32 1
  %11 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rgrp, ptr %group, align 8
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ddev, ptr noundef %arrayidx, i32 noundef %and, ptr noundef nonnull @rcar_du_plane_funcs, ptr noundef nonnull @formats, i32 noundef 10, ptr noundef null, i32 noundef %cond, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %for.body.cleanup20_crit_edge, label %if.end

for.body.cleanup20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.end:                                           ; preds = %for.body
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx, i32 0, i32 18
  %12 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rcar_du_plane_helper_funcs, ptr %helper_private.i, align 8
  %call10 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %arrayidx) #7
  br i1 %cmp5, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %arrayidx, i32 noundef 0) #7
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.drm_plane, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %props, align 8
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %14, i64 noundef 0) #7
  %call17 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1, i32 noundef 7) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12
  %inc = add nuw i32 %i.048, 1
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup20_crit_edge

for.inc.cleanup20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup20:                                        ; preds = %for.inc.cleanup20_crit_edge, %for.body.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup20_crit_edge ], [ %call, %for.body.cleanup20_crit_edge ], [ 0, %for.inc.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 140) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #7
  %hwindex = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %hwindex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hwindex, align 8
  %source = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %source, align 4
  %colorkey = getelementptr inbounds %struct.rcar_du_plane_state, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %colorkey to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %colorkey, align 8
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp ne i32 %8, 1
  %cond = zext i1 %cmp7 to i32
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %zpos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_du_plane_atomic_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 661, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call26 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 140, i32 noundef 3264) #7
  %cmp = icmp eq ptr %call26, null
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call26, %if.end28 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_plane_atomic_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #7
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_plane_atomic_set_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef writeonly %state, ptr noundef readnone %property, i64 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.rcar_du_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %props = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props, align 8
  %cmp = icmp eq ptr %5, %property
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %val to i32
  %colorkey2 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %colorkey2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %colorkey2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_plane_atomic_get_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.rcar_du_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %props = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props, align 8
  %cmp = icmp eq ptr %5, %property
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey1 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %colorkey1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %colorkey1, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %format = getelementptr inbounds %struct.rcar_du_plane_state, ptr %5, i32 0, i32 1
  %call2 = tail call i32 @__rcar_du_plane_atomic_check(ptr noundef %plane, ptr noundef %5, ptr noundef %format)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %visible, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  %state2.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2.i, align 4
  %group.i = getelementptr inbounds %struct.rcar_du_plane, ptr %plane, i32 0, i32 1
  %12 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group.i, align 8
  tail call void @__rcar_du_plane_setup(ptr noundef %13, ptr noundef %11) #7
  %source = getelementptr inbounds %struct.rcar_du_plane_state, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp ne i32 %15, 0
  %source5 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %source5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %source5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6 = icmp eq i32 %17, 0
  %cmp8.not = xor i1 %cmp, %cmp6
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group.i, align 8
  %need_restart = getelementptr inbounds %struct.rcar_du_group, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %need_restart to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %need_restart, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 153, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug316, !1, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 162, i32 4}
!8 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug317, !7, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 175, i32 4}
!11 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug318, !10, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 203, i32 3}
!14 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug319, !13, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 224, i32 5}
!17 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug320, !16, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 234, i32 4}
!20 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug321, !19, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 246, i32 3}
!23 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug322, !22, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 264, i32 3}
!26 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug323, !25, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 292, i32 4}
!29 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug324, !28, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 297, i32 3}
!32 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug325, !31, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!33 = !{ptr @rcar_du_atomic_check_planes.__UNIQUE_ID_ddebug326, !34, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 305, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 601, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__rcar_du_plane_atomic_check.__UNIQUE_ID_ddebug327, !36, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!39 = !{ptr @rcar_du_plane_funcs, !40, !"rcar_du_plane_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 734, i32 37}
!41 = !{ptr @formats, !42, !"formats", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 745, i32 23}
!43 = !{ptr @rcar_du_plane_helper_funcs, !44, !"rcar_du_plane_helper_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_plane.c", i32 650, i32 44}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2149096262, i64 2149096267, i64 2149096280, i64 2149096324, i64 2149096358, i64 2149096379}
!55 = !{i32 0, i32 33}
!56 = !{!"auto-init"}
!57 = !{i64 2154466858}
!58 = !{i64 6932226}
!59 = !{i8 0, i8 2}
!60 = !{!"branch_weights", i32 1, i32 2000}
