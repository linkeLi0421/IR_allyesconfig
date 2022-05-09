; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.87 = type { i32, ptr }
%struct.tidss_device = type { %struct.drm_device, ptr, ptr, ptr, i32, [4 x ptr], i32, [4 x ptr], i32, %struct.spinlock, i32 }
%struct.tidss_crtc = type { %struct.drm_crtc, i32, ptr, %struct.completion }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dispc_features = type { i32, [3 x i32], %struct.dispc_features_scaling, i32, ptr, ptr, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i32], %struct.tidss_vp_feat, i32, [4 x ptr], [4 x i8], [4 x i32] }
%struct.dispc_features_scaling = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tidss_vp_feat = type { %struct.tidss_vp_color_feat }
%struct.tidss_vp_color_feat = type { i32, i32, i8 }
%struct.tidss_crtc_state = type { %struct.drm_crtc_state, i8, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tidss_plane = type { %struct.drm_plane, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tidss_crtc_error_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tidss_crtc_error_irq = private unnamed_addr constant [21 x i8] c"tidss_crtc_error_irq\00", align 1
@tidss_crtc_error_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.tidss_crtc_error_irq, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CRTC%u SYNC LOST: (irq %llx)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/tidss/tidss_crtc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tidss_crtc_error_irq._entry_ptr = internal global ptr @tidss_crtc_error_irq._entry, section ".printk_index", align 4
@tidss_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @tidss_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @tidss_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @tidss_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tidss_crtc_enable_vblank, ptr @tidss_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@tidss_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @tidss_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tidss_crtc_atomic_check, ptr null, ptr @tidss_crtc_atomic_flush, ptr @tidss_crtc_atomic_enable, ptr @tidss_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tidss_crtc_enable_vblank.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tidss\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tidss_crtc_enable_vblank\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@tidss_crtc_disable_vblank.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.2, ptr @.str.8, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tidss_crtc_disable_vblank\00", [38 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_check.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.2, ptr @.str.8, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tidss_crtc_atomic_check\00", [40 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_check.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: bad mode: %ux%u pclk %u kHz\0A\00", [63 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_flush.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tidss_crtc_atomic_flush\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %s enabled %d, needs modeset %d, event %p\0A\00", [49 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_enable.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tidss_crtc_atomic_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s, event %p\0A\00", [18 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_disable.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.15, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tidss_crtc_atomic_disable\00", [38 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.16, ptr @.str.2, i32 280, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout waiting for framedone on crtc %d\00", [55 x i8] zeroinitializer }, align 32
@tidss_crtc_atomic_disable._entry_ptr = internal global ptr @tidss_crtc_atomic_disable._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 81, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"tidss_crtc_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 395, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"tidss_crtc_helper_funcs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 309, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 87, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 325, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 339, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 109, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 175, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 230, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 271, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [38 x i8] c"../drivers/gpu/drm/tidss/tidss_crtc.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 279, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @tidss_crtc_atomic_disable._entry, ptr @tidss_crtc_atomic_disable._entry_ptr, ptr @tidss_crtc_error_irq._entry, ptr @tidss_crtc_error_irq._entry_ptr, ptr @tidss_crtc_error_irq._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tidss_crtc_funcs, ptr @tidss_crtc_helper_funcs, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_crtc_error_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_crtc_error_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_crtc_atomic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_crtc_vblank_irq(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #4
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #4
  %dispc.i = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc.i, align 4
  %hw_videoport.i = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %hw_videoport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_videoport.i, align 8
  %call6.i = tail call zeroext i1 @dispc_vp_go_busy(ptr noundef %3, i32 noundef %5) #4
  br i1 %call6.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call3.i) #4
  br label %tidss_crtc_finish_page_flip.exit

if.end.i:                                         ; preds = %entry
  %event8.i = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 2
  %6 = ptrtoint ptr %event8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event8.i, align 4
  store ptr null, ptr %event8.i, align 4
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call3.i) #4
  br label %tidss_crtc_finish_page_flip.exit

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call3.i) #4
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #4
  br label %tidss_crtc_finish_page_flip.exit

tidss_crtc_finish_page_flip.exit:                 ; preds = %if.end13.i, %if.then11.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_crtc_framedone_irq(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %framedone_completion = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 3
  tail call void @complete(ptr noundef %framedone_completion) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_crtc_error_irq(ptr nocapture noundef readonly %crtc, i64 noundef %irqstatus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @tidss_crtc_error_irq._rs, ptr noundef nonnull @__func__.tidss_crtc_error_irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_videoport, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %5, i64 noundef %irqstatus) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tidss_crtc_create(ptr noundef %tidss, i32 noundef %hw_videoport, ptr noundef %primary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 2
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %has_ctm1 = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %has_ctm1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_ctm1, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1056) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_videoport4 = getelementptr inbounds %struct.tidss_crtc, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %hw_videoport4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %hw_videoport, ptr %hw_videoport4, align 8
  %framedone_completion = getelementptr inbounds %struct.tidss_crtc, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %framedone_completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %framedone_completion, align 8
  %wait.i = getelementptr inbounds %struct.tidss_crtc, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #4
  %call6 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %tidss, ptr noundef nonnull %call7.i.i, ptr noundef %primary, ptr noundef null, ptr noundef nonnull @tidss_crtc_funcs, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %7 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tidss_crtc_helper_funcs, ptr %helper_private.i, align 8
  %9 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %feat, align 4
  %vp_feat11 = getelementptr inbounds %struct.dispc_features, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %vp_feat11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vp_feat11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 256
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call7.i.i, i32 noundef 0, i1 noundef zeroext %tobool, i32 noundef %spec.select) #4
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.then18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i, i32 noundef %spec.select) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then7 ], [ %call7.i.i, %if.then18 ], [ %call7.i.i, %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dispc_vp_go_busy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 296) #8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %state, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #4
  tail call void @kfree(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tidss_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !56

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 368, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 296) #8
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #4
  %plane_pos_changed = getelementptr inbounds %struct.tidss_crtc_state, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %plane_pos_changed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %plane_pos_changed, align 4
  %bus_format = getelementptr inbounds %struct.tidss_crtc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_format, align 4
  %bus_format30 = getelementptr inbounds %struct.tidss_crtc_state, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %bus_format30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bus_format30, align 8
  %bus_flags = getelementptr inbounds %struct.tidss_crtc_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_flags, align 4
  %bus_flags31 = getelementptr inbounds %struct.tidss_crtc_state, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %bus_flags31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bus_flags31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end29 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_enable_vblank.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_enable_vblank, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_enable_vblank.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @tidss_runtime_get(ptr noundef %1) #4
  tail call void @tidss_irq_enable_vblank(ptr noundef %crtc) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_disable_vblank.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_disable_vblank, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_disable_vblank.__UNIQUE_ID_ddebug322, ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @tidss_irq_disable_vblank(ptr noundef %crtc) #4
  tail call void @tidss_runtime_put(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tidss_runtime_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_irq_enable_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_irq_disable_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_runtime_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_videoport, align 8
  %call = tail call i32 @dispc_vp_mode_valid(ptr noundef %3, i32 noundef %5, ptr noundef %mode) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %dispc1 = getelementptr inbounds %struct.tidss_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dispc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dispc1, align 4
  %hw_videoport5 = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %10 = ptrtoint ptr %hw_videoport5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_videoport5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_atomic_check, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug316, ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %call14 = tail call i32 @dispc_vp_mode_valid(ptr noundef %9, i32 noundef %11, ptr noundef %adjusted_mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %if.end34, label %do.body16

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_atomic_check, %if.then28)) #4
          to label %cleanup [label %if.then28], !srcloc !57

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %19 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay, align 2
  %conv30 = zext i16 %21 to i32
  %22 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %adjusted_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug317, ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv30, i32 noundef %23) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 @dispc_vp_bus_check(ptr noundef %9, i32 noundef %11, ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then28, %do.body16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %if.then28 ], [ -22, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_atomic_flush.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_atomic_flush, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %state9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %12 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state9, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %15 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp ne i8 %15, 0
  %conv = zext i1 %16 to i32
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable, align 4, !range !55
  %19 = zext i8 %18 to i32
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %20 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %event, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_atomic_flush.__UNIQUE_ID_ddebug318, ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %conv, i32 noundef %19, ptr noundef %21) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state15 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %22 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state15, align 4
  %enable16 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %enable16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable16, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %mode_changed.i213 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %mode_changed.i213 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i214 = load i8, ptr %mode_changed.i213, align 2
  %27 = and i8 %bf.load.i214, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %.not = icmp eq i8 %27, 0
  br i1 %.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %7, i32 0, i32 3
  %28 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dispc, align 4
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %30 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_videoport, align 8
  %call24 = tail call zeroext i1 @dispc_vp_go_busy(ptr noundef %29, i32 noundef %31) #4
  br i1 %call24, label %do.end40, label %if.end56, !prof !56

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end56:                                         ; preds = %if.end23
  %32 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state15, align 4
  %event59 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %event59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %event59, align 4
  %tobool60.not = icmp eq ptr %35, null
  br i1 %tobool60.not, label %do.end78, label %if.end94, !prof !56

do.end78:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 196, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end94:                                         ; preds = %if.end56
  %36 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dispc, align 4
  %38 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_vp_setup(ptr noundef %37, i32 noundef %39, ptr noundef %33, i1 noundef zeroext false) #4
  tail call fastcc void @tidss_crtc_position_planes(ptr noundef %7, ptr noundef %crtc, ptr noundef %5, i1 noundef zeroext false)
  %call99 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp.not = icmp eq i32 %call99, 0
  br i1 %cmp.not, label %if.end94.if.end122_crit_edge, label %do.end116, !prof !58

if.end94.if.end122_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

do.end116:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #4
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end94.if.end122_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  %call136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #4
  %40 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dispc, align 4
  %42 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_vp_go(ptr noundef %41, i32 noundef %43) #4
  %event144 = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 2
  %44 = ptrtoint ptr %event144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %event144, align 4
  %tobool145.not = icmp eq ptr %45, null
  br i1 %tobool145.not, label %if.end122.if.end167_crit_edge, label %do.end161, !prof !58

if.end122.if.end167_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

do.end161:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef null) #4
  br label %if.end167

if.end167:                                        ; preds = %do.end161, %if.end122.if.end167_crit_edge
  %46 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state15, align 4
  %event176 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %event176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %event176, align 4
  %50 = ptrtoint ptr %event144 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %event144, align 4
  store ptr null, ptr %event176, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call136) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %do.end78, %do.end40, %if.end19.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %state4 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state4, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_atomic_enable.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_atomic_enable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %12 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state4, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_atomic_enable.__UNIQUE_ID_ddebug319, ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call11 = tail call i32 @tidss_runtime_get(ptr noundef %7) #4
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dispc, align 4
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %18 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_videoport, align 8
  %20 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %21, 1000
  %call12 = tail call i32 @dispc_vp_set_clk_rate(ptr noundef %17, i32 noundef %19, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %22 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispc, align 4
  %24 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_videoport, align 8
  %call17 = tail call i32 @dispc_vp_enable_clk(ptr noundef %23, i32 noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %26 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dispc, align 4
  %28 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_videoport, align 8
  %30 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state4, align 4
  tail call void @dispc_vp_setup(ptr noundef %27, i32 noundef %29, ptr noundef %31, i1 noundef zeroext true) #4
  tail call fastcc void @tidss_crtc_position_planes(ptr noundef %7, ptr noundef %crtc, ptr noundef %5, i1 noundef zeroext true)
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #4
  %32 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dispc, align 4
  %34 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_videoport, align 8
  %36 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state4, align 4
  tail call void @dispc_vp_prepare(ptr noundef %33, i32 noundef %35, ptr noundef %37) #4
  %38 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dispc, align 4
  %40 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_videoport, align 8
  %42 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state4, align 4
  tail call void @dispc_vp_enable(ptr noundef %39, i32 noundef %41, ptr noundef %43) #4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #4
  %44 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state4, align 4
  %event41 = getelementptr inbounds %struct.drm_crtc_state, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %event41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %event41, align 4
  %tobool42.not = icmp eq ptr %47, null
  br i1 %tobool42.not, label %if.end20.if.end48_crit_edge, label %if.then43

if.end20.if.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then43:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %47) #4
  %48 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state4, align 4
  %event47 = getelementptr inbounds %struct.drm_crtc_state, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %event47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %event47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end20.if.end48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_crtc_atomic_disable.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_crtc_atomic_disable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 4
  %state8 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state8, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_crtc_atomic_disable.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %framedone_completion = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %framedone_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %framedone_completion, align 4
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dispc, align 4
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %11 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_vp_disable(ptr noundef %10, i32 noundef %12) #4
  %call11 = tail call i32 @wait_for_completion_timeout(ptr noundef %framedone_completion, i32 noundef 50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 4
  %15 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_videoport, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %16) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %do.end.if.end19_crit_edge
  %17 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dispc, align 4
  %19 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_vp_unprepare(ptr noundef %18, i32 noundef %20) #4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #4
  %state31 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %21 = ptrtoint ptr %state31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state31, align 4
  %event32 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %event32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %event32, align 4
  %tobool33.not = icmp eq ptr %24, null
  br i1 %tobool33.not, label %if.end19.if.end39_crit_edge, label %if.then34

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %24) #4
  %25 = ptrtoint ptr %state31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state31, align 4
  %event38 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %event38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %event38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end19.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call26) #4
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #4
  %28 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dispc, align 4
  %30 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_vp_disable_clk(ptr noundef %29, i32 noundef %31) #4
  tail call void @tidss_runtime_put(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_vp_mode_valid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_vp_bus_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_setup(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tidss_crtc_position_planes(ptr nocapture noundef readonly %tidss, ptr noundef readonly %crtc, ptr nocapture noundef readonly %old_state, i1 noundef zeroext %newmodeset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %old_state, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  br i1 %newmodeset, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %zpos_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %zpos_changed, align 2
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %plane_pos_changed = getelementptr inbounds %struct.tidss_crtc_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %plane_pos_changed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %plane_pos_changed, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %feat = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 2
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %num_planes77 = getelementptr inbounds %struct.dispc_features, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %num_planes77 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp78.not = icmp eq i32 %11, 0
  br i1 %cmp78.not, label %if.end.cleanup_crit_edge, label %for.cond7.preheader.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 3
  %hw_videoport = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %if.end32.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %layer.079 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc37, %if.end32.for.cond7.preheader_crit_edge ]
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 17
  %14 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_total_plane, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp873 = icmp sgt i32 %15, 0
  br i1 %cmp873, label %for.body9.lr.ph, label %for.cond7.preheader.if.end32_crit_edge

for.cond7.preheader.if.end32_crit_edge:           ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %16 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %planes, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.lr.ph
  %cmp876 = phi i1 [ true, %for.body9.lr.ph ], [ %cmp8, %for.inc.for.body9_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.inc.for.body9_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %17, i32 %i.074
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.body9.for.inc_crit_edge, label %land.lhs.true11

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body9
  %new_state = getelementptr %struct.__drm_planes_state, ptr %17, i32 %i.074, i32 3
  %20 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state, align 4
  %crtc18 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %crtc18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc18, align 4
  %cmp19.not = icmp eq ptr %23, %crtc
  br i1 %cmp19.not, label %lor.lhs.false, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 22
  %24 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %visible, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end22

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end22:                                         ; preds = %lor.lhs.false
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %normalized_zpos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %layer.079)
  %cmp23 = icmp eq i32 %27, %layer.079
  br i1 %cmp23, label %if.then28, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.074, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp8 = icmp slt i32 %inc, %15
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.inc.if.end32_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9

for.inc.if.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dispc, align 4
  %hw_plane_id = getelementptr inbounds %struct.tidss_plane, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %hw_plane_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_plane_id, align 8
  %32 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_videoport, align 8
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 4
  %34 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 5
  %36 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_y, align 4
  tail call void @dispc_ovr_set_plane(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %layer.079) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %for.inc.if.end32_crit_edge, %for.cond7.preheader.if.end32_crit_edge
  %cmp871 = phi i1 [ %cmp876, %if.then28 ], [ false, %for.cond7.preheader.if.end32_crit_edge ], [ %cmp8, %for.inc.if.end32_crit_edge ]
  %38 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dispc, align 4
  %40 = ptrtoint ptr %hw_videoport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_videoport, align 8
  tail call void @dispc_ovr_enable_layer(ptr noundef %39, i32 noundef %41, i32 noundef %layer.079, i1 noundef zeroext %cmp871) #4
  %inc37 = add nuw i32 %layer.079, 1
  %42 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %feat, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_planes, align 4
  %cmp = icmp ult i32 %inc37, %45
  br i1 %cmp, label %if.end32.for.cond7.preheader_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32.for.cond7.preheader_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond7.preheader

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_go(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_ovr_set_plane(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_ovr_enable_layer(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_vp_set_clk_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_vp_enable_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_prepare(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_enable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_unprepare(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_vp_disable_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 81, i32 2}
!2 = !{ptr @tidss_crtc_error_irq._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.tidss_crtc_error_irq, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tidss_crtc_error_irq._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @tidss_crtc_error_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @init_completion.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/completion.h", i32 87, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tidss_crtc_funcs, !14, !"tidss_crtc_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 395, i32 36}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 325, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tidss_crtc_enable_vblank.__UNIQUE_ID_ddebug321, !16, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 339, i32 2}
!22 = !{ptr @tidss_crtc_disable_vblank.__UNIQUE_ID_ddebug322, !21, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!23 = !{ptr @tidss_crtc_helper_funcs, !24, !"tidss_crtc_helper_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 309, i32 43}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 100, i32 2}
!27 = !{ptr @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug316, !26, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 109, i32 3}
!30 = !{ptr @tidss_crtc_atomic_check.__UNIQUE_ID_ddebug317, !29, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 175, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tidss_crtc_atomic_flush.__UNIQUE_ID_ddebug318, !32, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 230, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tidss_crtc_atomic_enable.__UNIQUE_ID_ddebug319, !36, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 271, i32 2}
!41 = !{ptr @tidss_crtc_atomic_disable.__UNIQUE_ID_ddebug320, !40, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tidss/tidss_crtc.c", i32 279, i32 3}
!44 = !{ptr @tidss_crtc_atomic_disable._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tidss_crtc_atomic_disable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
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
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2149084239, i64 2149084244, i64 2149084257, i64 2149084301, i64 2149084335, i64 2149084356}
!58 = !{!"branch_weights", i32 2000, i32 1}
