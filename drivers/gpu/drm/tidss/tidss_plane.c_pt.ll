; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tidss_device = type { %struct.drm_device, ptr, ptr, ptr, i32, [4 x ptr], i32, [4 x ptr], i32, %struct.spinlock, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.anon.85 = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dispc_features = type { i32, [3 x i32], %struct.dispc_features_scaling, i32, ptr, ptr, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i32], %struct.tidss_vp_feat, i32, [4 x ptr], [4 x i8], [4 x i32] }
%struct.dispc_features_scaling = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tidss_vp_feat = type { %struct.tidss_vp_color_feat }
%struct.tidss_vp_color_feat = type { i32, i32, i8 }
%struct.tidss_plane = type { %struct.drm_plane, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.tidss_crtc = type { %struct.drm_crtc, i32, ptr, %struct.completion }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@tidss_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tidss_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @tidss_plane_atomic_check, ptr @tidss_plane_atomic_update, ptr @tidss_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tidss_plane_atomic_check.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tidss\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tidss_plane_atomic_check\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/tidss/tidss_plane.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_check.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: x-position %u not divisible subpixel size %u\0A\00", [46 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_check.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: y-position %u not divisible subpixel size %u\0A\00", [46 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_check.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: src width %u not divisible by subpixel size %u\0A\00", [44 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_update.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tidss_plane_atomic_update\00", [38 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.7, ptr @.str.2, i32 132, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to setup plane %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tidss_plane_atomic_update._entry_ptr = internal global ptr @tidss_plane_atomic_update._entry, section ".printk_index", align 4
@tidss_plane_atomic_disable.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tidss_plane_atomic_disable\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"tidss_plane_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 166, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"tidss_plane_helper_funcs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 160, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 73, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 80, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 87, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 118, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 131, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [39 x i8] c"../drivers/gpu/drm/tidss/tidss_plane.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 147, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @tidss_plane_atomic_update._entry, ptr @tidss_plane_atomic_update._entry_ptr, ptr @tidss_plane_funcs, ptr @tidss_plane_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_plane_atomic_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tidss_plane_create(ptr noundef %tidss, i32 noundef %hw_plane_id, i32 noundef %plane_type, i32 noundef %crtc_mask, ptr noundef %formats, i32 noundef %num_formats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 2
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %num_planes1 = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %num_planes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 536) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_plane_id3 = getelementptr inbounds %struct.tidss_plane, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %hw_plane_id3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %hw_plane_id, ptr %hw_plane_id3, align 8
  %call4 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %tidss, ptr noundef nonnull %call7.i.i, i32 noundef %crtc_mask, ptr noundef nonnull @tidss_plane_funcs, ptr noundef %formats, i32 noundef %num_formats, ptr noundef null, i32 noundef %plane_type, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end6:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tidss_plane_helper_funcs, ptr %helper_private.i, align 8
  %sub = add i32 %3, -1
  %call9 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef %hw_plane_id, i32 noundef 0, i32 noundef %sub) #4
  %call11 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end14:                                         ; preds = %if.end6
  %call16 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end19:                                         ; preds = %if.end14
  %call21 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_crit_edge

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err:                                              ; preds = %if.end19.err_crit_edge, %if.end14.err_crit_edge, %if.end6.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.err_crit_edge ], [ %call11, %if.end6.err_crit_edge ], [ %call16, %if.end14.err_crit_edge ], [ %call21, %if.end19.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %7 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %err ], [ %call7.i.i, %if.end19.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #4
  tail call void @kfree(ptr noundef %plane) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
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
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %hw_plane_id = getelementptr inbounds %struct.tidss_plane, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %hw_plane_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_plane_id, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_check, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_check.__UNIQUE_ID_ddebug306, ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %14 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %visible, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call13 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %13) #4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call13, i32 noundef 0, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %format, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call22 = tail call ptr @drm_format_info(i32 noundef %21) #4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %23, 16
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call22, i32 0, i32 6
  %24 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hsub, align 2
  %rem.lhs.trunc = trunc i32 %shr to i16
  %rem.rhs.trunc = zext i8 %25 to i16
  %rem169 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem169)
  %cmp23.not = icmp eq i16 %rem169, 0
  br i1 %cmp23.not, label %if.end47, label %do.body26

do.body26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_check, %if.then38)) #4
          to label %cleanup [label %if.then38], !srcloc !40

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev39, align 4
  %28 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_x, align 4
  %shr41 = lshr i32 %29, 16
  %30 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hsub, align 2
  %conv43 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_check.__UNIQUE_ID_ddebug307, ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %shr41, i32 noundef %conv43) #4
  br label %cleanup

if.end47:                                         ; preds = %if.end20
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_y, align 4
  %shr48 = lshr i32 %33, 16
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call22, i32 0, i32 7
  %34 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vsub, align 1
  %rem50.lhs.trunc = trunc i32 %shr48 to i16
  %rem50.rhs.trunc = zext i8 %35 to i16
  %rem50170 = urem i16 %rem50.lhs.trunc, %rem50.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem50170)
  %cmp51.not = icmp eq i16 %rem50170, 0
  br i1 %cmp51.not, label %if.end75, label %do.body54

do.body54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_check, %if.then66)) #4
          to label %cleanup [label %if.then66], !srcloc !40

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  %dev67 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev67, align 4
  %38 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_y, align 4
  %shr69 = lshr i32 %39, 16
  %40 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vsub, align 1
  %conv71 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_check.__UNIQUE_ID_ddebug308, ptr noundef %37, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %shr69, i32 noundef %conv71) #4
  br label %cleanup

if.end75:                                         ; preds = %if.end47
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %42 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_w, align 4
  %shr76 = lshr i32 %43, 16
  %rem79.lhs.trunc = trunc i32 %shr76 to i16
  %rem79171 = urem i16 %rem79.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem79171)
  %cmp80.not = icmp eq i16 %rem79171, 0
  br i1 %cmp80.not, label %if.end104, label %do.body83

do.body83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_check, %if.then95)) #4
          to label %cleanup [label %if.then95], !srcloc !40

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  %dev96 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %44 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev96, align 4
  %46 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_w, align 4
  %shr98 = lshr i32 %47, 16
  %48 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hsub, align 2
  %conv100 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_check.__UNIQUE_ID_ddebug309, ptr noundef %45, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %shr98, i32 noundef %conv100) #4
  br label %cleanup

if.end104:                                        ; preds = %if.end75
  %visible105 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %50 = ptrtoint ptr %visible105 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %visible105, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool106.not = icmp eq i8 %51, 0
  br i1 %tobool106.not, label %if.end104.cleanup_crit_edge, label %if.end108

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end108:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crtc, align 4
  %hw_videoport113 = getelementptr inbounds %struct.tidss_crtc, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hw_videoport113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_videoport113, align 8
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %7, i32 0, i32 3
  %56 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dispc, align 4
  %call114 = tail call i32 @dispc_plane_check(ptr noundef %57, i32 noundef %9, ptr noundef %5, i32 noundef %55) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end104.cleanup_crit_edge, %if.then95, %do.body83, %if.then66, %do.body54, %if.then38, %do.body26, %if.end17.cleanup_crit_edge, %if.then15, %if.then10
  %retval.0 = phi i32 [ %15, %if.then15 ], [ 0, %if.then10 ], [ %call18, %if.end17.cleanup_crit_edge ], [ -22, %if.then38 ], [ -22, %if.then66 ], [ -22, %if.then95 ], [ 0, %if.end104.cleanup_crit_edge ], [ %call114, %if.end108 ], [ -22, %do.body26 ], [ -22, %do.body54 ], [ -22, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %3, i32 %5, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_update.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_update, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_update.__UNIQUE_ID_ddebug310, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %10 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %visible, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispc, align 4
  %hw_plane_id = getelementptr inbounds %struct.tidss_plane, ptr %plane, i32 0, i32 1
  %14 = ptrtoint ptr %hw_plane_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_plane_id, align 8
  %call11 = tail call i32 @dispc_plane_enable(ptr noundef %13, i32 noundef %15, i1 noundef zeroext false) #4
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  %hw_videoport16 = getelementptr inbounds %struct.tidss_crtc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %hw_videoport16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_videoport16, align 8
  %dispc17 = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dispc17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispc17, align 4
  %hw_plane_id18 = getelementptr inbounds %struct.tidss_plane, ptr %plane, i32 0, i32 1
  %22 = ptrtoint ptr %hw_plane_id18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_plane_id18, align 8
  %call19 = tail call i32 @dispc_plane_setup(ptr noundef %21, i32 noundef %23, ptr noundef %7, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end31, label %do.end24

do.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plane, align 8
  %dev26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev26, align 4
  %28 = ptrtoint ptr %hw_plane_id18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_plane_id18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %29) #8
  %30 = ptrtoint ptr %dispc17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dispc17, align 4
  %32 = ptrtoint ptr %hw_plane_id18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_plane_id18, align 8
  %call30 = tail call i32 @dispc_plane_enable(ptr noundef %31, i32 noundef %33, i1 noundef zeroext false) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %dispc17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dispc17, align 4
  %36 = ptrtoint ptr %hw_plane_id18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_plane_id18, align 8
  %call34 = tail call i32 @dispc_plane_enable(ptr noundef %35, i32 noundef %37, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end24, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_plane_atomic_disable.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_plane_atomic_disable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_plane_atomic_disable.__UNIQUE_ID_ddebug311, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %hw_plane_id = getelementptr inbounds %struct.tidss_plane, ptr %plane, i32 0, i32 1
  %6 = ptrtoint ptr %hw_plane_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_plane_id, align 8
  %call8 = tail call i32 @dispc_plane_enable(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_plane_check(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_plane_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_plane_setup(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @tidss_plane_funcs, !1, !"tidss_plane_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 166, i32 37}
!2 = !{ptr @tidss_plane_helper_funcs, !3, !"tidss_plane_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 160, i32 44}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 36, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug306, !5, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 73, i32 3}
!12 = !{ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug307, !11, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 80, i32 3}
!15 = !{ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug308, !14, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 87, i32 3}
!18 = !{ptr @tidss_plane_atomic_check.__UNIQUE_ID_ddebug309, !17, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 118, i32 2}
!21 = !{ptr @tidss_plane_atomic_update.__UNIQUE_ID_ddebug310, !20, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 131, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tidss_plane_atomic_update._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @tidss_plane_atomic_update._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tidss/tidss_plane.c", i32 147, i32 2}
!30 = !{ptr @tidss_plane_atomic_disable.__UNIQUE_ID_ddebug311, !29, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2149079087, i64 2149079092, i64 2149079105, i64 2149079149, i64 2149079183, i64 2149079204}
!41 = !{i8 0, i8 2}
