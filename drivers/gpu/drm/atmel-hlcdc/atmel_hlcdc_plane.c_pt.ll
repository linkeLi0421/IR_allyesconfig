; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atmel_hlcdc_formats = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atmel_hlcdc_plane_state = type { %struct.drm_plane_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, [3 x ptr] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atmel_hlcdc_plane = type { %struct.drm_plane, %struct.atmel_hlcdc_layer }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_hlcdc_layer = type { ptr, ptr }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.89, i32, i32, i32 }
%struct.anon.89 = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.91 }
%struct.anon.91 = type { i32, ptr }
%struct.atmel_hlcdc_dma_channel_dscr = type { i32, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
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

@rgb_formats = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 538982467, i32 842093144, i32 842093121, i32 842088786, i32 892424769, i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 875708754], [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_rgb_formats = dso_local global { %struct.atmel_hlcdc_formats, [24 x i8] } { %struct.atmel_hlcdc_formats { i32 10, ptr @rgb_formats }, [24 x i8] zeroinitializer }, align 32
@rgb_and_yuv_formats = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 538982467, i32 842093144, i32 842093121, i32 842088786, i32 892424769, i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 875708754, i32 1448433985, i32 1448695129, i32 1498831189, i32 1431918169, i32 1498765654, i32 825382478, i32 825644622, i32 909202777, i32 842093913], [52 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_rgb_and_yuv_formats = dso_local global { %struct.atmel_hlcdc_formats, [24 x i8] } { %struct.atmel_hlcdc_formats { i32 19, ptr @rgb_and_yuv_formats }, [24 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_irq.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_hlcdc_dc\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_hlcdc_plane_irq\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"overrun on plane %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel-hlcdc-dscr\00", [47 x i8] zeroinitializer }, align 32
@layer_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @atmel_hlcdc_plane_reset, ptr null, ptr @atmel_hlcdc_plane_atomic_duplicate_state, ptr @atmel_hlcdc_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@atmel_hlcdc_layer_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @atmel_hlcdc_plane_atomic_check, ptr @atmel_hlcdc_plane_atomic_update, ptr @atmel_hlcdc_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 894, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate initial plane state\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_hlcdc_plane_reset\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_hlcdc_plane_reset._entry_ptr = internal global ptr @atmel_hlcdc_plane_reset._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@heo_downscaling_xcoef = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 288633617, i32 247, i32 372584460, i32 249, i32 456535048, i32 251, i32 523708420, i32 254, i32 607659008, i32 0, i32 674701310, i32 4, i32 741743611, i32 8, i32 808785657, i32 12], [32 x i8] zeroinitializer }, align 32
@heo_upscaling_xcoef = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -146191881, i32 0, i32 -178310149, i32 254, i32 -177201410, i32 255, i32 -126087681, i32 0, i32 8388608, i32 0, i32 226293760, i32 255, i32 510719487, i32 254, i32 861926910, i32 251], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [21 x i64] [i64 19, i64 32, i64 538982467, i64 825382478, i64 825644622, i64 842088786, i64 842093121, i64 842093144, i64 842093913, i64 875708754, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 909199186, i64 909202777, i64 1431918169, i64 1448433985, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"rgb_formats\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [30 x i8] c"atmel_hlcdc_plane_rgb_formats\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 95, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"rgb_and_yuv_formats\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 100, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [38 x i8] c"atmel_hlcdc_plane_rgb_and_yuv_formats\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 122, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 832, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 1000, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"layer_plane_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 942, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [37 x i8] c"atmel_hlcdc_layer_plane_helper_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 836, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 893, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"heo_downscaling_xcoef\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 194, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"heo_upscaling_xcoef\00", align 1
@___asan_gen_.62 = private constant [51 x i8] c"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 224, i32 12 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @atmel_hlcdc_plane_reset._entry, ptr @atmel_hlcdc_plane_reset._entry_ptr, ptr @rgb_formats, ptr @atmel_hlcdc_plane_rgb_formats, ptr @rgb_and_yuv_formats, ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @layer_plane_funcs, ptr @atmel_hlcdc_layer_plane_helper_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @heo_downscaling_xcoef, ptr @heo_upscaling_xcoef], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_formats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_plane_rgb_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_and_yuv_formats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_plane_rgb_and_yuv_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @layer_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_layer_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_plane_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heo_downscaling_xcoef to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heo_upscaling_xcoef to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr nocapture noundef readonly %c_state) local_unnamed_addr #0 align 64 {
entry:
  %ahb_load = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ahb_load) #5
  %0 = ptrtoint ptr %ahb_load to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ahb_load, align 8
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %c_state, i32 0, i32 20
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 18
  %5 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn63 = load ptr, ptr %plane_list, align 4
  %cmp.not67 = icmp eq ptr %.pn63, %plane_list
  br i1 %cmp.not67, label %entry.cleanup38_crit_edge, label %for.body.lr.ph

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

for.body.lr.ph:                                   ; preds = %entry
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %c_state, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [2 x i32], ptr %ahb_load, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %2, %for.body.lr.ph ], [ %34, %for.inc31.for.body_crit_edge ]
  %.pn68 = phi ptr [ %.pn63, %for.body.lr.ph ], [ %.pn, %for.inc31.for.body_crit_edge ]
  %7 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn68, i32 480
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %10
  %and = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc31_crit_edge, label %if.else

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc31

if.else:                                          ; preds = %for.body
  %plane.069 = getelementptr i8, ptr %.pn68, i32 -4
  %call6 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %6, ptr noundef %plane.069) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call6 to i32
  br label %cleanup38

if.end:                                           ; preds = %if.else
  %src_w = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 7
  %12 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_w, align 4
  %src_h = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 8
  %14 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_h, align 4
  %mul = mul i32 %15, %13
  %disc_w = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 11
  %16 = ptrtoint ptr %disc_w to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %disc_w, align 4
  %disc_h = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 12
  %18 = ptrtoint ptr %disc_h to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %disc_h, align 4
  %mul11 = mul i32 %19, %17
  %sub = sub i32 %mul, %mul11
  %nplanes = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 18
  %20 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1360 = icmp sgt i32 %21, 0
  br i1 %cmp1360, label %if.end.for.body14_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body14_crit_edge:                      ; preds = %if.end
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %if.end.for.body14_crit_edge
  %i.062 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ 0, %if.end.for.body14_crit_edge ]
  %load.061 = phi i32 [ %add, %for.body14.for.body14_crit_edge ], [ 0, %if.end.for.body14_crit_edge ]
  %arrayidx = getelementptr %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 14, i32 %i.062
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %mul15 = mul i32 %23, %sub
  %add = add i32 %mul15, %load.061
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.body14.for.end_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

for.body14.for.end_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body14.for.end_crit_edge, %if.end.for.end_crit_edge
  %load.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.body14.for.end_crit_edge ]
  %24 = ptrtoint ptr %ahb_load to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ahb_load, align 8
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp18.not = icmp ugt i32 %25, %27
  %spec.select = zext i1 %cmp18.not to i32
  %28 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call6, i32 0, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 4
  %arrayidx24 = getelementptr [2 x i32], ptr %ahb_load, i32 0, i32 %spec.select
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %31, %load.0.lcssa
  store i32 %add25, ptr %arrayidx24, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.end, %for.body.for.inc31_crit_edge
  %32 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn68, align 4
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %dev2 = getelementptr inbounds %struct.drm_atomic_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 4
  %plane_list4 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list4
  br i1 %cmp.not, label %for.inc31.cleanup38_crit_edge, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc31.cleanup38_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc31.cleanup38_crit_edge, %cleanup.thread, %entry.cleanup38_crit_edge
  %retval.3 = phi i32 [ %11, %cleanup.thread ], [ 0, %entry.cleanup38_crit_edge ], [ 0, %for.inc31.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ahb_load) #5
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_plane_prepare_disc_area(ptr nocapture noundef readonly %c_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_state, align 4
  %primary1 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary1, align 4
  %layer = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layer, align 8
  %disc_pos = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %5, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %disc_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disc_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %lor.lhs.false

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

lor.lhs.false:                                    ; preds = %entry
  %disc_size = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %5, i32 0, i32 7, i32 12
  %8 = ptrtoint ptr %disc_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup59_crit_edge, label %if.end

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %c_state, i32 0, i32 20
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %call4 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %11, ptr noundef %3) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call4 to i32
  br label %cleanup59

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 18
  %17 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn109 = load ptr, ptr %plane_list, align 4
  %cmp.not113 = icmp eq ptr %.pn109, %plane_list
  br i1 %cmp.not113, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %c_state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %18 = phi ptr [ %14, %for.body.lr.ph ], [ %48, %for.inc.for.body_crit_edge ]
  %.pn118 = phi ptr [ %.pn109, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %disc_x.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %disc_x.2, %for.inc.for.body_crit_edge ]
  %disc_y.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %disc_y.2, %for.inc.for.body_crit_edge ]
  %disc_w.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %disc_w.2, %for.inc.for.body_crit_edge ]
  %disc_h.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %disc_h.2, %for.inc.for.body_crit_edge ]
  %ovl.0119 = getelementptr i8, ptr %.pn118, i32 -4
  %19 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn118, i32 480
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %22
  %and = and i32 %shl.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %23 = ptrtoint ptr %c_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c_state, align 4
  %primary19 = getelementptr inbounds %struct.drm_crtc, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %primary19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %primary19, align 4
  %cmp20 = icmp eq ptr %ovl.0119, %26
  br i1 %cmp20, label %if.else.for.inc_crit_edge, label %if.end22

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end22:                                         ; preds = %if.else
  %call24 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %18, ptr noundef %ovl.0119) #5
  %cmp.i98 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end22
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %call24, i32 0, i32 22
  %27 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %visible, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool30.not = icmp eq i8 %28, 0
  br i1 %tobool30.not, label %if.end28.for.inc_crit_edge, label %lor.lhs.false31

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false31:                                  ; preds = %if.end28
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %call24, i32 0, i32 2
  %29 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb, align 4
  %tobool32.not = icmp eq ptr %30, null
  br i1 %tobool32.not, label %lor.lhs.false31.for.inc_crit_edge, label %lor.lhs.false33

lor.lhs.false31.for.inc_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_alpha, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool35.not = icmp eq i8 %34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false33.for.inc_crit_edge

lor.lhs.false33.for.inc_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %call24, i32 0, i32 12
  %35 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp37.not = icmp eq i16 %36, -1
  br i1 %cmp37.not, label %if.end40, label %lor.lhs.false36.for.inc_crit_edge

lor.lhs.false36.for.inc_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end40:                                         ; preds = %lor.lhs.false36
  %crtc_h = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call24, i32 0, i32 4
  %37 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc_h, align 4
  %crtc_w = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call24, i32 0, i32 3
  %39 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %crtc_w, align 4
  %mul = mul i32 %40, %38
  %mul41 = mul i32 %disc_w.0115, %disc_h.0114
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul41)
  %cmp42 = icmp ult i32 %mul, %mul41
  br i1 %cmp42, label %if.end40.for.inc_crit_edge, label %if.end45

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %crtc_x = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call24, i32 0, i32 1
  %41 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call24, i32 0, i32 2
  %43 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crtc_y, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %call24 to i32
  br label %cleanup59

for.inc:                                          ; preds = %if.end45, %if.end40.for.inc_crit_edge, %lor.lhs.false36.for.inc_crit_edge, %lor.lhs.false33.for.inc_crit_edge, %lor.lhs.false31.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %disc_h.2 = phi i32 [ %disc_h.0114, %for.body.for.inc_crit_edge ], [ %disc_h.0114, %if.end40.for.inc_crit_edge ], [ %disc_h.0114, %if.end28.for.inc_crit_edge ], [ %disc_h.0114, %lor.lhs.false31.for.inc_crit_edge ], [ %disc_h.0114, %lor.lhs.false33.for.inc_crit_edge ], [ %disc_h.0114, %lor.lhs.false36.for.inc_crit_edge ], [ %disc_h.0114, %if.else.for.inc_crit_edge ], [ %38, %if.end45 ]
  %disc_w.2 = phi i32 [ %disc_w.0115, %for.body.for.inc_crit_edge ], [ %disc_w.0115, %if.end40.for.inc_crit_edge ], [ %disc_w.0115, %if.end28.for.inc_crit_edge ], [ %disc_w.0115, %lor.lhs.false31.for.inc_crit_edge ], [ %disc_w.0115, %lor.lhs.false33.for.inc_crit_edge ], [ %disc_w.0115, %lor.lhs.false36.for.inc_crit_edge ], [ %disc_w.0115, %if.else.for.inc_crit_edge ], [ %40, %if.end45 ]
  %disc_y.2 = phi i32 [ %disc_y.0116, %for.body.for.inc_crit_edge ], [ %disc_y.0116, %if.end40.for.inc_crit_edge ], [ %disc_y.0116, %if.end28.for.inc_crit_edge ], [ %disc_y.0116, %lor.lhs.false31.for.inc_crit_edge ], [ %disc_y.0116, %lor.lhs.false33.for.inc_crit_edge ], [ %disc_y.0116, %lor.lhs.false36.for.inc_crit_edge ], [ %disc_y.0116, %if.else.for.inc_crit_edge ], [ %44, %if.end45 ]
  %disc_x.2 = phi i32 [ %disc_x.0117, %for.body.for.inc_crit_edge ], [ %disc_x.0117, %if.end40.for.inc_crit_edge ], [ %disc_x.0117, %if.end28.for.inc_crit_edge ], [ %disc_x.0117, %lor.lhs.false31.for.inc_crit_edge ], [ %disc_x.0117, %lor.lhs.false33.for.inc_crit_edge ], [ %disc_x.0117, %lor.lhs.false36.for.inc_crit_edge ], [ %disc_x.0117, %if.else.for.inc_crit_edge ], [ %42, %if.end45 ]
  %46 = ptrtoint ptr %.pn118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn118, align 4
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state, align 4
  %dev12 = getelementptr inbounds %struct.drm_atomic_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev12, align 4
  %plane_list14 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list14
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %disc_h.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %disc_h.2, %for.inc.for.end_crit_edge ]
  %disc_w.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %disc_w.2, %for.inc.for.end_crit_edge ]
  %disc_y.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %disc_y.2, %for.inc.for.end_crit_edge ]
  %disc_x.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %disc_x.2, %for.inc.for.end_crit_edge ]
  %disc_x55 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call4, i32 0, i32 9
  %51 = ptrtoint ptr %disc_x55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %disc_x.0.lcssa, ptr %disc_x55, align 4
  %disc_y56 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call4, i32 0, i32 10
  %52 = ptrtoint ptr %disc_y56 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %disc_y.0.lcssa, ptr %disc_y56, align 4
  %disc_w57 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call4, i32 0, i32 11
  %53 = ptrtoint ptr %disc_w57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %disc_w.0.lcssa, ptr %disc_w57, align 4
  %disc_h58 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %call4, i32 0, i32 12
  %54 = ptrtoint ptr %disc_h58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %disc_h.0.lcssa, ptr %disc_h58, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %for.end, %cleanup, %if.then6, %lor.lhs.false.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.3 = phi i32 [ %12, %if.then6 ], [ %45, %cleanup ], [ 0, %for.end ], [ 0, %lor.lhs.false.cleanup59_crit_edge ], [ 0, %entry.cleanup59_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atmel_hlcdc_plane_irq(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %layer = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !45
  %regmap.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %plane, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %6, 24
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %8, 4210752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_hlcdc_plane_irq.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_hlcdc_plane_irq, %if.then7)) #5
          to label %if.end9 [label %if.then7], !srcloc !46

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plane, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_hlcdc_plane_irq.__UNIQUE_ID_ddebug316, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %14) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_create_planes(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %layers = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers, align 4
  %nlayers2 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %nlayers2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlayers2, align 4
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %call = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.4, ptr noundef %9, i32 noundef 16, i32 noundef 8, i32 noundef 0) #5
  %dscrpool = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dscrpool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %dscrpool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40 = icmp sgt i32 %7, 0
  br i1 %cmp40, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %5, i32 %i.041
  %type = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %5, i32 %i.041, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %13 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private, align 4
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 536, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %layer.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %call.i.i, i32 0, i32 1
  %hlcdc.i = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %hlcdc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hlcdc.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %layer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %layer.i, align 4
  %regmap2.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %call.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %regmap2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %regmap2.i.i, align 4
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %switch.selectcmp.i = icmp eq i32 %24, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %switch.selectcmp41.i = icmp eq i32 %24, 1
  %switch.select42.i = select i1 %switch.selectcmp41.i, i32 1, i32 %switch.select.i
  %formats.i = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %5, i32 %i.041, i32 6
  %25 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %formats.i, align 4
  %formats10.i = getelementptr inbounds %struct.atmel_hlcdc_formats, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %formats10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %formats10.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %call12.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef nonnull @layer_plane_funcs, ptr noundef %28, i32 noundef %30, ptr noundef null, i32 noundef %switch.select42.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %call.i.i, i32 0, i32 18
  %31 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @atmel_hlcdc_layer_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %32 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %layer.i, align 8
  %type.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i.i, align 4
  %36 = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %switch.i.i = icmp eq i32 %36, 2
  br i1 %switch.i.i, label %if.then.i.i, label %if.end15.i.if.end5.i.i_crit_edge

if.end15.i.if.end5.i.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  %call.i43.i = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end5.i.i_crit_edge, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i.if.end5.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i.if.end5.i.i_crit_edge, %if.end15.i.if.end5.i.i_crit_edge
  %layout.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 7
  %37 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end20.i.i_crit_edge, label %land.lhs.true.i.i

if.end5.i.i.if.end20.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i

land.lhs.true.i.i:                                ; preds = %if.end5.i.i
  %pstride.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %pstride.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pstride.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool9.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.if.end20.i.i_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.if.end20.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  %call13.i.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then10.i.i.if.end20.i.i_crit_edge, label %if.then10.i.i.cleanup_crit_edge

if.then10.i.i.cleanup_crit_edge:                  ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then10.i.i.if.end20.i.i_crit_edge, %land.lhs.true.i.i.if.end20.i.i_crit_edge, %if.end5.i.i.if.end20.i.i_crit_edge
  %csc.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 7, i32 13
  %41 = ptrtoint ptr %csc.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %csc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool22.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool22.not.i.i, label %if.end20.i.i.atmel_hlcdc_plane_create.exit_crit_edge, label %if.then23.i.i

if.end20.i.i.atmel_hlcdc_plane_create.exit_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_create.exit

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %cfgs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfgs_offset.i.i.i, align 4
  %mul.i.i.i = shl i32 %42, 2
  %add.i.i.i = add i32 %46, %mul.i.i.i
  %47 = ptrtoint ptr %regmap2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap2.i.i, align 4
  %regs_offset.i.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %44, i32 0, i32 3
  %49 = ptrtoint ptr %regs_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regs_offset.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %add.i.i.i, %50
  %call.i.i.i.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef %add.i.i.i.i, i32 noundef 1284505745) #5
  %51 = ptrtoint ptr %csc.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %csc.i.i, align 4
  %53 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i53.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %cfgs_offset.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfgs_offset.i53.i.i, align 4
  %add.i.i = shl i32 %52, 2
  %mul.i54.i.i = add i32 %add.i.i, 4
  %add.i55.i.i = add i32 %mul.i54.i.i, %56
  %57 = ptrtoint ptr %regmap2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap2.i.i, align 4
  %regs_offset.i.i57.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %regs_offset.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %regs_offset.i.i57.i.i, align 4
  %add.i.i58.i.i = add i32 %add.i55.i.i, %60
  %call.i.i59.i.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef %add.i.i58.i.i, i32 noundef 2053066896) #5
  %61 = ptrtoint ptr %csc.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %csc.i.i, align 4
  %63 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i60.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %cfgs_offset.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cfgs_offset.i60.i.i, align 4
  %add33.i.i = shl i32 %62, 2
  %mul.i61.i.i = add i32 %add33.i.i, 8
  %add.i62.i.i = add i32 %mul.i61.i.i, %66
  %67 = ptrtoint ptr %regmap2.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap2.i.i, align 4
  %regs_offset.i.i64.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %64, i32 0, i32 3
  %69 = ptrtoint ptr %regs_offset.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %regs_offset.i.i64.i.i, align 4
  %add.i.i65.i.i = add i32 %add.i62.i.i, %70
  %call.i.i66.i.i = tail call i32 @regmap_write(ptr noundef %68, i32 noundef %add.i.i65.i.i, i32 noundef 1074006160) #5
  br label %atmel_hlcdc_plane_create.exit

atmel_hlcdc_plane_create.exit:                    ; preds = %if.then23.i.i, %if.end20.i.i.atmel_hlcdc_plane_create.exit_crit_edge
  %id.i = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %5, i32 %i.041, i32 2
  %71 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.atmel_hlcdc_dc, ptr %14, i32 0, i32 4, i32 %72
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %layer.i, ptr %arrayidx.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %atmel_hlcdc_plane_create.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call12.i, %if.end.i.cleanup_crit_edge ], [ %call13.i.i, %if.then10.i.i.cleanup_crit_edge ], [ %call.i43.i, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_reset(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 240) #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %call12 = tail call fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr noundef %p, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %p, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atmel_hlcdc_plane_atomic_duplicate_state(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 240, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr noundef %p, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call2) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ %call2, %if.then8 ], [ %call2, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_destroy_state(ptr nocapture noundef readonly %p, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %dscrpool = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dscrpool, align 4
  %arrayidx = getelementptr %struct.atmel_hlcdc_plane_state, ptr %s, i32 0, i32 19, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %self = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %self, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #5
  %10 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dscrpool, align 4
  %arrayidx.1 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %s, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %self.1 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %self.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %self.1, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef %13, i32 noundef %15) #5
  %16 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dscrpool, align 4
  %arrayidx.2 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %s, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %self.2 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %self.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %self.2, align 4
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef %19, i32 noundef %21) #5
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %s, i32 0, i32 2
  %22 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %s) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr nocapture noundef readonly %p, ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %dscr_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %dscrpool = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dscr_dma) #5
  %4 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dscr_dma, align 4, !annotation !45
  %5 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dscrpool, align 4
  %call = call ptr @dma_pool_alloc(ptr noundef %6, i32 noundef 3264, ptr noundef nonnull %dscr_dma) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dscr_dma) #5
  br label %cleanup14

for.body4.preheader:                              ; preds = %for.inc.1.for.body4.preheader_crit_edge, %for.inc.for.body4.preheader_crit_edge
  %i.034.lcssa.ph = phi i32 [ 1, %for.inc.1.for.body4.preheader_crit_edge ], [ 0, %for.inc.for.body4.preheader_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dscr_dma) #5
  %7 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dscrpool, align 4
  %arrayidx7 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %state, i32 0, i32 19, i32 %i.034.lcssa.ph
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %self10 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %self10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %self10, align 4
  call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #5
  br i1 %tobool.not.1, label %for.body4.preheader.cleanup14_crit_edge, label %for.body4.1

for.body4.preheader.cleanup14_crit_edge:          ; preds = %for.body4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

for.inc:                                          ; preds = %entry
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call, align 8
  %14 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dscr_dma, align 4
  %next = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %next, align 8
  %self = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %self, align 4
  %ctrl = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ctrl, align 4
  %arrayidx = getelementptr %struct.atmel_hlcdc_plane_state, ptr %state, i32 0, i32 19, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dscr_dma) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dscr_dma) #5
  %20 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dscr_dma, align 4, !annotation !45
  %21 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dscrpool, align 4
  %call.1 = call ptr @dma_pool_alloc(ptr noundef %22, i32 noundef 3264, ptr noundef nonnull %dscr_dma) #5
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.for.body4.preheader_crit_edge, label %for.inc.1

for.inc.for.body4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.preheader

for.inc.1:                                        ; preds = %for.inc
  %23 = ptrtoint ptr %call.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %call.1, align 8
  %24 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dscr_dma, align 4
  %next.1 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.1, i32 0, i32 2
  %26 = ptrtoint ptr %next.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %next.1, align 8
  %self.1 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.1, i32 0, i32 3
  %27 = ptrtoint ptr %self.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %self.1, align 4
  %ctrl.1 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.1, i32 0, i32 1
  %28 = ptrtoint ptr %ctrl.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %ctrl.1, align 4
  %arrayidx.1 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %state, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.1, ptr %arrayidx.1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dscr_dma) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dscr_dma) #5
  %30 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dscr_dma, align 4, !annotation !45
  %31 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dscrpool, align 4
  %call.2 = call ptr @dma_pool_alloc(ptr noundef %32, i32 noundef 3264, ptr noundef nonnull %dscr_dma) #5
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.inc.1.for.body4.preheader_crit_edge, label %for.inc.2

for.inc.1.for.body4.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.preheader

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call.2, align 8
  %34 = ptrtoint ptr %dscr_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dscr_dma, align 4
  %next.2 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.2, i32 0, i32 2
  %36 = ptrtoint ptr %next.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %next.2, align 8
  %self.2 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.2, i32 0, i32 3
  %37 = ptrtoint ptr %self.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %self.2, align 4
  %ctrl.2 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %call.2, i32 0, i32 1
  %38 = ptrtoint ptr %ctrl.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ctrl.2, align 4
  %arrayidx.2 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %state, i32 0, i32 19, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.2, ptr %arrayidx.2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dscr_dma) #5
  br label %cleanup14

for.body4.1:                                      ; preds = %for.body4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %i.1 = add nsw i32 %i.034.lcssa.ph, -1
  %40 = ptrtoint ptr %dscrpool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dscrpool, align 4
  %arrayidx7.1 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %state, i32 0, i32 19, i32 %i.1
  %42 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.1, align 4
  %self10.1 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %self10.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %self10.1, align 4
  call void @dma_pool_free(ptr noundef %41, ptr noundef %43, i32 noundef %45) #5
  br label %cleanup14

cleanup14:                                        ; preds = %for.body4.1, %for.inc.2, %for.body4.preheader.cleanup14_crit_edge, %cleanup
  %retval.0 = phi i32 [ -12, %cleanup ], [ 0, %for.inc.2 ], [ -12, %for.body4.1 ], [ -12, %for.body4.preheader.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_plane_atomic_check(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %p, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %layer = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layer, align 8
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb4, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup260_crit_edge, label %lor.lhs.false

entry.cleanup260_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false:                                    ; preds = %entry
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.end, label %if.end29, !prof !47

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 9, ptr noundef null) #5
  br label %cleanup260

if.end29:                                         ; preds = %lor.lhs.false
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %index.i.i435 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i435 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i435, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state1.i, align 4
  %call32 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %17, i32 noundef 32, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end29.cleanup260_crit_edge

if.end29.cleanup260_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false34:                                  ; preds = %if.end29
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %18 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %visible, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %lor.lhs.false34.cleanup260_crit_edge, label %if.end37

lor.lhs.false34.cleanup260_crit_edge:             ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end37:                                         ; preds = %lor.lhs.false34
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src, align 4
  %src_x = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %src_x to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %src_x, align 4
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y1, align 4
  %src_y = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %src_y to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %src_y, align 4
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %26 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %x2.i, align 4
  %sub.i = sub i32 %27, %21
  %src_w = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %src_w to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %src_w, align 4
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %29 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y2.i, align 4
  %sub.i436 = sub i32 %30, %24
  %src_h = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 8
  %31 = ptrtoint ptr %src_h to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i436, ptr %src_h, align 4
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst, align 4
  %crtc_x = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %crtc_x to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %crtc_x, align 4
  %y145 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %35 = ptrtoint ptr %y145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y145, align 4
  %crtc_y = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %crtc_y to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %crtc_y, align 4
  %x2.i437 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %38 = ptrtoint ptr %x2.i437 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %x2.i437, align 4
  %sub.i438 = sub i32 %39, %33
  %crtc_w = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 3
  %40 = ptrtoint ptr %crtc_w to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i438, ptr %crtc_w, align 4
  %y2.i439 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %y2.i439 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y2.i439, align 4
  %sub.i441 = sub i32 %42, %36
  %crtc_h = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 4
  %43 = ptrtoint ptr %crtc_h to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i441, ptr %crtc_h, align 4
  %or = or i32 %24, %21
  %or53 = or i32 %or, %sub.i
  %or55 = or i32 %or53, %sub.i436
  %and = and i32 %or55, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.end58, label %if.end37.cleanup260_crit_edge

if.end37.cleanup260_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end58:                                         ; preds = %if.end37
  %shr = lshr i32 %21, 16
  %44 = ptrtoint ptr %src_x to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr, ptr %src_x, align 4
  %shr61 = lshr i32 %24, 16
  %45 = ptrtoint ptr %src_y to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr61, ptr %src_y, align 4
  %shr63 = lshr i32 %sub.i, 16
  %46 = ptrtoint ptr %src_w to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr63, ptr %src_w, align 4
  %shr65 = lshr i32 %sub.i436, 16
  %47 = ptrtoint ptr %src_h to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr65, ptr %src_h, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %48 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %51 to i32
  %nplanes = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 18
  %52 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp = icmp ugt i8 %51, 3
  br i1 %cmp, label %if.end58.cleanup260_crit_edge, label %for.cond.preheader

if.end58.cleanup260_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

for.cond.preheader:                               ; preds = %if.end58
  %53 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp71444 = icmp sgt i32 %54, 0
  br i1 %cmp71444, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0445 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0445)
  %tobool73.not = icmp eq i32 %i.0445, 0
  br i1 %tobool73.not, label %for.body.cond.end81_crit_edge, label %cond.true77

for.body.cond.end81_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end81

cond.true77:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hsub, align 2
  %conv75 = zext i8 %58 to i32
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %56, i32 0, i32 7
  %59 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vsub, align 1
  %conv79 = zext i8 %60 to i32
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true77, %for.body.cond.end81_crit_edge
  %cond443 = phi i32 [ %conv75, %cond.true77 ], [ 1, %for.body.cond.end81_crit_edge ]
  %cond82 = phi i32 [ %conv79, %cond.true77 ], [ 1, %for.body.cond.end81_crit_edge ]
  %61 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %format, align 8
  %63 = getelementptr inbounds %struct.drm_format_info, ptr %62, i32 0, i32 3
  %arrayidx = getelementptr [4 x i8], ptr %63, i32 0, i32 %i.0445
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %conv84 = zext i8 %65 to i32
  %arrayidx85 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 14, i32 %i.0445
  %66 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv84, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool88.not = icmp eq i8 %65, 0
  br i1 %tobool88.not, label %cond.end81.cleanup260_crit_edge, label %if.end90

cond.end81.cleanup260_crit_edge:                  ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end90:                                         ; preds = %cond.end81
  %67 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rotation, align 4
  %and92 = and i32 %68, 15
  %69 = zext i32 %and92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and92, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb120
    i32 8, label %sw.bb155
  ]

sw.bb:                                            ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_y, align 4
  %div = udiv i32 %71, %cond82
  %arrayidx94 = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 %i.0445
  %72 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx94, align 4
  %mul = mul i32 %73, %div
  %74 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_x, align 4
  %76 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %src_w, align 4
  %add = add i32 %75, -1
  %sub = add i32 %add, %77
  %div97 = udiv i32 %sub, %cond443
  %mul100 = mul i32 %div97, %conv84
  %add101 = add i32 %mul100, %mul
  %78 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src_h, align 4
  %sub103 = add i32 %79, -1
  %div104 = udiv i32 %sub103, %cond82
  %mul107 = mul i32 %div104, %73
  %mul111.neg = mul nsw i32 %conv84, -2
  %sub112 = sub i32 %mul111.neg, %mul107
  %arrayidx113 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 16, i32 %i.0445
  %80 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub112, ptr %arrayidx113, align 4
  %81 = load i32, ptr %arrayidx94, align 4
  %sub118 = sub i32 %81, %conv84
  br label %for.inc

sw.bb120:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %src_y, align 4
  %84 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %src_h, align 4
  %add123 = add i32 %83, -1
  %sub124 = add i32 %add123, %85
  %div125 = udiv i32 %sub124, %cond82
  %arrayidx127 = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 %i.0445
  %86 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx127, align 4
  %mul128 = mul i32 %87, %div125
  %88 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %src_x, align 4
  %90 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src_w, align 4
  %add131 = add i32 %91, -1
  %sub132 = add i32 %add131, %89
  %div133 = udiv i32 %sub132, %cond443
  %mul136 = mul i32 %div133, %conv84
  %add137 = add i32 %mul136, %mul128
  %div140 = udiv i32 %add131, %cond443
  %sub141 = add i32 %div140, -1
  %mul144 = mul i32 %sub141, %conv84
  %sub147 = sub i32 %mul144, %87
  %arrayidx149 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 16, i32 %i.0445
  %92 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub147, ptr %arrayidx149, align 4
  %mul152 = mul nsw i32 %conv84, -2
  br label %for.inc

sw.bb155:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %src_y, align 4
  %95 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %src_h, align 4
  %add158 = add i32 %96, -1
  %sub159 = add i32 %add158, %94
  %div160 = udiv i32 %sub159, %cond82
  %arrayidx162 = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 %i.0445
  %97 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx162, align 4
  %mul163 = mul i32 %98, %div160
  %99 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %src_x, align 4
  %div165 = udiv i32 %100, %cond443
  %mul168 = mul i32 %div165, %conv84
  %add169 = add i32 %mul168, %mul163
  %div172 = udiv i32 %add158, %cond82
  %mul175 = mul i32 %div172, %98
  %arrayidx177 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 16, i32 %i.0445
  %101 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul175, ptr %arrayidx177, align 4
  %102 = load i32, ptr %arrayidx162, align 4
  %103 = add i32 %102, %conv84
  %sub183 = sub i32 0, %103
  br label %for.inc

sw.default:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %src_y, align 4
  %div188 = udiv i32 %105, %cond82
  %arrayidx190 = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 %i.0445
  %106 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx190, align 4
  %mul191 = mul i32 %107, %div188
  %108 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %src_x, align 4
  %div193 = udiv i32 %109, %cond443
  %mul196 = mul i32 %div193, %conv84
  %add197 = add i32 %mul196, %mul191
  %110 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %src_w, align 4
  %div201 = udiv i32 %111, %cond443
  %mul204 = mul i32 %div201, %conv84
  %sub205 = sub i32 %107, %mul204
  %arrayidx207 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 16, i32 %i.0445
  %112 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub205, ptr %arrayidx207, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %sw.bb155, %sw.bb120, %sw.bb
  %sub118.sink = phi i32 [ %sub118, %sw.bb ], [ %mul152, %sw.bb120 ], [ %sub183, %sw.bb155 ], [ 0, %sw.default ]
  %add101.sink = phi i32 [ %add101, %sw.bb ], [ %add137, %sw.bb120 ], [ %add169, %sw.bb155 ], [ %add197, %sw.default ]
  %arrayidx119 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 17, i32 %i.0445
  %113 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub118.sink, ptr %arrayidx119, align 4
  %arrayidx210.c432 = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 7, i32 %i.0445
  %114 = ptrtoint ptr %arrayidx210.c432 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx210.c432, align 4
  %add211.c433 = add i32 %add101.sink, %115
  %arrayidx213.c434 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 15, i32 %i.0445
  %116 = ptrtoint ptr %arrayidx213.c434 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add211.c433, ptr %arrayidx213.c434, align 4
  %inc = add nuw nsw i32 %i.0445, 1
  %117 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nplanes, align 4
  %cmp71 = icmp slt i32 %inc, %118
  br i1 %cmp71, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rotation217 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %119 = ptrtoint ptr %rotation217 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rotation217, align 4
  %and.i = and i32 %120, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.end.if.end227_crit_edge, label %do.body220

for.end.if.end227_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227

do.body220:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %src_w, align 4
  %123 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %src_h, align 4
  store i32 %124, ptr %src_w, align 4
  store i32 %122, ptr %src_h, align 4
  br label %if.end227

if.end227:                                        ; preds = %do.body220, %for.end.if.end227_crit_edge
  %size = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %7, i32 0, i32 7, i32 3
  %125 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool228.not = icmp eq i32 %126, 0
  br i1 %tobool228.not, label %land.lhs.true, label %if.end227.if.end239_crit_edge

if.end227.if.end239_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end239

land.lhs.true:                                    ; preds = %if.end227
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 1
  %127 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %hdisplay, align 4
  %conv229 = zext i16 %128 to i32
  %129 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv229)
  %cmp231.not = icmp eq i32 %130, %conv229
  br i1 %cmp231.not, label %lor.lhs.false233, label %land.lhs.true.cleanup260_crit_edge

land.lhs.true.cleanup260_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false233:                                 ; preds = %land.lhs.true
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 6
  %131 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vdisplay, align 2
  %conv234 = zext i16 %132 to i32
  %133 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %conv234)
  %cmp236.not = icmp eq i32 %134, %conv234
  br i1 %cmp236.not, label %lor.lhs.false233.if.end239_crit_edge, label %lor.lhs.false233.cleanup260_crit_edge

lor.lhs.false233.cleanup260_crit_edge:            ; preds = %lor.lhs.false233
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false233.if.end239_crit_edge:             ; preds = %lor.lhs.false233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end239

if.end239:                                        ; preds = %lor.lhs.false233.if.end239_crit_edge, %if.end227.if.end239_crit_edge
  %135 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %crtc_h, align 4
  %137 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %src_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp242.not = icmp eq i32 %136, %138
  br i1 %cmp242.not, label %lor.lhs.false244, label %if.end239.land.lhs.true249_crit_edge

if.end239.land.lhs.true249_crit_edge:             ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true249

lor.lhs.false244:                                 ; preds = %if.end239
  %139 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %crtc_w, align 4
  %141 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %src_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp247.not = icmp eq i32 %140, %142
  br i1 %cmp247.not, label %lor.lhs.false244.if.end259_crit_edge, label %lor.lhs.false244.land.lhs.true249_crit_edge

lor.lhs.false244.land.lhs.true249_crit_edge:      ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true249

lor.lhs.false244.if.end259_crit_edge:             ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end259

land.lhs.true249:                                 ; preds = %lor.lhs.false244.land.lhs.true249_crit_edge, %if.end239.land.lhs.true249_crit_edge
  %memsize = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %7, i32 0, i32 7, i32 4
  %143 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %memsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool251.not = icmp eq i32 %144, 0
  br i1 %tobool251.not, label %land.lhs.true249.cleanup260_crit_edge, label %lor.lhs.false252

land.lhs.true249.cleanup260_crit_edge:            ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false252:                                 ; preds = %land.lhs.true249
  %145 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fb4, align 4
  %format255 = getelementptr inbounds %struct.drm_framebuffer, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %format255 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %format255, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %148, i32 0, i32 8
  %149 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %has_alpha, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool256.not = icmp eq i8 %150, 0
  br i1 %tobool256.not, label %lor.lhs.false252.if.end259_crit_edge, label %lor.lhs.false252.cleanup260_crit_edge

lor.lhs.false252.cleanup260_crit_edge:            ; preds = %lor.lhs.false252
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

lor.lhs.false252.if.end259_crit_edge:             ; preds = %lor.lhs.false252
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end259

if.end259:                                        ; preds = %lor.lhs.false252.if.end259_crit_edge, %lor.lhs.false244.if.end259_crit_edge
  br label %cleanup260

cleanup260:                                       ; preds = %if.end259, %lor.lhs.false252.cleanup260_crit_edge, %land.lhs.true249.cleanup260_crit_edge, %lor.lhs.false233.cleanup260_crit_edge, %land.lhs.true.cleanup260_crit_edge, %cond.end81.cleanup260_crit_edge, %if.end58.cleanup260_crit_edge, %if.end37.cleanup260_crit_edge, %lor.lhs.false34.cleanup260_crit_edge, %if.end29.cleanup260_crit_edge, %do.end, %entry.cleanup260_crit_edge
  %retval.2 = phi i32 [ 0, %if.end259 ], [ 0, %do.end ], [ 0, %entry.cleanup260_crit_edge ], [ 0, %lor.lhs.false34.cleanup260_crit_edge ], [ %call32, %if.end29.cleanup260_crit_edge ], [ -22, %if.end37.cleanup260_crit_edge ], [ -22, %if.end58.cleanup260_crit_edge ], [ -22, %lor.lhs.false233.cleanup260_crit_edge ], [ -22, %land.lhs.true.cleanup260_crit_edge ], [ -22, %lor.lhs.false252.cleanup260_crit_edge ], [ -22, %land.lhs.true249.cleanup260_crit_edge ], [ -22, %cond.end81.cleanup260_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_update(ptr noundef readonly %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i.i73 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %p, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %visible, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  %layer.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %14 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layer.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %17, 16
  %call.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i.i, i32 noundef -1) #5
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %20 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layer.i, align 4
  %regs_offset.i7.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %regs_offset.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regs_offset.i7.i, align 4
  %add.i8.i = add i32 %23, 4
  %call.i9.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add.i8.i, i32 noundef 262) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i.i, align 4, !annotation !45
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %27 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %layer.i, align 4
  %regs_offset.i11.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %regs_offset.i11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regs_offset.i11.i, align 4
  %add.i12.i = add i32 %30, 24
  %call.i13.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %add.i12.i, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %31 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %layer.i, align 8
  %size.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %if.then.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %crtc_w.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 3
  %35 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %crtc_w.i, align 4
  %sub.i = add i32 %36, -1
  %crtc_h.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc_h.i, align 4
  %sub5.i = shl i32 %38, 16
  %shl.i = add i32 %sub5.i, -65536
  %or.i = or i32 %shl.i, %sub.i
  %cfgs_offset.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 4
  %39 = ptrtoint ptr %cfgs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfgs_offset.i.i, align 4
  %mul.i.i = shl i32 %34, 2
  %add.i.i34 = add i32 %40, %mul.i.i
  %regmap.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i.i.i, align 4
  %regs_offset.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 3
  %43 = ptrtoint ptr %regs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regs_offset.i.i.i, align 4
  %add.i.i.i = add i32 %add.i.i34, %44
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add.i.i.i, i32 noundef %or.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end6.if.end.i_crit_edge
  %memsize.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 7, i32 4
  %45 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %memsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool7.not.i = icmp eq i32 %46, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then8.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %src_w.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 7
  %47 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src_w.i, align 4
  %sub12.i = add i32 %48, -1
  %src_h.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 8
  %49 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_h.i, align 4
  %sub13.i = shl i32 %50, 16
  %shl14.i = add i32 %sub13.i, -65536
  %or15.i = or i32 %shl14.i, %sub12.i
  %51 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i43.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %cfgs_offset.i43.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cfgs_offset.i43.i, align 4
  %mul.i44.i = shl i32 %46, 2
  %add.i45.i = add i32 %54, %mul.i44.i
  %regmap.i.i46.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %regmap.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i46.i, align 4
  %regs_offset.i.i47.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %regs_offset.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %regs_offset.i.i47.i, align 4
  %add.i.i48.i = add i32 %add.i45.i, %58
  %call.i.i49.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef %add.i.i48.i, i32 noundef %or15.i) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %if.end.i.if.end16.i_crit_edge
  %pos.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %32, i32 0, i32 7, i32 2
  %59 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool18.not.i = icmp eq i32 %60, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then19.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %crtc_x.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 1
  %61 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crtc_x.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 2
  %63 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_y.i, align 4
  %shl23.i = shl i32 %64, 16
  %or24.i = or i32 %shl23.i, %62
  %65 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i50.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %cfgs_offset.i50.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cfgs_offset.i50.i, align 4
  %mul.i51.i = shl i32 %60, 2
  %add.i52.i = add i32 %68, %mul.i51.i
  %regmap.i.i53.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %regmap.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i.i53.i, align 4
  %regs_offset.i.i54.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %66, i32 0, i32 3
  %71 = ptrtoint ptr %regs_offset.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %regs_offset.i.i54.i, align 4
  %add.i.i55.i = add i32 %add.i52.i, %72
  %call.i.i56.i = tail call i32 @regmap_write(ptr noundef %70, i32 noundef %add.i.i55.i, i32 noundef %or24.i) #5
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end25.i_crit_edge
  %73 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %layer.i, align 8
  %scaler_config.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %74, i32 0, i32 7, i32 9
  %75 = ptrtoint ptr %scaler_config.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %scaler_config.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %if.end25.i.atmel_hlcdc_plane_update_pos_and_size.exit_crit_edge, label %if.end.i.i

if.end25.i.atmel_hlcdc_plane_update_pos_and_size.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_pos_and_size.exit

if.end.i.i:                                       ; preds = %if.end25.i
  %crtc_w.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 3
  %77 = ptrtoint ptr %crtc_w.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %crtc_w.i.i, align 4
  %src_w.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 7
  %79 = ptrtoint ptr %src_w.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src_w.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp.i.i = icmp eq i32 %78, %80
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %crtc_h.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 4
  %81 = ptrtoint ptr %crtc_h.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crtc_h.i.i, align 4
  %src_h.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 8
  %83 = ptrtoint ptr %src_h.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %src_h.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp2.i.i = icmp eq i32 %82, %84
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  %phicoeffs.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %74, i32 0, i32 7, i32 10
  %85 = ptrtoint ptr %phicoeffs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phicoeffs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool9.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  %sub.i.i.i = add i32 %80, -1
  %mul.i65.i.i = shl i32 %sub.i.i.i, 11
  %mul2.i.i.i = add i32 %mul.i65.i.i, -1024
  %sub3.i.i.i = add i32 %78, -1
  %div.i.i.i = udiv i32 %mul2.i.i.i, %sub3.i.i.i
  %mul5.i.i.i = mul i32 %div.i.i.i, %sub3.i.i.i
  %add.i66.i.i = add i32 %mul5.i.i.i, 1024
  %div71.i.i.i = lshr i32 %add.i66.i.i, 11
  %src_h13.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 8
  %87 = ptrtoint ptr %src_h13.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %src_h13.i.i, align 4
  %crtc_h14.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 4
  %89 = ptrtoint ptr %crtc_h14.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %crtc_h14.i.i, align 4
  %sub.i67.i.i = add i32 %88, -1
  %mul.i68.i.i = shl i32 %sub.i67.i.i, 11
  %mul2.i69.i.i = add i32 %mul.i68.i.i, -1024
  %sub3.i70.i.i = add i32 %90, -1
  %div.i71.i.i = udiv i32 %mul2.i69.i.i, %sub3.i70.i.i
  %mul5.i72.i.i = mul i32 %div.i71.i.i, %sub3.i70.i.i
  %add.i73.i.i = add i32 %mul5.i72.i.i, 1024
  %div71.i74.i.i = lshr i32 %add.i73.i.i, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp18.i.i = icmp ult i32 %78, %80
  %cond.i.i = select i1 %cmp18.i.i, ptr @heo_downscaling_xcoef, ptr @heo_upscaling_xcoef
  %regmap.i.i.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then10.i.i
  %i.05.i.i.i = phi i32 [ 0, %if.then10.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %add.i78.i.i = add i32 %i.05.i.i.i, %86
  %arrayidx.i.i.i = getelementptr i32, ptr %cond.i.i, i32 %i.05.i.i.i
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i.i, align 4
  %93 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %cfgs_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cfgs_offset.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %add.i78.i.i, 2
  %add.i.i79.i.i = add i32 %96, %mul.i.i.i.i
  %97 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %regs_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regs_offset.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %add.i.i79.i.i, %100
  %call.i.i.i.i.i = tail call i32 @regmap_write(ptr noundef %98, i32 noundef %add.i.i.i.i.i, i32 noundef %92) #5
  %inc.i.i.i = add nuw nsw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %atmel_hlcdc_plane_scaler_set_phicoeff.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

atmel_hlcdc_plane_scaler_set_phicoeff.exit.i.i:   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div71.i.i.i, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %div71.i.i.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div71.i74.i.i, i32 %sub.i67.i.i)
  %cmp.i75.i.i = icmp ugt i32 %div71.i74.i.i, %sub.i67.i.i
  %dec.i.i.i = sext i1 %cmp.i.i.i to i32
  %dec.i76.i.i = sext i1 %cmp.i75.i.i to i32
  %spec.select.i.i.i = add i32 %div.i.i.i, %dec.i.i.i
  %101 = ptrtoint ptr %crtc_h14.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %crtc_h14.i.i, align 4
  %103 = ptrtoint ptr %src_h13.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %src_h13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp24.i.i = icmp ult i32 %102, %104
  %y.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %74, i32 0, i32 7, i32 10, i32 1
  %105 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %y.i.i, align 4
  %107 = select i1 %cmp24.i.i, i32 1193783, i32 16448
  %108 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %cfgs_offset.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cfgs_offset.i.i85.i.i, align 4
  %mul.i.i86.i.i = shl i32 %106, 2
  %add.i.i87.i.i = add i32 %111, %mul.i.i86.i.i
  %112 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %109, i32 0, i32 3
  %114 = ptrtoint ptr %regs_offset.i.i.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %regs_offset.i.i.i88.i.i, align 4
  %add.i.i.i89.i.i = add i32 %add.i.i87.i.i, %115
  %call.i.i.i90.i.i = tail call i32 @regmap_write(ptr noundef %113, i32 noundef %add.i.i.i89.i.i, i32 noundef %107) #5
  %116 = select i1 %cmp24.i.i, i32 1521458, i32 481568
  %117 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.1.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %cfgs_offset.i.i85.1.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cfgs_offset.i.i85.1.i.i, align 4
  %mul.i.i86.1.i.i = add i32 %mul.i.i86.i.i, 4
  %add.i.i87.1.i.i = add i32 %mul.i.i86.1.i.i, %120
  %121 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.1.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %118, i32 0, i32 3
  %123 = ptrtoint ptr %regs_offset.i.i.i88.1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %regs_offset.i.i.i88.1.i.i, align 4
  %add.i.i.i89.1.i.i = add i32 %add.i.i87.1.i.i, %124
  %call.i.i.i90.1.i.i = tail call i32 @regmap_write(ptr noundef %122, i32 noundef %add.i.i.i89.1.i.i, i32 noundef %116) #5
  %125 = select i1 %cmp24.i.i, i32 1783853, i32 356108
  %126 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.2.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %cfgs_offset.i.i85.2.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cfgs_offset.i.i85.2.i.i, align 4
  %mul.i.i86.2.i.i = add i32 %mul.i.i86.i.i, 8
  %add.i.i87.2.i.i = add i32 %mul.i.i86.2.i.i, %129
  %130 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.2.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %127, i32 0, i32 3
  %132 = ptrtoint ptr %regs_offset.i.i.i88.2.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %regs_offset.i.i.i88.2.i.i, align 4
  %add.i.i.i89.2.i.i = add i32 %add.i.i87.2.i.i, %133
  %call.i.i.i90.2.i.i = tail call i32 @regmap_write(ptr noundef %131, i32 noundef %add.i.i.i89.2.i.i, i32 noundef %125) #5
  %134 = select i1 %cmp24.i.i, i32 2046248, i32 162563
  %135 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.3.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %cfgs_offset.i.i85.3.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cfgs_offset.i.i85.3.i.i, align 4
  %mul.i.i86.3.i.i = add i32 %mul.i.i86.i.i, 12
  %add.i.i87.3.i.i = add i32 %mul.i.i86.3.i.i, %138
  %139 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.3.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %136, i32 0, i32 3
  %141 = ptrtoint ptr %regs_offset.i.i.i88.3.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %regs_offset.i.i.i88.3.i.i, align 4
  %add.i.i.i89.3.i.i = add i32 %add.i.i87.3.i.i, %142
  %call.i.i.i90.3.i.i = tail call i32 @regmap_write(ptr noundef %140, i32 noundef %add.i.i.i89.3.i.i, i32 noundef %134) #5
  %143 = select i1 %cmp24.i.i, i32 2373668, i32 32768
  %144 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.4.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %cfgs_offset.i.i85.4.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cfgs_offset.i.i85.4.i.i, align 4
  %mul.i.i86.4.i.i = add i32 %mul.i.i86.i.i, 16
  %add.i.i87.4.i.i = add i32 %mul.i.i86.4.i.i, %147
  %148 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.4.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %145, i32 0, i32 3
  %150 = ptrtoint ptr %regs_offset.i.i.i88.4.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %regs_offset.i.i.i88.4.i.i, align 4
  %add.i.i.i89.4.i.i = add i32 %add.i.i87.4.i.i, %151
  %call.i.i.i90.4.i.i = tail call i32 @regmap_write(ptr noundef %149, i32 noundef %add.i.i.i89.4.i.i, i32 noundef %143) #5
  %152 = select i1 %cmp24.i.i, i32 2636063, i32 228098
  %153 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.5.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %cfgs_offset.i.i85.5.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cfgs_offset.i.i85.5.i.i, align 4
  %mul.i.i86.5.i.i = add i32 %mul.i.i86.i.i, 20
  %add.i.i87.5.i.i = add i32 %mul.i.i86.5.i.i, %156
  %157 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.5.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %154, i32 0, i32 3
  %159 = ptrtoint ptr %regs_offset.i.i.i88.5.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %regs_offset.i.i.i88.5.i.i, align 4
  %add.i.i.i89.5.i.i = add i32 %add.i.i87.5.i.i, %160
  %call.i.i.i90.5.i.i = tail call i32 @regmap_write(ptr noundef %158, i32 noundef %add.i.i.i89.5.i.i, i32 noundef %152) #5
  %161 = select i1 %cmp24.i.i, i32 2963483, i32 814853
  %162 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.6.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %cfgs_offset.i.i85.6.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cfgs_offset.i.i85.6.i.i, align 4
  %mul.i.i86.6.i.i = add i32 %mul.i.i86.i.i, 24
  %add.i.i87.6.i.i = add i32 %mul.i.i86.6.i.i, %165
  %166 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.6.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %163, i32 0, i32 3
  %168 = ptrtoint ptr %regs_offset.i.i.i88.6.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %regs_offset.i.i.i88.6.i.i, align 4
  %add.i.i.i89.6.i.i = add i32 %add.i.i87.6.i.i, %169
  %call.i.i.i90.6.i.i = tail call i32 @regmap_write(ptr noundef %167, i32 noundef %add.i.i.i89.6.i.i, i32 noundef %161) #5
  %170 = select i1 %cmp24.i.i, i32 3290903, i32 2119943
  %171 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i85.7.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %cfgs_offset.i.i85.7.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cfgs_offset.i.i85.7.i.i, align 4
  %mul.i.i86.7.i.i = add i32 %mul.i.i86.i.i, 28
  %add.i.i87.7.i.i = add i32 %mul.i.i86.7.i.i, %174
  %175 = ptrtoint ptr %regmap.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i.i.i.i.i, align 4
  %regs_offset.i.i.i88.7.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %172, i32 0, i32 3
  %177 = ptrtoint ptr %regs_offset.i.i.i88.7.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %regs_offset.i.i.i88.7.i.i, align 4
  %add.i.i.i89.7.i.i = add i32 %add.i.i87.7.i.i, %178
  %call.i.i.i90.7.i.i = tail call i32 @regmap_write(ptr noundef %176, i32 noundef %add.i.i.i89.7.i.i, i32 noundef %170) #5
  %spec.select.i77.i.i = add i32 %div.i71.i.i, %dec.i76.i.i
  br label %if.end34.i.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i57.i = shl i32 %80, 10
  %div.i.i = udiv i32 %mul.i57.i, %78
  %src_h30.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 8
  %179 = ptrtoint ptr %src_h30.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %src_h30.i.i, align 4
  %mul31.i.i = shl i32 %180, 10
  %crtc_h32.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 4
  %181 = ptrtoint ptr %crtc_h32.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %crtc_h32.i.i, align 4
  %div33.i.i = udiv i32 %mul31.i.i, %182
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.else.i.i, %atmel_hlcdc_plane_scaler_set_phicoeff.exit.i.i
  %xfactor.0.i.i = phi i32 [ %div.i.i, %if.else.i.i ], [ %spec.select.i.i.i, %atmel_hlcdc_plane_scaler_set_phicoeff.exit.i.i ]
  %yfactor.0.i.i = phi i32 [ %div33.i.i, %if.else.i.i ], [ %spec.select.i77.i.i, %atmel_hlcdc_plane_scaler_set_phicoeff.exit.i.i ]
  %183 = ptrtoint ptr %scaler_config.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %scaler_config.i.i, align 4
  %shl.i.i = shl i32 %yfactor.0.i.i, 16
  %or.i.i = or i32 %xfactor.0.i.i, %shl.i.i
  %or38.i.i = or i32 %or.i.i, -2147483648
  %185 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %layer.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end34.i.i, %land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %186, %if.end34.i.i ], [ %74, %land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge ]
  %.sink117.i.i = phi i32 [ %184, %if.end34.i.i ], [ %76, %land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge ]
  %or38.sink.i.i = phi i32 [ %or38.i.i, %if.end34.i.i ], [ 0, %land.lhs.true.i.i.cleanup.sink.split.i.i_crit_edge ]
  %cfgs_offset.i95.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %.sink.i.i, i32 0, i32 4
  %187 = ptrtoint ptr %cfgs_offset.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cfgs_offset.i95.i.i, align 4
  %mul.i96.i.i = shl i32 %.sink117.i.i, 2
  %add.i97.i.i = add i32 %188, %mul.i96.i.i
  %regmap.i.i98.i.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %189 = ptrtoint ptr %regmap.i.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regmap.i.i98.i.i, align 4
  %regs_offset.i.i99.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %.sink.i.i, i32 0, i32 3
  %191 = ptrtoint ptr %regs_offset.i.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %regs_offset.i.i99.i.i, align 4
  %add.i.i100.i.i = add i32 %add.i97.i.i, %192
  %call.i.i101.i.i = tail call i32 @regmap_write(ptr noundef %190, i32 noundef %add.i.i100.i.i, i32 noundef %or38.sink.i.i) #5
  br label %atmel_hlcdc_plane_update_pos_and_size.exit

atmel_hlcdc_plane_update_pos_and_size.exit:       ; preds = %cleanup.sink.split.i.i, %if.end25.i.atmel_hlcdc_plane_update_pos_and_size.exit_crit_edge
  %ahb_id.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 13
  %193 = ptrtoint ptr %ahb_id.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ahb_id.i, align 4
  %195 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %layer.i, align 8
  %197 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %fb, align 4
  %format2.i = getelementptr inbounds %struct.drm_framebuffer, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %format2.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %format2.i, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875710290, i32 %202)
  %cmp.i = icmp eq i32 %202, 875710290
  %spec.select.v.i = select i1 %cmp.i, i32 4144, i32 48
  %spec.select.i = or i32 %spec.select.v.i, %194
  %cfgs_offset.i.i36 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %196, i32 0, i32 4
  %203 = ptrtoint ptr %cfgs_offset.i.i36 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cfgs_offset.i.i36, align 4
  %regmap.i.i.i37 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %205 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i.i38 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %196, i32 0, i32 3
  %207 = ptrtoint ptr %regs_offset.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %regs_offset.i.i.i38, align 4
  %add.i.i.i39 = add i32 %208, %204
  %call.i.i.i40 = tail call i32 @regmap_write(ptr noundef %206, i32 noundef %add.i.i.i39, i32 noundef %spec.select.i) #5
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %p, i32 0, i32 16
  %209 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp7.not.i = icmp eq i32 %210, 1
  br i1 %cmp7.not.i, label %atmel_hlcdc_plane_update_pos_and_size.exit.if.end16.i44_crit_edge, label %if.then8.i42

atmel_hlcdc_plane_update_pos_and_size.exit.if.end16.i44_crit_edge: ; preds = %atmel_hlcdc_plane_update_pos_and_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i44

if.then8.i42:                                     ; preds = %atmel_hlcdc_plane_update_pos_and_size.exit
  %has_alpha.i = getelementptr inbounds %struct.drm_format_info, ptr %200, i32 0, i32 8
  %211 = ptrtoint ptr %has_alpha.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %has_alpha.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool.not.i41 = icmp eq i8 %212, 0
  br i1 %tobool.not.i41, label %if.else.i, label %if.then8.i42.if.end16.i44_crit_edge

if.then8.i42.if.end16.i44_crit_edge:              ; preds = %if.then8.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i44

if.else.i:                                        ; preds = %if.then8.i42
  call void @__sanitizer_cov_trace_pc() #7
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %213 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %alpha.i, align 4
  %conv.i = zext i16 %214 to i32
  %shl.i43 = shl nuw i32 %conv.i, 16
  %or14.i = or i32 %shl.i43, 940
  br label %if.end16.i44

if.end16.i44:                                     ; preds = %if.else.i, %if.then8.i42.if.end16.i44_crit_edge, %atmel_hlcdc_plane_update_pos_and_size.exit.if.end16.i44_crit_edge
  %cfg.1.i = phi i32 [ %or14.i, %if.else.i ], [ 768, %atmel_hlcdc_plane_update_pos_and_size.exit.if.end16.i44_crit_edge ], [ 972, %if.then8.i42.if.end16.i44_crit_edge ]
  %disc_h.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 12
  %215 = ptrtoint ptr %disc_h.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %disc_h.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool17.not.i = icmp eq i32 %216, 0
  br i1 %tobool17.not.i, label %if.end16.i44.atmel_hlcdc_plane_update_general_settings.exit_crit_edge, label %land.lhs.true.i

if.end16.i44.atmel_hlcdc_plane_update_general_settings.exit_crit_edge: ; preds = %if.end16.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_general_settings.exit

land.lhs.true.i:                                  ; preds = %if.end16.i44
  call void @__sanitizer_cov_trace_pc() #7
  %disc_w.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 11
  %217 = ptrtoint ptr %disc_w.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %disc_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool18.not.i45 = icmp eq i32 %218, 0
  %or20.i = or i32 %cfg.1.i, 2048
  %spec.select37.i = select i1 %tobool18.not.i45, i32 %cfg.1.i, i32 %or20.i
  br label %atmel_hlcdc_plane_update_general_settings.exit

atmel_hlcdc_plane_update_general_settings.exit:   ; preds = %land.lhs.true.i, %if.end16.i44.atmel_hlcdc_plane_update_general_settings.exit_crit_edge
  %cfg.2.i = phi i32 [ %cfg.1.i, %if.end16.i44.atmel_hlcdc_plane_update_general_settings.exit_crit_edge ], [ %spec.select37.i, %land.lhs.true.i ]
  %general_config.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %196, i32 0, i32 7, i32 8
  %219 = ptrtoint ptr %general_config.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %general_config.i, align 4
  %221 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i38.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %cfgs_offset.i38.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %cfgs_offset.i38.i, align 4
  %mul.i.i46 = shl i32 %220, 2
  %add.i.i47 = add i32 %224, %mul.i.i46
  %225 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i40.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %222, i32 0, i32 3
  %227 = ptrtoint ptr %regs_offset.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %regs_offset.i.i40.i, align 4
  %add.i.i41.i = add i32 %add.i.i47, %228
  %call.i.i42.i = tail call i32 @regmap_write(ptr noundef %226, i32 noundef %add.i.i41.i, i32 noundef %cfg.2.i) #5
  %229 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fb, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %format.i, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %234, label %atmel_hlcdc_plane_update_general_settings.exit.atmel_hlcdc_plane_update_format.exit_crit_edge [
    i32 538982467, label %atmel_hlcdc_plane_update_general_settings.exit.if.end14.i_crit_edge
    i32 842093144, label %sw.bb1.i.i
    i32 842093121, label %sw.bb2.i.i
    i32 842088786, label %sw.bb3.i.i
    i32 909199186, label %sw.bb4.i.i
    i32 875710290, label %sw.bb5.i.i
    i32 892424769, label %sw.bb6.i.i
    i32 875713112, label %sw.bb7.i.i
    i32 875713089, label %sw.bb8.i.i
    i32 875708754, label %sw.bb9.i.i
    i32 1448433985, label %sw.bb10.i.i
    i32 1448695129, label %sw.bb11.i.i
    i32 1498831189, label %sw.bb12.i.i
    i32 1431918169, label %sw.bb13.i.i
    i32 1498765654, label %sw.bb14.i.i
    i32 825382478, label %sw.bb15.i.i
    i32 825644622, label %atmel_hlcdc_plane_update_general_settings.exit.land.lhs.true.i52_crit_edge
    i32 842093913, label %sw.bb17.i.i
    i32 909202777, label %sw.bb18.i.i
  ]

atmel_hlcdc_plane_update_general_settings.exit.land.lhs.true.i52_crit_edge: ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i52

atmel_hlcdc_plane_update_general_settings.exit.if.end14.i_crit_edge: ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

atmel_hlcdc_plane_update_general_settings.exit.atmel_hlcdc_plane_update_format.exit_crit_edge: ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_format.exit

sw.bb1.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb2.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb3.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb4.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb5.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb6.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb7.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb8.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb9.i.i:                                       ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb10.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb11.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb12.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb13.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb14.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb15.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb17.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

sw.bb18.i.i:                                      ; preds = %atmel_hlcdc_plane_update_general_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i52

land.lhs.true.i52:                                ; preds = %sw.bb18.i.i, %atmel_hlcdc_plane_update_general_settings.exit.land.lhs.true.i52_crit_edge
  %.sink.i.i49 = phi i32 [ 24578, %sw.bb18.i.i ], [ 20482, %atmel_hlcdc_plane_update_general_settings.exit.land.lhs.true.i52_crit_edge ]
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %236 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %rotation.i, align 4
  %and.i.i = and i32 %237, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %or.i50 = or i32 %.sink.i.i49, 65536
  %spec.select.i51 = select i1 %tobool.i.not.i, i32 %.sink.i.i49, i32 %or.i50
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true.i52, %sw.bb17.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %atmel_hlcdc_plane_update_general_settings.exit.if.end14.i_crit_edge
  %cfg.1.i53 = phi i32 [ 769, %atmel_hlcdc_plane_update_general_settings.exit.if.end14.i_crit_edge ], [ 32770, %sw.bb17.i.i ], [ 28674, %sw.bb15.i.i ], [ 16386, %sw.bb14.i.i ], [ 12290, %sw.bb13.i.i ], [ 8194, %sw.bb12.i.i ], [ 4098, %sw.bb11.i.i ], [ 2, %sw.bb10.i.i ], [ 208, %sw.bb9.i.i ], [ 192, %sw.bb8.i.i ], [ 144, %sw.bb7.i.i ], [ 64, %sw.bb6.i.i ], [ 160, %sw.bb5.i.i ], [ 48, %sw.bb4.i.i ], [ 32, %sw.bb3.i.i ], [ 16, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ %spec.select.i51, %land.lhs.true.i52 ]
  %238 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i55 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %cfgs_offset.i.i55 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %cfgs_offset.i.i55, align 4
  %add.i.i56 = add i32 %241, 4
  %242 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i.i58 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %239, i32 0, i32 3
  %244 = ptrtoint ptr %regs_offset.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %regs_offset.i.i.i58, align 4
  %add.i.i.i59 = add i32 %add.i.i56, %245
  %call.i.i.i60 = tail call i32 @regmap_write(ptr noundef %243, i32 noundef %add.i.i.i59, i32 noundef %cfg.1.i53) #5
  br label %atmel_hlcdc_plane_update_format.exit

atmel_hlcdc_plane_update_format.exit:             ; preds = %if.end14.i, %atmel_hlcdc_plane_update_general_settings.exit.atmel_hlcdc_plane_update_format.exit_crit_edge
  %246 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %crtc, align 4
  %tobool.not.i61 = icmp eq ptr %247, null
  br i1 %tobool.not.i61, label %atmel_hlcdc_plane_update_format.exit.atmel_hlcdc_plane_update_clut.exit_crit_edge, label %lor.lhs.false.i

atmel_hlcdc_plane_update_format.exit.atmel_hlcdc_plane_update_clut.exit_crit_edge: ; preds = %atmel_hlcdc_plane_update_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_clut.exit

lor.lhs.false.i:                                  ; preds = %atmel_hlcdc_plane_update_format.exit
  %state2.i = getelementptr inbounds %struct.drm_crtc, ptr %247, i32 0, i32 22
  %248 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %state2.i, align 4
  %tobool3.not.i = icmp eq ptr %249, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, label %if.end.i62

lor.lhs.false.i.atmel_hlcdc_plane_update_clut.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_clut.exit

if.end.i62:                                       ; preds = %lor.lhs.false.i
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %251 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %bf.cast.not.i = icmp eq i8 %251, 0
  br i1 %bf.cast.not.i, label %if.end.i62.atmel_hlcdc_plane_update_clut.exit_crit_edge, label %lor.lhs.false5.i

if.end.i62.atmel_hlcdc_plane_update_clut.exit_crit_edge: ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_clut.exit

lor.lhs.false5.i:                                 ; preds = %if.end.i62
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %249, i32 0, i32 12
  %252 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %gamma_lut.i, align 4
  %tobool7.not.i63 = icmp eq ptr %253, null
  br i1 %tobool7.not.i63, label %lor.lhs.false5.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, label %if.end9.i

lor.lhs.false5.i.atmel_hlcdc_plane_update_clut.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_clut.exit

if.end9.i:                                        ; preds = %lor.lhs.false5.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %253, i32 0, i32 5
  %254 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i
  %idx.030.i = phi i32 [ 0, %if.end9.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lut.029.i = phi ptr [ %255, %if.end9.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %256 = ptrtoint ptr %lut.029.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %lut.029.i, align 2
  %conv.i66 = zext i16 %257 to i32
  %shl.i67 = shl nuw nsw i32 %conv.i66, 8
  %and.i = and i32 %shl.i67, 16711680
  %green.i = getelementptr inbounds %struct.drm_color_lut, ptr %lut.029.i, i32 0, i32 1
  %258 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %green.i, align 2
  %260 = and i16 %259, -256
  %and13.i = zext i16 %260 to i32
  %or.i68 = or i32 %and.i, %and13.i
  %blue.i = getelementptr inbounds %struct.drm_color_lut, ptr %lut.029.i, i32 0, i32 2
  %261 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %blue.i, align 2
  %263 = lshr i16 %262, 8
  %264 = zext i16 %263 to i32
  %or15.i69 = or i32 %or.i68, %264
  %265 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap.i.i.i37, align 4
  %267 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %layer.i, align 4
  %clut_offset.i.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %268, i32 0, i32 5
  %269 = ptrtoint ptr %clut_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %clut_offset.i.i, align 4
  %mul.i.i70 = shl i32 %idx.030.i, 2
  %add.i.i71 = add i32 %270, %mul.i.i70
  %call.i.i72 = tail call i32 @regmap_write(ptr noundef %266, i32 noundef %add.i.i71, i32 noundef %or15.i69) #5
  %inc.i = add nuw nsw i32 %idx.030.i, 1
  %incdec.ptr.i = getelementptr %struct.drm_color_lut, ptr %lut.029.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.atmel_hlcdc_plane_update_clut.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_clut.exit

atmel_hlcdc_plane_update_clut.exit:               ; preds = %for.body.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, %lor.lhs.false5.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, %if.end.i62.atmel_hlcdc_plane_update_clut.exit_crit_edge, %lor.lhs.false.i.atmel_hlcdc_plane_update_clut.exit_crit_edge, %atmel_hlcdc_plane_update_format.exit.atmel_hlcdc_plane_update_clut.exit_crit_edge
  %271 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %layer.i, align 8
  %273 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %fb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i73) #5
  %275 = ptrtoint ptr %val.i.i73 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -1, ptr %val.i.i73, align 4, !annotation !45
  %276 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i76 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %272, i32 0, i32 3
  %278 = ptrtoint ptr %regs_offset.i.i76 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %regs_offset.i.i76, align 4
  %add.i.i77 = add i32 %279, 8
  %call.i.i78 = call i32 @regmap_read(ptr noundef %277, i32 noundef %add.i.i77, ptr noundef nonnull %val.i.i73) #5
  %280 = ptrtoint ptr %val.i.i73 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %val.i.i73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i73) #5
  %nplanes.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 18
  %282 = ptrtoint ptr %nplanes.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %nplanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp110.i = icmp sgt i32 %283, 0
  br i1 %cmp110.i, label %for.body.lr.ph.i, label %atmel_hlcdc_plane_update_clut.exit.atmel_hlcdc_plane_update_buffers.exit_crit_edge

atmel_hlcdc_plane_update_clut.exit.atmel_hlcdc_plane_update_buffers.exit_crit_edge: ; preds = %atmel_hlcdc_plane_update_clut.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_buffers.exit

for.body.lr.ph.i:                                 ; preds = %atmel_hlcdc_plane_update_clut.exit
  %and.i79 = and i32 %281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  %layout.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %272, i32 0, i32 7
  br label %for.body.i81

for.body.i81:                                     ; preds = %if.end47.i.for.body.i81_crit_edge, %for.body.lr.ph.i
  %i.0111.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i89, %if.end47.i.for.body.i81_crit_edge ]
  %call4.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %274, i32 noundef %i.0111.i) #5
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4.i, i32 0, i32 1
  %284 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 15, i32 %i.0111.i
  %286 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %287, %285
  %arrayidx5.i = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 19, i32 %i.0111.i
  %288 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx5.i, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %add.i, ptr %289, align 8
  %mul.i = shl i32 %i.0111.i, 4
  %add7.i = add i32 %mul.i, 28
  %291 = load ptr, ptr %arrayidx5.i, align 4
  %self.i = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %291, i32 0, i32 3
  %292 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %self.i, align 4
  %294 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regmap.i.i.i37, align 4
  %296 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %layer.i, align 4
  %regs_offset.i87.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %297, i32 0, i32 3
  %298 = ptrtoint ptr %regs_offset.i87.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %regs_offset.i87.i, align 4
  %add.i88.i = add i32 %add7.i, %299
  %call.i89.i = call i32 @regmap_write(ptr noundef %295, i32 noundef %add.i88.i, i32 noundef %293) #5
  br i1 %tobool.not.i80, label %if.then.i82, label %for.body.i81.if.end.i83_crit_edge

for.body.i81.if.end.i83_crit_edge:                ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i83

if.then.i82:                                      ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #7
  %add12.i = add i32 %mul.i, 32
  %300 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx5.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %301, align 8
  %304 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regmap.i.i.i37, align 4
  %306 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %layer.i, align 4
  %regs_offset.i91.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %307, i32 0, i32 3
  %308 = ptrtoint ptr %regs_offset.i91.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %regs_offset.i91.i, align 4
  %add.i92.i = add i32 %add12.i, %309
  %call.i93.i = call i32 @regmap_write(ptr noundef %305, i32 noundef %add.i92.i, i32 noundef %303) #5
  %add18.i = add i32 %mul.i, 36
  %310 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx5.i, align 4
  %ctrl.i = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %ctrl.i, align 4
  %314 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regmap.i.i.i37, align 4
  %316 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %layer.i, align 4
  %regs_offset.i95.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %317, i32 0, i32 3
  %318 = ptrtoint ptr %regs_offset.i95.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %regs_offset.i95.i, align 4
  %add.i96.i = add i32 %add18.i, %319
  %call.i97.i = call i32 @regmap_write(ptr noundef %315, i32 noundef %add.i96.i, i32 noundef %313) #5
  %add23.i = add i32 %mul.i, 40
  %320 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx5.i, align 4
  %self26.i = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %321, i32 0, i32 3
  %322 = ptrtoint ptr %self26.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %self26.i, align 4
  %324 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regmap.i.i.i37, align 4
  %326 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %layer.i, align 4
  %regs_offset.i99.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %327, i32 0, i32 3
  %328 = ptrtoint ptr %regs_offset.i99.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %regs_offset.i99.i, align 4
  %add.i100.i = add i32 %add23.i, %329
  %call.i101.i = call i32 @regmap_write(ptr noundef %325, i32 noundef %add.i100.i, i32 noundef %323) #5
  br label %if.end.i83

if.end.i83:                                       ; preds = %if.then.i82, %for.body.i81.if.end.i83_crit_edge
  %arrayidx27.i = getelementptr [3 x i32], ptr %layout.i, i32 0, i32 %i.0111.i
  %330 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool28.not.i = icmp eq i32 %331, 0
  br i1 %tobool28.not.i, label %if.end.i83.if.end36.i_crit_edge, label %if.then29.i

if.end.i83.if.end36.i_crit_edge:                  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then29.i:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35.i = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 16, i32 %i.0111.i
  %332 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx35.i, align 4
  %334 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i.i84 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %cfgs_offset.i.i84 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %cfgs_offset.i.i84, align 4
  %mul.i.i85 = shl i32 %331, 2
  %add.i102.i = add i32 %337, %mul.i.i85
  %338 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i.i86 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %335, i32 0, i32 3
  %340 = ptrtoint ptr %regs_offset.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %regs_offset.i.i.i86, align 4
  %add.i.i.i87 = add i32 %add.i102.i, %341
  %call.i.i.i88 = call i32 @regmap_write(ptr noundef %339, i32 noundef %add.i.i.i87, i32 noundef %333) #5
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then29.i, %if.end.i83.if.end36.i_crit_edge
  %arrayidx38.i = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %272, i32 0, i32 7, i32 1, i32 %i.0111.i
  %342 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool39.not.i = icmp eq i32 %343, 0
  br i1 %tobool39.not.i, label %if.end36.i.if.end47.i_crit_edge, label %if.then40.i

if.end36.i.if.end47.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx46.i = getelementptr %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 17, i32 %i.0111.i
  %344 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx46.i, align 4
  %346 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i103.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %347, i32 0, i32 4
  %348 = ptrtoint ptr %cfgs_offset.i103.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %cfgs_offset.i103.i, align 4
  %mul.i104.i = shl i32 %343, 2
  %add.i105.i = add i32 %349, %mul.i104.i
  %350 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i107.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %347, i32 0, i32 3
  %352 = ptrtoint ptr %regs_offset.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %regs_offset.i.i107.i, align 4
  %add.i.i108.i = add i32 %add.i105.i, %353
  %call.i.i109.i = call i32 @regmap_write(ptr noundef %351, i32 noundef %add.i.i108.i, i32 noundef %345) #5
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end47.i_crit_edge
  %inc.i89 = add nuw nsw i32 %i.0111.i, 1
  %354 = ptrtoint ptr %nplanes.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %nplanes.i, align 4
  %cmp.i90 = icmp slt i32 %inc.i89, %355
  br i1 %cmp.i90, label %if.end47.i.for.body.i81_crit_edge, label %if.end47.i.atmel_hlcdc_plane_update_buffers.exit_crit_edge

if.end47.i.atmel_hlcdc_plane_update_buffers.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_buffers.exit

if.end47.i.for.body.i81_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i81

atmel_hlcdc_plane_update_buffers.exit:            ; preds = %if.end47.i.atmel_hlcdc_plane_update_buffers.exit_crit_edge, %atmel_hlcdc_plane_update_clut.exit.atmel_hlcdc_plane_update_buffers.exit_crit_edge
  %356 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %layer.i, align 8
  %disc_pos.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %357, i32 0, i32 7, i32 11
  %358 = ptrtoint ptr %disc_pos.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %disc_pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool.not.i92 = icmp eq i32 %359, 0
  br i1 %tobool.not.i92, label %atmel_hlcdc_plane_update_buffers.exit.atmel_hlcdc_plane_update_disc_area.exit_crit_edge, label %lor.lhs.false.i93

atmel_hlcdc_plane_update_buffers.exit.atmel_hlcdc_plane_update_disc_area.exit_crit_edge: ; preds = %atmel_hlcdc_plane_update_buffers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_disc_area.exit

lor.lhs.false.i93:                                ; preds = %atmel_hlcdc_plane_update_buffers.exit
  %disc_size.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %357, i32 0, i32 7, i32 12
  %360 = ptrtoint ptr %disc_size.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %disc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool2.not.i = icmp eq i32 %361, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i93.atmel_hlcdc_plane_update_disc_area.exit_crit_edge, label %if.end.i106

lor.lhs.false.i93.atmel_hlcdc_plane_update_disc_area.exit_crit_edge: ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_hlcdc_plane_update_disc_area.exit

if.end.i106:                                      ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #7
  %disc_x.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 9
  %362 = ptrtoint ptr %disc_x.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %disc_x.i, align 4
  %disc_y.i = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 10
  %364 = ptrtoint ptr %disc_y.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %disc_y.i, align 4
  %shl.i94 = shl i32 %365, 16
  %or.i95 = or i32 %shl.i94, %363
  %cfgs_offset.i.i96 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %357, i32 0, i32 4
  %366 = ptrtoint ptr %cfgs_offset.i.i96 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %cfgs_offset.i.i96, align 4
  %mul.i.i97 = shl i32 %359, 2
  %add.i.i98 = add i32 %367, %mul.i.i97
  %368 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i.i100 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %357, i32 0, i32 3
  %370 = ptrtoint ptr %regs_offset.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %regs_offset.i.i.i100, align 4
  %add.i.i.i101 = add i32 %add.i.i98, %371
  %call.i.i.i102 = call i32 @regmap_write(ptr noundef %369, i32 noundef %add.i.i.i101, i32 noundef %or.i95) #5
  %372 = ptrtoint ptr %disc_size.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %disc_size.i, align 4
  %disc_w.i103 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %5, i32 0, i32 11
  %374 = ptrtoint ptr %disc_w.i103 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %disc_w.i103, align 4
  %sub.i104 = add i32 %375, -1
  %376 = ptrtoint ptr %disc_h.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %disc_h.i, align 4
  %sub7.i = shl i32 %377, 16
  %shl8.i = add i32 %sub7.i, -65536
  %or9.i = or i32 %shl8.i, %sub.i104
  %378 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %layer.i, align 4
  %cfgs_offset.i18.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %379, i32 0, i32 4
  %380 = ptrtoint ptr %cfgs_offset.i18.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %cfgs_offset.i18.i, align 4
  %mul.i19.i = shl i32 %373, 2
  %add.i20.i = add i32 %381, %mul.i19.i
  %382 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %regmap.i.i.i37, align 4
  %regs_offset.i.i22.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %379, i32 0, i32 3
  %384 = ptrtoint ptr %regs_offset.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %regs_offset.i.i22.i, align 4
  %add.i.i23.i = add i32 %add.i20.i, %385
  %call.i.i24.i = call i32 @regmap_write(ptr noundef %383, i32 noundef %add.i.i23.i, i32 noundef %or9.i) #5
  br label %atmel_hlcdc_plane_update_disc_area.exit

atmel_hlcdc_plane_update_disc_area.exit:          ; preds = %if.end.i106, %lor.lhs.false.i93.atmel_hlcdc_plane_update_disc_area.exit_crit_edge, %atmel_hlcdc_plane_update_buffers.exit.atmel_hlcdc_plane_update_disc_area.exit_crit_edge
  %386 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %regmap.i.i.i37, align 4
  %388 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %layer.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %389, i32 0, i32 3
  %390 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %regs_offset.i, align 4
  %add.i107 = add i32 %391, 12
  %call.i = call i32 @regmap_write(ptr noundef %387, i32 noundef %add.i107, i32 noundef 4210752) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %392 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 -1, ptr %val.i, align 4, !annotation !45
  %393 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regmap.i.i.i37, align 4
  %395 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %layer.i, align 4
  %regs_offset.i109 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %396, i32 0, i32 3
  %397 = ptrtoint ptr %regs_offset.i109 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %regs_offset.i109, align 4
  %add.i110 = add i32 %398, 8
  %call.i111 = call i32 @regmap_read(ptr noundef %394, i32 noundef %add.i110, ptr noundef nonnull %val.i) #5
  %399 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %or = select i1 %tobool10.not, i32 3, i32 6
  %401 = ptrtoint ptr %regmap.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %regmap.i.i.i37, align 4
  %403 = ptrtoint ptr %layer.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %layer.i, align 4
  %regs_offset.i113 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %404, i32 0, i32 3
  %405 = ptrtoint ptr %regs_offset.i113 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %regs_offset.i113, align 4
  %call.i114 = call i32 @regmap_write(ptr noundef %402, i32 noundef %406, i32 noundef %or) #5
  br label %cleanup

cleanup:                                          ; preds = %atmel_hlcdc_plane_update_disc_area.exit, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_disable(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %layer = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1
  %regmap.i = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %p, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %2 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layer, align 4
  %regs_offset.i = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %5, 16
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add.i, i32 noundef -1) #5
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %layer, align 4
  %regs_offset.i7 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %regs_offset.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs_offset.i7, align 4
  %add.i8 = add i32 %11, 4
  %call.i9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i8, i32 noundef 262) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !45
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %15 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %layer, align 4
  %regs_offset.i11 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %regs_offset.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regs_offset.i11, align 4
  %add.i12 = add i32 %18, 24
  %call.i13 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i12, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @atmel_hlcdc_plane_rgb_formats, !1, !"atmel_hlcdc_plane_rgb_formats", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 95, i32 28}
!2 = !{ptr @atmel_hlcdc_plane_rgb_and_yuv_formats, !3, !"atmel_hlcdc_plane_rgb_and_yuv_formats", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 122, i32 28}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 832, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @atmel_hlcdc_plane_irq.__UNIQUE_ID_ddebug316, !5, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 1000, i32 34}
!12 = !{ptr @rgb_formats, !13, !"rgb_formats", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 82, i32 17}
!14 = !{ptr @rgb_and_yuv_formats, !15, !"rgb_and_yuv_formats", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 100, i32 17}
!16 = !{ptr @layer_plane_funcs, !17, !"layer_plane_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 942, i32 37}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 893, i32 4}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atmel_hlcdc_plane_reset._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @atmel_hlcdc_plane_reset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @atmel_hlcdc_layer_plane_helper_funcs, !26, !"atmel_hlcdc_layer_plane_helper_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 836, i32 44}
!27 = !{ptr @heo_downscaling_xcoef, !28, !"heo_downscaling_xcoef", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 194, i32 12}
!29 = !{ptr @heo_upscaling_xcoef, !30, !"heo_upscaling_xcoef", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 224, i32 12}
!31 = distinct !{null, !32, !"heo_downscaling_ycoef", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 213, i32 12}
!33 = distinct !{null, !34, !"heo_upscaling_ycoef", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c", i32 243, i32 12}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{!"auto-init"}
!46 = !{i64 2148214182, i64 2148214187, i64 2148214200, i64 2148214244, i64 2148214278, i64 2148214299}
!47 = !{!"branch_weights", i32 1, i32 2000}
