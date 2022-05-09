; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/kmb/kmb_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/kmb/kmb_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.anon.88 = type { i32, ptr }
%struct.kmb_drm_private = type { %struct.drm_device, ptr, ptr, %struct.kmb_clock, %struct.drm_crtc, ptr, ptr, %struct.spinlock, i32, i32, [2 x %struct.disp_cfg], [2 x %struct.layer_status], i32, i32, i32 }
%struct.kmb_clock = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.disp_cfg = type { i32, i32, i32 }
%struct.layer_status = type { i8, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kmb_plane = type { %struct.drm_plane, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@layer_irqs = dso_local constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2040, i32 522240, i32 7864320, i32 125829120], [16 x i8] zeroinitializer }, align 32
@kmb_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* Failed to allocate plane\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmb_plane_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/kmb/kmb_plane.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_plane_init._entry_ptr = internal global ptr @kmb_plane_init._entry, section ".printk_index", align 4
@kmb_formats_v = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 943867730, i32 842093144, i32 842089048, i32 842093121, i32 842089025, i32 892424792, i32 892420696, i32 892424769, i32 892420673, i32 909199186, i32 909199170, i32 875710290, i32 875710274, i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 842093913, i32 842094169, i32 909202777, i32 909203033, i32 875713881, i32 875714137, i32 842094158, i32 825382478], [60 x i8] zeroinitializer }, align 32
@kmb_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @kmb_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"plane %d\00", [23 x i8] zeroinitializer }, align 32
@kmb_plane_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[drm] *ERROR* drm_universal_plane_init failed (ret=%d)\00", [41 x i8] zeroinitializer }, align 32
@kmb_plane_init._entry_ptr.8 = internal global ptr @kmb_plane_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s : %d i=%d type=%d\00", [43 x i8] zeroinitializer }, align 32
@kmb_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @kmb_plane_atomic_check, ptr @kmb_plane_atomic_update, ptr @kmb_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s : %d primary=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Cannot change plane height or width after initial configuration\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Cannot change format after initial plane configuration\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"plane_update:underflow!!!! returning\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"src_w=%d src_h=%d, fb->format->format=0x%x fb->flags=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma_len=%d \00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dma_cfg=0x%x LCD_DMA_CFG=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@get_pixel_format.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_pixel_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] %s : %d format=0x%x val=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_pixel_format\00", [47 x i8] zeroinitializer }, align 32
@get_pixel_format._entry_ptr = internal global ptr @get_pixel_format._entry, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpp=%d val=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missing pixel blend mode case (%s == %ld)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pixel_blend_mode\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 32, i64 825382478, i64 842089025, i64 842089048, i64 842093121, i64 842093913, i64 842094158, i64 842094169, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875713881, i64 875714137, i64 892420673, i64 892420696, i64 892424769, i64 892424792, i64 909199170, i64 909199186, i64 909202777, i64 909203033, i64 943867730]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"layer_irqs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 21, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 588, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"kmb_formats_v\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 50, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"kmb_plane_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 561, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 605, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 607, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 611, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"kmb_plane_helper_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 547, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 628, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 128, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 82, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 379, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 390, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 397, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 538, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 251, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 283, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [35 x i8] c"../drivers/gpu/drm/kmb/kmb_plane.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 327, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @get_pixel_format._entry, ptr @get_pixel_format._entry_ptr, ptr @kmb_plane_init._entry, ptr @kmb_plane_init._entry.6, ptr @kmb_plane_init._entry_ptr, ptr @kmb_plane_init._entry_ptr.8, ptr @layer_irqs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kmb_formats_v, ptr @kmb_plane_funcs, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @kmb_plane_helper_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @layer_irqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_formats_v to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plane_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pixel_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmb_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #4
  tail call void @kfree(ptr noundef %plane) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kmb_plane_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool15.not = icmp eq ptr %drm, null
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %plane27 = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 5
  %call.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %drm, i32 noundef 536, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %cond.end33.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %cleanup37

if.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @kmb_plane_funcs, ptr noundef nonnull @kmb_formats_v, i32 noundef 25, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.do.end12_crit_edge, label %if.end14

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12:                                         ; preds = %if.end.1.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %call7.lcssa = phi i32 [ %call7, %if.end.do.end12_crit_edge ], [ %call7.1, %if.end.1.do.end12_crit_edge ]
  %call.i.lcssa82 = phi ptr [ %call.i, %if.end.do.end12_crit_edge ], [ %call.i.1, %if.end.1.do.end12_crit_edge ]
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %call7.lcssa) #7
  tail call void @drmm_kfree(ptr noundef %drm, ptr noundef nonnull %call.i.lcssa82) #4
  %4 = inttoptr i32 %call7.lcssa to ptr
  br label %cleanup37

if.end14:                                         ; preds = %if.end
  br i1 %tobool15.not, label %cond.end33.critedge, label %cond.true

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev16, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef 0, i32 noundef 1) #4
  %call19.c85 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #4
  %call21.c86 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call.i, i32 noundef 7) #4
  %call23.c87 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i, i32 noundef 0) #4
  %helper_private.i.c88 = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %7 = ptrtoint ptr %helper_private.i.c88 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @kmb_plane_helper_funcs, ptr %helper_private.i.c88, align 8
  %8 = ptrtoint ptr %plane27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %plane27, align 8
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  br label %cond.end33

cond.end33.critedge:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef 0, i32 noundef 1) #4
  %call19.c = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #4
  %call21.c = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call.i, i32 noundef 7) #4
  %call23.c = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i, i32 noundef 0) #4
  %helper_private.i.c = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %helper_private.i.c to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kmb_plane_helper_funcs, ptr %helper_private.i.c, align 8
  %12 = ptrtoint ptr %plane27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %plane27, align 8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end33.critedge, %cond.true
  %cond34 = phi ptr [ %10, %cond.true ], [ null, %cond.end33.critedge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond34, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull %call.i) #4
  %id = getelementptr inbounds %struct.kmb_plane, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %id, align 8
  %call.i.1 = tail call noalias ptr @drmm_kmalloc(ptr noundef %drm, i32 noundef 536, i32 noundef 3520) #4
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %cond.end33.do.end_crit_edge, label %if.end.1

cond.end33.do.end_crit_edge:                      ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.1:                                         ; preds = %cond.end33
  %call7.1 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call.i.1, i32 noundef 1, ptr noundef nonnull @kmb_plane_funcs, ptr noundef nonnull @kmb_formats_v, i32 noundef 25, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp slt i32 %call7.1, 0
  br i1 %cmp8.1, label %if.end.1.do.end12_crit_edge, label %if.end14.1

if.end.1.do.end12_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end14.1:                                       ; preds = %if.end.1
  br i1 %tobool15.not, label %cond.end33.1.critedge, label %cond.true.1

cond.true.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %15, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef 1, i32 noundef 0) #4
  %call19.1.c89 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i.1) #4
  %call21.1.c90 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call.i.1, i32 noundef 7) #4
  %call23.1.c91 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i.1, i32 noundef 1) #4
  %helper_private.i.1.c92 = getelementptr inbounds %struct.drm_plane, ptr %call.i.1, i32 0, i32 18
  %16 = ptrtoint ptr %helper_private.i.1.c92 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kmb_plane_helper_funcs, ptr %helper_private.i.1.c92, align 8
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16, align 4
  br label %cond.end33.1

cond.end33.1.critedge:                            ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef 1, i32 noundef 0) #4
  %call19.1.c = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i.1) #4
  %call21.1.c = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call.i.1, i32 noundef 7) #4
  %call23.1.c = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i.1, i32 noundef 1) #4
  %helper_private.i.1.c = getelementptr inbounds %struct.drm_plane, ptr %call.i.1, i32 0, i32 18
  %19 = ptrtoint ptr %helper_private.i.1.c to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kmb_plane_helper_funcs, ptr %helper_private.i.1.c, align 8
  br label %cond.end33.1

cond.end33.1:                                     ; preds = %cond.end33.1.critedge, %cond.true.1
  %cond34.1 = phi ptr [ %18, %cond.true.1 ], [ null, %cond.end33.1.critedge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond34.1, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull %call.i) #4
  %id.1 = getelementptr inbounds %struct.kmb_plane, ptr %call.i.1, i32 0, i32 1
  %20 = ptrtoint ptr %id.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %id.1, align 8
  %lcd_mmio.i.i = getelementptr inbounds %struct.kmb_drm_private, ptr %drm, i32 0, i32 2
  %21 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lcd_mmio.i.i, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %24 = and i32 %23, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %lcd_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcd_mmio.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !67
  br label %cleanup37

cleanup37:                                        ; preds = %cond.end33.1, %do.end12, %do.end
  %retval.0 = phi ptr [ %4, %do.end12 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call.i, %cond.end33.1 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drmm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %id = getelementptr inbounds %struct.kmb_plane, ptr %plane, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 8
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plane, align 8
  %arrayidx = getelementptr %struct.kmb_drm_private, ptr %9, i32 0, i32 10, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %init_disp_cfg.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %init_disp_cfg.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %11 = ptrtoint ptr %init_disp_cfg.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %init_disp_cfg.sroa.6.0.copyload = load i32, ptr %init_disp_cfg.sroa.6.0.arrayidx.sroa_idx, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %init_disp_cfg.sroa.5.0.arrayidx.sroa_idx.i = getelementptr %struct.kmb_drm_private, ptr %9, i32 0, i32 10, i32 %conv, i32 2
  %20 = ptrtoint ptr %init_disp_cfg.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %init_disp_cfg.sroa.5.0.copyload.i = load i32, ptr %init_disp_cfg.sroa.5.0.arrayidx.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_disp_cfg.sroa.5.0.copyload.i)
  %tobool.not.i = icmp eq i32 %init_disp_cfg.sroa.5.0.copyload.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %init_disp_cfg.sroa.5.0.copyload.i, i32 %19)
  %cmp.not.i = icmp eq i32 %init_disp_cfg.sroa.5.0.copyload.i, %19
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.end
  %format_count.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 7
  %21 = ptrtoint ptr %format_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp828.not.i = icmp eq i32 %22, 0
  br i1 %cmp828.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %format_types.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 6
  %23 = ptrtoint ptr %format_types.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format_types.i, align 4
  br label %for.body.i

if.then.i:                                        ; preds = %if.end
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev7.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %26, %cond.true.i ], [ null, %if.then.i.cond.end.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 2, ptr noundef nonnull @.str.12) #4
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr i32, ptr %24, i32 %i.029.i
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %19)
  %cmp11.i = icmp eq i32 %28, %19
  br i1 %cmp11.i, label %if.end9, label %for.cond.i

if.end9:                                          ; preds = %for.body.i
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %30)
  %cmp = icmp ugt i32 %30, 1920
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %lor.lhs.false11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end9
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %31 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %32)
  %cmp12 = icmp ugt i32 %32, 1080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp16 = icmp eq i32 %30, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp20 = icmp eq i32 %32, 0
  %or.cond77 = or i1 %cmp20, %or.cond
  br i1 %or.cond77, label %lor.lhs.false11.cleanup_crit_edge, label %if.end23

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_disp_cfg.sroa.0.0.copyload)
  %tobool24.not = icmp eq i32 %init_disp_cfg.sroa.0.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_disp_cfg.sroa.6.0.copyload)
  %tobool25.not = icmp eq i32 %init_disp_cfg.sroa.6.0.copyload, 0
  %or.cond78 = select i1 %tobool24.not, i1 true, i1 %tobool25.not
  br i1 %or.cond78, label %if.end23.if.end40_crit_edge, label %land.lhs.true26

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

land.lhs.true26:                                  ; preds = %if.end23
  %width28 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 9
  %33 = ptrtoint ptr %width28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %init_disp_cfg.sroa.0.0.copyload, i32 %34)
  %cmp29.not = icmp eq i32 %init_disp_cfg.sroa.0.0.copyload, %34
  br i1 %cmp29.not, label %lor.lhs.false31, label %land.lhs.true26.if.then36_crit_edge

land.lhs.true26.if.then36_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

lor.lhs.false31:                                  ; preds = %land.lhs.true26
  %height33 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 10
  %35 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %init_disp_cfg.sroa.6.0.copyload, i32 %36)
  %cmp34.not = icmp eq i32 %init_disp_cfg.sroa.6.0.copyload, %36
  br i1 %cmp34.not, label %lor.lhs.false31.if.end40_crit_edge, label %lor.lhs.false31.if.then36_crit_edge

lor.lhs.false31.if.then36_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

lor.lhs.false31.if.end40_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then36:                                        ; preds = %lor.lhs.false31.if.then36_crit_edge, %land.lhs.true26.if.then36_crit_edge
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %if.then36.cond.end_crit_edge, label %cond.true

if.then36.cond.end_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %37 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev39, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then36.cond.end_crit_edge
  %cond = phi ptr [ %38, %cond.true ], [ null, %if.then36.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.11) #4
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false31.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp41 = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %43 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crtcs.i, align 4
  %index.i.i79 = getelementptr inbounds %struct.drm_crtc, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %index.i.i79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i79, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %44, i32 %46, i32 1
  %47 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state1.i, align 4
  %call46 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %48, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %cmp41, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %cond.end, %lor.lhs.false11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %cond.end.i, %for.cond.preheader.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end ], [ %call46, %if.end40 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %cond.end.i ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_plane_atomic_update(ptr noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %tobool.not = icmp eq ptr %plane, null
  %tobool2.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  %tobool4.not = icmp eq ptr %5, null
  %or.cond352 = select i1 %or.cond, i1 true, i1 %tobool4.not
  br i1 %or.cond352, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %num_planes9 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num_planes9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_planes9, align 1
  %14 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plane, align 8
  %id = getelementptr inbounds %struct.kmb_plane, ptr %plane, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 8
  %irq_lock = getelementptr inbounds %struct.kmb_drm_private, ptr %15, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #4
  %kmb_under_flow = getelementptr inbounds %struct.kmb_drm_private, ptr %15, i32 0, i32 12
  %18 = ptrtoint ptr %kmb_under_flow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kmb_under_flow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end8.if.then14_crit_edge

if.end8.if.then14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false12:                                  ; preds = %if.end8
  %kmb_flush_done = getelementptr inbounds %struct.kmb_drm_private, ptr %15, i32 0, i32 13
  %20 = ptrtoint ptr %kmb_flush_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kmb_flush_done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %if.end19, label %lor.lhs.false12.if.then14_crit_edge

lor.lhs.false12.if.then14_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false12.if.then14_crit_edge, %if.end8.if.then14_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.then14.cond.end_crit_edge, label %cond.true

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then14.cond.end_crit_edge
  %cond = phi ptr [ %23, %cond.true ], [ null, %if.then14.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.13) #4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false12
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #4
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr %struct.kmb_drm_private, ptr %15, i32 0, i32 10, i32 %idxprom
  %src_w22 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %24 = ptrtoint ptr %src_w22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_w22, align 4
  %shr = lshr i32 %25, 16
  %src_h23 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %26 = ptrtoint ptr %src_h23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_h23, align 4
  %shr24 = lshr i32 %27, 16
  %crtc_x25 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %crtc_x25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_x25, align 4
  %crtc_y26 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %30 = ptrtoint ptr %crtc_y26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_y26, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.end19.cond.end33_crit_edge, label %cond.true29

if.end19.cond.end33_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end33

cond.true29:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %32 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev31, align 8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true29, %if.end19.cond.end33_crit_edge
  %cond34 = phi ptr [ %33, %cond.true29 ], [ null, %if.end19.cond.end33_crit_edge ]
  %34 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %format, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %flags = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 11
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond34, i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %shr24, i32 noundef %37, i32 noundef %39) #4
  %width37 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 9
  %40 = ptrtoint ptr %width37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width37, align 8
  %height38 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 10
  %42 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height38, align 4
  %mul = mul i32 %43, %41
  %44 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %format, align 8
  %46 = getelementptr inbounds %struct.drm_format_info, ptr %45, i32 0, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 2
  %conv41 = zext i8 %48 to i32
  %mul42 = mul i32 %mul, %conv41
  br i1 %tobool28.not, label %cond.end33.cond.end49_crit_edge, label %cond.true45

cond.end33.cond.end49_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end49

cond.true45:                                      ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  %dev47 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %49 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev47, align 8
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true45, %cond.end33.cond.end49_crit_edge
  %cond50 = phi ptr [ %50, %cond.true45 ], [ null, %cond.end33.cond.end49_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond50, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %mul42) #4
  %mul52 = shl nuw nsw i32 %idxprom, 10
  %add = add nuw nsw i32 %mul52, 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %51 = tail call i32 @llvm.bswap.i32(i32 %mul42) #4
  %lcd_mmio.i = getelementptr inbounds %struct.kmb_drm_private, ptr %15, i32 0, i32 2
  %52 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %53, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %51) #4, !srcloc !67
  %add55 = add nuw nsw i32 %mul52, 1132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i358 = getelementptr i8, ptr %55, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 %51) #4, !srcloc !67
  %add58 = add nuw nsw i32 %mul52, 1144
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %56 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pitches, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  %59 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i360 = getelementptr i8, ptr %60, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360, i32 %58) #4, !srcloc !67
  %add62 = add nuw nsw i32 %mul52, 1140
  %61 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %format, align 8
  %63 = getelementptr inbounds %struct.drm_format_info, ptr %62, i32 0, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 2
  %conv65 = zext i8 %65 to i32
  %mul66 = mul i32 %41, %conv65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %66 = tail call i32 @llvm.bswap.i32(i32 %mul66) #4
  %67 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i362 = getelementptr i8, ptr %68, i32 %add62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362, i32 %66) #4, !srcloc !67
  %call67 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 0) #4
  %add70 = add nuw nsw i32 %mul52, 1120
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 7
  %69 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offsets, align 8
  %add72 = add i32 %70, %call67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %71 = tail call i32 @llvm.bswap.i32(i32 %add72) #4
  %72 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i364 = getelementptr i8, ptr %73, i32 %add70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 %71) #4, !srcloc !67
  %74 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %format, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values)
  switch i32 %77, label %cond.end49.land.end.i_crit_edge [
    i32 875713881, label %sw.bb.i
    i32 875714137, label %sw.bb1.i
    i32 909202777, label %sw.bb2.i
    i32 909203033, label %sw.bb3.i
    i32 842093913, label %sw.bb4.i
    i32 842094169, label %sw.bb5.i
    i32 842094158, label %sw.bb6.i
    i32 825382478, label %sw.bb7.i
    i32 943867730, label %sw.bb8.i
    i32 842089048, label %sw.bb9.i
    i32 842093121, label %sw.bb10.i
    i32 842089025, label %sw.bb11.i
    i32 892424792, label %sw.bb12.i
    i32 892420696, label %sw.bb13.i
    i32 892424769, label %sw.bb14.i
    i32 892420673, label %sw.bb15.i
    i32 909199186, label %sw.bb16.i
    i32 909199170, label %sw.bb17.i
    i32 875710290, label %sw.bb18.i
    i32 875710274, label %sw.bb19.i
    i32 875713112, label %sw.bb20.i
    i32 875709016, label %sw.bb21.i
    i32 875713089, label %sw.bb22.i
    i32 875708993, label %sw.bb23.i
  ]

cond.end49.land.end.i_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb.i:                                          ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb1.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb2.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb3.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb4.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb5.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb6.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb7.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb8.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb9.i:                                         ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb10.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb11.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb12.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb13.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb14.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb15.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb16.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb17.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb18.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb19.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb20.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb21.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb22.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

sw.bb23.i:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

land.end.i:                                       ; preds = %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %cond.end49.land.end.i_crit_edge
  %val.0.i = phi i32 [ 0, %cond.end49.land.end.i_crit_edge ], [ 3584, %sw.bb23.i ], [ 527872, %sw.bb22.i ], [ 4096, %sw.bb21.i ], [ 528384, %sw.bb20.i ], [ 3072, %sw.bb19.i ], [ 527360, %sw.bb18.i ], [ 4608, %sw.bb17.i ], [ 528896, %sw.bb16.i ], [ 5120, %sw.bb15.i ], [ 529408, %sw.bb14.i ], [ 5632, %sw.bb13.i ], [ 529920, %sw.bb12.i ], [ 6656, %sw.bb11.i ], [ 530944, %sw.bb10.i ], [ 7168, %sw.bb9.i ], [ 531968, %sw.bb8.i ], [ 292864, %sw.bb7.i ], [ 30720, %sw.bb6.i ], [ 279552, %sw.bb5.i ], [ 17408, %sw.bb4.i ], [ 279040, %sw.bb3.i ], [ 16896, %sw.bb2.i ], [ 278528, %sw.bb1.i ], [ 16384, %sw.bb.i ]
  %.b38.i = load i1, ptr @get_pixel_format.__already_done, align 1
  br i1 %.b38.i, label %land.end.i.get_pixel_format.exit_crit_edge, label %if.then.i, !prof !68

land.end.i.get_pixel_format.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_pixel_format.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @get_pixel_format.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 252, i32 noundef %77, i32 noundef %val.0.i) #7
  br label %get_pixel_format.exit

get_pixel_format.exit:                            ; preds = %if.then.i, %land.end.i.get_pixel_format.exit_crit_edge
  %79 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %format, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i = icmp ugt i8 %82, 1
  br i1 %cmp.i, label %get_pixel_format.exit.get_bits_per_pixel.exit_crit_edge, label %if.end.i

get_pixel_format.exit.get_bits_per_pixel.exit_crit_edge: ; preds = %get_pixel_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_bits_per_pixel.exit

if.end.i:                                         ; preds = %get_pixel_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  %83 = getelementptr inbounds %struct.drm_format_info, ptr %80, i32 0, i32 3
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 2
  %conv2.i = zext i8 %85 to i32
  %mul.i = shl nuw nsw i32 %conv2.i, 3
  %86 = add nsw i32 %mul.i, -8
  %87 = lshr exact i32 %86, 3
  %switch.tableidx = add nsw i32 %87, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %88 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = shl i32 %switch.tableidx, 15
  %switch.offset = add i32 %switch.idx.mult, 32768
  %val.0.i368 = select i1 %88, i32 %switch.offset, i32 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %mul.i, i32 noundef %val.0.i368) #4
  br label %get_bits_per_pixel.exit

get_bits_per_pixel.exit:                          ; preds = %if.end.i, %get_pixel_format.exit.get_bits_per_pixel.exit_crit_edge
  %retval.0.i = phi i32 [ %val.0.i368, %if.end.i ], [ 0, %get_pixel_format.exit.get_bits_per_pixel.exit_crit_edge ]
  %or = or i32 %retval.0.i, %val.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp ugt i8 %13, 1
  br i1 %cmp, label %if.then79, label %get_bits_per_pixel.exit.if.end136_crit_edge

get_bits_per_pixel.exit.if.end136_crit_edge:      ; preds = %get_bits_per_pixel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

if.then79:                                        ; preds = %get_bits_per_pixel.exit
  %mul81 = shl nuw nsw i32 %idxprom, 5
  %add82 = add nuw nsw i32 %mul81, 7180
  %89 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %format, align 8
  %91 = getelementptr inbounds %struct.drm_format_info, ptr %90, i32 0, i32 3
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 2
  %conv85 = zext i8 %93 to i32
  %mul86 = mul i32 %41, %conv85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %94 = tail call i32 @llvm.bswap.i32(i32 %mul86) #4
  %95 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i370 = getelementptr i8, ptr %96, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 %94) #4, !srcloc !67
  %add89 = add nuw nsw i32 %mul81, 7176
  %97 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %format, align 8
  %99 = getelementptr inbounds %struct.drm_format_info, ptr %98, i32 0, i32 3
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 2
  %conv92 = zext i8 %101 to i32
  %mul93 = mul i32 %41, %conv92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %102 = tail call i32 @llvm.bswap.i32(i32 %mul93) #4
  %103 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i372 = getelementptr i8, ptr %104, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 %102) #4, !srcloc !67
  %call94 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp95 = icmp eq i8 %13, 3
  br i1 %cmp95, label %land.lhs.true, label %if.end136.critedge

land.lhs.true:                                    ; preds = %if.then79
  %and = and i32 %val.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool97.not = icmp eq i32 %and, 0
  br i1 %tobool97.not, label %if.then108.critedge353, label %if.then98

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add101 = add nuw nsw i32 %mul81, 7184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %105 = tail call i32 @llvm.bswap.i32(i32 %call94) #4
  %106 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i374 = getelementptr i8, ptr %107, i32 %add101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 %105) #4, !srcloc !67
  br label %if.then108

if.then108.critedge353:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add104.c = add nuw nsw i32 %mul81, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %108 = tail call i32 @llvm.bswap.i32(i32 %call94) #4
  %109 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i376 = getelementptr i8, ptr %110, i32 %add104.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376, i32 %108) #4, !srcloc !67
  br label %if.then108

if.then108:                                       ; preds = %if.then108.critedge353, %if.then98
  %add111 = add nuw nsw i32 %mul81, 7196
  %111 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %format, align 8
  %113 = getelementptr inbounds %struct.drm_format_info, ptr %112, i32 0, i32 3
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 2
  %conv114 = zext i8 %115 to i32
  %mul115 = mul i32 %41, %conv114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %116 = tail call i32 @llvm.bswap.i32(i32 %mul115) #4
  %117 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i378 = getelementptr i8, ptr %118, i32 %add111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378, i32 %116) #4, !srcloc !67
  %add118 = add nuw nsw i32 %mul81, 7192
  %119 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %format, align 8
  %121 = getelementptr inbounds %struct.drm_format_info, ptr %120, i32 0, i32 3
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 2
  %conv121 = zext i8 %123 to i32
  %mul122 = mul i32 %41, %conv121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %124 = tail call i32 @llvm.bswap.i32(i32 %mul122) #4
  %125 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i380 = getelementptr i8, ptr %126, i32 %add118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380, i32 %124) #4, !srcloc !67
  %call123 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 2) #4
  br i1 %tobool97.not, label %if.else130, label %if.then126

if.then126:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  %add129 = add nuw nsw i32 %mul81, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %127 = tail call i32 @llvm.bswap.i32(i32 %call123) #4
  %128 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i382 = getelementptr i8, ptr %129, i32 %add129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382, i32 %127) #4, !srcloc !67
  br label %if.end136

if.else130:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  %add133 = add nuw nsw i32 %mul81, 7184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %130 = tail call i32 @llvm.bswap.i32(i32 %call123) #4
  %131 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i384 = getelementptr i8, ptr %132, i32 %add133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %130) #4, !srcloc !67
  br label %if.end136

if.end136.critedge:                               ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  %add104.c354 = add nuw nsw i32 %mul81, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %133 = tail call i32 @llvm.bswap.i32(i32 %call94) #4
  %134 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i386 = getelementptr i8, ptr %135, i32 %add104.c354
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386, i32 %133) #4, !srcloc !67
  br label %if.end136

if.end136:                                        ; preds = %if.end136.critedge, %if.else130, %if.then126, %get_bits_per_pixel.exit.if.end136_crit_edge
  %add139 = add nuw nsw i32 %mul52, 1036
  %sub = add nsw i32 %shr, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %136 = tail call i32 @llvm.bswap.i32(i32 %sub) #4
  %137 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i388 = getelementptr i8, ptr %138, i32 %add139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388, i32 %136) #4, !srcloc !67
  %add142 = add nuw nsw i32 %mul52, 1040
  %sub143 = add nsw i32 %shr24, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %139 = tail call i32 @llvm.bswap.i32(i32 %sub143) #4
  %140 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i390 = getelementptr i8, ptr %141, i32 %add142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390, i32 %139) #4, !srcloc !67
  %add146 = add nuw nsw i32 %mul52, 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %142 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  %143 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i392 = getelementptr i8, ptr %144, i32 %add146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392, i32 %142) #4, !srcloc !67
  %add149 = add nuw nsw i32 %mul52, 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %145 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %146 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i394 = getelementptr i8, ptr %147, i32 %add149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394, i32 %145) #4, !srcloc !67
  %or150 = or i32 %or, 100663296
  %and151 = and i32 %val.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end136.if.end156_crit_edge, label %if.then153

if.end136.if.end156_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

if.then153:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %or154 = or i32 %or, 100663304
  %add.i = add nuw nsw i32 %mul52, 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %148 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %149, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 262144) #4, !srcloc !67
  %add2.i = add nuw nsw i32 %mul52, 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %150 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %151, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 0) #4, !srcloc !67
  %add4.i = add nuw nsw i32 %mul52, 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %152 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %153, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 -1677393920) #4, !srcloc !67
  %add6.i = add nuw nsw i32 %mul52, 1080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %154 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %155, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 262144) #4, !srcloc !67
  %add8.i = add nuw nsw i32 %mul52, 1084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %156 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %157, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 -1593901057) #4, !srcloc !67
  %add10.i = add nuw nsw i32 %mul52, 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %158 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %159, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 637403135) #4, !srcloc !67
  %add12.i = add nuw nsw i32 %mul52, 1092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %160 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %161, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 262144) #4, !srcloc !67
  %add14.i = add nuw nsw i32 %mul52, 1096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %162 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %163, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 369557504) #4, !srcloc !67
  %add16.i = add nuw nsw i32 %mul52, 1100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %164 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %165, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 0) #4, !srcloc !67
  %add18.i = add nuw nsw i32 %mul52, 1104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %166 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %167, i32 %add18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 1308622847) #4, !srcloc !67
  %add20.i = add nuw nsw i32 %mul52, 1108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %168 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %169, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 2097152000) #4, !srcloc !67
  %add22.i = add nuw nsw i32 %mul52, 1112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %170 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i66.i = getelementptr i8, ptr %171, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 520093695) #4, !srcloc !67
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %if.end136.if.end156_crit_edge
  %val.0 = phi i32 [ %or150, %if.end136.if.end156_crit_edge ], [ %or154, %if.then153 ]
  %state157 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %172 = ptrtoint ptr %state157 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %state157, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %alpha.i, align 4
  %pixel_blend_mode1.i = getelementptr inbounds %struct.drm_plane_state, ptr %173, i32 0, i32 13
  %176 = ptrtoint ptr %pixel_blend_mode1.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %pixel_blend_mode1.i, align 2
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %173, i32 0, i32 2
  %178 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %format.i, align 8
  %has_alpha2.i = getelementptr inbounds %struct.drm_format_info, ptr %181, i32 0, i32 8
  %182 = ptrtoint ptr %has_alpha2.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %has_alpha2.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i = icmp eq i8 %183, 0
  %conv3.i = zext i16 %175 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %175)
  %cmp.not.i = icmp eq i16 %175, -1
  br i1 %cmp.not.i, label %if.end.i396, label %if.end.thread.i

if.end.i396:                                      ; preds = %if.end156
  br i1 %tobool.not.i, label %if.then17.i, label %if.end.i396.if.then6.i_crit_edge

if.end.i396.if.then6.i_crit_edge:                 ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

if.end.thread.i:                                  ; preds = %if.end156
  %or.i = or i32 %val.0, 16
  br i1 %tobool.not.i, label %if.end.thread.i.if.end18.i_crit_edge, label %if.end.thread.i.if.then6.i_crit_edge

if.end.thread.i.if.then6.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

if.end.thread.i.if.end18.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then6.i:                                       ; preds = %if.end.thread.i.if.then6.i_crit_edge, %if.end.i396.if.then6.i_crit_edge
  %val.1 = phi i32 [ %val.0, %if.end.i396.if.then6.i_crit_edge ], [ %or.i, %if.end.thread.i.if.then6.i_crit_edge ]
  %184 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %177, label %sw.default.i [
    i16 2, label %if.then6.i.if.end18.i_crit_edge
    i16 0, label %sw.bb.i397
    i16 1, label %sw.bb9.i398
  ]

if.then6.i.if.end18.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

sw.bb.i397:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  %or8.i = or i32 %val.1, 96
  br label %if.end18.i

sw.bb9.i398:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  %or10.i = or i32 %val.1, 32
  br label %if.end18.i

sw.default.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv7.i = zext i16 %177 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %conv7.i) #4
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %val.0, -49
  br label %kmb_plane_set_alpha.exit

if.end18.i:                                       ; preds = %sw.default.i, %sw.bb9.i398, %sw.bb.i397, %if.then6.i.if.end18.i_crit_edge, %if.end.thread.i.if.end18.i_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.default.i ], [ %or10.i, %sw.bb9.i398 ], [ %or8.i, %sw.bb.i397 ], [ %val.1, %if.then6.i.if.end18.i_crit_edge ], [ %or.i, %if.end.thread.i.if.end18.i_crit_edge ]
  %add.i400 = add nuw nsw i32 %mul52, 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %185 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #4
  %186 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i402 = getelementptr i8, ptr %187, i32 %add.i400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i402, i32 %185) #4, !srcloc !67
  br label %kmb_plane_set_alpha.exit

kmb_plane_set_alpha.exit:                         ; preds = %if.end18.i, %if.then17.i
  %val.3 = phi i32 [ %and.i, %if.then17.i ], [ %val.2, %if.end18.i ]
  %add160 = add nuw nsw i32 %mul52, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %188 = tail call i32 @llvm.bswap.i32(i32 %val.3) #4
  %189 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i404 = getelementptr i8, ptr %190, i32 %add160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 %188) #4, !srcloc !67
  %191 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %lcd_mmio.i, align 8
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %194 = and i32 %193, 1069580287
  %195 = tail call i32 @llvm.bswap.i32(i32 %194)
  %or163 = or i32 %195, 64
  %196 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %17, label %kmb_plane_set_alpha.exit.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb167
    i8 2, label %sw.bb169
    i8 3, label %sw.bb171
  ]

kmb_plane_set_alpha.exit.sw.epilog_crit_edge:     ; preds = %kmb_plane_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %kmb_plane_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or166 = or i32 %195, 68
  br label %sw.epilog

sw.bb167:                                         ; preds = %kmb_plane_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or168 = or i32 %195, 72
  br label %sw.epilog

sw.bb169:                                         ; preds = %kmb_plane_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or170 = or i32 %195, 80
  br label %sw.epilog

sw.bb171:                                         ; preds = %kmb_plane_set_alpha.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or172 = or i32 %195, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb, %kmb_plane_set_alpha.exit.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ %or163, %kmb_plane_set_alpha.exit.sw.epilog_crit_edge ], [ %or172, %sw.bb171 ], [ %or170, %sw.bb169 ], [ %or168, %sw.bb167 ], [ %or166, %sw.bb ]
  %or174 = or i32 %ctrl.0, -2146942976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %197 = tail call i32 @llvm.bswap.i32(i32 %or174) #4
  %198 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %lcd_mmio.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #4, !srcloc !67
  %200 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %lcd_mmio.i, align 8
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %203 = or i32 %202, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %204 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %lcd_mmio.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %206 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i410 = getelementptr i8, ptr %207, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410, i32 33555456) #4, !srcloc !67
  %add179 = add nuw nsw i32 %mul52, 1116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %208 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i412 = getelementptr i8, ptr %209, i32 %add179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i412, i32 151388160) #4, !srcloc !67
  %210 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool181.not = icmp eq i32 %211, 0
  br i1 %tobool181.not, label %sw.epilog.if.then188_crit_edge, label %lor.lhs.false182

sw.epilog.if.then188_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then188

lor.lhs.false182:                                 ; preds = %sw.epilog
  %height183 = getelementptr %struct.kmb_drm_private, ptr %15, i32 0, i32 10, i32 %idxprom, i32 1
  %212 = ptrtoint ptr %height183 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %height183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool184.not = icmp eq i32 %213, 0
  br i1 %tobool184.not, label %lor.lhs.false182.if.then188_crit_edge, label %lor.lhs.false185

lor.lhs.false182.if.then188_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then188

lor.lhs.false185:                                 ; preds = %lor.lhs.false182
  %format186 = getelementptr %struct.kmb_drm_private, ptr %15, i32 0, i32 10, i32 %idxprom, i32 2
  %214 = ptrtoint ptr %format186 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %format186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool187.not = icmp eq i32 %215, 0
  br i1 %tobool187.not, label %lor.lhs.false185.if.then188_crit_edge, label %lor.lhs.false185.if.end194_crit_edge

lor.lhs.false185.if.end194_crit_edge:             ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

lor.lhs.false185.if.then188_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then188

if.then188:                                       ; preds = %lor.lhs.false185.if.then188_crit_edge, %lor.lhs.false182.if.then188_crit_edge, %sw.epilog.if.then188_crit_edge
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %41, ptr %arrayidx, align 4
  %height190 = getelementptr %struct.kmb_drm_private, ptr %15, i32 0, i32 10, i32 %idxprom, i32 1
  %217 = ptrtoint ptr %height190 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %43, ptr %height190, align 4
  %218 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %format, align 8
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %format193 = getelementptr %struct.kmb_drm_private, ptr %15, i32 0, i32 10, i32 %idxprom, i32 2
  %222 = ptrtoint ptr %format193 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %format193, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then188, %lor.lhs.false185.if.end194_crit_edge
  br i1 %tobool28.not, label %if.end194.cond.end201_crit_edge, label %cond.true197

if.end194.cond.end201_crit_edge:                  ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end201

cond.true197:                                     ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  %dev199 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %223 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev199, align 8
  br label %cond.end201

cond.end201:                                      ; preds = %cond.true197, %if.end194.cond.end201_crit_edge
  %cond202 = phi ptr [ %224, %cond.true197 ], [ null, %if.end194.cond.end201_crit_edge ]
  %225 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i414 = getelementptr i8, ptr %226, i32 %add179
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414) #4, !srcloc !64
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond202, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef 1545, i32 noundef %228) #4
  %229 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i416 = getelementptr i8, ptr %230, i32 12
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i416) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %232 = or i32 %231, -504928506
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %233 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %234, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %232) #4, !srcloc !67
  %235 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i.i419 = getelementptr i8, ptr %236, i32 8
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i419) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %238 = or i32 %237, -504928506
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %239 = ptrtoint ptr %lcd_mmio.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %lcd_mmio.i, align 8
  %add.ptr.i4.i421 = getelementptr i8, ptr %240, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i421, i32 %238) #4, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %cond.end201, %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.kmb_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 8
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.end, label %if.end23, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %1, label %if.end23.sw.epilog_crit_edge [
    i8 0, label %if.end23.sw.epilog.sink.split_crit_edge
    i8 1, label %sw.bb24
  ]

if.end23.sw.epilog.sink.split_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb24, %if.end23.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %sw.bb24 ], [ 4, %if.end23.sw.epilog.sink.split_crit_edge ]
  %ctrl27 = getelementptr %struct.kmb_drm_private, ptr %3, i32 0, i32 11, i32 %conv, i32 1
  %5 = ptrtoint ptr %ctrl27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %ctrl27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end23.sw.epilog_crit_edge
  %arrayidx29 = getelementptr %struct.kmb_drm_private, ptr %3, i32 0, i32 11, i32 %conv
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx29, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @layer_irqs, !1, !"layer_irqs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 21, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 588, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @kmb_plane_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @kmb_plane_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 605, i32 31}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 607, i32 4}
!14 = !{ptr @kmb_plane_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @kmb_plane_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 611, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 628, i32 3}
!20 = !{ptr @kmb_formats_v, !21, !"kmb_formats_v", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 50, i32 18}
!22 = distinct !{null, !23, !"kmb_formats_g", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 37, i32 18}
!24 = !{ptr @kmb_plane_funcs, !25, !"kmb_plane_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 561, i32 37}
!26 = !{ptr @kmb_plane_helper_funcs, !27, !"kmb_plane_helper_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 547, i32 44}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 128, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 82, i32 3}
!32 = distinct !{null, !33, !"addr", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 360, i32 20}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 379, i32 3}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 390, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 397, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 538, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 251, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @get_pixel_format._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @get_pixel_format._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 283, i32 2}
!50 = distinct !{null, !51, !"csc_coef_lcd", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 29, i32 18}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/kmb/kmb_plane.c", i32 327, i32 4}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 6927161}
!65 = !{i64 2156791703}
!66 = !{i64 2156790845}
!67 = !{i64 6926743}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 1, i32 2000}
