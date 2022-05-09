; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_crtc = type { %struct.drm_crtc, ptr, ptr, i32, %struct.videomode, i8, i8, i8, %struct.wait_queue_head, ptr, %struct.delayed_work, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.omap_crtc_state = type { %struct.drm_crtc_state, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.omapdss_dsi_ops = type { ptr, ptr }
%struct.omap_overlay_manager_info = type { i32, i32, i32, i8, i8, i8, %struct.omap_dss_cpr_coefs }
%struct.omap_dss_cpr_coefs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/omapdrm/omap_crtc.c\00", [60 x i8] zeroinitializer }, align 32
@omap_crtc_set_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: timeout waiting for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_crtc_set_enabled\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_crtc_set_enabled._entry_ptr = internal global ptr @omap_crtc_set_enabled._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@omap_crtc_dss_register_framedone.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap_crtc_dss_register_framedone\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register framedone %s\00", [42 x i8] zeroinitializer }, align 32
@omap_crtc_dss_unregister_framedone.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"omap_crtc_dss_unregister_framedone\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unregister framedone %s\00", [40 x i8] zeroinitializer }, align 32
@omap_crtc_error_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.omap_crtc_error_irq = private unnamed_addr constant [20 x i8] c"omap_crtc_error_irq\00", align 1
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"*ERROR* %s: errors: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: apply done\0A\00", [16 x i8] zeroinitializer }, align 32
@channel_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@omap_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&omap_crtc->pending_wait\00", [39 x i8] zeroinitializer }, align 32
@omap_crtc_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&omap_crtc->update_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@omap_crtc_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&omap_crtc->update_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@omap_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @omap_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @omap_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @omap_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr @omap_crtc_atomic_set_property, ptr @omap_crtc_atomic_get_property, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_irq_enable_vblank, ptr @omap_irq_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap_crtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 825, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): could not init crtc for: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_crtc_init\00", [17 x i8] zeroinitializer }, align 32
@omap_crtc_init._entry_ptr = internal global ptr @omap_crtc_init._entry, section ".printk_index", align 4
@omap_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @omap_crtc_mode_valid, ptr null, ptr null, ptr @omap_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @omap_crtc_atomic_check, ptr @omap_crtc_atomic_begin, ptr @omap_crtc_atomic_flush, ptr @omap_crtc_atomic_enable, ptr @omap_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tv\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcd2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcd3\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"detected manually updated display!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: GO\0A\00", [24 x i8] zeroinitializer }, align 32
@omap_crtc_atomic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 493, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"manual display update did not finish!\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_crtc_atomic_disable\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_crtc_atomic_disable._entry_ptr = internal global ptr @omap_crtc_atomic_disable._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 89, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 171, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 210, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 237, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 253, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 276, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 312, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"channel_names\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 774, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 802, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 818, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"omap_crtc_funcs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 747, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 824, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"omap_crtc_helper_funcs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 760, i32 43 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 775, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 776, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 777, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 778, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 558, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 575, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 644, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [39 x i8] c"../drivers/gpu/drm/omapdrm/omap_crtc.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 493, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @omap_crtc_atomic_disable._entry, ptr @omap_crtc_atomic_disable._entry_ptr, ptr @omap_crtc_init._entry, ptr @omap_crtc_init._entry_ptr, ptr @omap_crtc_set_enabled._entry, ptr @omap_crtc_set_enabled._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @omap_crtc_error_irq._rs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @channel_names, ptr @omap_crtc_init.__key, ptr @.str.16, ptr @omap_crtc_init.__key.17, ptr @.str.18, ptr @omap_crtc_init.__key.19, ptr @.str.20, ptr @omap_crtc_funcs, ptr @.str.21, ptr @.str.22, ptr @omap_crtc_helper_funcs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_set_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_error_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crtc_atomic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_crtc_timings(ptr noundef readnone %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 4
  ret ptr %vm
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_crtc_channel(ptr nocapture noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_crtc_wait_pending(ptr noundef %crtc) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 91) #8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #8
  %pending6.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %2 = ptrtoint ptr %pending6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pending6.i, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock8.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock8.i, i32 noundef %call3.i) #8
  br i1 %tobool.i.not, label %entry.if.end37_crit_edge, label %if.then11

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then11:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %pending_wait = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then11
  %__ret12.0 = phi i32 [ 25, %if.then11 ], [ %call34, %cleanup ]
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %pending_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc, align 8
  %event_lock.i51 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  %call3.i52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i51) #8
  %9 = ptrtoint ptr %pending6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pending6.i, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i54.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc, align 8
  %event_lock8.i55 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock8.i55, i32 noundef %call3.i52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0)
  %tobool21.not = icmp eq i32 %__ret12.0, 0
  %13 = select i1 %tobool.i54.not, i1 %tobool21.not, i1 false
  %__ret12.1 = select i1 %13, i32 1, i32 %__ret12.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool27.not = icmp eq i32 %__ret12.1, 0
  %14 = select i1 %tobool.i54.not, i1 true, i1 %tobool27.not
  br i1 %14, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret12.1) #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %pending_wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  %__ret.1 = phi i32 [ 25, %entry.if.end37_crit_edge ], [ %__ret12.1, %for.end ]
  ret i32 %__ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_dss_start_update(ptr nocapture noundef readonly %priv, i32 noundef %channel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  tail call void @dispc_mgr_enable(ptr noundef %1, i32 noundef %channel, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_set_enabled(ptr noundef %crtc, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %channel5 = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %4 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel5, align 8
  %enabled = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !77
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool)
  %cmp = icmp eq i8 %7, %frombool
  br i1 %cmp, label %do.end, label %if.end31, !prof !78

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %manually_updated to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %manually_updated, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @omap_irq_enable_framedone(ptr noundef %crtc, i1 noundef zeroext %enable) #8
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %enabled, align 1
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %pipe = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 2
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe, align 4
  %output = getelementptr inbounds %struct.omap_drm_pipeline, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %output, align 4
  %type = getelementptr inbounds %struct.omap_dss_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp39 = icmp eq i32 %18, 32
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dispc, align 4
  tail call void @dispc_mgr_enable(ptr noundef %20, i32 noundef %5, i1 noundef zeroext %enable) #8
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %enabled, align 1
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp48 = icmp eq i32 %5, 1
  br i1 %cmp48, label %if.then50, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %ignore_digit_sync_lost = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 5
  %22 = ptrtoint ptr %ignore_digit_sync_lost to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ignore_digit_sync_lost, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46.if.end51_crit_edge
  %dispc52 = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %dispc52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dispc52, align 4
  %call53 = tail call i32 @dispc_mgr_get_framedone_irq(ptr noundef %24, i32 noundef %5) #8
  %25 = ptrtoint ptr %dispc52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dispc52, align 4
  %call55 = tail call i32 @dispc_mgr_get_vsync_irq(ptr noundef %26, i32 noundef %5) #8
  br i1 %enable, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call ptr @omap_irq_wait_init(ptr noundef %1, i32 noundef %call55, i32 noundef 1) #8
  br label %if.end65

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool59.not = icmp eq i32 %call53, 0
  br i1 %tobool59.not, label %if.else62, label %if.then60

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call ptr @omap_irq_wait_init(ptr noundef %1, i32 noundef %call53, i32 noundef 1) #8
  br label %if.end65

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call ptr @omap_irq_wait_init(ptr noundef %1, i32 noundef %call55, i32 noundef 2) #8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then60, %if.then57
  %wait.0 = phi ptr [ %call58, %if.then57 ], [ %call61, %if.then60 ], [ %call63, %if.else62 ]
  %27 = ptrtoint ptr %dispc52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dispc52, align 4
  tail call void @dispc_mgr_enable(ptr noundef %28, i32 noundef %5, i1 noundef zeroext %enable) #8
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %enabled, align 1
  %call72 = tail call i32 @omap_irq_wait(ptr noundef %1, ptr noundef %wait.0, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end65.if.end81_crit_edge, label %do.end77

if.end65.if.end81_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev78, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 8
  %cond = select i1 %enable, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef %33, ptr noundef nonnull %cond) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end77, %if.end65.if.end81_crit_edge
  %34 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp83 = icmp eq i32 %35, 1
  br i1 %cmp83, label %if.then85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %ignore_digit_sync_lost86 = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 5
  %36 = ptrtoint ptr %ignore_digit_sync_lost86 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ignore_digit_sync_lost86, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end81.cleanup_crit_edge, %if.then41, %if.then33, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_enable_framedone(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_get_framedone_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_get_vsync_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_irq_wait_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_crtc_dss_enable(ptr nocapture noundef readonly %priv, i32 noundef %channel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %channel2 = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 8
  %vm = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 4
  tail call void @dispc_mgr_set_timings(ptr noundef %5, i32 noundef %7, ptr noundef %vm) #8
  tail call void @omap_crtc_set_enabled(ptr noundef %3, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_set_timings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_dss_disable(ptr nocapture noundef readonly %priv, i32 noundef %channel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @omap_crtc_set_enabled(ptr noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_dss_set_timings(ptr nocapture noundef readonly %priv, i32 noundef %channel, ptr nocapture noundef readonly %vm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %5) #8
  %vm2 = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %vm2, ptr %vm, i32 40)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_dss_set_lcd_config(ptr nocapture noundef readonly %priv, i32 noundef %channel, ptr noundef %config) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %5) #8
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispc, align 4
  %channel2 = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2, align 8
  tail call void @dispc_mgr_set_lcd_config(ptr noundef %7, i32 noundef %9, ptr noundef %config) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_set_lcd_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_crtc_dss_register_framedone(ptr nocapture noundef readonly %priv, i32 noundef %channel, ptr noundef %handler, ptr noundef %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %framedone_handler = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %framedone_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %framedone_handler, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_crtc_dss_register_framedone.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_crtc_dss_register_framedone, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !80

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_crtc_dss_register_framedone.__UNIQUE_ID_ddebug316, ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %12 = ptrtoint ptr %framedone_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %handler, ptr %framedone_handler, align 4
  %framedone_handler_data = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %framedone_handler_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %framedone_handler_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_dss_unregister_framedone(ptr nocapture noundef readonly %priv, i32 noundef %channel, ptr noundef readnone %handler, ptr noundef readnone %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.omap_drm_private, ptr %priv, i32 0, i32 8, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_crtc_dss_unregister_framedone.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_crtc_dss_unregister_framedone, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_crtc_dss_unregister_framedone.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %framedone_handler = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %framedone_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %framedone_handler, align 4
  %cmp.not = icmp eq ptr %11, %handler
  br i1 %cmp.not, label %do.end.if.end29_crit_edge, label %do.end23, !prof !81

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %do.end.if.end29_crit_edge
  %framedone_handler_data = getelementptr inbounds %struct.omap_crtc, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %framedone_handler_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %framedone_handler_data, align 8
  %cmp38.not = icmp eq ptr %13, %data
  br i1 %cmp38.not, label %if.end29.if.end60_crit_edge, label %do.end54, !prof !81

if.end29.if.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end54:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #8
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end29.if.end60_crit_edge
  %14 = ptrtoint ptr %framedone_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %framedone_handler, align 4
  %15 = ptrtoint ptr %framedone_handler_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %framedone_handler_data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_error_irq(ptr nocapture noundef readonly %crtc, i32 noundef %irqstatus) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_digit_sync_lost = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 5
  %0 = ptrtoint ptr %ignore_digit_sync_lost to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ignore_digit_sync_lost, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %and = and i32 %irqstatus, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %irqstatus.addr.0 = phi i32 [ %and, %if.then.if.end3_crit_edge ], [ %irqstatus, %entry.if.end3_crit_edge ]
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @omap_crtc_error_irq._rs, ptr noundef nonnull @__func__.omap_crtc_error_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %irqstatus.addr.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_vblank_irq(ptr noundef %crtc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %channel = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 8
  %call = tail call zeroext i1 @dispc_mgr_go_busy(ptr noundef %5, i32 noundef %7) #8
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %event_lock4 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  tail call void @_raw_spin_unlock(ptr noundef %event_lock4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 9
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %pending9 = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %13 = ptrtoint ptr %pending9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pending9, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %pending9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pending9, align 2
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %event_lock13 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 28
  tail call void @_raw_spin_unlock(ptr noundef %event_lock13) #8
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then15

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end8.if.end16_crit_edge
  %pending_wait = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %pending_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dispc_mgr_go_busy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_framedone_irq(ptr noundef %crtc, i32 noundef %irqstatus) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %framedone_handler = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 11
  %0 = ptrtoint ptr %framedone_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %framedone_handler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %framedone_handler_data = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 12
  %2 = ptrtoint ptr %framedone_handler_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %framedone_handler_data, align 8
  tail call void %1(ptr noundef %3) #8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %event = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 9
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #8
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %event, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %pending = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pending, align 2
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock8 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_unlock(ptr noundef %event_lock8) #8
  %pending_wait = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %pending_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crtc_flush(ptr noundef %crtc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %manually_updated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manually_updated, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_work = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 10
  %4 = ptrtoint ptr %update_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %update_work, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %update_work, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_crtc_init(ptr noundef %dev, ptr noundef %pipe, ptr noundef %plane) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %output = getelementptr inbounds %struct.omap_drm_pipeline, ptr %pipe, i32 0, i32 3
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_dss_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @channel_names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1216) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_wait = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %pending_wait, ptr noundef nonnull @.str.16, ptr noundef nonnull @omap_crtc_init.__key) #8
  %pipe2 = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %pipe2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pipe, ptr %pipe2, align 4
  %channel3 = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %channel3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %channel3, align 8
  %name = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %name, align 8
  %update_work = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %update_work, i32 noundef 0) #8
  %12 = ptrtoint ptr %update_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %update_work, align 8
  %lockdep_map = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @omap_crtc_init.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry13 = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %13 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry13, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @omap_crtc_manual_display_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.omap_crtc, ptr %call7.i.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @omap_crtc_init.__key.19) #8
  %call24 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %plane, ptr noundef null, ptr noundef nonnull @omap_crtc_funcs, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end28, label %if.end33

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29, align 4
  %18 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %output, align 4
  %name31 = getelementptr inbounds %struct.omap_dss_device, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %21) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %22 = inttoptr i32 %call24 to ptr
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @omap_crtc_helper_funcs, ptr %helper_private.i, align 8
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dispc, align 4
  %call34 = tail call i32 @dispc_mgr_gamma_size(ptr noundef %25, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call7.i.i, i32 noundef 256, i1 noundef zeroext true, i32 noundef 0) #8
  %call37 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i, i32 noundef 256) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %primary, align 4
  %base39 = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i, i32 0, i32 5
  tail call void @omap_plane_install_properties(ptr noundef %27, ptr noundef %base39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %do.end28 ], [ %call7.i.i, %if.end38 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_manual_display_update(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -1104
  %pipe = getelementptr i8, ptr %data, i32 -108
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %output = getelementptr inbounds %struct.omap_drm_pipeline, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dsi_ops = getelementptr inbounds %struct.omap_dss_device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dsi_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi_ops, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call = tail call i32 %9(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %pending = getelementptr i8, ptr %data, i32 -58
  %10 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pending, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #8
  %pending_wait = getelementptr i8, ptr %data, i32 -56
  tail call void @__wake_up(ptr noundef %pending_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_plane_install_properties(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_reset(ptr noundef %crtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 296) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_destroy(ptr noundef %crtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %1) #8
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #8
  tail call void @kfree(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_crtc_duplicate_state(ptr noundef %crtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !78

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 729, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 296) #12
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #8
  %zpos = getelementptr inbounds %struct.omap_crtc_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zpos, align 4
  %zpos30 = getelementptr inbounds %struct.omap_crtc_state, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %zpos30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %zpos30, align 8
  %rotation = getelementptr inbounds %struct.omap_crtc_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation, align 4
  %rotation31 = getelementptr inbounds %struct.omap_crtc_state, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %rotation31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rotation31, align 4
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %manually_updated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %manually_updated, align 4, !range !77
  %manually_updated33 = getelementptr inbounds %struct.omap_crtc_state, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %manually_updated33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %manually_updated33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end29 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_crtc_atomic_set_property(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state, ptr noundef readnone %property, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 20
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state1, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %primary, align 4
  %call = tail call ptr @drm_atomic_get_plane_state(ptr noundef %5, ptr noundef %7) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary, align 4
  %rotation_property = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %rotation_property to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rotation_property, align 8
  %cmp = icmp eq ptr %12, %property
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %val to i32
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %rotation, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %zorder_prop = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %zorder_prop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zorder_prop, align 4
  %cmp6 = icmp eq ptr %15, %property
  br i1 %cmp6, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = trunc i64 %val to i32
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call, i32 0, i32 15
  %16 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9, ptr %zpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.else.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_crtc_atomic_get_property(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %rotation_property = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %rotation_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rotation_property, align 8
  %cmp = icmp eq ptr %3, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rotation = getelementptr inbounds %struct.omap_crtc_state, ptr %state, i32 0, i32 1
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %zorder_prop = getelementptr inbounds %struct.omap_drm_private, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %zorder_prop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zorder_prop, align 4
  %cmp1 = icmp eq ptr %9, %property
  br i1 %cmp1, label %if.then3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %zpos = getelementptr inbounds %struct.omap_crtc_state, ptr %state, i32 0, i32 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then
  %storemerge.in.in = phi ptr [ %zpos, %if.then3 ], [ %rotation, %if.then ]
  %10 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = zext i32 %storemerge.in to i64
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %storemerge, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_enable_vblank(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_irq_disable_vblank(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %mode) #3 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #8
  %4 = call ptr @memset(ptr %vm, i32 0, i32 40)
  call void @drm_display_mode_to_videomode(ptr noundef %mode, ptr noundef nonnull %vm) #8
  %pipe = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 2
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe, align 4
  %output = getelementptr inbounds %struct.omap_drm_pipeline, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %output, align 4
  %type = getelementptr inbounds %struct.omap_dss_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp.not = icmp eq i32 %10, 8
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dispc, align 4
  %channel = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 8
  %call = call i32 @dispc_mgr_check_timings(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %vm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then.cleanup23_crit_edge

if.then.cleanup23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %max_bandwidth = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 24
  %15 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %if.end2.if.end22_crit_edge, label %if.then4

if.end2.if.end22_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then4:                                         ; preds = %if.end2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %mul = mul i32 %18, 1000
  %conv = sext i32 %mul to i64
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %19 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay, align 4
  %conv5 = zext i16 %20 to i64
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %21 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay, align 2
  %conv7 = zext i16 %22 to i64
  %mul6 = shl nuw nsw i64 %conv5, 2
  %mul8 = mul nsw i64 %mul6, %conv
  %mul10 = mul i64 %mul8, %conv7
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %23 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal, align 2
  %conv11 = zext i16 %24 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %25 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vtotal, align 4
  %conv12 = zext i16 %26 to i32
  %mul13 = mul nuw i32 %conv12, %conv11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul10)
  %cmp164.i.i = icmp ult i64 %mul10, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !81

if.then168.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul10 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul13
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul13, i64 %mul10) #13, !srcloc !82
  %asmresult1.i.i.i = extractvalue { i64, i64 } %27, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv16 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i, i64 %conv16)
  %cmp17 = icmp ugt i64 %dividend.addr.0.i.i, %conv16
  br i1 %cmp17, label %div_u64.exit.cleanup23_crit_edge, label %div_u64.exit.if.end22_crit_edge

div_u64.exit.if.end22_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

div_u64.exit.cleanup23_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end22:                                         ; preds = %div_u64.exit.if.end22_crit_edge, %if.end2.if.end22_crit_edge
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %div_u64.exit.cleanup23_crit_edge, %if.then.cleanup23_crit_edge
  %retval.1 = phi i32 [ 0, %if.end22 ], [ -2, %div_u64.exit.cleanup23_crit_edge ], [ %call, %if.then.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_mode_set_nofb(ptr noundef %crtc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %name1 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 31
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #8
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %9 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_end, align 4
  %conv3 = zext i16 %11 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal, align 2
  %conv4 = zext i16 %13 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv5 = zext i16 %15 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %16 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsync_start, align 4
  %conv6 = zext i16 %17 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsync_end, align 2
  %conv7 = zext i16 %19 to i32
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vtotal, align 4
  %conv8 = zext i16 %21 to i32
  %type = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 28
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 2
  %conv9 = zext i8 %23 to i32
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %3, ptr noundef %name1, i32 noundef %call, i32 noundef %5, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %25) #8
  %vm = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 4
  tail call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef %vm) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %degamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %degamma_lut to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %degamma_lut, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %length2 = getelementptr inbounds %struct.drm_property_blob, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp ult i32 %11, 16
  br i1 %cmp, label %if.then.cleanup12_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %12 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %primary, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %14 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %planes.i, align 4
  %index.i.i25 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 17
  %16 = ptrtoint ptr %index.i.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i25, align 4
  %new_state.i26 = getelementptr %struct.__drm_planes_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i26, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.end4.cleanup12_crit_edge, label %if.then7

if.end4.cleanup12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

if.then7:                                         ; preds = %if.end4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zpos, align 4
  %zpos8 = getelementptr inbounds %struct.omap_crtc_state, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %zpos8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %zpos8, align 4
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 14
  %23 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rotation, align 4
  %rotation9 = getelementptr inbounds %struct.omap_crtc_state, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %rotation9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rotation9, align 4
  %pipe.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 2
  %26 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipe.i, align 4
  %output.i = getelementptr inbounds %struct.omap_drm_pipeline, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %output.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then7.omap_crtc_is_manually_updated.exit_crit_edge, label %lor.lhs.false.i

if.then7.omap_crtc_is_manually_updated.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_is_manually_updated.exit

lor.lhs.false.i:                                  ; preds = %if.then7
  %dsi_ops.i = getelementptr inbounds %struct.omap_dss_device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %dsi_ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsi_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.omap_crtc_is_manually_updated.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.omap_crtc_is_manually_updated.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_is_manually_updated.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %is_video_mode.i = getelementptr inbounds %struct.omapdss_dsi_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %is_video_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %is_video_mode.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.omap_crtc_is_manually_updated.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.omap_crtc_is_manually_updated.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_is_manually_updated.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %call.i = tail call zeroext i1 %33(ptr noundef nonnull %29) #8
  br i1 %call.i, label %if.end.i.omap_crtc_is_manually_updated.exit_crit_edge, label %if.end8.i

if.end.i.omap_crtc_is_manually_updated.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_is_manually_updated.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28) #8
  br label %omap_crtc_is_manually_updated.exit

omap_crtc_is_manually_updated.exit:               ; preds = %if.end8.i, %if.end.i.omap_crtc_is_manually_updated.exit_crit_edge, %lor.lhs.false2.i.omap_crtc_is_manually_updated.exit_crit_edge, %lor.lhs.false.i.omap_crtc_is_manually_updated.exit_crit_edge, %if.then7.omap_crtc_is_manually_updated.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end8.i ], [ false, %lor.lhs.false2.i.omap_crtc_is_manually_updated.exit_crit_edge ], [ false, %lor.lhs.false.i.omap_crtc_is_manually_updated.exit_crit_edge ], [ false, %if.then7.omap_crtc_is_manually_updated.exit_crit_edge ], [ false, %if.end.i.omap_crtc_is_manually_updated.exit_crit_edge ]
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %5, i32 0, i32 3
  %frombool = zext i1 %retval.0.i to i8
  %34 = ptrtoint ptr %manually_updated to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %manually_updated, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %omap_crtc_is_manually_updated.exit, %if.end4.cleanup12_crit_edge, %if.then.cleanup12_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup12_crit_edge ], [ 0, %omap_crtc_is_manually_updated.exit ], [ 0, %if.end4.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap_crtc_atomic_begin(ptr nocapture noundef %crtc, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #3 align 64 {
entry:
  %info.i = alloca %struct.omap_overlay_manager_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state2, align 4
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  %degamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %degamma_lut to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %degamma_lut, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %length12 = getelementptr inbounds %struct.drm_property_blob, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length12, align 4
  %div74 = lshr i32 %13, 3
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %lut.0 = phi ptr [ %11, %if.then7 ], [ null, %if.then.if.end_crit_edge ]
  %length.0 = phi i32 [ %div74, %if.then7 ], [ 0, %if.then.if.end_crit_edge ]
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dispc, align 4
  %channel = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel, align 8
  tail call void @dispc_mgr_set_gamma(ptr noundef %15, i32 noundef %17, ptr noundef %lut.0, i32 noundef %length.0) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info.i) #8
  %22 = call ptr @memset(ptr %info.i, i32 0, i32 36)
  %23 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state2, align 4
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %ctm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctm.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end13.omap_crtc_write_crtc_properties.exit_crit_edge, label %if.then.i

if.end13.omap_crtc_write_crtc_properties.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_write_crtc_properties.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %cpr_enable.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 5
  %29 = ptrtoint ptr %cpr_enable.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %cpr_enable.i, align 2
  %cpr_coefs.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %28, align 8
  %and.i.i.i = lshr i64 %31, 24
  %32 = and i64 %31, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %32)
  %cmp2.i.i.i = icmp ult i64 %32, 8573157376
  %extract.t.i.i.i = trunc i64 %and.i.i.i to i16
  %cond6.off0.i.i.i = select i1 %cmp2.i.i.i, i16 %extract.t.i.i.i, i16 511
  %sub.i.i.i = sub i16 0, %cond6.off0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool.not17.i.i.i = icmp slt i64 %31, 0
  %ret.0.i.i.i = select i1 %tobool.not17.i.i.i, i16 %sub.i.i.i, i16 %cond6.off0.i.i.i
  %33 = ptrtoint ptr %cpr_coefs.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %ret.0.i.i.i, ptr %cpr_coefs.i, align 4
  %arrayidx2.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx2.i.i, align 8
  %and.i41.i.i = lshr i64 %35, 24
  %36 = and i64 %35, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %36)
  %cmp2.i42.i.i = icmp ult i64 %36, 8573157376
  %extract.t.i43.i.i = trunc i64 %and.i41.i.i to i16
  %cond6.off0.i44.i.i = select i1 %cmp2.i42.i.i, i16 %extract.t.i43.i.i, i16 511
  %sub.i45.i.i = sub i16 0, %cond6.off0.i44.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not17.i46.i.i = icmp slt i64 %35, 0
  %ret.0.i47.i.i = select i1 %tobool.not17.i46.i.i, i16 %sub.i45.i.i, i16 %cond6.off0.i44.i.i
  %rg.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %rg.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %ret.0.i47.i.i, ptr %rg.i.i, align 2
  %arrayidx5.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx5.i.i, align 8
  %and.i48.i.i = lshr i64 %39, 24
  %40 = and i64 %39, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %40)
  %cmp2.i49.i.i = icmp ult i64 %40, 8573157376
  %extract.t.i50.i.i = trunc i64 %and.i48.i.i to i16
  %cond6.off0.i51.i.i = select i1 %cmp2.i49.i.i, i16 %extract.t.i50.i.i, i16 511
  %sub.i52.i.i = sub i16 0, %cond6.off0.i51.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool.not17.i53.i.i = icmp slt i64 %39, 0
  %ret.0.i54.i.i = select i1 %tobool.not17.i53.i.i, i16 %sub.i52.i.i, i16 %cond6.off0.i51.i.i
  %rb.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %rb.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %ret.0.i54.i.i, ptr %rb.i.i, align 4
  %arrayidx8.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx8.i.i, align 8
  %and.i55.i.i = lshr i64 %43, 24
  %44 = and i64 %43, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %44)
  %cmp2.i56.i.i = icmp ult i64 %44, 8573157376
  %extract.t.i57.i.i = trunc i64 %and.i55.i.i to i16
  %cond6.off0.i58.i.i = select i1 %cmp2.i56.i.i, i16 %extract.t.i57.i.i, i16 511
  %sub.i59.i.i = sub i16 0, %cond6.off0.i58.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool.not17.i60.i.i = icmp slt i64 %43, 0
  %ret.0.i61.i.i = select i1 %tobool.not17.i60.i.i, i16 %sub.i59.i.i, i16 %cond6.off0.i58.i.i
  %gr.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 3
  %45 = ptrtoint ptr %gr.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %ret.0.i61.i.i, ptr %gr.i.i, align 2
  %arrayidx11.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx11.i.i, align 8
  %and.i62.i.i = lshr i64 %47, 24
  %48 = and i64 %47, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %48)
  %cmp2.i63.i.i = icmp ult i64 %48, 8573157376
  %extract.t.i64.i.i = trunc i64 %and.i62.i.i to i16
  %cond6.off0.i65.i.i = select i1 %cmp2.i63.i.i, i16 %extract.t.i64.i.i, i16 511
  %sub.i66.i.i = sub i16 0, %cond6.off0.i65.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool.not17.i67.i.i = icmp slt i64 %47, 0
  %ret.0.i68.i.i = select i1 %tobool.not17.i67.i.i, i16 %sub.i66.i.i, i16 %cond6.off0.i65.i.i
  %gg.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 4
  %49 = ptrtoint ptr %gg.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %ret.0.i68.i.i, ptr %gg.i.i, align 4
  %arrayidx14.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 5
  %50 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx14.i.i, align 8
  %and.i69.i.i = lshr i64 %51, 24
  %52 = and i64 %51, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %52)
  %cmp2.i70.i.i = icmp ult i64 %52, 8573157376
  %extract.t.i71.i.i = trunc i64 %and.i69.i.i to i16
  %cond6.off0.i72.i.i = select i1 %cmp2.i70.i.i, i16 %extract.t.i71.i.i, i16 511
  %sub.i73.i.i = sub i16 0, %cond6.off0.i72.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool.not17.i74.i.i = icmp slt i64 %51, 0
  %ret.0.i75.i.i = select i1 %tobool.not17.i74.i.i, i16 %sub.i73.i.i, i16 %cond6.off0.i72.i.i
  %gb.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 5
  %53 = ptrtoint ptr %gb.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %ret.0.i75.i.i, ptr %gb.i.i, align 2
  %arrayidx17.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx17.i.i, align 8
  %and.i76.i.i = lshr i64 %55, 24
  %56 = and i64 %55, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %56)
  %cmp2.i77.i.i = icmp ult i64 %56, 8573157376
  %extract.t.i78.i.i = trunc i64 %and.i76.i.i to i16
  %cond6.off0.i79.i.i = select i1 %cmp2.i77.i.i, i16 %extract.t.i78.i.i, i16 511
  %sub.i80.i.i = sub i16 0, %cond6.off0.i79.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool.not17.i81.i.i = icmp slt i64 %55, 0
  %ret.0.i82.i.i = select i1 %tobool.not17.i81.i.i, i16 %sub.i80.i.i, i16 %cond6.off0.i79.i.i
  %br.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 6
  %57 = ptrtoint ptr %br.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %ret.0.i82.i.i, ptr %br.i.i, align 4
  %arrayidx20.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx20.i.i, align 8
  %and.i83.i.i = lshr i64 %59, 24
  %60 = and i64 %59, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %60)
  %cmp2.i84.i.i = icmp ult i64 %60, 8573157376
  %extract.t.i85.i.i = trunc i64 %and.i83.i.i to i16
  %cond6.off0.i86.i.i = select i1 %cmp2.i84.i.i, i16 %extract.t.i85.i.i, i16 511
  %sub.i87.i.i = sub i16 0, %cond6.off0.i86.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool.not17.i88.i.i = icmp slt i64 %59, 0
  %ret.0.i89.i.i = select i1 %tobool.not17.i88.i.i, i16 %sub.i87.i.i, i16 %cond6.off0.i86.i.i
  %bg.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 7
  %61 = ptrtoint ptr %bg.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %ret.0.i89.i.i, ptr %bg.i.i, align 2
  %arrayidx23.i.i = getelementptr [9 x i64], ptr %28, i32 0, i32 8
  %62 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx23.i.i, align 8
  %and.i90.i.i = lshr i64 %63, 24
  %64 = and i64 %63, 9223372036837998592
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %64)
  %cmp2.i91.i.i = icmp ult i64 %64, 8573157376
  %extract.t.i92.i.i = trunc i64 %and.i90.i.i to i16
  %cond6.off0.i93.i.i = select i1 %cmp2.i91.i.i, i16 %extract.t.i92.i.i, i16 511
  %sub.i94.i.i = sub i16 0, %cond6.off0.i93.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool.not17.i95.i.i = icmp slt i64 %63, 0
  %ret.0.i96.i.i = select i1 %tobool.not17.i95.i.i, i16 %sub.i94.i.i, i16 %cond6.off0.i93.i.i
  %bb.i.i = getelementptr inbounds %struct.omap_overlay_manager_info, ptr %info.i, i32 0, i32 6, i32 8
  %65 = ptrtoint ptr %bb.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %ret.0.i96.i.i, ptr %bb.i.i, align 4
  br label %omap_crtc_write_crtc_properties.exit

omap_crtc_write_crtc_properties.exit:             ; preds = %if.then.i, %if.end13.omap_crtc_write_crtc_properties.exit_crit_edge
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %21, i32 0, i32 4
  %66 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dispc.i, align 4
  %channel.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 3
  %68 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i, align 8
  call void @dispc_mgr_setup(ptr noundef %67, i32 noundef %69, ptr noundef nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info.i) #8
  %enabled = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 6
  %70 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %enabled, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool14.not = icmp eq i8 %71, 0
  br i1 %tobool14.not, label %omap_crtc_write_crtc_properties.exit.cleanup_crit_edge, label %if.end16

omap_crtc_write_crtc_properties.exit.cleanup_crit_edge: ; preds = %omap_crtc_write_crtc_properties.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %omap_crtc_write_crtc_properties.exit
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %72 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %73) #8
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %5, i32 0, i32 3
  %74 = ptrtoint ptr %manually_updated to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %manually_updated, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool17.not = icmp eq i8 %75, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %76 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %78 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %state2, align 4
  %manually_updated.i = getelementptr inbounds %struct.omap_crtc_state, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %manually_updated.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %manually_updated.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i76 = icmp eq i8 %81, 0
  br i1 %tobool.not.i76, label %if.then18.omap_crtc_flush.exit_crit_edge, label %if.end.i

if.then18.omap_crtc_flush.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_flush.exit

if.end.i:                                         ; preds = %if.then18
  %update_work.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 10
  %82 = ptrtoint ptr %update_work.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %update_work.i, align 4
  %and1.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.omap_crtc_flush.exit_crit_edge

if.end.i.omap_crtc_flush.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_flush.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %84 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %84, ptr noundef %update_work.i, i32 noundef 0) #8
  br label %omap_crtc_flush.exit

omap_crtc_flush.exit:                             ; preds = %if.then5.i, %if.end.i.omap_crtc_flush.exit_crit_edge, %if.then18.omap_crtc_flush.exit_crit_edge
  %pending.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %85 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pending.i, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i77 = icmp eq i8 %86, 0
  br i1 %tobool.not.i77, label %omap_crtc_flush.exit.if.end.i79_crit_edge, label %do.end.i, !prof !81

omap_crtc_flush.exit.if.end.i79_crit_edge:        ; preds = %omap_crtc_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i79

do.end.i:                                         ; preds = %omap_crtc_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i79

if.end.i79:                                       ; preds = %do.end.i, %omap_crtc_flush.exit.if.end.i79_crit_edge
  %87 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %pending.i, align 2
  %88 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %state2, align 4
  %event.i = getelementptr inbounds %struct.drm_crtc_state, ptr %89, i32 0, i32 18
  %90 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %event.i, align 4
  %tobool22.not.i = icmp eq ptr %91, null
  br i1 %tobool22.not.i, label %if.end.i79.cleanup.sink.split_crit_edge, label %if.end.i79.cleanup.sink.split.sink.split_crit_edge

if.end.i79.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end.i79.cleanup.sink.split_crit_edge:          ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end16
  %call = call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end22.if.end37_crit_edge, label %do.end, !prof !81

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 656, i32 noundef 9, ptr noundef null) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end22.if.end37_crit_edge
  %92 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %crtc, align 8
  %event_lock46 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %event_lock46) #8
  %dispc47 = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %94 = ptrtoint ptr %dispc47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dispc47, align 4
  %96 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %channel.i, align 8
  call void @dispc_mgr_go(ptr noundef %95, i32 noundef %97) #8
  %pending.i80 = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %98 = ptrtoint ptr %pending.i80 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pending.i80, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i81 = icmp eq i8 %99, 0
  br i1 %tobool.not.i81, label %if.end37.if.end.i86_crit_edge, label %do.end.i82, !prof !81

if.end37.if.end.i86_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i86

do.end.i82:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i86

if.end.i86:                                       ; preds = %do.end.i82, %if.end37.if.end.i86_crit_edge
  %100 = ptrtoint ptr %pending.i80 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %pending.i80, align 2
  %101 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state2, align 4
  %event.i84 = getelementptr inbounds %struct.drm_crtc_state, ptr %102, i32 0, i32 18
  %103 = ptrtoint ptr %event.i84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %event.i84, align 4
  %tobool22.not.i85 = icmp eq ptr %104, null
  br i1 %tobool22.not.i85, label %if.end.i86.cleanup.sink.split_crit_edge, label %if.end.i86.cleanup.sink.split.sink.split_crit_edge

if.end.i86.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end.i86.cleanup.sink.split_crit_edge:          ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i86.cleanup.sink.split.sink.split_crit_edge, %if.end.i79.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %91, %if.end.i79.cleanup.sink.split.sink.split_crit_edge ], [ %104, %if.end.i86.cleanup.sink.split.sink.split_crit_edge ]
  %event.i84.sink = phi ptr [ %event.i, %if.end.i79.cleanup.sink.split.sink.split_crit_edge ], [ %event.i84, %if.end.i86.cleanup.sink.split.sink.split_crit_edge ]
  %event26.i87 = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 9
  %105 = ptrtoint ptr %event26.i87 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %.sink, ptr %event26.i87, align 4
  %106 = ptrtoint ptr %event.i84.sink to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %event.i84.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i86.cleanup.sink.split_crit_edge, %if.end.i79.cleanup.sink.split_crit_edge
  %107 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %crtc, align 8
  %event_lock50 = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 28
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock50) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %omap_crtc_write_crtc_properties.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state2, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %7) #8
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dispc, align 4
  %call = tail call i32 @dispc_runtime_get(ptr noundef %9) #8
  %manually_updated = getelementptr inbounds %struct.omap_crtc_state, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %manually_updated to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %manually_updated, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  %call5 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end.if.end20_crit_edge, label %do.end, !prof !81

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 467, i32 noundef 9, ptr noundef null) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %pending.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 7
  %14 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pending.i, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end20.if.end.i_crit_edge, label %do.end.i, !prof !81

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end20.if.end.i_crit_edge
  %16 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pending.i, align 2
  %17 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state2, align 4
  %event.i = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %event.i, align 4
  %tobool22.not.i = icmp eq ptr %20, null
  br i1 %tobool22.not.i, label %if.end.i.omap_crtc_arm_event.exit_crit_edge, label %if.then23.i

if.end.i.omap_crtc_arm_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_crtc_arm_event.exit

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %event26.i = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 9
  %21 = ptrtoint ptr %event26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %event26.i, align 4
  %22 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %event.i, align 4
  br label %omap_crtc_arm_event.exit

omap_crtc_arm_event.exit:                         ; preds = %if.then23.i, %if.end.i.omap_crtc_arm_event.exit_crit_edge
  %23 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc, align 8
  %event_lock30 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock30) #8
  br label %cleanup

cleanup:                                          ; preds = %omap_crtc_arm_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %name = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %5) #8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %state4 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state4, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state4, align 4
  %event8 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc, align 8
  %event_lock10 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock10) #8
  %update_work = getelementptr inbounds %struct.omap_crtc, ptr %crtc, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %update_work) #8
  %call11 = tail call i32 @omap_crtc_wait_pending(ptr noundef %crtc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.30) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dispc, align 4
  tail call void @dispc_runtime_put(ptr noundef %20) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_mgr_check_timings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_set_gamma(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_go(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_mgr_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_runtime_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_runtime_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 89, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 171, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @omap_crtc_set_enabled._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @omap_crtc_set_enabled._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 210, i32 2}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 237, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @omap_crtc_dss_register_framedone.__UNIQUE_ID_ddebug316, !14, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 253, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @omap_crtc_dss_unregister_framedone.__UNIQUE_ID_ddebug317, !19, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 276, i32 2}
!24 = !{ptr @omap_crtc_error_irq._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.omap_crtc_error_irq, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 312, i32 2}
!29 = !{ptr @omap_crtc_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 802, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap_crtc_init.__key.17, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 818, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @omap_crtc_init.__key.19, !33, !"__key", i1 false, i1 false}
!36 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 824, i32 3}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @omap_crtc_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap_crtc_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 775, i32 27}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 776, i32 29}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 777, i32 28}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 778, i32 28}
!50 = !{ptr @channel_names, !51, !"channel_names", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 774, i32 20}
!52 = !{ptr @omap_crtc_funcs, !53, !"omap_crtc_funcs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 747, i32 36}
!54 = !{ptr @omap_crtc_helper_funcs, !55, !"omap_crtc_helper_funcs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 760, i32 43}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 558, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 575, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 644, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/omapdrm/omap_crtc.c", i32 493, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @omap_crtc_atomic_disable._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap_crtc_atomic_disable._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2156784254}
!80 = !{i64 2149151106, i64 2149151111, i64 2149151124, i64 2149151168, i64 2149151202, i64 2149151223}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148008656, i64 2148008936, i64 2148009270, i64 2148009604}
