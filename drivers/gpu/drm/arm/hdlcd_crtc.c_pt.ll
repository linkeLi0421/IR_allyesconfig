; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/hdlcd_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/hdlcd_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.simplefb_format = type { ptr, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.hdlcd_drm_private = type { ptr, ptr, %struct.drm_crtc, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@hdlcd_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @hdlcd_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdlcd_crtc_enable_vblank, ptr @hdlcd_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@hdlcd_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @hdlcd_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdlcd_crtc_atomic_begin, ptr null, ptr @hdlcd_crtc_atomic_enable, ptr @hdlcd_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@supported_formats = internal constant { [10 x %struct.simplefb_format], [136 x i8] } { [10 x %struct.simplefb_format] [%struct.simplefb_format { ptr @.str, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 909199186 }, %struct.simplefb_format { ptr @.str.1, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 6, i32 5, i32 0 }, %struct.fb_bitfield { i32 1, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, i32 892420434 }, %struct.simplefb_format { ptr @.str.2, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 892424792 }, %struct.simplefb_format { ptr @.str.3, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 892424769 }, %struct.simplefb_format { ptr @.str.4, i32 24, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875710290 }, %struct.simplefb_format { ptr @.str.5, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875713112 }, %struct.simplefb_format { ptr @.str.6, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875713089 }, %struct.simplefb_format { ptr @.str.7, i32 32, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875708993 }, %struct.simplefb_format { ptr @.str.8, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 808669784 }, %struct.simplefb_format { ptr @.str.9, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield { i32 30, i32 2, i32 0 }, i32 808669761 }], [136 x i8] zeroinitializer }, align 32
@hdlcd_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hdlcd_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @hdlcd_plane_atomic_check, ptr @hdlcd_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r5g6b5\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r5g5b5a1\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x1r5g5b5\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a1r5g5b5\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r8g8b8\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x8r8g8b8\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a8r8g8b8\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a8b8g8r8\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"x2r10g10b10\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a2r10g10b10\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid source width: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/arm/hdlcd_crtc.c\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"hdlcd_crtc_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 66, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"hdlcd_crtc_helper_funcs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 224, i32 43 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"supported_formats\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 77, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"hdlcd_plane_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 290, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"hdlcd_plane_helper_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 285, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 77, i32 53 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 243, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [36 x i8] c"../drivers/gpu/drm/arm/hdlcd_crtc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 98, i32 6 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @hdlcd_crtc_funcs, ptr @hdlcd_crtc_helper_funcs, ptr @supported_formats, ptr @hdlcd_plane_funcs, ptr @hdlcd_plane_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcd_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcd_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_formats to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcd_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcd_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdlcd_setup_crtc(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %formats.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %formats.i) #4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 528, i32 noundef 3520) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %hdlcd_plane_init.exit.thread, label %for.body.preheader.i

hdlcd_plane_init.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %formats.i) #4
  br label %if.then

for.body.preheader.i:                             ; preds = %entry
  %4 = ptrtoint ptr %formats.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 909199186, ptr %formats.i, align 4
  %arrayidx2.1.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 892420434, ptr %arrayidx2.1.i, align 4
  %arrayidx2.2.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 892424792, ptr %arrayidx2.2.i, align 4
  %arrayidx2.3.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 892424769, ptr %arrayidx2.3.i, align 4
  %arrayidx2.4.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 875710290, ptr %arrayidx2.4.i, align 4
  %arrayidx2.5.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 875713112, ptr %arrayidx2.5.i, align 4
  %arrayidx2.6.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 6
  %10 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 875713089, ptr %arrayidx2.6.i, align 4
  %arrayidx2.7.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 875708993, ptr %arrayidx2.7.i, align 4
  %arrayidx2.8.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx2.8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 808669784, ptr %arrayidx2.8.i, align 4
  %arrayidx2.9.i = getelementptr inbounds [10 x i32], ptr %formats.i, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx2.9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 808669761, ptr %arrayidx2.9.i, align 4
  %call3.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call.i.i, i32 noundef 255, ptr noundef nonnull @hdlcd_plane_funcs, ptr noundef nonnull %formats.i, i32 noundef 10, ptr noundef null, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = inttoptr i32 %call3.i to ptr
  br label %hdlcd_plane_init.exit

if.end7.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %call.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hdlcd_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %plane8.i = getelementptr inbounds %struct.hdlcd_drm_private, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %plane8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %plane8.i, align 8
  br label %hdlcd_plane_init.exit

hdlcd_plane_init.exit:                            ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi ptr [ %14, %if.then5.i ], [ %call.i.i, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %formats.i) #4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %hdlcd_plane_init.exit.if.then_crit_edge, label %if.end

hdlcd_plane_init.exit.if.then_crit_edge:          ; preds = %hdlcd_plane_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %hdlcd_plane_init.exit.if.then_crit_edge, %hdlcd_plane_init.exit.thread
  %retval.0.i17 = phi ptr [ inttoptr (i32 -12 to ptr), %hdlcd_plane_init.exit.thread ], [ %retval.0.i, %hdlcd_plane_init.exit.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i17 to i32
  br label %cleanup

if.end:                                           ; preds = %hdlcd_plane_init.exit
  %crtc = getelementptr inbounds %struct.hdlcd_drm_private, ptr %1, i32 0, i32 2
  %call3 = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm, ptr noundef %crtc, ptr noundef %retval.0.i, ptr noundef null, ptr noundef nonnull @hdlcd_crtc_funcs, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i = getelementptr inbounds %struct.hdlcd_drm_private, ptr %1, i32 0, i32 2, i32 19
  %18 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hdlcd_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcd_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %src_h1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %src_h1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_h1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %7)
  %cmp = icmp ugt i32 %7, 268435455
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 19
  %10 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp234 = icmp sgt i32 %11, 0
  br i1 %cmp234, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %7, 16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %shr) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %i.035
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %i.035, i32 3
  %16 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.end13_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  %call14 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %17, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end13, %land.lhs.true10.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ %call14, %if.end13 ], [ -22, %land.lhs.true10.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %8 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %10 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y1.i, align 4
  %call3 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %7, ptr noundef %5, i32 noundef 0) #4
  %12 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pitches, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #4, !srcloc !36
  %21 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pitches, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 8
  %add.ptr.i19 = getelementptr i8, ptr %25, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %23) #4, !srcloc !36
  %26 = xor i32 %11, -1
  %sub = add i32 %9, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %sub) #4
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 8
  %add.ptr.i20 = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %27) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %call3) #4
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %15, align 8
  %add.ptr.i21 = getelementptr i8, ptr %32, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %30) #4, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_crtc_cleanup(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !36
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcd_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #4, !srcloc !36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #4, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcd_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %clk = getelementptr i8, ptr %crtc, i32 -4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef %mul) #4
  %sub = sub i32 %call, %mul
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %mul3 = mul i32 %4, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3, i32 %mul)
  %cmp4 = icmp sgt i32 %mul3, %mul
  %retval.0 = select i1 %cmp4, i32 14, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %event2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %event2, align 4
  %5 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc, align 8
  %event_lock7 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock7) #4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %clk = getelementptr i8, ptr %crtc, i32 -4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 23
  %4 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv.i = zext i16 %5 to i32
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 20
  %6 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv1.i = zext i16 %7 to i32
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 25
  %8 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %crtc_vtotal.i, align 4
  %conv2.i = zext i16 %9 to i32
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 24
  %10 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv3.i = zext i16 %11 to i32
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 16
  %12 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv10.i = zext i16 %13 to i32
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 13
  %14 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv11.i = zext i16 %15 to i32
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 18
  %16 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_htotal.i, align 2
  %conv13.i = zext i16 %17 to i32
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 17
  %18 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv14.i = zext i16 %19 to i32
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i4, i32 12, i32 14
  %and22.i = lshr i32 %21, 2
  %22 = and i32 %and22.i, 1
  %23 = or i32 %spec.select.i, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 269418496) #4, !srcloc !36
  %26 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv28.i = zext i16 %27 to i32
  %sub29.i = add nsw i32 %conv28.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub29.i) #4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i84.i = getelementptr i8, ptr %30, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 %28) #4, !srcloc !36
  %31 = xor i32 %conv3.i, -1
  %sub31.i = add nsw i32 %31, %conv2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %32 = tail call i32 @llvm.bswap.i32(i32 %sub31.i) #4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i85.i = getelementptr i8, ptr %34, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 %32) #4, !srcloc !36
  %35 = xor i32 %conv1.i, -1
  %sub33.i = add nsw i32 %35, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub33.i) #4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i86.i = getelementptr i8, ptr %38, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %36) #4, !srcloc !36
  %39 = xor i32 %conv.i, -1
  %sub35.i = add nsw i32 %conv3.i, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %40 = tail call i32 @llvm.bswap.i32(i32 %sub35.i) #4
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i87.i = getelementptr i8, ptr %42, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %40) #4, !srcloc !36
  %43 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv37.i = zext i16 %44 to i32
  %sub38.i = add nsw i32 %conv37.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %45 = tail call i32 @llvm.bswap.i32(i32 %sub38.i) #4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i88.i = getelementptr i8, ptr %47, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %45) #4, !srcloc !36
  %48 = xor i32 %conv14.i, -1
  %sub40.i = add nsw i32 %48, %conv13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %49 = tail call i32 @llvm.bswap.i32(i32 %sub40.i) #4
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i89.i = getelementptr i8, ptr %51, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %49) #4, !srcloc !36
  %52 = xor i32 %conv11.i, -1
  %sub42.i = add nsw i32 %52, %conv10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %53 = tail call i32 @llvm.bswap.i32(i32 %sub42.i) #4
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i90.i = getelementptr i8, ptr %55, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %53) #4, !srcloc !36
  %56 = xor i32 %conv10.i, -1
  %sub44.i = add nsw i32 %conv14.i, %56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %57 = tail call i32 @llvm.bswap.i32(i32 %sub44.i) #4
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i91.i = getelementptr i8, ptr %59, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %57) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %60 = shl nuw nsw i32 %23, 24
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i92.i = getelementptr i8, ptr %62, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %60) #4, !srcloc !36
  %primary.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %63 = ptrtoint ptr %primary.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %primary.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.drm_plane, ptr %64, i32 0, i32 19
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state.i.i, align 4
  %fb1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %fb1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fb1.i.i, align 4
  %format2.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %format2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %format2.i.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909199186, i32 %72)
  %cmp4.i.i = icmp eq i32 %72, 909199186
  %spec.select.i.i = select i1 %cmp4.i.i, ptr @supported_formats, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 892420434, i32 %72)
  %cmp4.1.i.i = icmp eq i32 %72, 892420434
  %spec.select.1.i.i = select i1 %cmp4.1.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 1), ptr %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 892424792, i32 %72)
  %cmp4.2.i.i = icmp eq i32 %72, 892424792
  %spec.select.2.i.i = select i1 %cmp4.2.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 2), ptr %spec.select.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 892424769, i32 %72)
  %cmp4.3.i.i = icmp eq i32 %72, 892424769
  %spec.select.3.i.i = select i1 %cmp4.3.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 3), ptr %spec.select.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 875710290, i32 %72)
  %cmp4.4.i.i = icmp eq i32 %72, 875710290
  %spec.select.4.i.i = select i1 %cmp4.4.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 4), ptr %spec.select.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %72)
  %cmp4.5.i.i = icmp eq i32 %72, 875713112
  %spec.select.5.i.i = select i1 %cmp4.5.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 5), ptr %spec.select.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713089, i32 %72)
  %cmp4.6.i.i = icmp eq i32 %72, 875713089
  %spec.select.6.i.i = select i1 %cmp4.6.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 6), ptr %spec.select.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 875708993, i32 %72)
  %cmp4.7.i.i = icmp eq i32 %72, 875708993
  %spec.select.7.i.i = select i1 %cmp4.7.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 7), ptr %spec.select.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 808669784, i32 %72)
  %cmp4.8.i.i = icmp eq i32 %72, 808669784
  %spec.select.8.i.i = select i1 %cmp4.8.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 8), ptr %spec.select.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 808669761, i32 %72)
  %cmp4.9.i.i = icmp eq i32 %72, 808669761
  %spec.select.9.i.i = select i1 %cmp4.9.i.i, ptr getelementptr inbounds ([10 x %struct.simplefb_format], ptr @supported_formats, i32 0, i32 9), ptr %spec.select.8.i.i
  %tobool.not.i.i = icmp eq ptr %spec.select.9.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end31.i.i, !prof !39

do.end.i.i:                                       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 98, i32 noundef 9, ptr noundef null) #4
  br label %hdlcd_crtc_mode_set_nofb.exit

if.end31.i.i:                                     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bits_per_pixel.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bits_per_pixel.i.i, align 4
  %75 = add i32 %74, -1
  %shl.i.i = and i32 %75, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %76 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #4
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %78, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %76) #4, !srcloc !36
  %red.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %red.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %red.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.i.i, align 4
  %and.i.i = shl i32 %82, 8
  %shl33.i.i = and i32 %and.i.i, 3840
  %or.i.i = or i32 %80, %shl33.i.i
  %or34.i.i = or i32 %or.i.i, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %83 = tail call i32 @llvm.bswap.i32(i32 %or34.i.i) #4
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %85, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %83) #4, !srcloc !36
  %green.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %green.i.i, align 4
  %length37.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %length37.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length37.i.i, align 4
  %and38.i.i = shl i32 %89, 8
  %shl39.i.i = and i32 %and38.i.i, 3840
  %or40.i.i = or i32 %shl39.i.i, %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %90 = tail call i32 @llvm.bswap.i32(i32 %or40.i.i) #4
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i3.i.i = getelementptr i8, ptr %92, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %90) #4, !srcloc !36
  %blue.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %blue.i.i, align 4
  %length43.i.i = getelementptr inbounds %struct.simplefb_format, ptr %spec.select.9.i.i, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %length43.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length43.i.i, align 4
  %and44.i.i = shl i32 %96, 8
  %shl45.i.i = and i32 %and44.i.i, 3840
  %or46.i.i = or i32 %shl45.i.i, %94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %97 = tail call i32 @llvm.bswap.i32(i32 %or46.i.i) #4
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %99, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %97) #4, !srcloc !36
  br label %hdlcd_crtc_mode_set_nofb.exit

hdlcd_crtc_mode_set_nofb.exit:                    ; preds = %if.end31.i.i, %do.end.i.i
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk, align 4
  %crtc_clock.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 12
  %102 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crtc_clock.i, align 4
  %mul.i = mul i32 %103, 1000
  %call48.i = tail call i32 @clk_set_rate(ptr noundef %101, i32 noundef %mul.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i5 = getelementptr i8, ptr %105, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 16777216) #4, !srcloc !36
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcd_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !36
  %clk = getelementptr i8, ptr %crtc, i32 -4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 77, i32 53}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @supported_formats, !12, !"supported_formats", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 77, i32 31}
!13 = !{ptr @hdlcd_plane_funcs, !14, !"hdlcd_plane_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 290, i32 37}
!15 = !{ptr @hdlcd_plane_helper_funcs, !16, !"hdlcd_plane_helper_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 285, i32 44}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 243, i32 3}
!19 = !{ptr @hdlcd_crtc_funcs, !20, !"hdlcd_crtc_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 66, i32 36}
!21 = !{ptr @hdlcd_crtc_helper_funcs, !22, !"hdlcd_crtc_helper_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 224, i32 43}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/arm/hdlcd_crtc.c", i32 98, i32 6}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = !{i64 2156864924}
!36 = !{i64 4530616}
!37 = !{i64 4531034}
!38 = !{i64 2156865760}
!39 = !{!"branch_weights", i32 1, i32 2000}
