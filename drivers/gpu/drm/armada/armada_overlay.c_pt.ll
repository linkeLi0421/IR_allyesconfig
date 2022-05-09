; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_overlay.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_overlay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.armada_private = type { %struct.drm_device, ptr, [2 x ptr], %struct.drm_mm, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.armada_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr, [2 x %struct.anon.89], i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i8, ptr, [32 x %struct.armada_regs], ptr, i32 }
%struct.anon.89 = type { i32, i32, i32 }
%struct.armada_regs = type { i32, i32, i32 }
%struct.armada_plane_state = type { %struct.drm_plane_state, i32, i32, i32, [2 x [3 x i32]], [3 x i16], i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.armada_framebuffer = type { %struct.drm_framebuffer, i8, i8 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.armada_overlay_state = type { %struct.armada_plane_state, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@armada_overlay_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @armada_drm_plane_atomic_check, ptr @armada_drm_overlay_plane_atomic_update, ptr @armada_drm_overlay_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@armada_ovl_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @armada_overlay_plane_update, ptr @drm_atomic_helper_disable_plane, ptr @armada_ovl_plane_destroy, ptr @armada_overlay_reset, ptr null, ptr @armada_overlay_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr @armada_overlay_set_property, ptr @armada_overlay_get_property, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@armada_ovl_formats = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 1498831189, i32 1448695129, i32 842093913, i32 842094169, i32 909202777, i32 909203033, i32 1498765654, i32 1431918169, i32 875713089, i32 875708993, i32 875713112, i32 875709016, i32 875710290, i32 875710274, i32 892424769, i32 892420673, i32 909199186, i32 909199170], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"colorkey\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"colorkey_min\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"colorkey_max\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"colorkey_val\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"colorkey_alpha\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"colorkey_mode\00", [18 x i8] zeroinitializer }, align 32
@armada_drm_colorkey_enum_list = internal constant { [8 x %struct.drm_prop_enum_list], [32 x i8] } { [8 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.9 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.10 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.11 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.12 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.13 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.14 }, %struct.drm_prop_enum_list { i32 6, ptr @.str.15 }, %struct.drm_prop_enum_list { i32 7, ptr @.str.16 }], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brightness\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"contrast\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saturation\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Y component\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"U component\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V component\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"R component\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"G component\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"B component\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[PLANE:%d:%s]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/armada/armada_overlay.c\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[PLANE:%d:%s] is on [CRTC:%d:%s] with [FB:%d] visible %u->%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[PLANE:%d:%s] was on [CRTC:%d:%s] with [FB:%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@__tracepoint_armada_ovl_plane_update = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/armada/armada_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_armada_ovl_plane_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [34 x i8] c"armada_overlay_plane_helper_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 249, i32 44 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"armada_ovl_plane_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 468, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"armada_ovl_formats\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 479, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 519, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 521, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 523, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 525, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 527, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 529, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant [30 x i8] c"armada_drm_colorkey_enum_list\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 500, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 533, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 535, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 537, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 501, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 502, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 503, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 504, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 505, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 506, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 507, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 508, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 80, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 82, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 2 }
@___asan_gen_.97 = private constant [43 x i8] c"../drivers/gpu/drm/armada/armada_overlay.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 233, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/armada/armada_trace.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 30, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @armada_overlay_plane_helper_funcs, ptr @armada_ovl_plane_funcs, ptr @armada_ovl_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @armada_drm_colorkey_enum_list, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_overlay_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_ovl_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_ovl_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_drm_colorkey_enum_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_overlay_plane_create(ptr noundef %dev, i32 noundef %crtcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %colorkey_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %colorkey_prop.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %colorkey_prop.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 16777215) #7
  %2 = ptrtoint ptr %colorkey_prop.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %colorkey_prop.i, align 4
  %call2.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 16777215) #7
  %colorkey_min_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %colorkey_min_prop.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %colorkey_min_prop.i, align 8
  %call3.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 16777215) #7
  %colorkey_max_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %colorkey_max_prop.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3.i, ptr %colorkey_max_prop.i, align 4
  %call4.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 16777215) #7
  %colorkey_val_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %colorkey_val_prop.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4.i, ptr %colorkey_val_prop.i, align 8
  %call5.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 0, i64 noundef 16777215) #7
  %colorkey_alpha_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %colorkey_alpha_prop.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i, ptr %colorkey_alpha_prop.i, align 4
  %call6.i = tail call ptr @drm_property_create_enum(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @armada_drm_colorkey_enum_list, i32 noundef 8) #7
  %colorkey_mode_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %colorkey_mode_prop.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %colorkey_mode_prop.i, align 8
  %call7.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 511) #7
  %brightness_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %brightness_prop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %brightness_prop.i, align 4
  %call8.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 0, i64 noundef 32767) #7
  %contrast_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 12
  %9 = ptrtoint ptr %contrast_prop.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %contrast_prop.i, align 8
  %call9.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 32767) #7
  %saturation_prop.i = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 13
  %10 = ptrtoint ptr %saturation_prop.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %saturation_prop.i, align 4
  %11 = ptrtoint ptr %colorkey_prop.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %colorkey_prop.i, align 4
  %tobool11.not.i = icmp eq ptr %12, null
  br i1 %tobool11.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 528) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armada_overlay_plane_helper_funcs, ptr %helper_private.i, align 8
  %call5 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %crtcs, ptr noundef nonnull @armada_ovl_plane_funcs, ptr noundef nonnull @armada_ovl_formats, i32 noundef 18, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %colorkey_prop.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %colorkey_prop.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %16, i64 noundef 66046) #7
  %colorkey_min_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %colorkey_min_prop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %colorkey_min_prop, align 8
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %18, i64 noundef 66046) #7
  %colorkey_max_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %colorkey_max_prop to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %colorkey_max_prop, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %20, i64 noundef 66046) #7
  %colorkey_val_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 8
  %21 = ptrtoint ptr %colorkey_val_prop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %colorkey_val_prop, align 8
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %22, i64 noundef 66046) #7
  %colorkey_alpha_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 9
  %23 = ptrtoint ptr %colorkey_alpha_prop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %colorkey_alpha_prop, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %24, i64 noundef 0) #7
  %colorkey_mode_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %colorkey_mode_prop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %colorkey_mode_prop, align 8
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %26, i64 noundef 3) #7
  %brightness_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 11
  %27 = ptrtoint ptr %brightness_prop to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %brightness_prop, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %28, i64 noundef 256) #7
  %contrast_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 12
  %29 = ptrtoint ptr %contrast_prop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %contrast_prop, align 8
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %30, i64 noundef 16384) #7
  %saturation_prop = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 13
  %31 = ptrtoint ptr %saturation_prop to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %saturation_prop, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %32, i64 noundef 16384) #7
  %call9 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call9, %if.end8 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_drm_plane_atomic_check(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_overlay_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %9, ptr noundef %11) #7
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %do.end, label %if.end25, !prof !68

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 82, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %base30 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base30, align 8
  %name33 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name33, align 8
  %base35 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base35, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %26 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %visible, align 4, !range !69
  %28 = zext i8 %27 to i32
  %visible38 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %29 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %visible38, align 4, !range !69
  %31 = zext i8 %30 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef %31) #7
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 4
  %regs43 = getelementptr inbounds %struct.armada_crtc, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %regs43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs43, align 4
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %33, i32 0, i32 24
  %36 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regs_idx, align 8
  %add.ptr44 = getelementptr %struct.armada_regs, ptr %35, i32 %37
  %38 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool46.not = icmp eq i8 %39, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.end25.if.end57_crit_edge

if.end25.if.end57_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end25
  %40 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool48.not = icmp eq i8 %41, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end57_crit_edge, label %do.body51

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.body51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 420, ptr %add.ptr44, align 4
  %mask = getelementptr %struct.armada_regs, ptr %35, i32 %37, i32 1
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -7, ptr %mask, align 4
  %val54 = getelementptr %struct.armada_regs, ptr %35, i32 %37, i32 2
  %44 = ptrtoint ptr %val54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %val54, align 4
  br label %if.end57

if.end57:                                         ; preds = %do.body51, %land.lhs.true.if.end57_crit_edge, %if.end25.if.end57_crit_edge
  %idx.0 = phi i32 [ 0, %if.end25.if.end57_crit_edge ], [ 1, %do.body51 ], [ 0, %land.lhs.true.if.end57_crit_edge ]
  %src_hw = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 1
  %45 = ptrtoint ptr %src_hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_hw, align 4
  %src_hw64 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 1
  %47 = ptrtoint ptr %src_hw64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src_hw64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.not = icmp eq i32 %48, %46
  br i1 %cmp.not, label %if.end57.if.end78_crit_edge, label %do.body67

if.end57.if.end78_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.body67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx69 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.0
  %49 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 236, ptr %arrayidx69, align 4
  %mask72 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx69, i32 0, i32 1
  %50 = ptrtoint ptr %mask72 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mask72, align 4
  %val74 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx69, i32 0, i32 2
  %51 = ptrtoint ptr %val74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %46, ptr %val74, align 4
  %inc75 = add nuw nsw i32 %idx.0, 1
  br label %if.end78

if.end78:                                         ; preds = %do.body67, %if.end57.if.end78_crit_edge
  %idx.1 = phi i32 [ %inc75, %do.body67 ], [ %idx.0, %if.end57.if.end78_crit_edge ]
  %dst_yx = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 2
  %52 = ptrtoint ptr %dst_yx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst_yx, align 4
  %dst_yx85 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 2
  %54 = ptrtoint ptr %dst_yx85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst_yx85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp86.not = icmp eq i32 %55, %53
  br i1 %cmp86.not, label %if.end78.if.end100_crit_edge, label %do.body89

if.end78.if.end100_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.body89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx91 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.1
  %56 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 232, ptr %arrayidx91, align 4
  %mask94 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx91, i32 0, i32 1
  %57 = ptrtoint ptr %mask94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %mask94, align 4
  %val96 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx91, i32 0, i32 2
  %58 = ptrtoint ptr %val96 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %53, ptr %val96, align 4
  %inc97 = add nuw nsw i32 %idx.1, 1
  br label %if.end100

if.end100:                                        ; preds = %do.body89, %if.end78.if.end100_crit_edge
  %idx.2 = phi i32 [ %inc97, %do.body89 ], [ %idx.1, %if.end78.if.end100_crit_edge ]
  %dst_hw = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 3
  %59 = ptrtoint ptr %dst_hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dst_hw, align 4
  %dst_hw107 = getelementptr inbounds %struct.armada_plane_state, ptr %5, i32 0, i32 3
  %61 = ptrtoint ptr %dst_hw107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst_hw107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp108.not = icmp eq i32 %62, %60
  br i1 %cmp108.not, label %if.end100.if.end122_crit_edge, label %do.body111

if.end100.if.end122_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

do.body111:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx113 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.2
  %63 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 240, ptr %arrayidx113, align 4
  %mask116 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx113, i32 0, i32 1
  %64 = ptrtoint ptr %mask116 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %mask116, align 4
  %val118 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx113, i32 0, i32 2
  %65 = ptrtoint ptr %val118 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %60, ptr %val118, align 4
  %inc119 = add nuw nsw i32 %idx.2, 1
  br label %if.end122

if.end122:                                        ; preds = %do.body111, %if.end100.if.end122_crit_edge
  %idx.3 = phi i32 [ %inc119, %do.body111 ], [ %idx.2, %if.end100.if.end122_crit_edge ]
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %66 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %src, align 4
  %src123 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20
  %68 = ptrtoint ptr %src123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp125.not = icmp eq i32 %67, %69
  br i1 %cmp125.not, label %lor.lhs.false127, label %if.end122.if.then142_crit_edge

if.end122.if.then142_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false127:                                 ; preds = %if.end122
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %70 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %y1, align 4
  %y1130 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 1
  %72 = ptrtoint ptr %y1130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %y1130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp131.not = icmp eq i32 %71, %73
  br i1 %cmp131.not, label %lor.lhs.false133, label %lor.lhs.false127.if.then142_crit_edge

lor.lhs.false127.if.then142_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false133:                                 ; preds = %lor.lhs.false127
  %fb134 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %74 = ptrtoint ptr %fb134 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fb134, align 4
  %76 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fb, align 4
  %cmp136.not = icmp eq ptr %75, %77
  br i1 %cmp136.not, label %lor.lhs.false138, label %lor.lhs.false133.if.then142_crit_edge

lor.lhs.false133.if.then142_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false138:                                 ; preds = %lor.lhs.false133
  %78 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %crtc, align 4
  %state140 = getelementptr inbounds %struct.drm_crtc, ptr %79, i32 0, i32 22
  %80 = ptrtoint ptr %state140 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %state140, align 4
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load = load i8, ptr %mode_changed, align 2
  %83 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %bf.cast.not = icmp eq i8 %83, 0
  br i1 %bf.cast.not, label %if.else, label %lor.lhs.false138.if.then142_crit_edge

lor.lhs.false138.if.then142_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

if.then142:                                       ; preds = %lor.lhs.false138.if.then142_crit_edge, %lor.lhs.false133.if.then142_crit_edge, %lor.lhs.false127.if.then142_crit_edge, %if.end122.if.then142_crit_edge
  %arrayidx145 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.3
  %84 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 192, ptr %arrayidx145, align 4
  %mask148 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx145, i32 0, i32 1
  %85 = ptrtoint ptr %mask148 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %mask148, align 4
  %addrs = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 4
  %86 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addrs, align 4
  %val155 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx145, i32 0, i32 2
  %88 = ptrtoint ptr %val155 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %val155, align 4
  %inc156 = add nuw nsw i32 %idx.3, 1
  %arrayidx161 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc156
  %89 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 196, ptr %arrayidx161, align 4
  %mask164 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx161, i32 0, i32 1
  %90 = ptrtoint ptr %mask164 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %mask164, align 4
  %arrayidx170 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx170, align 4
  %val172 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx161, i32 0, i32 2
  %93 = ptrtoint ptr %val172 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %val172, align 4
  %inc173 = add nuw nsw i32 %idx.3, 2
  %arrayidx178 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc173
  %94 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 200, ptr %arrayidx178, align 4
  %mask181 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx178, i32 0, i32 1
  %95 = ptrtoint ptr %mask181 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %mask181, align 4
  %arrayidx187 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 0, i32 2
  %96 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx187, align 4
  %val189 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx178, i32 0, i32 2
  %98 = ptrtoint ptr %val189 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %val189, align 4
  %inc190 = add nuw nsw i32 %idx.3, 3
  %arrayidx195 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc190
  %99 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 208, ptr %arrayidx195, align 4
  %mask198 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx195, i32 0, i32 1
  %100 = ptrtoint ptr %mask198 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %mask198, align 4
  %arrayidx203 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx203, align 4
  %val206 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx195, i32 0, i32 2
  %103 = ptrtoint ptr %val206 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %val206, align 4
  %inc207 = add nuw nsw i32 %idx.3, 4
  %arrayidx212 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc207
  %104 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 212, ptr %arrayidx212, align 4
  %mask215 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx212, i32 0, i32 1
  %105 = ptrtoint ptr %mask215 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %mask215, align 4
  %arrayidx221 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 1, i32 1
  %106 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx221, align 4
  %val223 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx212, i32 0, i32 2
  %108 = ptrtoint ptr %val223 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %val223, align 4
  %inc224 = add nuw nsw i32 %idx.3, 5
  %arrayidx229 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc224
  %109 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 216, ptr %arrayidx229, align 4
  %mask232 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx229, i32 0, i32 1
  %110 = ptrtoint ptr %mask232 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %mask232, align 4
  %arrayidx238 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 4, i32 1, i32 2
  %111 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx238, align 4
  %val240 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx229, i32 0, i32 2
  %113 = ptrtoint ptr %val240 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %val240, align 4
  %inc241 = add nuw nsw i32 %idx.3, 6
  %pitches = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 5
  %114 = ptrtoint ptr %pitches to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %pitches, align 4
  %conv248 = zext i16 %115 to i32
  %shl = shl nuw i32 %conv248, 16
  %or = or i32 %shl, %conv248
  %arrayidx257 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc241
  %116 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 224, ptr %arrayidx257, align 4
  %mask260 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx257, i32 0, i32 1
  %117 = ptrtoint ptr %mask260 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %mask260, align 4
  %val262 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx257, i32 0, i32 2
  %118 = ptrtoint ptr %val262 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or, ptr %val262, align 4
  %inc263 = add nuw nsw i32 %idx.3, 7
  %arrayidx270 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 5, i32 1
  %119 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx270, align 2
  %conv271 = zext i16 %120 to i32
  %shl272 = shl nuw i32 %conv271, 16
  %arrayidx277 = getelementptr %struct.armada_plane_state, ptr %7, i32 0, i32 5, i32 2
  %121 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx277, align 4
  %conv278 = zext i16 %122 to i32
  %or279 = or i32 %shl272, %conv278
  %arrayidx282 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %inc263
  %123 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 228, ptr %arrayidx282, align 4
  %mask285 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx282, i32 0, i32 1
  %124 = ptrtoint ptr %mask285 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %mask285, align 4
  %val287 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx282, i32 0, i32 2
  %125 = ptrtoint ptr %val287 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or279, ptr %val287, align 4
  %inc288 = add nuw nsw i32 %idx.3, 8
  %126 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fb, align 4
  %fmt = getelementptr inbounds %struct.armada_framebuffer, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %fmt, align 8
  %conv295 = zext i8 %129 to i32
  %shl296 = shl nuw nsw i32 %conv295, 20
  %mod = getelementptr inbounds %struct.armada_framebuffer, ptr %127, i32 0, i32 2
  %130 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mod, align 1
  %conv301 = zext i8 %131 to i32
  %or303 = or i32 %shl296, %conv301
  %132 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool306.not = icmp eq i8 %133, 0
  %spec.select.v = select i1 %tobool306.not, i32 536870912, i32 536870913
  %spec.select = or i32 %or303, %spec.select.v
  %format311 = getelementptr inbounds %struct.drm_framebuffer, ptr %127, i32 0, i32 4
  %134 = ptrtoint ptr %format311 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %format311, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp316 = icmp eq i8 %137, 1
  br i1 %cmp316, label %land.lhs.true318, label %if.then142.if.end323_crit_edge

if.then142.if.end323_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end323

land.lhs.true318:                                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %src123 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %src123, align 4
  %140 = lshr i32 %139, 16
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %135, i32 0, i32 6
  %141 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hsub, align 2
  %conv320 = zext i8 %142 to i32
  %sub = add nuw nsw i32 %conv320, 65535
  %and = and i32 %sub, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool321.not = icmp eq i32 %and, 0
  %xor = xor i32 %spec.select, 8
  %spec.select907 = select i1 %tobool321.not, i32 %spec.select, i32 %xor
  br label %if.end323

if.end323:                                        ; preds = %land.lhs.true318, %if.then142.if.end323_crit_edge
  %cfg.1 = phi i32 [ %spec.select, %if.then142.if.end323_crit_edge ], [ %spec.select907, %land.lhs.true318 ]
  %interlace = getelementptr inbounds %struct.armada_plane_state, ptr %7, i32 0, i32 6
  %143 = ptrtoint ptr %interlace to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %interlace, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool327.not = icmp eq i8 %144, 0
  %or329 = or i32 %cfg.1, 128
  %spec.select908 = select i1 %tobool327.not, i32 %cfg.1, i32 %or329
  br label %if.end345

if.else:                                          ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %visible, align 4, !range !69
  %147 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp337.not = icmp eq i8 %146, %148
  %not.cmp337.not = xor i1 %cmp337.not, true
  %spec.select910 = zext i1 %not.cmp337.not to i32
  %narrow = select i1 %cmp337.not, i8 0, i8 %148
  %spec.select911 = zext i8 %narrow to i32
  br label %if.end345

if.end345:                                        ; preds = %if.else, %if.end323
  %cfg_mask.0 = phi i32 [ 552599743, %if.end323 ], [ %spec.select910, %if.else ]
  %cfg.3 = phi i32 [ %spec.select908, %if.end323 ], [ %spec.select911, %if.else ]
  %idx.4 = phi i32 [ %inc288, %if.end323 ], [ %idx.3, %if.else ]
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %149 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %x2.i, align 4
  %151 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %src, align 4
  %sub.i = sub i32 %150, %152
  %x2.i914 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 2
  %153 = ptrtoint ptr %x2.i914 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %x2.i914, align 4
  %155 = ptrtoint ptr %src123 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %src123, align 4
  %sub.i915 = sub i32 %154, %156
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.i915)
  %cmp350.not = icmp eq i32 %sub.i, %sub.i915
  br i1 %cmp350.not, label %lor.lhs.false352, label %if.end345.if.end370.thread_crit_edge

if.end345.if.end370.thread_crit_edge:             ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end370.thread

lor.lhs.false352:                                 ; preds = %if.end345
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %x2.i916 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %157 = ptrtoint ptr %x2.i916 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %x2.i916, align 4
  %159 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dst, align 4
  %sub.i917 = sub i32 %158, %160
  %dst354 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  %x2.i918 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %161 = ptrtoint ptr %x2.i918 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %x2.i918, align 4
  %163 = ptrtoint ptr %dst354 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dst354, align 4
  %sub.i919 = sub i32 %162, %164
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i917, i32 %sub.i919)
  %cmp356.not = icmp eq i32 %sub.i917, %sub.i919
  br i1 %cmp356.not, label %if.end370, label %lor.lhs.false352.if.end370.thread_crit_edge

lor.lhs.false352.if.end370.thread_crit_edge:      ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end370.thread

if.end370.thread:                                 ; preds = %lor.lhs.false352.if.end370.thread_crit_edge, %if.end345.if.end370.thread_crit_edge
  %or359 = or i32 %cfg_mask.0, 64
  %shr362 = ashr i32 %sub.i915, 16
  %dst363 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  %x2.i922 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %165 = ptrtoint ptr %x2.i922 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %x2.i922, align 4
  %167 = ptrtoint ptr %dst363 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dst363, align 4
  %sub.i923 = sub i32 %166, %168
  call void @__sanitizer_cov_trace_cmp4(i32 %shr362, i32 %sub.i923)
  %cmp365.not = icmp eq i32 %shr362, %sub.i923
  %or368 = or i32 %cfg.3, 64
  %spec.select909 = select i1 %cmp365.not, i32 %cfg.3, i32 %or368
  br label %do.body373

if.end370:                                        ; preds = %lor.lhs.false352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfg_mask.0)
  %tobool371.not = icmp eq i32 %cfg_mask.0, 0
  br i1 %tobool371.not, label %if.end370.if.end384_crit_edge, label %if.end370.do.body373_crit_edge

if.end370.do.body373_crit_edge:                   ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body373

if.end370.if.end384_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end384

do.body373:                                       ; preds = %if.end370.do.body373_crit_edge, %if.end370.thread
  %cfg.4941 = phi i32 [ %spec.select909, %if.end370.thread ], [ %cfg.3, %if.end370.do.body373_crit_edge ]
  %cfg_mask.1940 = phi i32 [ %or359, %if.end370.thread ], [ %cfg_mask.0, %if.end370.do.body373_crit_edge ]
  %arrayidx375 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.4
  %169 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 400, ptr %arrayidx375, align 4
  %neg = xor i32 %cfg_mask.1940, -1
  %mask378 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx375, i32 0, i32 1
  %170 = ptrtoint ptr %mask378 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %neg, ptr %mask378, align 4
  %val380 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx375, i32 0, i32 2
  %171 = ptrtoint ptr %val380 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %cfg.4941, ptr %val380, align 4
  %inc381 = add nuw nsw i32 %idx.4, 1
  br label %if.end384

if.end384:                                        ; preds = %do.body373, %if.end370.if.end384_crit_edge
  %idx.5 = phi i32 [ %inc381, %do.body373 ], [ %idx.4, %if.end370.if.end384_crit_edge ]
  %brightness.i = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 6
  %172 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %brightness.i, align 4
  %conv6.i = zext i16 %173 to i32
  %shl.i = shl nuw i32 %conv6.i, 16
  %contrast.i = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 7
  %174 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %contrast.i, align 2
  %conv4.i = zext i16 %175 to i32
  %or.i = or i32 %shl.i, %conv4.i
  %176 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool387.not = icmp eq i8 %177, 0
  br i1 %tobool387.not, label %land.lhs.true388, label %if.end384.lor.lhs.false392_crit_edge

if.end384.lor.lhs.false392_crit_edge:             ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false392

land.lhs.true388:                                 ; preds = %if.end384
  %178 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool390.not = icmp eq i8 %179, 0
  br i1 %tobool390.not, label %land.lhs.true388.lor.lhs.false392_crit_edge, label %land.lhs.true388.do.body397_crit_edge

land.lhs.true388.do.body397_crit_edge:            ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body397

land.lhs.true388.lor.lhs.false392_crit_edge:      ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false392

lor.lhs.false392:                                 ; preds = %land.lhs.true388.lor.lhs.false392_crit_edge, %if.end384.lor.lhs.false392_crit_edge
  %brightness.i924 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 6
  %180 = ptrtoint ptr %brightness.i924 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %brightness.i924, align 4
  %conv6.i925 = zext i16 %181 to i32
  %shl.i926 = shl nuw i32 %conv6.i925, 16
  %contrast.i927 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 7
  %182 = ptrtoint ptr %contrast.i927 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %contrast.i927, align 2
  %conv4.i928 = zext i16 %183 to i32
  %or.i929 = or i32 %shl.i926, %conv4.i928
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i929, i32 %or.i)
  %cmp394.not = icmp eq i32 %or.i929, %or.i
  br i1 %cmp394.not, label %lor.lhs.false392.if.end408_crit_edge, label %lor.lhs.false392.do.body397_crit_edge

lor.lhs.false392.do.body397_crit_edge:            ; preds = %lor.lhs.false392
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body397

lor.lhs.false392.if.end408_crit_edge:             ; preds = %lor.lhs.false392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end408

do.body397:                                       ; preds = %lor.lhs.false392.do.body397_crit_edge, %land.lhs.true388.do.body397_crit_edge
  %arrayidx399 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.5
  %184 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 428, ptr %arrayidx399, align 4
  %mask402 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx399, i32 0, i32 1
  %185 = ptrtoint ptr %mask402 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %mask402, align 4
  %val404 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx399, i32 0, i32 2
  %186 = ptrtoint ptr %val404 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or.i, ptr %val404, align 4
  %inc405 = add nuw nsw i32 %idx.5, 1
  br label %if.end408

if.end408:                                        ; preds = %do.body397, %lor.lhs.false392.if.end408_crit_edge
  %idx.6 = phi i32 [ %inc405, %do.body397 ], [ %idx.5, %lor.lhs.false392.if.end408_crit_edge ]
  %saturation.i = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 8
  %187 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %saturation.i, align 4
  %conv.i = zext i16 %188 to i32
  %shl.i930 = shl nuw i32 %conv.i, 16
  %189 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool411.not = icmp eq i8 %190, 0
  br i1 %tobool411.not, label %land.lhs.true412, label %if.end408.lor.lhs.false416_crit_edge

if.end408.lor.lhs.false416_crit_edge:             ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false416

land.lhs.true412:                                 ; preds = %if.end408
  %191 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool414.not = icmp eq i8 %192, 0
  br i1 %tobool414.not, label %land.lhs.true412.lor.lhs.false416_crit_edge, label %land.lhs.true412.do.body421_crit_edge

land.lhs.true412.do.body421_crit_edge:            ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body421

land.lhs.true412.lor.lhs.false416_crit_edge:      ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false416

lor.lhs.false416:                                 ; preds = %land.lhs.true412.lor.lhs.false416_crit_edge, %if.end408.lor.lhs.false416_crit_edge
  %saturation.i931 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 8
  %193 = ptrtoint ptr %saturation.i931 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %saturation.i931, align 4
  %conv.i932 = zext i16 %194 to i32
  %shl.i933 = shl nuw i32 %conv.i932, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i933, i32 %shl.i930)
  %cmp418.not = icmp eq i32 %shl.i933, %shl.i930
  br i1 %cmp418.not, label %lor.lhs.false416.if.end432_crit_edge, label %lor.lhs.false416.do.body421_crit_edge

lor.lhs.false416.do.body421_crit_edge:            ; preds = %lor.lhs.false416
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body421

lor.lhs.false416.if.end432_crit_edge:             ; preds = %lor.lhs.false416
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end432

do.body421:                                       ; preds = %lor.lhs.false416.do.body421_crit_edge, %land.lhs.true412.do.body421_crit_edge
  %arrayidx423 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.6
  %195 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 432, ptr %arrayidx423, align 4
  %mask426 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx423, i32 0, i32 1
  %196 = ptrtoint ptr %mask426 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %mask426, align 4
  %val428 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx423, i32 0, i32 2
  %197 = ptrtoint ptr %val428 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %shl.i930, ptr %val428, align 4
  %inc429 = add nuw nsw i32 %idx.6, 1
  br label %if.end432

if.end432:                                        ; preds = %do.body421, %lor.lhs.false416.if.end432_crit_edge
  %idx.7 = phi i32 [ %inc429, %do.body421 ], [ %idx.6, %lor.lhs.false416.if.end432_crit_edge ]
  %198 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool434.not = icmp eq i8 %199, 0
  br i1 %tobool434.not, label %land.lhs.true435, label %if.end451.thread953

if.end451.thread953:                              ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #9
  %color_encoding.i955 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 17
  %200 = ptrtoint ptr %color_encoding.i955 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %color_encoding.i955, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp.i956 = icmp eq i32 %201, 1
  %cond.i957 = select i1 %cmp.i956, i32 512, i32 0
  br label %lor.lhs.false459

land.lhs.true435:                                 ; preds = %if.end432
  %202 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool437.not = icmp eq i8 %203, 0
  br i1 %tobool437.not, label %if.end451.thread, label %if.end451

if.end451.thread:                                 ; preds = %land.lhs.true435
  call void @__sanitizer_cov_trace_pc() #9
  %color_encoding.i943 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 17
  %204 = ptrtoint ptr %color_encoding.i943 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %color_encoding.i943, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp.i944 = icmp eq i32 %205, 1
  %cond.i945 = select i1 %cmp.i944, i32 512, i32 0
  br label %land.lhs.true455

if.end451:                                        ; preds = %land.lhs.true435
  %arrayidx442 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.7
  %206 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 436, ptr %arrayidx442, align 4
  %mask445 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx442, i32 0, i32 1
  %207 = ptrtoint ptr %mask445 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %mask445, align 4
  %val447 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx442, i32 0, i32 2
  %208 = ptrtoint ptr %val447 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 8192, ptr %val447, align 4
  %inc448 = add nuw nsw i32 %idx.7, 1
  %209 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %209)
  %.pr = load i8, ptr %visible, align 4
  %color_encoding.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 17
  %210 = ptrtoint ptr %color_encoding.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %color_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp.i = icmp eq i32 %211, 1
  %cond.i = select i1 %cmp.i, i32 512, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool454.not = icmp eq i8 %.pr, 0
  br i1 %tobool454.not, label %if.end451.land.lhs.true455_crit_edge, label %if.end451.lor.lhs.false459_crit_edge

if.end451.lor.lhs.false459_crit_edge:             ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false459

if.end451.land.lhs.true455_crit_edge:             ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true455

land.lhs.true455:                                 ; preds = %if.end451.land.lhs.true455_crit_edge, %if.end451.thread
  %cond.i952 = phi i32 [ %cond.i945, %if.end451.thread ], [ %cond.i, %if.end451.land.lhs.true455_crit_edge ]
  %idx.8949 = phi i32 [ %idx.7, %if.end451.thread ], [ %inc448, %if.end451.land.lhs.true455_crit_edge ]
  %212 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool457.not = icmp eq i8 %213, 0
  br i1 %tobool457.not, label %land.lhs.true455.lor.lhs.false459_crit_edge, label %land.lhs.true455.do.body464_crit_edge

land.lhs.true455.do.body464_crit_edge:            ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body464

land.lhs.true455.lor.lhs.false459_crit_edge:      ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false459

lor.lhs.false459:                                 ; preds = %land.lhs.true455.lor.lhs.false459_crit_edge, %if.end451.lor.lhs.false459_crit_edge, %if.end451.thread953
  %cond.i951 = phi i32 [ %cond.i952, %land.lhs.true455.lor.lhs.false459_crit_edge ], [ %cond.i, %if.end451.lor.lhs.false459_crit_edge ], [ %cond.i957, %if.end451.thread953 ]
  %idx.8948 = phi i32 [ %idx.8949, %land.lhs.true455.lor.lhs.false459_crit_edge ], [ %inc448, %if.end451.lor.lhs.false459_crit_edge ], [ %idx.7, %if.end451.thread953 ]
  %color_encoding.i934 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 17
  %214 = ptrtoint ptr %color_encoding.i934 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %color_encoding.i934, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %215)
  %cmp.i935 = icmp eq i32 %215, 1
  %cond.i936 = select i1 %cmp.i935, i32 512, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i936, i32 %cond.i951)
  %cmp461.not = icmp eq i32 %cond.i936, %cond.i951
  br i1 %cmp461.not, label %lor.lhs.false459.if.end475_crit_edge, label %lor.lhs.false459.do.body464_crit_edge

lor.lhs.false459.do.body464_crit_edge:            ; preds = %lor.lhs.false459
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body464

lor.lhs.false459.if.end475_crit_edge:             ; preds = %lor.lhs.false459
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end475

do.body464:                                       ; preds = %lor.lhs.false459.do.body464_crit_edge, %land.lhs.true455.do.body464_crit_edge
  %cond.i950 = phi i32 [ %cond.i952, %land.lhs.true455.do.body464_crit_edge ], [ %cond.i951, %lor.lhs.false459.do.body464_crit_edge ]
  %idx.8947 = phi i32 [ %idx.8949, %land.lhs.true455.do.body464_crit_edge ], [ %idx.8948, %lor.lhs.false459.do.body464_crit_edge ]
  %arrayidx466 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.8947
  %216 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 444, ptr %arrayidx466, align 4
  %mask469 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx466, i32 0, i32 1
  %217 = ptrtoint ptr %mask469 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -769, ptr %mask469, align 4
  %val471 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx466, i32 0, i32 2
  %218 = ptrtoint ptr %val471 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %cond.i950, ptr %val471, align 4
  %inc472 = add nuw nsw i32 %idx.8947, 1
  br label %if.end475

if.end475:                                        ; preds = %do.body464, %lor.lhs.false459.if.end475_crit_edge
  %idx.9 = phi i32 [ %inc472, %do.body464 ], [ %idx.8948, %lor.lhs.false459.if.end475_crit_edge ]
  %colorkey_yr = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 1
  %219 = ptrtoint ptr %colorkey_yr to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %colorkey_yr, align 4
  %221 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool480.not = icmp eq i8 %222, 0
  br i1 %tobool480.not, label %land.lhs.true481, label %if.end475.lor.lhs.false485_crit_edge

if.end475.lor.lhs.false485_crit_edge:             ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false485

land.lhs.true481:                                 ; preds = %if.end475
  %223 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool483.not = icmp eq i8 %224, 0
  br i1 %tobool483.not, label %land.lhs.true481.lor.lhs.false485_crit_edge, label %land.lhs.true481.do.body493_crit_edge

land.lhs.true481.do.body493_crit_edge:            ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body493

land.lhs.true481.lor.lhs.false485_crit_edge:      ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false485

lor.lhs.false485:                                 ; preds = %land.lhs.true481.lor.lhs.false485_crit_edge, %if.end475.lor.lhs.false485_crit_edge
  %colorkey_yr489 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 1
  %225 = ptrtoint ptr %colorkey_yr489 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %colorkey_yr489, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %220)
  %cmp490.not = icmp eq i32 %226, %220
  br i1 %cmp490.not, label %lor.lhs.false485.if.end504_crit_edge, label %lor.lhs.false485.do.body493_crit_edge

lor.lhs.false485.do.body493_crit_edge:            ; preds = %lor.lhs.false485
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body493

lor.lhs.false485.if.end504_crit_edge:             ; preds = %lor.lhs.false485
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end504

do.body493:                                       ; preds = %lor.lhs.false485.do.body493_crit_edge, %land.lhs.true481.do.body493_crit_edge
  %arrayidx495 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.9
  %227 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 304, ptr %arrayidx495, align 4
  %mask498 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx495, i32 0, i32 1
  %228 = ptrtoint ptr %mask498 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %mask498, align 4
  %val500 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx495, i32 0, i32 2
  %229 = ptrtoint ptr %val500 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %220, ptr %val500, align 4
  %inc501 = add nuw nsw i32 %idx.9, 1
  br label %if.end504

if.end504:                                        ; preds = %do.body493, %lor.lhs.false485.if.end504_crit_edge
  %idx.10 = phi i32 [ %inc501, %do.body493 ], [ %idx.9, %lor.lhs.false485.if.end504_crit_edge ]
  %colorkey_ug = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 2
  %230 = ptrtoint ptr %colorkey_ug to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %colorkey_ug, align 4
  %232 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool509.not = icmp eq i8 %233, 0
  br i1 %tobool509.not, label %land.lhs.true510, label %if.end504.lor.lhs.false514_crit_edge

if.end504.lor.lhs.false514_crit_edge:             ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false514

land.lhs.true510:                                 ; preds = %if.end504
  %234 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool512.not = icmp eq i8 %235, 0
  br i1 %tobool512.not, label %land.lhs.true510.lor.lhs.false514_crit_edge, label %land.lhs.true510.do.body522_crit_edge

land.lhs.true510.do.body522_crit_edge:            ; preds = %land.lhs.true510
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body522

land.lhs.true510.lor.lhs.false514_crit_edge:      ; preds = %land.lhs.true510
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false514

lor.lhs.false514:                                 ; preds = %land.lhs.true510.lor.lhs.false514_crit_edge, %if.end504.lor.lhs.false514_crit_edge
  %colorkey_ug518 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 2
  %236 = ptrtoint ptr %colorkey_ug518 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %colorkey_ug518, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %231)
  %cmp519.not = icmp eq i32 %237, %231
  br i1 %cmp519.not, label %lor.lhs.false514.if.end533_crit_edge, label %lor.lhs.false514.do.body522_crit_edge

lor.lhs.false514.do.body522_crit_edge:            ; preds = %lor.lhs.false514
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body522

lor.lhs.false514.if.end533_crit_edge:             ; preds = %lor.lhs.false514
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end533

do.body522:                                       ; preds = %lor.lhs.false514.do.body522_crit_edge, %land.lhs.true510.do.body522_crit_edge
  %arrayidx524 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.10
  %238 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 308, ptr %arrayidx524, align 4
  %mask527 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx524, i32 0, i32 1
  %239 = ptrtoint ptr %mask527 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %mask527, align 4
  %val529 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx524, i32 0, i32 2
  %240 = ptrtoint ptr %val529 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %231, ptr %val529, align 4
  %inc530 = add nuw nsw i32 %idx.10, 1
  br label %if.end533

if.end533:                                        ; preds = %do.body522, %lor.lhs.false514.if.end533_crit_edge
  %idx.11 = phi i32 [ %inc530, %do.body522 ], [ %idx.10, %lor.lhs.false514.if.end533_crit_edge ]
  %colorkey_vb = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 3
  %241 = ptrtoint ptr %colorkey_vb to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %colorkey_vb, align 4
  %243 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool538.not = icmp eq i8 %244, 0
  br i1 %tobool538.not, label %land.lhs.true539, label %if.end533.lor.lhs.false543_crit_edge

if.end533.lor.lhs.false543_crit_edge:             ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false543

land.lhs.true539:                                 ; preds = %if.end533
  %245 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool541.not = icmp eq i8 %246, 0
  br i1 %tobool541.not, label %land.lhs.true539.lor.lhs.false543_crit_edge, label %land.lhs.true539.do.body551_crit_edge

land.lhs.true539.do.body551_crit_edge:            ; preds = %land.lhs.true539
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body551

land.lhs.true539.lor.lhs.false543_crit_edge:      ; preds = %land.lhs.true539
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false543

lor.lhs.false543:                                 ; preds = %land.lhs.true539.lor.lhs.false543_crit_edge, %if.end533.lor.lhs.false543_crit_edge
  %colorkey_vb547 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 3
  %247 = ptrtoint ptr %colorkey_vb547 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %colorkey_vb547, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %242)
  %cmp548.not = icmp eq i32 %248, %242
  br i1 %cmp548.not, label %lor.lhs.false543.if.end562_crit_edge, label %lor.lhs.false543.do.body551_crit_edge

lor.lhs.false543.do.body551_crit_edge:            ; preds = %lor.lhs.false543
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body551

lor.lhs.false543.if.end562_crit_edge:             ; preds = %lor.lhs.false543
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end562

do.body551:                                       ; preds = %lor.lhs.false543.do.body551_crit_edge, %land.lhs.true539.do.body551_crit_edge
  %arrayidx553 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.11
  %249 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 312, ptr %arrayidx553, align 4
  %mask556 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx553, i32 0, i32 1
  %250 = ptrtoint ptr %mask556 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %mask556, align 4
  %val558 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx553, i32 0, i32 2
  %251 = ptrtoint ptr %val558 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %242, ptr %val558, align 4
  %inc559 = add nuw nsw i32 %idx.11, 1
  br label %if.end562

if.end562:                                        ; preds = %do.body551, %lor.lhs.false543.if.end562_crit_edge
  %idx.12 = phi i32 [ %inc559, %do.body551 ], [ %idx.11, %lor.lhs.false543.if.end562_crit_edge ]
  %colorkey_mode = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 4
  %252 = ptrtoint ptr %colorkey_mode to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %colorkey_mode, align 4
  %254 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool567.not = icmp eq i8 %255, 0
  br i1 %tobool567.not, label %land.lhs.true568, label %if.end562.lor.lhs.false572_crit_edge

if.end562.lor.lhs.false572_crit_edge:             ; preds = %if.end562
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false572

land.lhs.true568:                                 ; preds = %if.end562
  %256 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool570.not = icmp eq i8 %257, 0
  br i1 %tobool570.not, label %land.lhs.true568.lor.lhs.false572_crit_edge, label %land.lhs.true568.do.body580_crit_edge

land.lhs.true568.do.body580_crit_edge:            ; preds = %land.lhs.true568
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body580

land.lhs.true568.lor.lhs.false572_crit_edge:      ; preds = %land.lhs.true568
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false572

lor.lhs.false572:                                 ; preds = %land.lhs.true568.lor.lhs.false572_crit_edge, %if.end562.lor.lhs.false572_crit_edge
  %colorkey_mode576 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 4
  %258 = ptrtoint ptr %colorkey_mode576 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %colorkey_mode576, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %253)
  %cmp577.not = icmp eq i32 %259, %253
  br i1 %cmp577.not, label %lor.lhs.false572.if.end591_crit_edge, label %lor.lhs.false572.do.body580_crit_edge

lor.lhs.false572.do.body580_crit_edge:            ; preds = %lor.lhs.false572
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body580

lor.lhs.false572.if.end591_crit_edge:             ; preds = %lor.lhs.false572
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end591

do.body580:                                       ; preds = %lor.lhs.false572.do.body580_crit_edge, %land.lhs.true568.do.body580_crit_edge
  %arrayidx582 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.12
  %260 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 404, ptr %arrayidx582, align 4
  %mask585 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx582, i32 0, i32 1
  %261 = ptrtoint ptr %mask585 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 -117702401, ptr %mask585, align 4
  %val587 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx582, i32 0, i32 2
  %262 = ptrtoint ptr %val587 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %253, ptr %val587, align 4
  %inc588 = add nuw nsw i32 %idx.12, 1
  br label %if.end591

if.end591:                                        ; preds = %do.body580, %lor.lhs.false572.if.end591_crit_edge
  %idx.13 = phi i32 [ %inc588, %do.body580 ], [ %idx.12, %lor.lhs.false572.if.end591_crit_edge ]
  %colorkey_enable = getelementptr inbounds %struct.armada_overlay_state, ptr %7, i32 0, i32 5
  %263 = ptrtoint ptr %colorkey_enable to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %colorkey_enable, align 4
  %265 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %visible, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool596.not = icmp eq i8 %266, 0
  br i1 %tobool596.not, label %land.lhs.true597, label %if.end591.lor.lhs.false601_crit_edge

if.end591.lor.lhs.false601_crit_edge:             ; preds = %if.end591
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false601

land.lhs.true597:                                 ; preds = %if.end591
  %267 = ptrtoint ptr %visible38 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %visible38, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool599.not = icmp eq i8 %268, 0
  br i1 %tobool599.not, label %land.lhs.true597.lor.lhs.false601_crit_edge, label %land.lhs.true597.land.lhs.true608_crit_edge

land.lhs.true597.land.lhs.true608_crit_edge:      ; preds = %land.lhs.true597
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true608

land.lhs.true597.lor.lhs.false601_crit_edge:      ; preds = %land.lhs.true597
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false601

lor.lhs.false601:                                 ; preds = %land.lhs.true597.lor.lhs.false601_crit_edge, %if.end591.lor.lhs.false601_crit_edge
  %colorkey_enable605 = getelementptr inbounds %struct.armada_overlay_state, ptr %5, i32 0, i32 5
  %269 = ptrtoint ptr %colorkey_enable605 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %colorkey_enable605, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %264)
  %cmp606.not = icmp eq i32 %270, %264
  br i1 %cmp606.not, label %lor.lhs.false601.if.end623_crit_edge, label %lor.lhs.false601.land.lhs.true608_crit_edge

lor.lhs.false601.land.lhs.true608_crit_edge:      ; preds = %lor.lhs.false601
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true608

lor.lhs.false601.if.end623_crit_edge:             ; preds = %lor.lhs.false601
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end623

land.lhs.true608:                                 ; preds = %lor.lhs.false601.land.lhs.true608_crit_edge, %land.lhs.true597.land.lhs.true608_crit_edge
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %33, i32 0, i32 1
  %271 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %variant, align 8
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %272, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool609.not = icmp eq i8 %274, 0
  br i1 %tobool609.not, label %land.lhs.true608.if.end623_crit_edge, label %do.body612

land.lhs.true608.if.end623_crit_edge:             ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end623

do.body612:                                       ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx614 = getelementptr %struct.armada_regs, ptr %add.ptr44, i32 %idx.13
  %275 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 132, ptr %arrayidx614, align 4
  %mask617 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx614, i32 0, i32 1
  %276 = ptrtoint ptr %mask617 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -786433, ptr %mask617, align 4
  %val619 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx614, i32 0, i32 2
  %277 = ptrtoint ptr %val619 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %264, ptr %val619, align 4
  %inc620 = add nuw nsw i32 %idx.13, 1
  br label %if.end623

if.end623:                                        ; preds = %do.body612, %land.lhs.true608.if.end623_crit_edge, %lor.lhs.false601.if.end623_crit_edge
  %idx.14 = phi i32 [ %inc620, %do.body612 ], [ %idx.13, %land.lhs.true608.if.end623_crit_edge ], [ %idx.13, %lor.lhs.false601.if.end623_crit_edge ]
  %278 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %regs_idx, align 8
  %add = add i32 %279, %idx.14
  store i32 %add, ptr %regs_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end623, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_overlay_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %7, ptr noundef %9) #7
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %base5 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base5, align 8
  %name8 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name8, align 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb, align 4
  %base9 = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %13, ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %23) #7
  %24 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc, align 4
  %regs12 = getelementptr inbounds %struct.armada_crtc, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs12, align 4
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %25, i32 0, i32 24
  %28 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs_idx, align 8
  %add.ptr13 = getelementptr %struct.armada_regs, ptr %27, i32 %29
  %30 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 400, ptr %add.ptr13, align 4
  %mask = getelementptr %struct.armada_regs, ptr %27, i32 %29, i32 1
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2, ptr %mask, align 4
  %val = getelementptr %struct.armada_regs, ptr %27, i32 %29, i32 2
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val, align 4
  %arrayidx18 = getelementptr %struct.armada_regs, ptr %add.ptr13, i32 1
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 420, ptr %arrayidx18, align 4
  %mask21 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx18, i32 0, i32 1
  %34 = ptrtoint ptr %mask21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %mask21, align 4
  %val23 = getelementptr inbounds %struct.armada_regs, ptr %arrayidx18, i32 0, i32 2
  %35 = ptrtoint ptr %val23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %val23, align 4
  %36 = load i32, ptr %regs_idx, align 8
  %add = add i32 %36, 2
  store i32 %add, ptr %regs_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_overlay_plane_update(ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_armada_ovl_plane_update(ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h)
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %call = tail call ptr @drm_atomic_state_alloc(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %acquire_ctx, align 4
  %call1 = tail call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %call, ptr noundef %plane) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  br label %fail

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @drm_atomic_set_crtc_for_plane(ptr noundef %call1, ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %if.end5.fail_crit_edge

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_atomic_set_fb_for_plane(ptr noundef %call1, ptr noundef %fb) #7
  %crtc_x9 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %crtc_x9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %crtc_x, ptr %crtc_x9, align 4
  %crtc_y10 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 5
  %5 = ptrtoint ptr %crtc_y10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %crtc_y, ptr %crtc_y10, align 4
  %crtc_h11 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %crtc_h11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %crtc_h, ptr %crtc_h11, align 4
  %crtc_w12 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 6
  %7 = ptrtoint ptr %crtc_w12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %crtc_w, ptr %crtc_w12, align 4
  %src_x13 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 8
  %8 = ptrtoint ptr %src_x13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %src_x, ptr %src_x13, align 4
  %src_y14 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 9
  %9 = ptrtoint ptr %src_y14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %src_y, ptr %src_y14, align 4
  %src_h15 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 10
  %10 = ptrtoint ptr %src_h15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %src_h, ptr %src_h15, align 4
  %src_w16 = getelementptr inbounds %struct.drm_plane_state, ptr %call1, i32 0, i32 11
  %11 = ptrtoint ptr %src_w16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %src_w, ptr %src_w16, align 4
  %call17 = tail call i32 @drm_atomic_nonblocking_commit(ptr noundef nonnull %call) #7
  br label %fail

fail:                                             ; preds = %if.end8, %if.end5.fail_crit_edge, %if.then3
  %ret.0 = phi i32 [ %3, %if.then3 ], [ %call6, %if.end5.fail_crit_edge ], [ %call17, %if.end8 ]
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fail
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !72

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @__drm_atomic_state_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_ovl_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #7
  tail call void @kfree(ptr noundef %plane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_overlay_reset(ptr noundef %plane) #0 align 64 {
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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 196) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %colorkey_yr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -16843264, ptr %colorkey_yr, align 8
  %colorkey_ug = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %colorkey_ug to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16843008, ptr %colorkey_ug, align 4
  %colorkey_vb = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %colorkey_vb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16843008, ptr %colorkey_vb, align 8
  %colorkey_mode = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %colorkey_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50397184, ptr %colorkey_mode, align 4
  %colorkey_enable = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %colorkey_enable to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 524288, ptr %colorkey_enable, align 8
  %brightness = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %brightness, align 4
  %contrast = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16384, ptr %contrast, align 2
  %saturation = getelementptr inbounds %struct.armada_overlay_state, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16384, ptr %saturation, align 8
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #7
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %color_encoding, align 8
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %color_range to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %color_range, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @armada_overlay_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !68

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 338, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 196, i32 noundef 3264) #7
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.then27 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_overlay_set_property(ptr nocapture noundef readonly %plane, ptr noundef %state, ptr noundef readnone %property, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %colorkey_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %colorkey_prop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %colorkey_prop, align 4
  %cmp = icmp eq ptr %3, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = trunc i64 %val to i32
  %5 = and i32 %4, 255
  %conv = mul nuw i32 %5, 16843008
  %colorkey_yr = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %colorkey_yr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %colorkey_yr, align 4
  %7 = lshr i32 %4, 8
  %8 = and i32 %7, 255
  %conv22 = mul nuw i32 %8, 16843008
  %colorkey_ug = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %colorkey_ug to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv22, ptr %colorkey_ug, align 4
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %conv37 = mul nuw i32 %11, 16843008
  %colorkey_vb = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %colorkey_vb to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv37, ptr %colorkey_vb, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %colorkey_min_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %colorkey_min_prop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %colorkey_min_prop, align 8
  %cmp41 = icmp eq ptr %14, %property
  br i1 %cmp41, label %if.then43, label %if.else89

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr47 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %colorkey_yr47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorkey_yr47, align 4
  %and48 = and i32 %16, -16711681
  %val.tr371 = trunc i64 %val to i32
  %17 = shl i32 %val.tr371, 16
  %18 = and i32 %17, 16711680
  %conv58 = or i32 %and48, %18
  store i32 %conv58, ptr %colorkey_yr47, align 4
  %colorkey_ug62 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %19 = ptrtoint ptr %colorkey_ug62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorkey_ug62, align 4
  %and63 = and i32 %20, -16711681
  %21 = shl i32 %val.tr371, 8
  %22 = and i32 %21, 16711680
  %conv73 = or i32 %and63, %22
  store i32 %conv73, ptr %colorkey_ug62, align 4
  %colorkey_vb77 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %23 = ptrtoint ptr %colorkey_vb77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorkey_vb77, align 4
  %and78 = and i32 %24, -16711681
  %25 = and i32 %val.tr371, 16711680
  %conv88 = or i32 %and78, %25
  store i32 %conv88, ptr %colorkey_vb77, align 4
  br label %cleanup

if.else89:                                        ; preds = %if.else
  %colorkey_max_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %colorkey_max_prop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %colorkey_max_prop, align 4
  %cmp90 = icmp eq ptr %27, %property
  br i1 %cmp90, label %if.then92, label %if.else138

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr96 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %28 = ptrtoint ptr %colorkey_yr96 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorkey_yr96, align 4
  %and97 = and i32 %29, 16777215
  %val.tr368 = trunc i64 %val to i32
  %30 = shl i32 %val.tr368, 24
  %conv107 = or i32 %and97, %30
  store i32 %conv107, ptr %colorkey_yr96, align 4
  %colorkey_ug111 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %31 = ptrtoint ptr %colorkey_ug111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorkey_ug111, align 4
  %and112 = and i32 %32, 16777215
  %33 = shl i32 %val.tr368, 16
  %34 = and i32 %33, -16777216
  %conv122 = or i32 %and112, %34
  store i32 %conv122, ptr %colorkey_ug111, align 4
  %colorkey_vb126 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %35 = ptrtoint ptr %colorkey_vb126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %colorkey_vb126, align 4
  %and127 = and i32 %36, 16777215
  %37 = shl i32 %val.tr368, 8
  %38 = and i32 %37, -16777216
  %conv137 = or i32 %and127, %38
  store i32 %conv137, ptr %colorkey_vb126, align 4
  br label %cleanup

if.else138:                                       ; preds = %if.else89
  %colorkey_val_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %colorkey_val_prop to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %colorkey_val_prop, align 8
  %cmp139 = icmp eq ptr %40, %property
  br i1 %cmp139, label %if.then141, label %if.else187

if.then141:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr145 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %41 = ptrtoint ptr %colorkey_yr145 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorkey_yr145, align 4
  %and146 = and i32 %42, -65281
  %val.tr367 = trunc i64 %val to i32
  %43 = shl i32 %val.tr367, 8
  %44 = and i32 %43, 65280
  %conv156 = or i32 %and146, %44
  store i32 %conv156, ptr %colorkey_yr145, align 4
  %colorkey_ug160 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %45 = ptrtoint ptr %colorkey_ug160 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %colorkey_ug160, align 4
  %and161 = and i32 %46, -65281
  %47 = and i32 %val.tr367, 65280
  %conv171 = or i32 %and161, %47
  store i32 %conv171, ptr %colorkey_ug160, align 4
  %colorkey_vb175 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %48 = ptrtoint ptr %colorkey_vb175 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colorkey_vb175, align 4
  %and176 = and i32 %49, -65281
  %50 = lshr i32 %val.tr367, 8
  %51 = and i32 %50, 65280
  %conv186 = or i32 %and176, %51
  store i32 %conv186, ptr %colorkey_vb175, align 4
  br label %cleanup

if.else187:                                       ; preds = %if.else138
  %colorkey_alpha_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %colorkey_alpha_prop to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %colorkey_alpha_prop, align 4
  %cmp188 = icmp eq ptr %53, %property
  br i1 %cmp188, label %if.then190, label %if.else233

if.then190:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr194 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %54 = ptrtoint ptr %colorkey_yr194 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %colorkey_yr194, align 4
  %and195 = and i32 %55, -256
  %56 = trunc i64 %val to i32
  %57 = and i32 %56, 255
  %conv204 = or i32 %and195, %57
  store i32 %conv204, ptr %colorkey_yr194, align 4
  %colorkey_ug208 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %58 = ptrtoint ptr %colorkey_ug208 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %colorkey_ug208, align 4
  %and209 = and i32 %59, -256
  %60 = lshr i32 %56, 8
  %61 = and i32 %60, 255
  %conv218 = or i32 %and209, %61
  store i32 %conv218, ptr %colorkey_ug208, align 4
  %colorkey_vb222 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %62 = ptrtoint ptr %colorkey_vb222 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %colorkey_vb222, align 4
  %and223 = and i32 %63, -256
  %64 = lshr i32 %56, 16
  %65 = and i32 %64, 255
  %conv232 = or i32 %and223, %65
  store i32 %conv232, ptr %colorkey_vb222, align 4
  br label %cleanup

if.else233:                                       ; preds = %if.else187
  %colorkey_mode_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 10
  %66 = ptrtoint ptr %colorkey_mode_prop to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %colorkey_mode_prop, align 8
  %cmp234 = icmp eq ptr %67, %property
  br i1 %cmp234, label %if.then236, label %if.else259

if.then236:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp237 = icmp eq i64 %val, 0
  br i1 %cmp237, label %if.then239, label %if.else246

if.then239:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_mode = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 4
  %68 = ptrtoint ptr %colorkey_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 196352, ptr %colorkey_mode, align 4
  %colorkey_enable = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 5
  %69 = ptrtoint ptr %colorkey_enable to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %colorkey_enable, align 4
  br label %cleanup

if.else246:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #9
  %val.tr = trunc i64 %val to i32
  %70 = shl i32 %val.tr, 24
  %conv250 = or i32 %70, 65536
  %colorkey_mode254 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 4
  %71 = ptrtoint ptr %colorkey_mode254 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv250, ptr %colorkey_mode254, align 4
  %colorkey_enable258 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 5
  %72 = ptrtoint ptr %colorkey_enable258 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 524288, ptr %colorkey_enable258, align 4
  br label %cleanup

if.else259:                                       ; preds = %if.else233
  %brightness_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 11
  %73 = ptrtoint ptr %brightness_prop to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %brightness_prop, align 4
  %cmp260 = icmp eq ptr %74, %property
  br i1 %cmp260, label %if.then262, label %if.else267

if.then262:                                       ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #9
  %75 = trunc i64 %val to i16
  %conv263 = add i16 %75, -256
  %brightness = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 6
  %76 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv263, ptr %brightness, align 4
  br label %cleanup

if.else267:                                       ; preds = %if.else259
  %contrast_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %contrast_prop to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %contrast_prop, align 8
  %cmp268 = icmp eq ptr %78, %property
  br i1 %cmp268, label %if.then270, label %if.else275

if.then270:                                       ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #9
  %conv271 = trunc i64 %val to i16
  %contrast = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 7
  %79 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv271, ptr %contrast, align 2
  br label %cleanup

if.else275:                                       ; preds = %if.else267
  %saturation_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 13
  %80 = ptrtoint ptr %saturation_prop to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %saturation_prop, align 4
  %cmp276 = icmp eq ptr %81, %property
  br i1 %cmp276, label %if.then278, label %if.else275.cleanup_crit_edge

if.else275.cleanup_crit_edge:                     ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then278:                                       ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #9
  %conv279 = trunc i64 %val to i16
  %saturation = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 8
  %82 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv279, ptr %saturation, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then278, %if.else275.cleanup_crit_edge, %if.then270, %if.then262, %if.else246, %if.then239, %if.then190, %if.then141, %if.then92, %if.then43, %if.then
  %retval.0 = phi i32 [ -22, %if.else275.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %if.then141 ], [ 0, %if.else246 ], [ 0, %if.then239 ], [ 0, %if.then270 ], [ 0, %if.then278 ], [ 0, %if.then262 ], [ 0, %if.then190 ], [ 0, %if.then92 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_overlay_get_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %colorkey_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %colorkey_prop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %colorkey_prop, align 4
  %cmp = icmp eq ptr %3, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %colorkey_yr = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %colorkey_yr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %colorkey_yr, align 4
  %shr = lshr i32 %5, 16
  %and = and i32 %shr, 255
  %colorkey_ug = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %colorkey_ug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %colorkey_ug, align 4
  %8 = lshr i32 %7, 8
  %shl9 = and i32 %8, 65280
  %or = or i32 %shl9, %and
  %colorkey_vb = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %colorkey_vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %colorkey_vb, align 4
  %and14 = and i32 %10, 16711680
  %or16 = or i32 %or, %and14
  %conv = zext i32 %or16 to i64
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %val, align 8
  %12 = load i32, ptr %colorkey_yr, align 4
  %shr21 = lshr i32 %12, 24
  %13 = load i32, ptr %colorkey_ug, align 4
  %14 = lshr i32 %13, 16
  %shl30 = and i32 %14, 65280
  %or31 = or i32 %shl30, %shr21
  %15 = load i32, ptr %colorkey_vb, align 4
  %16 = lshr i32 %15, 8
  %shl38 = and i32 %16, 16711680
  %or39 = or i32 %or31, %shl38
  call void @__sanitizer_cov_trace_cmp4(i32 %or16, i32 %or39)
  %cmp41.not = icmp eq i32 %or16, %or39
  br i1 %cmp41.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %shr47 = lshr i32 %12, 8
  %and48 = and i32 %shr47, 255
  %and55 = and i32 %13, 65280
  %or57 = or i32 %and48, %and55
  %17 = shl i32 %15, 8
  %shl64 = and i32 %17, 16711680
  %or65 = or i32 %or57, %shl64
  call void @__sanitizer_cov_trace_cmp4(i32 %or16, i32 %or65)
  %cmp67.not = icmp eq i32 %or16, %or65
  br i1 %cmp67.not, label %lor.lhs.false.if.end225_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end225_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.else:                                          ; preds = %entry
  %colorkey_min_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %colorkey_min_prop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %colorkey_min_prop, align 8
  %cmp70 = icmp eq ptr %19, %property
  br i1 %cmp70, label %if.then72, label %if.else97

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr76 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %colorkey_yr76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorkey_yr76, align 4
  %shr77 = lshr i32 %21, 16
  %and78 = and i32 %shr77, 255
  %colorkey_ug83 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %colorkey_ug83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %colorkey_ug83, align 4
  %24 = lshr i32 %23, 8
  %shl86 = and i32 %24, 65280
  %or87 = or i32 %shl86, %and78
  %colorkey_vb91 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %25 = ptrtoint ptr %colorkey_vb91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorkey_vb91, align 4
  %and93 = and i32 %26, 16711680
  %or95 = or i32 %or87, %and93
  %conv96 = zext i32 %or95 to i64
  br label %if.end225.sink.split

if.else97:                                        ; preds = %if.else
  %colorkey_max_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %colorkey_max_prop to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %colorkey_max_prop, align 4
  %cmp98 = icmp eq ptr %28, %property
  br i1 %cmp98, label %if.then100, label %if.else125

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr104 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %29 = ptrtoint ptr %colorkey_yr104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorkey_yr104, align 4
  %shr105 = lshr i32 %30, 24
  %colorkey_ug111 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %31 = ptrtoint ptr %colorkey_ug111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorkey_ug111, align 4
  %33 = lshr i32 %32, 16
  %shl114 = and i32 %33, 65280
  %or115 = or i32 %shl114, %shr105
  %colorkey_vb119 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %34 = ptrtoint ptr %colorkey_vb119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorkey_vb119, align 4
  %36 = lshr i32 %35, 8
  %shl122 = and i32 %36, 16711680
  %or123 = or i32 %or115, %shl122
  %conv124 = zext i32 %or123 to i64
  br label %if.end225.sink.split

if.else125:                                       ; preds = %if.else97
  %colorkey_val_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %colorkey_val_prop to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %colorkey_val_prop, align 8
  %cmp126 = icmp eq ptr %38, %property
  br i1 %cmp126, label %if.then128, label %if.else153

if.then128:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr132 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %39 = ptrtoint ptr %colorkey_yr132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %colorkey_yr132, align 4
  %shr133 = lshr i32 %40, 8
  %and134 = and i32 %shr133, 255
  %colorkey_ug139 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %colorkey_ug139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorkey_ug139, align 4
  %and141 = and i32 %42, 65280
  %or143 = or i32 %and134, %and141
  %colorkey_vb147 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %43 = ptrtoint ptr %colorkey_vb147 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %colorkey_vb147, align 4
  %45 = shl i32 %44, 8
  %shl150 = and i32 %45, 16711680
  %or151 = or i32 %or143, %shl150
  %conv152 = zext i32 %or151 to i64
  br label %if.end225.sink.split

if.else153:                                       ; preds = %if.else125
  %colorkey_alpha_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %colorkey_alpha_prop to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %colorkey_alpha_prop, align 4
  %cmp154 = icmp eq ptr %47, %property
  br i1 %cmp154, label %if.then156, label %if.else181

if.then156:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_yr160 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 1
  %48 = ptrtoint ptr %colorkey_yr160 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colorkey_yr160, align 4
  %and162 = and i32 %49, 255
  %colorkey_ug167 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 2
  %50 = ptrtoint ptr %colorkey_ug167 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %colorkey_ug167, align 4
  %and169 = shl i32 %51, 8
  %shl170 = and i32 %and169, 65280
  %or171 = or i32 %shl170, %and162
  %colorkey_vb175 = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 3
  %52 = ptrtoint ptr %colorkey_vb175 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %colorkey_vb175, align 4
  %and177 = shl i32 %53, 16
  %shl178 = and i32 %and177, 16711680
  %or179 = or i32 %or171, %shl178
  %conv180 = zext i32 %or179 to i64
  br label %if.end225.sink.split

if.else181:                                       ; preds = %if.else153
  %colorkey_mode_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 10
  %54 = ptrtoint ptr %colorkey_mode_prop to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %colorkey_mode_prop, align 8
  %cmp182 = icmp eq ptr %55, %property
  br i1 %cmp182, label %if.then184, label %if.else191

if.then184:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #9
  %colorkey_mode = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 4
  %56 = ptrtoint ptr %colorkey_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %colorkey_mode, align 4
  %and188 = lshr i32 %57, 25
  %shr189 = and i32 %and188, 3
  %conv190 = zext i32 %shr189 to i64
  br label %if.end225.sink.split

if.else191:                                       ; preds = %if.else181
  %brightness_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %brightness_prop to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %brightness_prop, align 4
  %cmp192 = icmp eq ptr %59, %property
  br i1 %cmp192, label %if.then194, label %if.else200

if.then194:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #9
  %brightness = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 6
  %60 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %brightness, align 4
  %conv198 = sext i16 %61 to i32
  %add = add nsw i32 %conv198, 256
  %conv199 = sext i32 %add to i64
  br label %if.end225.sink.split

if.else200:                                       ; preds = %if.else191
  %contrast_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 12
  %62 = ptrtoint ptr %contrast_prop to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %contrast_prop, align 8
  %cmp201 = icmp eq ptr %63, %property
  br i1 %cmp201, label %if.then203, label %if.else208

if.then203:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #9
  %contrast = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 7
  %64 = ptrtoint ptr %contrast to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %contrast, align 2
  %conv207 = zext i16 %65 to i64
  br label %if.end225.sink.split

if.else208:                                       ; preds = %if.else200
  %saturation_prop = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 13
  %66 = ptrtoint ptr %saturation_prop to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %saturation_prop, align 4
  %cmp209 = icmp eq ptr %67, %property
  br i1 %cmp209, label %if.then211, label %if.else208.cleanup_crit_edge

if.else208.cleanup_crit_edge:                     ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then211:                                       ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #9
  %saturation = getelementptr inbounds %struct.armada_overlay_state, ptr %state, i32 0, i32 8
  %68 = ptrtoint ptr %saturation to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %saturation, align 4
  %conv215 = zext i16 %69 to i64
  br label %if.end225.sink.split

if.end225.sink.split:                             ; preds = %if.then211, %if.then203, %if.then194, %if.then184, %if.then156, %if.then128, %if.then100, %if.then72
  %conv96.sink = phi i64 [ %conv96, %if.then72 ], [ %conv152, %if.then128 ], [ %conv190, %if.then184 ], [ %conv207, %if.then203 ], [ %conv215, %if.then211 ], [ %conv199, %if.then194 ], [ %conv180, %if.then156 ], [ %conv124, %if.then100 ]
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv96.sink, ptr %val, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.end225.sink.split, %lor.lhs.false.if.end225_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %if.else208.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end225 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_armada_ovl_plane_update(ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_ovl_plane_update, i32 0, i32 1), ptr blockaddress(@trace_armada_ovl_plane_update, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %call42 = tail call i32 @__traceiter_armada_ovl_plane_update(ptr noundef null, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_ovl_plane_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_ovl_plane_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_armada_ovl_plane_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_armada_ovl_plane_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 68, ptr noundef nonnull @.str.22) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_crtc_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_set_fb_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_nonblocking_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_armada_ovl_plane_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 519, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 521, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 523, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 525, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 527, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 529, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 533, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 535, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 537, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 501, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 502, i32 20}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 503, i32 20}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 504, i32 20}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 505, i32 20}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 506, i32 20}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 507, i32 20}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 508, i32 20}
!34 = !{ptr @armada_drm_colorkey_enum_list, !35, !"armada_drm_colorkey_enum_list", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 500, i32 40}
!36 = !{ptr @armada_overlay_plane_helper_funcs, !37, !"armada_overlay_plane_helper_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 249, i32 44}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 80, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 82, i32 24}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 85, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 233, i32 2}
!46 = !{ptr @armada_ovl_plane_funcs, !47, !"armada_ovl_plane_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 468, i32 37}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/armada/armada_trace.h", i32 30, i32 1}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @armada_ovl_formats, !57, !"armada_ovl_formats", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/armada/armada_overlay.c", i32 479, i32 23}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148656125}
!71 = !{i64 2148570577, i64 2148570609, i64 2148570638, i64 2148570672, i64 2148570703, i64 2148570726}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2150304276}
!74 = !{i64 2149210874, i64 2149210879, i64 2149210892, i64 2149210936, i64 2149210970, i64 2149210991}
!75 = !{i64 2156820365}
!76 = !{i64 2156820724}
!77 = !{i64 2150362378}
!78 = !{i64 2150363414}
