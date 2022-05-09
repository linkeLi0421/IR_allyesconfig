; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_overlay.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_overlay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, %struct.anon.90, %struct.anon.91 }
%struct.anon.88 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.89 = type { i32, i8, i8, i8 }
%struct.anon.90 = type { i32, ptr, i32 }
%struct.anon.91 = type { ptr, i64, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.anon.87 = type { i32, ptr }
%struct.meson_overlay = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@meson_overlay_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_overlay_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@supported_drm_formats = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1448695129, i32 842094158, i32 825382478, i32 875713881, i32 909202777, i32 842093913, i32 825316697, i32 961959257, i32 942691673, i32 808539481], [56 x i8] zeroinitializer }, align 32
@format_modifiers = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 720575940379279618, i64 720575940379279617, i64 720575940379279362, i64 720575940379279361, i64 0, i64 72057594037927935], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_overlay_plane\00", [44 x i8] zeroinitializer }, align 32
@meson_overlay_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @meson_overlay_atomic_check, ptr @meson_overlay_atomic_update, ptr @meson_overlay_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx invalid format 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llx invalid layout %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid modifier %llx for format 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane 2 addr 0x%x stride %d height %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane 1 addr 0x%x stride %d height %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane 0 addr 0x%x stride %d height %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid crtc_state\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"crtc_width %d crtc_height %d interlace %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"w_in %d h_in %d crop_top %d crop_left %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"video top %d left %d width %d height %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratio x 0x%x y 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vphase 0x%x skip %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"vsc startp %d endp %d start_lines %d end_lines %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"afbc top %d (src %d) bottom %d (src %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"hsc startp %d endp %d start_lines %d end_lines %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afbc left %d right %d\0A\00", [41 x i8] zeroinitializer }, align 32
@skip_tab = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$\04hH(\08", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 808539481, i64 942691673]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 808539481, i64 942691673]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 808539481, i64 942691673]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 32, i64 825316697, i64 825382478, i64 842093913, i64 842094158, i64 875713881, i64 909202777, i64 961959257, i64 1448695129]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 825316697, i64 842093913, i64 909202777, i64 961959257]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 838, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"meson_overlay_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 799, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"supported_drm_formats\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 809, i32 23 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"format_modifiers\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 822, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 853, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"meson_overlay_helper_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 746, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 771, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 778, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 793, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 658, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 670, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 682, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 250, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 267, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 269, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 271, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 280, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 285, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 330, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 338, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 373, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 384, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"skip_tab\00", align 1
@___asan_gen_.90 = private constant [41 x i8] c"../drivers/gpu/drm/meson/meson_overlay.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 195, i32 22 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @meson_overlay_funcs, ptr @supported_drm_formats, ptr @format_modifiers, ptr @.str.1, ptr @meson_overlay_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @skip_tab], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_overlay_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_drm_formats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_modifiers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_overlay_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skip_tab to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_overlay_create(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %drm = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 536, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %priv1 = getelementptr inbounds %struct.meson_overlay, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1, align 8
  %5 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm, align 4
  %call3 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %6, ptr noundef nonnull %call.i, i32 noundef 255, ptr noundef nonnull @meson_overlay_funcs, ptr noundef nonnull @supported_drm_formats, i32 noundef 10, ptr noundef nonnull @format_modifiers, i32 noundef 0, ptr noundef nonnull @.str.1) #3
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %7 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @meson_overlay_helper_funcs, ptr %helper_private.i, align 8
  %call4 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call.i, i32 noundef 0) #3
  %overlay_plane = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %overlay_plane to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %overlay_plane, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @meson_overlay_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp.not = icmp eq i64 %modifier, 0
  br i1 %cmp.not, label %switch.early.test, label %if.end

switch.early.test:                                ; preds = %entry
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %format, label %switch.early.test.return_crit_edge [
    i32 942691673, label %switch.early.test.if.end32_crit_edge
    i32 808539481, label %switch.early.test.if.end32_crit_edge53
  ]

switch.early.test.if.end32_crit_edge53:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

switch.early.test.if.end32_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

switch.early.test.return_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %and = and i64 %modifier, 720575940379279360
  call void @__sanitizer_cov_trace_const_cmp8(i64 720575940379279360, i64 %and)
  %cmp4 = icmp eq i64 %and, 720575940379279360
  br i1 %cmp4, label %if.then5, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then5:                                         ; preds = %if.end
  %1 = trunc i64 %modifier to i32
  %conv = and i32 %1, 255
  %2 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %format, label %if.then14 [
    i32 942691673, label %if.then5.if.end15_crit_edge
    i32 808539481, label %if.then5.if.end15_crit_edge54
  ]

if.then5.if.end15_crit_edge54:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i64 noundef %modifier, i32 noundef %format) #3
  br label %return

if.end15:                                         ; preds = %if.then5.if.end15_crit_edge, %if.then5.if.end15_crit_edge54
  %conv.off = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.off)
  %switch = icmp ult i32 %conv.off, 2
  br i1 %switch, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i64 noundef %modifier, i32 noundef %conv) #3
  br label %return

if.end24:                                         ; preds = %if.end15
  %3 = and i32 %1, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch50 = icmp eq i32 %3, 0
  br i1 %switch50, label %if.end24.return_crit_edge, label %if.then29

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i64 noundef %modifier, i32 noundef %conv) #3
  br label %return

if.end32:                                         ; preds = %if.end.if.end32_crit_edge, %switch.early.test.if.end32_crit_edge, %switch.early.test.if.end32_crit_edge53
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i64 noundef %modifier, i32 noundef %format) #3
  br label %return

return:                                           ; preds = %if.end32, %if.then29, %if.end24.return_crit_edge, %if.then23, %if.then14, %switch.early.test.return_crit_edge
  %retval.1 = phi i1 [ false, %if.end32 ], [ true, %switch.early.test.return_crit_edge ], [ false, %if.then14 ], [ false, %if.then23 ], [ false, %if.then29 ], [ true, %if.end24.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_overlay_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call2, i32 noundef 13107, i32 noundef 327680, i1 noundef zeroext true, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_overlay_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %priv2 = getelementptr inbounds %struct.meson_overlay, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %flags3 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12, i32 11
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags3, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %drm = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 28
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #3
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 8
  %16 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %modifier, align 8
  %and10 = and i64 %17, 720575940379279360
  call void @__sanitizer_cov_trace_const_cmp8(i64 720575940379279360, i64 %and10)
  %cmp11 = icmp eq i64 %and10, 720575940379279360
  %vd1_afbc = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 29
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %vd1_afbc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %vd1_afbc, align 2
  %vd1_afbc_mode = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 55
  %19 = ptrtoint ptr %vd1_afbc_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 50888704, ptr %vd1_afbc_mode, align 8
  %20 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %modifier, align 8
  %and64 = and i64 %21, 720575940379279616
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  %spec.store.select = select i1 %tobool65.not, i32 50888704, i32 319324160
  %22 = ptrtoint ptr %vd1_afbc_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %vd1_afbc_mode, align 8
  %23 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %modifier, align 8
  %and71 = and i64 %24, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and71)
  %cmp72 = icmp eq i64 %and71, 2
  br i1 %cmp72, label %if.then74, label %if.then.if.end78_crit_edge

if.then.if.end78_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end78

if.then74:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %or77 = or i32 %spec.store.select, 536870912
  %25 = ptrtoint ptr %vd1_afbc_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or77, ptr %vd1_afbc_mode, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then.if.end78_crit_edge
  %vd1_afbc_en = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 56
  %26 = ptrtoint ptr %vd1_afbc_en to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5888, ptr %vd1_afbc_en, align 4
  %vd1_afbc_conv_ctrl = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 59
  %27 = ptrtoint ptr %vd1_afbc_conv_ctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %vd1_afbc_conv_ctrl, align 8
  %vd1_afbc_dec_def_color = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 60
  %28 = ptrtoint ptr %vd1_afbc_dec_def_color to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1072693248, ptr %vd1_afbc_dec_def_color, align 4
  %vd1_afbc_vd_cfmt_ctrl = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 61
  %29 = ptrtoint ptr %vd1_afbc_vd_cfmt_ctrl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11602961, ptr %vd1_afbc_vd_cfmt_ctrl, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %33, label %if.end78.sw.epilog_crit_edge [
    i32 808539481, label %do.end184
    i32 942691673, label %if.end78.sw.epilog.sink.split_crit_edge
  ]

if.end78.sw.epilog.sink.split_crit_edge:          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.end78.sw.epilog_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end184:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %vd1_afbc_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vd1_afbc_mode, align 8
  %or188 = or i32 %36, 10752
  store i32 %or188, ptr %vd1_afbc_mode, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end184, %if.end78.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1073218048, %do.end184 ], [ 1072824448, %if.end78.sw.epilog.sink.split_crit_edge ]
  %37 = ptrtoint ptr %vd1_afbc_dec_def_color to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %vd1_afbc_dec_def_color, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end78.sw.epilog_crit_edge
  %vd1_if0_gen_reg = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 31
  %38 = ptrtoint ptr %vd1_if0_gen_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %vd1_if0_gen_reg, align 8
  %vd1_if0_canvas0 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 43
  %39 = ptrtoint ptr %vd1_if0_canvas0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %vd1_if0_canvas0, align 8
  %viu_vd1_fmt_ctrl = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 45
  %40 = ptrtoint ptr %viu_vd1_fmt_ctrl to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %viu_vd1_fmt_ctrl, align 8
  br label %if.end288

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %vd1_afbc to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %vd1_afbc, align 2
  %vd1_if0_gen_reg287 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 31
  %42 = ptrtoint ptr %vd1_if0_gen_reg287 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 407371841, ptr %vd1_if0_gen_reg287, align 8
  br label %if.end288

if.end288:                                        ; preds = %if.else, %sw.epilog
  %crtc.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 11
  %43 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crtc.i, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #3
  br label %meson_overlay_setup_scaler_params.exit

if.end.i:                                         ; preds = %if.end288
  %state2.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %47 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state2.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %46, i32 0, i32 8, i32 6
  %49 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vdisplay.i, align 2
  %conv.i = zext i16 %50 to i32
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %46, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hdisplay.i, align 4
  %conv4.i = zext i16 %52 to i32
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 11
  %53 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_w.i, align 4
  %55 = lshr i32 %54, 16
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 10
  %56 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_h.i, align 4
  %58 = lshr i32 %57, 16
  %src_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 9
  %59 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src_y.i, align 4
  %61 = lshr i32 %60, 16
  %src_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 8
  %62 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %src_x.i, align 4
  %64 = lshr i32 %63, 16
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 5
  %65 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crtc_y.i, align 4
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 4
  %67 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_x.i, align 4
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 6
  %69 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_w.i, align 4
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %48, i32 0, i32 7
  %71 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crtc_h.i, align 4
  %and.lobit = lshr exact i32 %and, 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %conv4.i, i32 noundef %conv.i, i32 noundef %and.lobit) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %55, i32 noundef %58, i32 noundef %61, i32 noundef %64) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #3
  %shl.i = shl i32 %55, 18
  %div.i = udiv i32 %shl.i, %70
  %shl18.i = shl i32 %58, 18
  %div19.i = udiv i32 %shl18.i, %72
  %mul.i = mul i32 %div.i, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %shl.i)
  %cmp.i = icmp ult i32 %mul.i, %shl.i
  %inc.i = zext i1 %cmp.i to i32
  %spec.select.i = add nuw i32 %div.i, %inc.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i, i32 noundef %div19.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 262145, i32 %div19.i)
  %cmp.i.i = icmp ult i32 %div19.i, 262145
  %73 = or i1 %tobool, %cmp.i.i
  %shr.i1805.i = lshr i32 %div19.i, 10
  %offset_out.0.i.i = select i1 %73, i32 0, i32 %shr.i1805.i
  %74 = lshr i32 %offset_out.0.i.i, 10
  %75 = lshr i32 %offset_out.0.i.i, 2
  %and.i.i = and i32 %75, 255
  %76 = tail call i32 @llvm.smin.i32(i32 %74, i32 5) #3
  %arrayidx.i.i = getelementptr [6 x i8], ptr @skip_tab, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %78 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %and.i.i, i32 noundef %conv.i.i) #3
  %div25.i = sdiv i32 %72, 2
  %add.i = add i32 %div25.i, %66
  %shl26.i = shl i32 %58, 17
  %div27.i = udiv i32 %shl26.i, %div19.i
  %sub.i = sub i32 %add.i, %div27.i
  %div29.i = udiv i32 %shl18.i, %div19.i
  %add30.i = add i32 %sub.i, -1
  %sub31.i = add i32 %add30.i, %div29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp32.i = icmp slt i32 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp34.i = icmp slt i32 %sub.i, 0
  %or.cond.i = select i1 %cmp32.i, i1 %cmp34.i, i1 false
  br i1 %or.cond.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %79 = mul i32 %div19.i, %sub.i
  %mul38.i = sub i32 0, %79
  %shr.i = lshr i32 %mul38.i, 18
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %sub.i)
  %cmp39.i = icmp sgt i32 %66, %sub.i
  br i1 %cmp39.i, label %if.then41.i, label %if.else.i.if.end47.i_crit_edge

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

if.then41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub42.i = sub i32 %66, %sub.i
  %mul43.i = mul i32 %sub42.i, %div19.i
  %shr44.i = lshr i32 %mul43.i, 18
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then41.i, %if.else.i.if.end47.i_crit_edge, %if.then36.i
  %vd_start_lines.0.i = phi i32 [ %shr.i, %if.then36.i ], [ %shr44.i, %if.then41.i ], [ 0, %if.else.i.if.end47.i_crit_edge ]
  %add51.i = add i32 %66, -1
  %sub52.i = add i32 %add51.i, %72
  %sub53.i = add nsw i32 %conv.i, -1
  %80 = tail call i32 @llvm.umin.i32(i32 %sub52.i, i32 %sub53.i) #3
  %sub67.i = sub nsw i32 1, %66
  %add68.i = select i1 %cmp32.i, i32 0, i32 %sub67.i
  %temp_height.0.i = add i32 %80, %add68.i
  %mul70.i = mul i32 %div19.i, %temp_height.0.i
  %shr71.i = lshr i32 %mul70.i, 18
  %add72.i = add nuw nsw i32 %vd_start_lines.0.i, %shr71.i
  %sub73.i = add nsw i32 %58, -1
  %81 = tail call i32 @llvm.umin.i32(i32 %add72.i, i32 %sub73.i) #3
  %add81.i = add nuw nsw i32 %vd_start_lines.0.i, %64
  %add82.i = add nuw nsw i32 %81, %64
  %end.0.i = ashr i32 %sub31.i, %and.lobit
  %start.0.i = ashr i32 %sub.i, %and.lobit
  %82 = tail call i32 @llvm.smax.i32(i32 %66, i32 %start.0.i) #3
  %83 = tail call i32 @llvm.smax.i32(i32 %82, i32 0) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i, i32 %conv.i)
  %cmp106.not.i = icmp slt i32 %sub52.i, %conv.i
  %cond111.i = select i1 %cmp106.not.i, i32 %sub52.i, i32 %sub53.i
  %84 = tail call i32 @llvm.smin.i32(i32 %end.0.i, i32 %cond111.i) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %83, i32 noundef %84, i32 noundef %add81.i, i32 noundef %add82.i) #3
  %and.i = and i32 %add81.i, 131068
  %or.i = or i32 %add82.i, 3
  %add121.i = add nuw nsw i32 %or.i, 1
  %or124.i = or i32 %58, 3
  %add125.i = add nuw nsw i32 %or124.i, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %and.i, i32 noundef 0, i32 noundef %add121.i, i32 noundef %add125.i) #3
  %div126.i = sdiv i32 %70, 2
  %add127.i = add i32 %div126.i, %68
  %shl128.i = shl i32 %55, 17
  %div129.i = udiv i32 %shl128.i, %spec.select.i
  %sub130.i = sub i32 %add127.i, %div129.i
  %div132.i = udiv i32 %shl.i, %spec.select.i
  %add133.i = add i32 %sub130.i, -1
  %sub134.i = add i32 %add133.i, %div132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp135.i = icmp slt i32 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub130.i)
  %cmp138.i = icmp slt i32 %sub130.i, 0
  %or.cond1731.i = select i1 %cmp135.i, i1 %cmp138.i, i1 false
  br i1 %or.cond1731.i, label %if.then140.i, label %if.else144.i

if.then140.i:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  %85 = mul i32 %spec.select.i, %sub130.i
  %mul142.i = sub i32 0, %85
  %shr143.i = lshr i32 %mul142.i, 18
  br label %if.end153.i

if.else144.i:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %sub130.i)
  %cmp145.i = icmp sgt i32 %68, %sub130.i
  br i1 %cmp145.i, label %if.then147.i, label %if.else144.i.if.end153.i_crit_edge

if.else144.i.if.end153.i_crit_edge:               ; preds = %if.else144.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end153.i

if.then147.i:                                     ; preds = %if.else144.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub148.i = sub i32 %68, %sub130.i
  %mul149.i = mul i32 %sub148.i, %spec.select.i
  %shr150.i = lshr i32 %mul149.i, 18
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then147.i, %if.else144.i.if.end153.i_crit_edge, %if.then140.i
  %hd_start_lines.0.i = phi i32 [ %shr143.i, %if.then140.i ], [ %shr150.i, %if.then147.i ], [ 0, %if.else144.i.if.end153.i_crit_edge ]
  %add157.i = add i32 %68, -1
  %sub158.i = add i32 %add157.i, %70
  %sub159.i = add nsw i32 %conv4.i, -1
  %86 = tail call i32 @llvm.umin.i32(i32 %sub158.i, i32 %sub159.i) #3
  %sub178.i = sub nsw i32 1, %68
  %add179.i = select i1 %cmp135.i, i32 0, i32 %sub178.i
  %temp_width.0.i = add i32 %86, %add179.i
  %mul181.i = mul i32 %spec.select.i, %temp_width.0.i
  %shr182.i = lshr i32 %mul181.i, 18
  %add183.i = add nuw nsw i32 %hd_start_lines.0.i, %shr182.i
  %sub184.i = add nsw i32 %55, -1
  %87 = tail call i32 @llvm.umin.i32(i32 %add183.i, i32 %sub184.i) #3
  %sub192.i = sub nsw i32 1, %hd_start_lines.0.i
  %add193.i = add nsw i32 %sub192.i, %87
  %vpp_line_in_length.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 79
  %88 = ptrtoint ptr %vpp_line_in_length.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add193.i, ptr %vpp_line_in_length.i, align 8
  %89 = tail call i32 @llvm.smax.i32(i32 %68, i32 %sub130.i) #3
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 0) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub158.i, i32 %conv4.i)
  %cmp212.not.i = icmp slt i32 %sub158.i, %conv4.i
  %cond217.i = select i1 %cmp212.not.i, i32 %sub158.i, i32 %sub159.i
  %91 = tail call i32 @llvm.smin.i32(i32 %sub134.i, i32 %cond217.i) #3
  %add225.i = add nuw nsw i32 %hd_start_lines.0.i, %61
  %add226.i = add nuw nsw i32 %87, %61
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %90, i32 noundef %91, i32 noundef %add225.i, i32 noundef %add226.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add225.i)
  %cmp227.not.i = icmp ne i32 %add225.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add226.i, i32 %55)
  %cmp229.i = icmp ult i32 %add226.i, %55
  %or.cond1732.i = select i1 %cmp227.not.i, i1 true, i1 %cmp229.i
  %afbc_right.0.in.in.i = select i1 %or.cond1732.i, i32 %sub184.i, i32 %add226.i
  %afbc_right.0.in.i = or i32 %afbc_right.0.in.in.i, 31
  %afbc_right.0.i = add i32 %afbc_right.0.in.i, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %afbc_right.0.i) #3
  %shl242.i = shl i32 %div19.i, 6
  %vpp_vsc_start_phase_step.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 84
  %92 = ptrtoint ptr %vpp_vsc_start_phase_step.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %shl242.i, ptr %vpp_vsc_start_phase_step.i, align 4
  %shl244.i = shl nuw nsw i32 %and.i.i, 8
  %vpp_vsc_ini_phase.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 85
  %93 = ptrtoint ptr %vpp_vsc_ini_phase.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl244.i, ptr %vpp_vsc_ini_phase.i, align 8
  %or246.i = or i32 %conv.i.i, 9216
  %vpp_vsc_phase_ctrl.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 86
  %94 = ptrtoint ptr %vpp_vsc_phase_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or246.i, ptr %vpp_vsc_phase_ctrl.i, align 4
  %and268.i = and i32 %add225.i, 32767
  %shl291.i = shl i32 %add226.i, 16
  %and292.i = and i32 %shl291.i, 2147418112
  %or293.i = or i32 %and292.i, %and268.i
  %vd1_if0_luma_x0.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 32
  %95 = ptrtoint ptr %vd1_if0_luma_x0.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or293.i, ptr %vd1_if0_luma_x0.i, align 4
  %shr302.i = lshr i32 %add225.i, 1
  %shr329.i = lshr i32 %add226.i, 1
  %and321.i = and i32 %shr302.i, 32767
  %shl347.i = shl nuw i32 %shr329.i, 16
  %and348.i = and i32 %shl347.i, 2147418112
  %or349.i = or i32 %and348.i, %and321.i
  %vd1_if0_chroma_x0.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 34
  %96 = ptrtoint ptr %vd1_if0_chroma_x0.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or349.i, ptr %vd1_if0_chroma_x0.i, align 4
  %sub358.i = sub nsw i32 %add226.i, %add225.i
  %add359.i = add nsw i32 %sub358.i, 1
  %sub390.i = sub nsw i32 %shr329.i, %shr302.i
  %add391.i = add nsw i32 %sub390.i, 1
  %shl379.i = shl i32 %add359.i, 16
  %and380.i = and i32 %shl379.i, 268369920
  %and416.i = and i32 %add391.i, 4095
  %or417.i = or i32 %and380.i, %and416.i
  %viu_vd1_fmt_w.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 42
  %97 = ptrtoint ptr %viu_vd1_fmt_w.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or417.i, ptr %viu_vd1_fmt_w.i, align 4
  %shl444.i = shl i32 %afbc_right.0.i, 16
  %div453.i = sdiv i32 %afbc_right.0.i, 2
  %and445.i = and i32 %shl444.i, 266338304
  %and478.i = and i32 %div453.i, 4095
  %or479.i = or i32 %and445.i, %and478.i
  %vd1_afbc_vd_cfmt_w.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 62
  %98 = ptrtoint ptr %vd1_afbc_vd_cfmt_w.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or479.i, ptr %vd1_afbc_vd_cfmt_w.i, align 4
  %sub488.i = sub i32 %add121.i, %and.i
  %div489.i = sdiv i32 %sub488.i, 2
  %and510.i = and i32 %div489.i, 8191
  %vd1_afbc_vd_cfmt_h.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 63
  %99 = ptrtoint ptr %vd1_afbc_vd_cfmt_h.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and510.i, ptr %vd1_afbc_vd_cfmt_h.i, align 8
  %div546.i = sdiv i32 %afbc_right.0.i, 32
  %sub547.i = add nsw i32 %div546.i, 1023
  %and568.i = and i32 %sub547.i, 1023
  %vd1_afbc_mif_hor_scope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 64
  %100 = ptrtoint ptr %vd1_afbc_mif_hor_scope.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and568.i, ptr %vd1_afbc_mif_hor_scope.i, align 4
  %div605.i = sdiv i32 %add121.i, 4
  %sub606.i = add nsw i32 %div605.i, 1023
  %101 = shl nuw nsw i32 %add81.i, 14
  %and597.i = and i32 %101, 268369920
  %and627.i = and i32 %sub606.i, 1023
  %or628.i = or i32 %and627.i, %and597.i
  %vd1_afbc_mif_ver_scope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 65
  %102 = ptrtoint ptr %vd1_afbc_mif_ver_scope.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or628.i, ptr %vd1_afbc_mif_ver_scope.i, align 8
  %and656.i = and i32 %shl444.i, 534773760
  %and683.i = and i32 %sub488.i, 8188
  %or684.i = or i32 %and656.i, %and683.i
  %vd1_afbc_size_out.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 66
  %103 = ptrtoint ptr %vd1_afbc_size_out.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or684.i, ptr %vd1_afbc_size_out.i, align 4
  %and694.i = shl i32 %add225.i, 16
  %shl714.i = and i32 %and694.i, 536805376
  %and742.i = and i32 %add226.i, 8191
  %or743.i = or i32 %and742.i, %shl714.i
  %vd1_afbc_pixel_hor_scope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 67
  %104 = ptrtoint ptr %vd1_afbc_pixel_hor_scope.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or743.i, ptr %vd1_afbc_pixel_hor_scope.i, align 8
  %sub779.i = sub nsw i32 %add82.i, %and.i
  %sub752.i = shl i32 %add81.i, 16
  %shl770.i = and i32 %sub752.i, 196608
  %and798.i = and i32 %sub779.i, 8191
  %or799.i = or i32 %and798.i, %shl770.i
  %vd1_afbc_pixel_ver_scope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 68
  %105 = ptrtoint ptr %vd1_afbc_pixel_ver_scope.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or799.i, ptr %vd1_afbc_pixel_ver_scope.i, align 4
  %and854.i = and i32 %add125.i, 8188
  %or855.i = or i32 %and656.i, %and854.i
  %vd1_afbc_size_in.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 69
  %106 = ptrtoint ptr %vd1_afbc_size_in.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or855.i, ptr %vd1_afbc_size_in.i, align 8
  %and880.i = and i32 %add81.i, 8191
  %shl903.i = shl i32 %add82.i, 16
  %and904.i = and i32 %shl903.i, 536805376
  %or905.i = or i32 %and904.i, %and880.i
  %vd1_if0_luma_y0.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 33
  %107 = ptrtoint ptr %vd1_if0_luma_y0.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or905.i, ptr %vd1_if0_luma_y0.i, align 8
  %shr914.i = lshr i32 %add81.i, 1
  %and933.i = and i32 %shr914.i, 8191
  %108 = shl nuw i32 %add82.i, 15
  %and960.i = and i32 %108, 536805376
  %or961.i = or i32 %and960.i, %and933.i
  %vd1_if0_chroma_y0.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 35
  %109 = ptrtoint ptr %vd1_if0_chroma_y0.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or961.i, ptr %vd1_if0_chroma_y0.i, align 8
  %vpp_pic_in_height.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 70
  %110 = ptrtoint ptr %vpp_pic_in_height.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %58, ptr %vpp_pic_in_height.i, align 4
  %and971.i = shl i32 %90, 16
  %and990.i = and i32 %and971.i, 268369920
  %and1014.i = and i32 %91, 4095
  %or1015.i = or i32 %and990.i, %and1014.i
  %vpp_postblend_vd1_h_start_end.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 71
  %111 = ptrtoint ptr %vpp_postblend_vd1_h_start_end.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or1015.i, ptr %vpp_postblend_vd1_h_start_end.i, align 8
  %and1024.i = shl i32 %add225.i, 16
  %and1043.i = and i32 %and1024.i, 268369920
  %and1067.i = and i32 %add226.i, 4095
  %or1068.i = or i32 %and1067.i, %and1043.i
  %vpp_blend_vd2_h_start_end.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 88
  %112 = ptrtoint ptr %vpp_blend_vd2_h_start_end.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or1068.i, ptr %vpp_blend_vd2_h_start_end.i, align 4
  %and1109.i = and i32 %90, 4095
  %vpp_hsc_region12_startp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 73
  %113 = ptrtoint ptr %vpp_hsc_region12_startp.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and1109.i, ptr %vpp_hsc_region12_startp.i, align 8
  %sub1143.i = sub i32 %91, %90
  %shl1134.i = shl i32 %90, 16
  %and1135.i = and i32 %shl1134.i, 268369920
  %and1162.i = and i32 %sub1143.i, 4095
  %or1163.i = or i32 %and1162.i, %and1135.i
  %vpp_hsc_region34_startp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 74
  %114 = ptrtoint ptr %vpp_hsc_region34_startp.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or1163.i, ptr %vpp_hsc_region34_startp.i, align 4
  %vpp_hsc_region4_endp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 75
  %115 = ptrtoint ptr %vpp_hsc_region4_endp.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub1143.i, ptr %vpp_hsc_region4_endp.i, align 8
  %shl1167.i = shl i32 %spec.select.i, 6
  %vpp_hsc_start_phase_step.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 76
  %116 = ptrtoint ptr %vpp_hsc_start_phase_step.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shl1167.i, ptr %vpp_hsc_start_phase_step.i, align 4
  %vpp_hsc_region1_phase_slope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 77
  %117 = ptrtoint ptr %vpp_hsc_region1_phase_slope.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %vpp_hsc_region1_phase_slope.i, align 8
  %vpp_hsc_region3_phase_slope.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 78
  %118 = ptrtoint ptr %vpp_hsc_region3_phase_slope.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %vpp_hsc_region3_phase_slope.i, align 4
  %vpp_hsc_phase_ctrl.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 87
  %119 = ptrtoint ptr %vpp_hsc_phase_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2359296, ptr %vpp_hsc_phase_ctrl.i, align 8
  %120 = ptrtoint ptr %vpp_line_in_length.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add359.i, ptr %vpp_line_in_length.i, align 8
  %vpp_preblend_h_size.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 80
  %121 = ptrtoint ptr %vpp_preblend_h_size.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add359.i, ptr %vpp_preblend_h_size.i, align 4
  %shl1201.i = shl i32 %83, 16
  %and1202.i = and i32 %shl1201.i, 268369920
  %and1226.i = and i32 %84, 4095
  %or1227.i = or i32 %and1202.i, %and1226.i
  %vpp_postblend_vd1_v_start_end.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 72
  %122 = ptrtoint ptr %vpp_postblend_vd1_v_start_end.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or1227.i, ptr %vpp_postblend_vd1_v_start_end.i, align 4
  %add119.i = shl nuw i32 %add82.i, 15
  %123 = add i32 %add119.i, 32768
  %and1258.i = and i32 %123, 268369920
  %and1282.i = and i32 %add82.i, 4095
  %or1283.i = or i32 %and1258.i, %and1282.i
  %vpp_blend_vd2_v_start_end.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 89
  %124 = ptrtoint ptr %vpp_blend_vd2_v_start_end.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or1283.i, ptr %vpp_blend_vd2_v_start_end.i, align 8
  %vpp_vsc_region12_startp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 81
  %125 = ptrtoint ptr %vpp_vsc_region12_startp.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %vpp_vsc_region12_startp.i, align 8
  %sub1293.i = sub i32 %84, %83
  %shl1311.i = shl i32 %sub1293.i, 16
  %and1312.i = and i32 %shl1311.i, 268369920
  %and1339.i = and i32 %sub1293.i, 4095
  %or1340.i = or i32 %and1312.i, %and1339.i
  %vpp_vsc_region34_startp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 82
  %126 = ptrtoint ptr %vpp_vsc_region34_startp.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or1340.i, ptr %vpp_vsc_region34_startp.i, align 4
  %vpp_vsc_region4_endp.i = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 83
  %127 = ptrtoint ptr %vpp_vsc_region4_endp.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub1293.i, ptr %vpp_vsc_region4_endp.i, align 8
  store i32 %shl242.i, ptr %vpp_vsc_start_phase_step.i, align 4
  br label %meson_overlay_setup_scaler_params.exit

meson_overlay_setup_scaler_params.exit:           ; preds = %if.end153.i, %if.then.i
  %vd1_if0_repeat_loop = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 36
  %128 = ptrtoint ptr %vd1_if0_repeat_loop to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %vd1_if0_repeat_loop, align 4
  %129 = lshr exact i32 %and, 1
  %vd1_if0_luma0_rpt_pat = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 37
  %130 = ptrtoint ptr %vd1_if0_luma0_rpt_pat to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %vd1_if0_luma0_rpt_pat, align 8
  %vd1_if0_chroma0_rpt_pat = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 38
  %131 = ptrtoint ptr %vd1_if0_chroma0_rpt_pat to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %vd1_if0_chroma0_rpt_pat, align 4
  %vd1_range_map_y = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 39
  %132 = ptrtoint ptr %vd1_range_map_y to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %vd1_range_map_y, align 8
  %vd1_range_map_cb = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 40
  %133 = ptrtoint ptr %vd1_range_map_cb to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %vd1_range_map_cb, align 4
  %vd1_range_map_cr = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 41
  %134 = ptrtoint ptr %vd1_range_map_cr to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %vd1_range_map_cr, align 8
  %vd1_if0_gen_reg2 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 44
  %135 = ptrtoint ptr %vd1_if0_gen_reg2 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %vd1_if0_gen_reg2, align 4
  %viu_vd1_fmt_ctrl303 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 45
  %136 = ptrtoint ptr %viu_vd1_fmt_ctrl303 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %viu_vd1_fmt_ctrl303, align 8
  %format304 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %137 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %format304, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %140, label %meson_overlay_setup_scaler_params.exit.sw.epilog981_crit_edge [
    i32 1448695129, label %do.end321
    i32 842094158, label %meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge
    i32 825382478, label %meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge1244
    i32 875713881, label %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge
    i32 909202777, label %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1245
    i32 842093913, label %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1246
    i32 825316697, label %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1247
    i32 961959257, label %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1248
  ]

meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1248: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb660

meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1247: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb660

meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1246: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb660

meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1245: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb660

meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb660

meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge1244: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb468

meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb468

meson_overlay_setup_scaler_params.exit.sw.epilog981_crit_edge: ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981

do.end321:                                        ; preds = %meson_overlay_setup_scaler_params.exit
  call void @__sanitizer_cov_trace_pc() #5
  %vd1_if0_gen_reg324 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 31
  %142 = ptrtoint ptr %vd1_if0_gen_reg324 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %vd1_if0_gen_reg324, align 8
  %or325 = or i32 %143, 16384
  store i32 %or325, ptr %vd1_if0_gen_reg324, align 8
  %canvas_id_vd1_0 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 7
  %144 = ptrtoint ptr %canvas_id_vd1_0 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %canvas_id_vd1_0, align 1
  %conv349 = zext i8 %145 to i32
  %shl = shl nuw nsw i32 %conv349, 16
  %shl378 = shl nuw nsw i32 %conv349, 8
  %or380 = or i32 %shl378, %conv349
  %or410 = or i32 %or380, %shl
  %vd1_if0_canvas0412 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 43
  %146 = ptrtoint ptr %vd1_if0_canvas0412 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or410, ptr %vd1_if0_canvas0412, align 8
  br label %sw.epilog981.sink.split

sw.bb468:                                         ; preds = %meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge, %meson_overlay_setup_scaler_params.exit.sw.bb468_crit_edge1244
  %vd1_if0_gen_reg470 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 31
  %147 = ptrtoint ptr %vd1_if0_gen_reg470 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vd1_if0_gen_reg470, align 8
  %or471 = or i32 %148, 2
  store i32 %or471, ptr %vd1_if0_gen_reg470, align 8
  %canvas_id_vd1_1 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 8
  %149 = ptrtoint ptr %canvas_id_vd1_1 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %canvas_id_vd1_1, align 2
  %conv497 = zext i8 %150 to i32
  %shl498 = shl nuw nsw i32 %conv497, 16
  %shl527 = shl nuw nsw i32 %conv497, 8
  %or529 = or i32 %shl498, %shl527
  %canvas_id_vd1_0537 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 7
  %151 = ptrtoint ptr %canvas_id_vd1_0537 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %canvas_id_vd1_0537, align 1
  %conv556 = zext i8 %152 to i32
  %or559 = or i32 %or529, %conv556
  %vd1_if0_canvas0561 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 43
  %153 = ptrtoint ptr %vd1_if0_canvas0561 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or559, ptr %vd1_if0_canvas0561, align 8
  %154 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %format304, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %157)
  %cmp564 = icmp eq i32 %157, 842094158
  %storemerge = select i1 %cmp564, i32 1, i32 2
  %158 = ptrtoint ptr %vd1_if0_gen_reg2 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %storemerge, ptr %vd1_if0_gen_reg2, align 4
  br label %sw.epilog981.sink.split

sw.bb660:                                         ; preds = %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge, %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1245, %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1246, %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1247, %meson_overlay_setup_scaler_params.exit.sw.bb660_crit_edge1248
  %vd1_if0_gen_reg662 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 31
  %159 = ptrtoint ptr %vd1_if0_gen_reg662 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %vd1_if0_gen_reg662, align 8
  %or663 = or i32 %160, 2
  store i32 %or663, ptr %vd1_if0_gen_reg662, align 8
  %canvas_id_vd1_2 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 9
  %161 = ptrtoint ptr %canvas_id_vd1_2 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %canvas_id_vd1_2, align 1
  %conv689 = zext i8 %162 to i32
  %shl690 = shl nuw nsw i32 %conv689, 16
  %canvas_id_vd1_1699 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 8
  %163 = ptrtoint ptr %canvas_id_vd1_1699 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %canvas_id_vd1_1699, align 2
  %conv718 = zext i8 %164 to i32
  %shl719 = shl nuw nsw i32 %conv718, 8
  %or721 = or i32 %shl719, %shl690
  %canvas_id_vd1_0729 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 7
  %165 = ptrtoint ptr %canvas_id_vd1_0729 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %canvas_id_vd1_0729, align 1
  %conv748 = zext i8 %166 to i32
  %or751 = or i32 %or721, %conv748
  %vd1_if0_canvas0753 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 43
  %167 = ptrtoint ptr %vd1_if0_canvas0753 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or751, ptr %vd1_if0_canvas0753, align 8
  %168 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %format304, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %171, label %sw.bb660.sw.epilog981_crit_edge [
    i32 909202777, label %sw.bb660.sw.epilog981.sink.split_crit_edge
    i32 842093913, label %do.end827
    i32 825316697, label %do.end883
    i32 961959257, label %do.end939
  ]

sw.bb660.sw.epilog981.sink.split_crit_edge:       ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981.sink.split

sw.bb660.sw.epilog981_crit_edge:                  ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981

do.end827:                                        ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981.sink.split

do.end883:                                        ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981.sink.split

do.end939:                                        ; preds = %sw.bb660
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog981.sink.split

sw.epilog981.sink.split:                          ; preds = %do.end939, %do.end883, %do.end827, %sw.bb660.sw.epilog981.sink.split_crit_edge, %sw.bb468, %do.end321
  %.sink1243 = phi i32 [ 3214353, %do.end827 ], [ 5311521, %do.end883 ], [ 5311505, %do.end939 ], [ 3214353, %sw.bb468 ], [ 3214369, %do.end321 ], [ 3214369, %sw.bb660.sw.epilog981.sink.split_crit_edge ]
  %173 = ptrtoint ptr %viu_vd1_fmt_ctrl303 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %.sink1243, ptr %viu_vd1_fmt_ctrl303, align 8
  br label %sw.epilog981

sw.epilog981:                                     ; preds = %sw.epilog981.sink.split, %sw.bb660.sw.epilog981_crit_edge, %meson_overlay_setup_scaler_params.exit.sw.epilog981_crit_edge
  %174 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %format304, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %num_planes, align 1
  %conv983 = zext i8 %177 to i32
  %vd1_planes = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 30
  %178 = ptrtoint ptr %vd1_planes to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv983, ptr %vd1_planes, align 4
  %179 = zext i8 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %177, label %sw.epilog981.sw.epilog1041_crit_edge [
    i8 3, label %sw.bb987
    i8 2, label %sw.epilog981.sw.bb1001_crit_edge
    i8 1, label %sw.epilog981.sw.bb1021_crit_edge
  ]

sw.epilog981.sw.bb1021_crit_edge:                 ; preds = %sw.epilog981
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1021

sw.epilog981.sw.bb1001_crit_edge:                 ; preds = %sw.epilog981
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1001

sw.epilog981.sw.epilog1041_crit_edge:             ; preds = %sw.epilog981
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog1041

sw.bb987:                                         ; preds = %sw.epilog981
  %call988 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %7, i32 noundef 2) #3
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call988, i32 0, i32 1
  %180 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %paddr, align 8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 2
  %182 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx, align 8
  %add = add i32 %183, %181
  %vd1_addr2 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 48
  %184 = ptrtoint ptr %vd1_addr2 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add, ptr %vd1_addr2, align 4
  %arrayidx990 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 2
  %185 = ptrtoint ptr %arrayidx990 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx990, align 8
  %vd1_stride2 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 51
  %187 = ptrtoint ptr %vd1_stride2 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %vd1_stride2, align 8
  %188 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %format304, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %190 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %height, align 4
  %tobool.not.i1219 = icmp eq ptr %189, null
  br i1 %tobool.not.i1219, label %sw.bb987.drm_format_info_plane_height.exit_crit_edge, label %lor.lhs.false.i

sw.bb987.drm_format_info_plane_height.exit_crit_edge: ; preds = %sw.bb987
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_format_info_plane_height.exit

lor.lhs.false.i:                                  ; preds = %sw.bb987
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %189, i32 0, i32 2
  %192 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %193)
  %cmp.not.i = icmp ugt i8 %193, 2
  br i1 %cmp.not.i, label %if.end.i1221, label %lor.lhs.false.i.drm_format_info_plane_height.exit_crit_edge

lor.lhs.false.i.drm_format_info_plane_height.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_format_info_plane_height.exit

if.end.i1221:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %189, i32 0, i32 7
  %194 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %vsub.i, align 1
  %conv6.i = zext i8 %195 to i32
  %div.i1222 = sdiv i32 %191, %conv6.i
  br label %drm_format_info_plane_height.exit

drm_format_info_plane_height.exit:                ; preds = %if.end.i1221, %lor.lhs.false.i.drm_format_info_plane_height.exit_crit_edge, %sw.bb987.drm_format_info_plane_height.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i1222, %if.end.i1221 ], [ 0, %lor.lhs.false.i.drm_format_info_plane_height.exit_crit_edge ], [ 0, %sw.bb987.drm_format_info_plane_height.exit_crit_edge ]
  %vd1_height2 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 54
  %196 = ptrtoint ptr %vd1_height2 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %retval.0.i, ptr %vd1_height2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %add, i32 noundef %186, i32 noundef %retval.0.i) #3
  br label %sw.bb1001

sw.bb1001:                                        ; preds = %drm_format_info_plane_height.exit, %sw.epilog981.sw.bb1001_crit_edge
  %call1002 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %7, i32 noundef 1) #3
  %paddr1003 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call1002, i32 0, i32 1
  %197 = ptrtoint ptr %paddr1003 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %paddr1003, align 8
  %arrayidx1005 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 1
  %199 = ptrtoint ptr %arrayidx1005 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx1005, align 4
  %add1006 = add i32 %200, %198
  %vd1_addr1 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 47
  %201 = ptrtoint ptr %vd1_addr1 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %add1006, ptr %vd1_addr1, align 8
  %arrayidx1009 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 1
  %202 = ptrtoint ptr %arrayidx1009 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx1009, align 4
  %vd1_stride1 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 50
  %204 = ptrtoint ptr %vd1_stride1 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %vd1_stride1, align 4
  %205 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %format304, align 8
  %height1012 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %207 = ptrtoint ptr %height1012 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %height1012, align 4
  %tobool.not.i1223 = icmp eq ptr %206, null
  br i1 %tobool.not.i1223, label %sw.bb1001.drm_format_info_plane_height.exit1233_crit_edge, label %lor.lhs.false.i1227

sw.bb1001.drm_format_info_plane_height.exit1233_crit_edge: ; preds = %sw.bb1001
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_format_info_plane_height.exit1233

lor.lhs.false.i1227:                              ; preds = %sw.bb1001
  %num_planes.i1224 = getelementptr inbounds %struct.drm_format_info, ptr %206, i32 0, i32 2
  %209 = ptrtoint ptr %num_planes.i1224 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %num_planes.i1224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %210)
  %cmp.not.i1226 = icmp ugt i8 %210, 1
  br i1 %cmp.not.i1226, label %if.end.i1228, label %lor.lhs.false.i1227.drm_format_info_plane_height.exit1233_crit_edge

lor.lhs.false.i1227.drm_format_info_plane_height.exit1233_crit_edge: ; preds = %lor.lhs.false.i1227
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_format_info_plane_height.exit1233

if.end.i1228:                                     ; preds = %lor.lhs.false.i1227
  call void @__sanitizer_cov_trace_pc() #5
  %vsub.i1229 = getelementptr inbounds %struct.drm_format_info, ptr %206, i32 0, i32 7
  %211 = ptrtoint ptr %vsub.i1229 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %vsub.i1229, align 1
  %conv6.i1230 = zext i8 %212 to i32
  %div.i1231 = sdiv i32 %208, %conv6.i1230
  br label %drm_format_info_plane_height.exit1233

drm_format_info_plane_height.exit1233:            ; preds = %if.end.i1228, %lor.lhs.false.i1227.drm_format_info_plane_height.exit1233_crit_edge, %sw.bb1001.drm_format_info_plane_height.exit1233_crit_edge
  %retval.0.i1232 = phi i32 [ %div.i1231, %if.end.i1228 ], [ 0, %lor.lhs.false.i1227.drm_format_info_plane_height.exit1233_crit_edge ], [ 0, %sw.bb1001.drm_format_info_plane_height.exit1233_crit_edge ]
  %vd1_height1 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 53
  %213 = ptrtoint ptr %vd1_height1 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %retval.0.i1232, ptr %vd1_height1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %add1006, i32 noundef %203, i32 noundef %retval.0.i1232) #3
  br label %sw.bb1021

sw.bb1021:                                        ; preds = %drm_format_info_plane_height.exit1233, %sw.epilog981.sw.bb1021_crit_edge
  %call1022 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %7, i32 noundef 0) #3
  %paddr1023 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call1022, i32 0, i32 1
  %214 = ptrtoint ptr %paddr1023 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %paddr1023, align 8
  %offsets1024 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 7
  %216 = ptrtoint ptr %offsets1024 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %offsets1024, align 8
  %add1026 = add i32 %217, %215
  %vd1_addr0 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 46
  %218 = ptrtoint ptr %vd1_addr0 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add1026, ptr %vd1_addr0, align 4
  %pitches1028 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %219 = ptrtoint ptr %pitches1028 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pitches1028, align 8
  %vd1_stride0 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 49
  %221 = ptrtoint ptr %vd1_stride0 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %vd1_stride0, align 8
  %222 = ptrtoint ptr %format304 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %format304, align 8
  %tobool.not.i1234 = icmp eq ptr %223, null
  br i1 %tobool.not.i1234, label %sw.bb1021.drm_format_info_plane_height.exit1241_crit_edge, label %lor.lhs.false.i1238

sw.bb1021.drm_format_info_plane_height.exit1241_crit_edge: ; preds = %sw.bb1021
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_format_info_plane_height.exit1241

lor.lhs.false.i1238:                              ; preds = %sw.bb1021
  call void @__sanitizer_cov_trace_pc() #5
  %height1032 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %224 = ptrtoint ptr %height1032 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %height1032, align 4
  %num_planes.i1235 = getelementptr inbounds %struct.drm_format_info, ptr %223, i32 0, i32 2
  %226 = ptrtoint ptr %num_planes.i1235 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %num_planes.i1235, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp.not.i1237.not = icmp eq i8 %227, 0
  %spec.select1242 = select i1 %cmp.not.i1237.not, i32 0, i32 %225
  br label %drm_format_info_plane_height.exit1241

drm_format_info_plane_height.exit1241:            ; preds = %lor.lhs.false.i1238, %sw.bb1021.drm_format_info_plane_height.exit1241_crit_edge
  %retval.0.i1240 = phi i32 [ 0, %sw.bb1021.drm_format_info_plane_height.exit1241_crit_edge ], [ %spec.select1242, %lor.lhs.false.i1238 ]
  %vd1_height0 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 52
  %228 = ptrtoint ptr %vd1_height0 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %retval.0.i1240, ptr %vd1_height0, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %add1026, i32 noundef %220, i32 noundef %retval.0.i1240) #3
  br label %sw.epilog1041

sw.epilog1041:                                    ; preds = %drm_format_info_plane_height.exit1241, %sw.epilog981.sw.epilog1041_crit_edge
  %vd1_afbc1043 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 29
  %229 = ptrtoint ptr %vd1_afbc1043 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %vd1_afbc1043, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool1044.not = icmp eq i8 %230, 0
  br i1 %tobool1044.not, label %sw.epilog1041.if.end1084_crit_edge, label %if.then1045

sw.epilog1041.if.end1084_crit_edge:               ; preds = %sw.epilog1041
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1084

if.then1045:                                      ; preds = %sw.epilog1041
  %vd1_afbc_mode1047 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 55
  %231 = ptrtoint ptr %vd1_afbc_mode1047 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %vd1_afbc_mode1047, align 8
  %and1048 = and i32 %232, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1048)
  %tobool1049.not = icmp eq i32 %and1048, 0
  br i1 %tobool1049.not, label %if.else1055, label %if.then1050

if.then1050:                                      ; preds = %if.then1045
  call void @__sanitizer_cov_trace_pc() #5
  %vd1_addr01052 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 46
  %233 = ptrtoint ptr %vd1_addr01052 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %vd1_addr01052, align 4
  %shr = lshr i32 %234, 4
  %vd1_afbc_head_addr = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 57
  %235 = ptrtoint ptr %vd1_afbc_head_addr to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %shr, ptr %vd1_afbc_head_addr, align 8
  %vd1_afbc_body_addr = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 58
  %236 = ptrtoint ptr %vd1_afbc_body_addr to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %vd1_afbc_body_addr, align 4
  br label %if.end1084

if.else1055:                                      ; preds = %if.then1045
  call void @__sanitizer_cov_trace_pc() #5
  %and1058 = and i32 %232, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1058)
  %tobool1059.not = icmp eq i32 %and1058, 0
  %spec.select = select i1 %tobool1059.not, i32 4096, i32 3072
  %vd1_stride01063 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 49
  %237 = ptrtoint ptr %vd1_stride01063 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %vd1_stride01063, align 8
  %add1064 = add i32 %238, 63
  %div1217 = lshr i32 %add1064, 6
  %vd1_height01067 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 52
  %239 = ptrtoint ptr %vd1_height01067 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %vd1_height01067, align 4
  %add1068 = add i32 %240, 31
  %div10701218 = lshr i32 %add1068, 5
  %mul = mul i32 %div1217, %spec.select
  %mul1071 = mul i32 %mul, %div10701218
  %vd1_addr01073 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 46
  %241 = ptrtoint ptr %vd1_addr01073 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %vd1_addr01073, align 4
  %shr1074 = lshr i32 %242, 4
  %vd1_afbc_body_addr1076 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 58
  %243 = ptrtoint ptr %vd1_afbc_body_addr1076 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %shr1074, ptr %vd1_afbc_body_addr1076, align 4
  %add1079 = add i32 %mul1071, %242
  %shr1080 = lshr i32 %add1079, 4
  %vd1_afbc_head_addr1082 = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 57
  %244 = ptrtoint ptr %vd1_afbc_head_addr1082 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %shr1080, ptr %vd1_afbc_head_addr1082, align 8
  br label %if.end1084

if.end1084:                                       ; preds = %if.else1055, %if.then1050, %sw.epilog1041.if.end1084_crit_edge
  %vd1_enabled = getelementptr inbounds %struct.meson_drm, ptr %9, i32 0, i32 15, i32 27
  %245 = ptrtoint ptr %vd1_enabled to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %vd1_enabled, align 8
  %246 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %drm, align 4
  %event_lock1087 = getelementptr inbounds %struct.drm_device, ptr %247, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock1087, i32 noundef %call7) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_overlay_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_overlay, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %vd1_enabled = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 15, i32 27
  %2 = ptrtoint ptr %vd1_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vd1_enabled, align 8
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 3
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr2 = getelementptr i8, ptr %6, i32 30700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #3, !srcloc !56
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 30704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #3, !srcloc !56
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %10, i32 51200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #3, !srcloc !56
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %12, i32 51328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #3, !srcloc !56
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr10 = getelementptr i8, ptr %6, i32 29848
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #3, !srcloc !57
  %14 = and i32 %13, -4456449
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 8
  %add.ptr14 = getelementptr i8, ptr %16, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %14) #3, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 838, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 853, i32 30}
!4 = !{ptr @meson_overlay_funcs, !5, !"meson_overlay_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 799, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 771, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 778, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 793, i32 2}
!12 = !{ptr @supported_drm_formats, !13, !"supported_drm_formats", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 809, i32 23}
!14 = !{ptr @format_modifiers, !15, !"format_modifiers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 822, i32 23}
!16 = !{ptr @meson_overlay_helper_funcs, !17, !"meson_overlay_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 746, i32 44}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 658, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 670, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 682, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 250, i32 3}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 267, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 269, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 271, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 280, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 285, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 330, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 338, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 373, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 384, i32 2}
!44 = !{ptr @skip_tab, !45, !"skip_tab", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/meson/meson_overlay.c", i32 195, i32 22}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{i64 6962815}
!57 = !{i64 6963233}
