; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_plane = type { %struct.drm_plane, ptr, i32, i32, i32, [32 x i32], i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@pipe_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [36 x i8] zeroinitializer }, align 32
@mdp4_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @mdp4_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr @mdp4_plane_set_property, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@supported_format_modifiers = internal constant { [3 x i64], [40 x i8] } { [3 x i64] [i64 288230376151711745, i64 0, i64 72057594037927935], [40 x i8] zeroinitializer }, align 32
@mdp4_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @msm_atomic_prepare_fb, ptr @mdp4_plane_cleanup_fb, ptr @mdp4_plane_atomic_check, ptr @mdp4_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VG1\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VG2\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB1\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB2\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB3\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VG3\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VG4\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: cleanup: FB[%u]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: disabled!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: FB[%u] %u,%u,%u,%u -> CRTC[%u] %d,%d,%u,%u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* Width down scaling exceeds limits!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* Height down scaling exceeds limits!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Width up scaling exceeds limits!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Height up scaling exceeds limits!\0A\00", [53 x i8] zeroinitializer }, align 32
@switch.table.mdp4_plane_init = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 15, i32 15, i32 4, i32 4, i32 4, i32 15, i32 15], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"pipe_names\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 340, i32 20 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"mdp4_plane_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 83, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"supported_format_modifiers\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 352, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"mdp4_plane_helper_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 132, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 341, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 341, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 342, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 342, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 342, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 343, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 343, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 104, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 129, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 212, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 224, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 231, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 236, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 241, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [46 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 246, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"switch.table.mdp4_plane_init\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @pipe_names, ptr @mdp4_plane_funcs, ptr @supported_format_modifiers, ptr @mdp4_plane_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.mdp4_plane_init], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_format_modifiers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp4_plane_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp4_plane_pipe(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.mdp4_plane, ptr %plane, i32 0, i32 2
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_plane_init(ptr noundef %dev, i32 noundef %pipe_id, i1 noundef zeroext %private_plane) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 680) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe = getelementptr inbounds %struct.mdp4_plane, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pipe_id, ptr %pipe, align 4
  %arrayidx = getelementptr [7 x ptr], ptr @pipe_names, i32 0, i32 %pipe_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.mdp4_plane, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pipe_id)
  %5 = icmp ult i32 %pipe_id, 7
  br i1 %5, label %switch.lookup, label %if.end.mdp4_pipe_caps.exit_crit_edge

if.end.mdp4_pipe_caps.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp4_pipe_caps.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp4_plane_init, i32 0, i32 %pipe_id
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mdp4_pipe_caps.exit

mdp4_pipe_caps.exit:                              ; preds = %switch.lookup, %if.end.mdp4_pipe_caps.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.mdp4_pipe_caps.exit_crit_edge ]
  %caps = getelementptr inbounds %struct.mdp4_plane, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %caps, align 8
  %formats = getelementptr inbounds %struct.mdp4_plane, ptr %call7.i.i, i32 0, i32 5
  %8 = and i32 %retval.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %9 = icmp ne i32 %8, 12
  %call4 = tail call i32 @mdp_get_formats(ptr noundef %formats, i32 noundef 32, i1 noundef zeroext %9) #5
  %nformats = getelementptr inbounds %struct.mdp4_plane, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %nformats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %nformats, align 4
  %cond = zext i1 %private_plane to i32
  %call9 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 255, ptr noundef nonnull @mdp4_plane_funcs, ptr noundef %formats, i32 noundef %call4, ptr noundef nonnull @supported_format_modifiers, i32 noundef %cond, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then15

if.end12:                                         ; preds = %mdp4_pipe_caps.exit
  call void @__sanitizer_cov_trace_pc() #7
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mdp4_plane_helper_funcs, ptr %helper_private.i, align 8
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.then15:                                        ; preds = %mdp4_pipe_caps.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %phi.cast = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ %phi.cast, %if.then15 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_get_formats(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_plane_destroy(ptr noundef %plane) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #5
  tail call void @kfree(ptr noundef %plane) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mdp4_plane_set_property(ptr nocapture noundef readnone %plane, ptr nocapture noundef readnone %property, i64 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_plane_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %old_state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %name = getelementptr inbounds %struct.mdp4_plane, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %base3 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %9, i32 noundef %11) #5
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aspace, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef nonnull %1, ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mdp4_plane_atomic_check(ptr nocapture noundef readnone %plane, ptr nocapture noundef readnone %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #1 align 64 {
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_y, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_h, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_x, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_y, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %22 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_w, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_h, align 4
  %26 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plane, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kms.i.i, align 4
  %pipe2.i = getelementptr inbounds %struct.mdp4_plane, ptr %plane, i32 0, i32 2
  %32 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pipe2.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %9, null
  %or.cond.i = or i1 %tobool.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.mdp4_plane, ptr %plane, i32 0, i32 1
  %34 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %35) #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %36 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %format.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %39)
  %cmp2.i.i = icmp eq i32 %39, 842094158
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end4.i.i_crit_edge

if.end.i.if.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %modifier.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 8
  %40 = ptrtoint ptr %modifier.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %modifier.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 288230376151711745, i64 %41)
  %cmp.i.i = icmp eq i64 %41, 288230376151711745
  br i1 %cmp.i.i, label %land.lhs.true.i.i.mdp4_get_frame_format.exit.i_crit_edge, label %land.lhs.true.i.i.if.end4.i.i_crit_edge

land.lhs.true.i.i.if.end4.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

land.lhs.true.i.i.mdp4_get_frame_format.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdp4_get_frame_format.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true.i.i.if.end4.i.i_crit_edge, %if.end.i.if.end4.i.i_crit_edge
  br label %mdp4_get_frame_format.exit.i

mdp4_get_frame_format.exit.i:                     ; preds = %if.end4.i.i, %land.lhs.true.i.i.mdp4_get_frame_format.exit.i_crit_edge
  %cmp151.not.i = phi i1 [ false, %land.lhs.true.i.i.mdp4_get_frame_format.exit.i_crit_edge ], [ true, %if.end4.i.i ]
  %retval.0.i.i = phi i32 [ 1073741824, %land.lhs.true.i.i.mdp4_get_frame_format.exit.i_crit_edge ], [ 0, %if.end4.i.i ]
  %shr.i = lshr i32 %19, 16
  %shr5.i = lshr i32 %21, 16
  %shr6.i = lshr i32 %23, 16
  %shr7.i = lshr i32 %25, 16
  %name8.i = getelementptr inbounds %struct.mdp4_plane, ptr %plane, i32 0, i32 1
  %42 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name8.i, align 8
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 2
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base.i, align 4
  %base9.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %46 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base9.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %43, i32 noundef %45, i32 noundef %shr.i, i32 noundef %shr5.i, i32 noundef %shr6.i, i32 noundef %shr7.i, i32 noundef %47, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #5
  %call12.i = tail call ptr @msm_framebuffer_format(ptr noundef nonnull %9) #5
  %mul.i = shl i32 %15, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i, i32 %mul.i)
  %cmp.i = icmp ugt i32 %shr6.i, %mul.i
  br i1 %cmp.i, label %mdp4_get_frame_format.exit.i.do.end_crit_edge, label %if.end17.i

mdp4_get_frame_format.exit.i.do.end_crit_edge:    ; preds = %mdp4_get_frame_format.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end17.i:                                       ; preds = %mdp4_get_frame_format.exit.i
  %mul18.i = shl i32 %17, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %mul18.i)
  %cmp19.i = icmp ugt i32 %shr7.i, %mul18.i
  br i1 %cmp19.i, label %if.end17.i.do.end_crit_edge, label %if.end22.i

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end22.i:                                       ; preds = %if.end17.i
  %mul23.i = shl nuw nsw i32 %shr6.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul23.i, i32 %15)
  %cmp24.i = icmp ult i32 %mul23.i, %15
  br i1 %cmp24.i, label %if.end22.i.do.end_crit_edge, label %if.end27.i

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end27.i:                                       ; preds = %if.end22.i
  %mul28.i = shl nuw nsw i32 %shr7.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul28.i, i32 %17)
  %cmp29.i = icmp ult i32 %mul28.i, %17
  br i1 %cmp29.i, label %if.end27.i.do.end_crit_edge, label %if.end32.i

if.end27.i.do.end_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i, i32 %15)
  %cmp33.not.i = icmp eq i32 %shr6.i, %15
  br i1 %cmp33.not.i, label %if.end32.i.if.end52.i_crit_edge, label %if.then34.i

if.end32.i.if.end52.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.then34.i:                                      ; preds = %if.end32.i
  %is_yuv.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 12
  %48 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_yuv.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool35.not.i = icmp eq i8 %49, 0
  br i1 %tobool35.not.i, label %if.then34.i.if.end52.i_crit_edge, label %if.then36.i

if.then34.i.if.end52.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i, i32 %15)
  %cmp37.i = icmp ult i32 %shr6.i, %15
  %div268.i = lshr i32 %23, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %div268.i, i32 %15)
  %cmp39.not.not.i = icmp ult i32 %div268.i, %15
  %spec.select.op.op.i = select i1 %cmp39.not.not.i, i32 1, i32 5
  %or44.i = select i1 %cmp37.i, i32 9, i32 %spec.select.op.op.i
  %.frozen = freeze i32 %15
  %div45.i = udiv i32 536870912, %.frozen
  %50 = mul i32 %div45.i, %.frozen
  %rem46.i.decomposed = sub i32 536870912, %50
  %mul48.i = mul i32 %div45.i, %shr6.i
  %mul49.i = mul i32 %rem46.i.decomposed, %shr6.i
  %div50.i = udiv i32 %mul49.i, %15
  %add.i = add i32 %div50.i, %mul48.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then36.i, %if.then34.i.if.end52.i_crit_edge, %if.end32.i.if.end52.i_crit_edge
  %op_mode.1.i = phi i32 [ 0, %if.end32.i.if.end52.i_crit_edge ], [ %or44.i, %if.then36.i ], [ 1, %if.then34.i.if.end52.i_crit_edge ]
  %phasex_step.1.i = phi i32 [ 536870912, %if.end32.i.if.end52.i_crit_edge ], [ %add.i, %if.then36.i ], [ 536870912, %if.then34.i.if.end52.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %17)
  %cmp53.not.i = icmp eq i32 %shr7.i, %17
  br i1 %cmp53.not.i, label %if.end52.i.if.end80.i_crit_edge, label %if.then54.i

if.end52.i.if.end80.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.then54.i:                                      ; preds = %if.end52.i
  %or56.i = or i32 %op_mode.1.i, 2
  %is_yuv57.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 12
  %51 = ptrtoint ptr %is_yuv57.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_yuv57.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool58.not.i = icmp eq i8 %52, 0
  br i1 %tobool58.not.i, label %if.then54.i.if.end80.i_crit_edge, label %if.then59.i

if.then54.i.if.end80.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.then59.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %17)
  %cmp60.i = icmp ult i32 %shr7.i, %17
  %div63267.i = lshr i32 %25, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %div63267.i, i32 %17)
  %cmp64.not.not.i = icmp ult i32 %div63267.i, %17
  %spec.select269.op.i = select i1 %cmp64.not.not.i, i32 0, i32 16
  %shl.i270.i = select i1 %cmp60.i, i32 32, i32 %spec.select269.op.i
  %or69.i = or i32 %or56.i, %shl.i270.i
  %.frozen33 = freeze i32 %17
  %div71.i = udiv i32 536870912, %.frozen33
  %53 = mul i32 %div71.i, %.frozen33
  %rem73.i.decomposed = sub i32 536870912, %53
  %mul75.i = mul i32 %div71.i, %shr7.i
  %mul76.i = mul i32 %rem73.i.decomposed, %shr7.i
  %div77.i = udiv i32 %mul76.i, %17
  %add78.i = add i32 %div77.i, %mul75.i
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then59.i, %if.then54.i.if.end80.i_crit_edge, %if.end52.i.if.end80.i_crit_edge
  %op_mode.3.i = phi i32 [ %op_mode.1.i, %if.end52.i.if.end80.i_crit_edge ], [ %or69.i, %if.then59.i ], [ %or56.i, %if.then54.i.if.end80.i_crit_edge ]
  %phasey_step.1.i = phi i32 [ 536870912, %if.end52.i.if.end80.i_crit_edge ], [ %add78.i, %if.then59.i ], [ 536870912, %if.then54.i.if.end80.i_crit_edge ]
  %mul.i.i = shl i32 %33, 16
  %add.i.i = add i32 %mul.i.i, 131072
  %shl.i272.i = and i32 %25, -65536
  %or84.i = or i32 %shl.i272.i, %shr6.i
  %mmio.i.i = getelementptr inbounds %struct.mdp4_kms, ptr %31, i32 0, i32 3
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %add.i.i
  tail call void @msm_writel(i32 noundef %or84.i, ptr noundef %add.ptr.i.i) #5
  %add.i274.i = add i32 %mul.i.i, 131076
  %shl.i275.i = and i32 %21, -65536
  %or88.i = or i32 %shl.i275.i, %shr.i
  %56 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i277.i = getelementptr i8, ptr %57, i32 %add.i274.i
  tail call void @msm_writel(i32 noundef %or88.i, ptr noundef %add.ptr.i277.i) #5
  %add.i279.i = add i32 %mul.i.i, 131080
  %and.i280.i = and i32 %15, 65535
  %shl.i281.i = shl i32 %17, 16
  %or92.i = or i32 %shl.i281.i, %and.i280.i
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i283.i = getelementptr i8, ptr %59, i32 %add.i279.i
  tail call void @msm_writel(i32 noundef %or92.i, ptr noundef %add.ptr.i283.i) #5
  %add.i285.i = add i32 %mul.i.i, 131084
  %and.i286.i = and i32 %11, 65535
  %shl.i287.i = shl i32 %13, 16
  %or96.i = or i32 %shl.i287.i, %and.i286.i
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i289.i = getelementptr i8, ptr %61, i32 %add.i285.i
  tail call void @msm_writel(i32 noundef %or96.i, ptr noundef %add.ptr.i289.i) #5
  %62 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %plane, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_private.i.i.i, align 4
  %kms.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %kms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %kms.i.i.i, align 4
  %68 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pipe2.i, align 4
  %mul.i.i.i = shl i32 %69, 16
  %add.i.i.i = add i32 %mul.i.i.i, 131136
  %pitches.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %70 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pitches.i.i, align 8
  %and.i.i.i = and i32 %71, 65535
  %arrayidx6.i.i = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx6.i.i, align 4
  %shl.i.i.i = shl i32 %73, 16
  %or.i.i = or i32 %shl.i.i.i, %and.i.i.i
  %mmio.i.i.i = getelementptr inbounds %struct.mdp4_kms, ptr %67, i32 0, i32 3
  %74 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %75, i32 %add.i.i.i
  tail call void @msm_writel(i32 noundef %or.i.i, ptr noundef %add.ptr.i.i.i) #5
  %add.i50.i.i = add i32 %mul.i.i.i, 131140
  %arrayidx10.i.i = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 2
  %76 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx10.i.i, align 8
  %and.i51.i.i = and i32 %77, 65535
  %arrayidx13.i.i = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 6, i32 3
  %78 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx13.i.i, align 4
  %shl.i52.i.i = shl i32 %79, 16
  %or15.i.i = or i32 %shl.i52.i.i, %and.i51.i.i
  %80 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i54.i.i = getelementptr i8, ptr %81, i32 %add.i50.i.i
  tail call void @msm_writel(i32 noundef %or15.i.i, ptr noundef %add.ptr.i54.i.i) #5
  %add.i56.i.i = add i32 %mul.i.i.i, 131088
  %aspace.i.i = getelementptr inbounds %struct.msm_kms, ptr %67, i32 0, i32 3
  %82 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %aspace.i.i, align 4
  %call17.i.i = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %9, ptr noundef %83, i32 noundef 0) #5
  %84 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i58.i.i = getelementptr i8, ptr %85, i32 %add.i56.i.i
  tail call void @msm_writel(i32 noundef %call17.i.i, ptr noundef %add.ptr.i58.i.i) #5
  %add.i60.i.i = add i32 %mul.i.i.i, 131092
  %86 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %aspace.i.i, align 4
  %call20.i.i = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %9, ptr noundef %87, i32 noundef 1) #5
  %88 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i62.i.i = getelementptr i8, ptr %89, i32 %add.i60.i.i
  tail call void @msm_writel(i32 noundef %call20.i.i, ptr noundef %add.ptr.i62.i.i) #5
  %add.i64.i.i = add i32 %mul.i.i.i, 131096
  %90 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %aspace.i.i, align 4
  %call23.i.i = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %9, ptr noundef %91, i32 noundef 2) #5
  %92 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i66.i.i = getelementptr i8, ptr %93, i32 %add.i64.i.i
  tail call void @msm_writel(i32 noundef %call23.i.i, ptr noundef %add.ptr.i66.i.i) #5
  %add.i68.i.i = add i32 %mul.i.i.i, 131100
  %94 = ptrtoint ptr %aspace.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %aspace.i.i, align 4
  %call26.i.i = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %9, ptr noundef %95, i32 noundef 3) #5
  %96 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i70.i.i = getelementptr i8, ptr %97, i32 %add.i68.i.i
  tail call void @msm_writel(i32 noundef %call26.i.i, ptr noundef %add.ptr.i70.i.i) #5
  %add.i291.i = add i32 %mul.i.i, 131152
  %bpc_a.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 4
  %98 = ptrtoint ptr %bpc_a.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bpc_a.i, align 4
  %shl.i292.i = shl i32 %99, 6
  %and.i293.i = and i32 %shl.i292.i, 192
  %bpc_r.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 1
  %100 = ptrtoint ptr %bpc_r.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bpc_r.i, align 4
  %shl.i294.i = shl i32 %101, 4
  %and.i295.i = and i32 %shl.i294.i, 48
  %bpc_g.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 2
  %102 = ptrtoint ptr %bpc_g.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bpc_g.i, align 4
  %and.i296.i = and i32 %103, 3
  %bpc_b.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 3
  %104 = ptrtoint ptr %bpc_b.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bpc_b.i, align 4
  %shl.i297.i = shl i32 %105, 2
  %and.i298.i = and i32 %shl.i297.i, 12
  %alpha_enable.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 6
  %106 = ptrtoint ptr %alpha_enable.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %alpha_enable.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool105.not.i = icmp eq i8 %107, 0
  %cond.i = select i1 %tobool105.not.i, i32 0, i32 256
  %cpp.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 8
  %108 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cpp.i, align 2
  %conv.i = zext i8 %109 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 9
  %shl.i299.i = add nuw nsw i32 %sub.i, 1536
  %and.i300.i = and i32 %shl.i299.i, 1536
  %unpack_count.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 9
  %110 = ptrtoint ptr %unpack_count.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %unpack_count.i, align 1
  %conv109.i = zext i8 %111 to i32
  %sub110.i = shl nuw nsw i32 %conv109.i, 13
  %shl.i301.i = add nuw nsw i32 %sub110.i, 24576
  %and.i302.i = and i32 %shl.i301.i, 24576
  %fetch_type.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 10
  %112 = ptrtoint ptr %fetch_type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fetch_type.i, align 4
  %shl.i303.i = shl i32 %113, 19
  %and.i304.i = and i32 %shl.i303.i, 1572864
  %chroma_sample.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 11
  %114 = ptrtoint ptr %chroma_sample.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %chroma_sample.i, align 4
  %shl.i305.i = shl i32 %115, 26
  %and.i306.i = and i32 %shl.i305.i, 201326592
  %unpack_tight.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 7
  %116 = ptrtoint ptr %unpack_tight.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %unpack_tight.i, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool119.not.i = icmp eq i8 %117, 0
  %cond121.i = select i1 %tobool119.not.i, i32 0, i32 131072
  %or100.i = or i32 %and.i293.i, %retval.0.i.i
  %or102.i = or i32 %or100.i, %and.i295.i
  %or104.i = or i32 %or102.i, %and.i296.i
  %or106.i = or i32 %or104.i, %and.i298.i
  %or108.i = or i32 %or106.i, %cond.i
  %or112.i = or i32 %or108.i, %and.i300.i
  %or114.i = or i32 %or112.i, %and.i304.i
  %or116.i = or i32 %or114.i, %and.i302.i
  %or118.i = or i32 %or116.i, %and.i306.i
  %or122.i = or i32 %or118.i, %cond121.i
  %118 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i310.i = getelementptr i8, ptr %119, i32 %add.i291.i
  tail call void @msm_writel(i32 noundef %or122.i, ptr noundef %add.ptr.i310.i) #5
  %add.i312.i = add i32 %mul.i.i, 131156
  %unpack.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 5
  %120 = ptrtoint ptr %unpack.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %unpack.i, align 4
  %conv124.i = zext i8 %121 to i32
  %arrayidx127.i = getelementptr %struct.mdp_format, ptr %call12.i, i32 0, i32 5, i32 1
  %122 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx127.i, align 1
  %conv128.i = zext i8 %123 to i32
  %shl.i314.i = shl nuw nsw i32 %conv128.i, 8
  %or130.i = or i32 %shl.i314.i, %conv124.i
  %arrayidx132.i = getelementptr %struct.mdp_format, ptr %call12.i, i32 0, i32 5, i32 2
  %124 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx132.i, align 2
  %conv133.i = zext i8 %125 to i32
  %shl.i316.i = shl nuw nsw i32 %conv133.i, 16
  %or135.i = or i32 %or130.i, %shl.i316.i
  %arrayidx137.i = getelementptr %struct.mdp_format, ptr %call12.i, i32 0, i32 5, i32 3
  %126 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx137.i, align 1
  %conv138.i = zext i8 %127 to i32
  %shl.i318.i = shl nuw i32 %conv138.i, 24
  %or140.i = or i32 %or135.i, %shl.i318.i
  %128 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i320.i = getelementptr i8, ptr %129, i32 %add.i312.i
  tail call void @msm_writel(i32 noundef %or140.i, ptr noundef %add.ptr.i320.i) #5
  %is_yuv141.i = getelementptr inbounds %struct.mdp_format, ptr %call12.i, i32 0, i32 12
  %130 = ptrtoint ptr %is_yuv141.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_yuv141.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool142.not.i = icmp eq i8 %131, 0
  br i1 %tobool142.not.i, label %if.end80.i.if.end147.i_crit_edge, label %if.then143.i

if.end80.i.if.end147.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147.i

if.then143.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  %call144.i = tail call ptr @mdp_get_default_csc_cfg(i32 noundef 1) #5
  %or146.i = or i32 %op_mode.3.i, 2560
  %add.i.i322.i = add i32 %mul.i.i, 148480
  %arrayidx.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 0
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i, align 4
  %134 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i324.i = getelementptr i8, ptr %135, i32 %add.i.i322.i
  tail call void @msm_writel(i32 noundef %133, ptr noundef %add.ptr.i.i324.i) #5
  %add2.i.1.i.i = add i32 %mul.i.i, 148484
  %arrayidx.1.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.1.i.i, align 4
  %138 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %139, i32 %add2.i.1.i.i
  tail call void @msm_writel(i32 noundef %137, ptr noundef %add.ptr.i.1.i.i) #5
  %add2.i.2.i.i = add i32 %mul.i.i, 148488
  %arrayidx.2.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 2
  %140 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.2.i.i, align 4
  %142 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %143, i32 %add2.i.2.i.i
  tail call void @msm_writel(i32 noundef %141, ptr noundef %add.ptr.i.2.i.i) #5
  %add2.i.3.i.i = add i32 %mul.i.i, 148492
  %arrayidx.3.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.3.i.i, align 4
  %146 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.3.i.i = getelementptr i8, ptr %147, i32 %add2.i.3.i.i
  tail call void @msm_writel(i32 noundef %145, ptr noundef %add.ptr.i.3.i.i) #5
  %add2.i.4.i.i = add i32 %mul.i.i, 148496
  %arrayidx.4.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 4
  %148 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.4.i.i, align 4
  %150 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.4.i.i = getelementptr i8, ptr %151, i32 %add2.i.4.i.i
  tail call void @msm_writel(i32 noundef %149, ptr noundef %add.ptr.i.4.i.i) #5
  %add2.i.5.i.i = add i32 %mul.i.i, 148500
  %arrayidx.5.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 5
  %152 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.5.i.i, align 4
  %154 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.5.i.i = getelementptr i8, ptr %155, i32 %add2.i.5.i.i
  tail call void @msm_writel(i32 noundef %153, ptr noundef %add.ptr.i.5.i.i) #5
  %add2.i.6.i.i = add i32 %mul.i.i, 148504
  %arrayidx.6.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 6
  %156 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.6.i.i, align 4
  %158 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.6.i.i = getelementptr i8, ptr %159, i32 %add2.i.6.i.i
  tail call void @msm_writel(i32 noundef %157, ptr noundef %add.ptr.i.6.i.i) #5
  %add2.i.7.i.i = add i32 %mul.i.i, 148508
  %arrayidx.7.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 7
  %160 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.7.i.i, align 4
  %162 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.7.i.i = getelementptr i8, ptr %163, i32 %add2.i.7.i.i
  tail call void @msm_writel(i32 noundef %161, ptr noundef %add.ptr.i.7.i.i) #5
  %add2.i.8.i.i = add i32 %mul.i.i, 148512
  %arrayidx.8.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 1, i32 8
  %164 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.8.i.i, align 4
  %166 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.8.i.i = getelementptr i8, ptr %167, i32 %add2.i.8.i.i
  tail call void @msm_writel(i32 noundef %165, ptr noundef %add.ptr.i.8.i.i) #5
  %add2.i51.i.i = add i32 %mul.i.i, 148736
  %arrayidx5.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 2, i32 0
  %168 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx5.i.i, align 4
  %170 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %171, i32 %add2.i51.i.i
  tail call void @msm_writel(i32 noundef %169, ptr noundef %add.ptr.i53.i.i) #5
  %add2.i57.i.i = add i32 %mul.i.i, 148864
  %arrayidx7.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 3, i32 0
  %172 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx7.i.i, align 4
  %174 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i59.i.i = getelementptr i8, ptr %175, i32 %add2.i57.i.i
  tail call void @msm_writel(i32 noundef %173, ptr noundef %add.ptr.i59.i.i) #5
  %add2.i51.1.i.i = add i32 %mul.i.i, 148740
  %arrayidx5.1.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 2, i32 1
  %176 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx5.1.i.i, align 4
  %178 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i53.1.i.i = getelementptr i8, ptr %179, i32 %add2.i51.1.i.i
  tail call void @msm_writel(i32 noundef %177, ptr noundef %add.ptr.i53.1.i.i) #5
  %add2.i57.1.i.i = add i32 %mul.i.i, 148868
  %arrayidx7.1.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 3, i32 1
  %180 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx7.1.i.i, align 4
  %182 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i59.1.i.i = getelementptr i8, ptr %183, i32 %add2.i57.1.i.i
  tail call void @msm_writel(i32 noundef %181, ptr noundef %add.ptr.i59.1.i.i) #5
  %add2.i51.2.i.i = add i32 %mul.i.i, 148744
  %arrayidx5.2.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 2, i32 2
  %184 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx5.2.i.i, align 4
  %186 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i53.2.i.i = getelementptr i8, ptr %187, i32 %add2.i51.2.i.i
  tail call void @msm_writel(i32 noundef %185, ptr noundef %add.ptr.i53.2.i.i) #5
  %add2.i57.2.i.i = add i32 %mul.i.i, 148872
  %arrayidx7.2.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 3, i32 2
  %188 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx7.2.i.i, align 4
  %190 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i59.2.i.i = getelementptr i8, ptr %191, i32 %add2.i57.2.i.i
  tail call void @msm_writel(i32 noundef %189, ptr noundef %add.ptr.i59.2.i.i) #5
  %add2.i63.i.i = add i32 %mul.i.i, 148992
  %arrayidx15.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 0
  %192 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx15.i.i, align 4
  %194 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.i.i = getelementptr i8, ptr %195, i32 %add2.i63.i.i
  tail call void @msm_writel(i32 noundef %193, ptr noundef %add.ptr.i65.i.i) #5
  %add2.i69.i.i = add i32 %mul.i.i, 149120
  %arrayidx17.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 0
  %196 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx17.i.i, align 4
  %198 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.i.i = getelementptr i8, ptr %199, i32 %add2.i69.i.i
  tail call void @msm_writel(i32 noundef %197, ptr noundef %add.ptr.i71.i.i) #5
  %add2.i63.1.i.i = add i32 %mul.i.i, 148996
  %arrayidx15.1.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 1
  %200 = ptrtoint ptr %arrayidx15.1.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx15.1.i.i, align 4
  %202 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.1.i.i = getelementptr i8, ptr %203, i32 %add2.i63.1.i.i
  tail call void @msm_writel(i32 noundef %201, ptr noundef %add.ptr.i65.1.i.i) #5
  %add2.i69.1.i.i = add i32 %mul.i.i, 149124
  %arrayidx17.1.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 1
  %204 = ptrtoint ptr %arrayidx17.1.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx17.1.i.i, align 4
  %206 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.1.i.i = getelementptr i8, ptr %207, i32 %add2.i69.1.i.i
  tail call void @msm_writel(i32 noundef %205, ptr noundef %add.ptr.i71.1.i.i) #5
  %add2.i63.2.i.i = add i32 %mul.i.i, 149000
  %arrayidx15.2.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 2
  %208 = ptrtoint ptr %arrayidx15.2.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx15.2.i.i, align 4
  %210 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.2.i.i = getelementptr i8, ptr %211, i32 %add2.i63.2.i.i
  tail call void @msm_writel(i32 noundef %209, ptr noundef %add.ptr.i65.2.i.i) #5
  %add2.i69.2.i.i = add i32 %mul.i.i, 149128
  %arrayidx17.2.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 2
  %212 = ptrtoint ptr %arrayidx17.2.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx17.2.i.i, align 4
  %214 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.2.i.i = getelementptr i8, ptr %215, i32 %add2.i69.2.i.i
  tail call void @msm_writel(i32 noundef %213, ptr noundef %add.ptr.i71.2.i.i) #5
  %add2.i63.3.i.i = add i32 %mul.i.i, 149004
  %arrayidx15.3.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 3
  %216 = ptrtoint ptr %arrayidx15.3.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx15.3.i.i, align 4
  %218 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.3.i.i = getelementptr i8, ptr %219, i32 %add2.i63.3.i.i
  tail call void @msm_writel(i32 noundef %217, ptr noundef %add.ptr.i65.3.i.i) #5
  %add2.i69.3.i.i = add i32 %mul.i.i, 149132
  %arrayidx17.3.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 3
  %220 = ptrtoint ptr %arrayidx17.3.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx17.3.i.i, align 4
  %222 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.3.i.i = getelementptr i8, ptr %223, i32 %add2.i69.3.i.i
  tail call void @msm_writel(i32 noundef %221, ptr noundef %add.ptr.i71.3.i.i) #5
  %add2.i63.4.i.i = add i32 %mul.i.i, 149008
  %arrayidx15.4.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 4
  %224 = ptrtoint ptr %arrayidx15.4.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx15.4.i.i, align 4
  %226 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.4.i.i = getelementptr i8, ptr %227, i32 %add2.i63.4.i.i
  tail call void @msm_writel(i32 noundef %225, ptr noundef %add.ptr.i65.4.i.i) #5
  %add2.i69.4.i.i = add i32 %mul.i.i, 149136
  %arrayidx17.4.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 4
  %228 = ptrtoint ptr %arrayidx17.4.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx17.4.i.i, align 4
  %230 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.4.i.i = getelementptr i8, ptr %231, i32 %add2.i69.4.i.i
  tail call void @msm_writel(i32 noundef %229, ptr noundef %add.ptr.i71.4.i.i) #5
  %add2.i63.5.i.i = add i32 %mul.i.i, 149012
  %arrayidx15.5.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 4, i32 5
  %232 = ptrtoint ptr %arrayidx15.5.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx15.5.i.i, align 4
  %234 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i65.5.i.i = getelementptr i8, ptr %235, i32 %add2.i63.5.i.i
  tail call void @msm_writel(i32 noundef %233, ptr noundef %add.ptr.i65.5.i.i) #5
  %add2.i69.5.i.i = add i32 %mul.i.i, 149140
  %arrayidx17.5.i.i = getelementptr %struct.csc_cfg, ptr %call144.i, i32 0, i32 5, i32 5
  %236 = ptrtoint ptr %arrayidx17.5.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx17.5.i.i, align 4
  %238 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i71.5.i.i = getelementptr i8, ptr %239, i32 %add2.i69.5.i.i
  tail call void @msm_writel(i32 noundef %237, ptr noundef %add.ptr.i71.5.i.i) #5
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then143.i, %if.end80.i.if.end147.i_crit_edge
  %op_mode.4.i = phi i32 [ %or146.i, %if.then143.i ], [ %op_mode.3.i, %if.end80.i.if.end147.i_crit_edge ]
  %add.i326.i = add i32 %mul.i.i, 131160
  %240 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i328.i = getelementptr i8, ptr %241, i32 %add.i326.i
  tail call void @msm_writel(i32 noundef %op_mode.4.i, ptr noundef %add.ptr.i328.i) #5
  %add.i330.i = add i32 %mul.i.i, 131164
  %242 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i332.i = getelementptr i8, ptr %243, i32 %add.i330.i
  tail call void @msm_writel(i32 noundef %phasex_step.1.i, ptr noundef %add.ptr.i332.i) #5
  %add.i334.i = add i32 %mul.i.i, 131168
  %244 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i336.i = getelementptr i8, ptr %245, i32 %add.i334.i
  tail call void @msm_writel(i32 noundef %phasey_step.1.i, ptr noundef %add.ptr.i336.i) #5
  br i1 %cmp151.not.i, label %if.end147.i.if.end_crit_edge, label %if.then153.i

if.end147.i.if.end_crit_edge:                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then153.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i338.i = add i32 %mul.i.i, 131144
  %246 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i341.i = getelementptr i8, ptr %247, i32 %add.i338.i
  tail call void @msm_writel(i32 noundef %or84.i, ptr noundef %add.ptr.i341.i) #5
  br label %if.end

do.end:                                           ; preds = %if.end27.i.do.end_crit_edge, %if.end22.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %mdp4_get_frame_format.exit.i.do.end_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %mdp4_get_frame_format.exit.i.do.end_crit_edge ], [ @.str.13, %if.end17.i.do.end_crit_edge ], [ @.str.14, %if.end22.i.do.end_crit_edge ], [ @.str.15, %if.end27.i.do.end_crit_edge ]
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %248 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %249, ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.12.sink) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then153.i, %if.end147.i.if.end_crit_edge, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_default_csc_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 341, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 341, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 342, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 342, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 342, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 343, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 343, i32 10}
!14 = !{ptr @pipe_names, !15, !"pipe_names", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 340, i32 20}
!16 = !{ptr @mdp4_plane_funcs, !17, !"mdp4_plane_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 83, i32 37}
!18 = !{ptr @supported_format_modifiers, !19, !"supported_format_modifiers", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 352, i32 23}
!20 = !{ptr @mdp4_plane_helper_funcs, !21, !"mdp4_plane_helper_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 132, i32 44}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 104, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 129, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 212, i32 3}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 224, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 231, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 236, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 241, i32 3}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c", i32 246, i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
