; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hvs_format = type { i32, i32, i32, i32, i8 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.87 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.90, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.91, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.90 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.91 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@vc4_plane_async_set_fb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/vc4/vc4_plane.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm2711-vc5\00", [47 x i8] zeroinitializer }, align 32
@vc4_plane_init.modifiers = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 504403158265495553, i64 504403158265495556, i64 504403158265495555, i64 504403158265495557, i64 0, i64 72057594037927935], [48 x i8] zeroinitializer }, align 32
@hvs_formats = internal constant { [19 x %struct.hvs_format], [68 x i8] } { [19 x %struct.hvs_format] [%struct.hvs_format { i32 875713112, i32 7, i32 3, i32 2, i8 0 }, %struct.hvs_format { i32 875713089, i32 7, i32 3, i32 2, i8 0 }, %struct.hvs_format { i32 875708993, i32 7, i32 2, i32 3, i8 0 }, %struct.hvs_format { i32 875709016, i32 7, i32 2, i32 3, i8 0 }, %struct.hvs_format { i32 909199186, i32 4, i32 2, i32 0, i8 0 }, %struct.hvs_format { i32 909199170, i32 4, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 892424769, i32 3, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 892424792, i32 3, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 875710290, i32 5, i32 2, i32 0, i8 0 }, %struct.hvs_format { i32 875710274, i32 5, i32 3, i32 0, i8 0 }, %struct.hvs_format { i32 909202777, i32 10, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 909203033, i32 10, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 842093913, i32 8, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 842094169, i32 8, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 842094158, i32 9, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 825382478, i32 9, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 909203022, i32 11, i32 0, i32 0, i8 0 }, %struct.hvs_format { i32 825644622, i32 11, i32 1, i32 0, i8 0 }, %struct.hvs_format { i32 808661072, i32 17, i32 0, i32 0, i8 1 }], [68 x i8] zeroinitializer }, align 32
@vc4_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @vc4_plane_reset, ptr null, ptr @vc4_plane_duplicate_state, ptr @vc4_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@vc4_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @vc4_prepare_fb, ptr @vc4_cleanup_fb, ptr @vc4_plane_atomic_check, ptr @vc4_plane_atomic_update, ptr null, ptr @vc4_plane_atomic_async_check, ptr @vc4_plane_atomic_async_update }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SAND height too large (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported FB tiling flag 0x%16llx\00", [60 x i8] zeroinitializer }, align 32
@colorspace_coeffs = internal constant { [2 x [3 x [3 x i32]]], [56 x i8] } { [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 15728640, i32 -416086872, i32 419332], [3 x i32] [i32 15728640, i32 -227048280, i32 470557], [3 x i32] [i32 15728640, i32 -197815128, i32 439844]], [3 x [3 x i32]] [[3 x i32] [i32 0, i32 -365652992, i32 368070], [3 x i32] [i32 0, i32 -197622784, i32 413147], [3 x i32] [i32 0, i32 -172567552, i32 386530]]], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid crtc state\0A\00", [44 x i8] zeroinitializer }, align 32
@vc4_plane_allocate_lbm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.vc4_plane_mode_set = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1073749504, i32 1073749248, i32 1073747968, i32 1073749760, i32 1073748736, i32 1073748224, i32 1073747968, i32 1073748992, i32 1073748480], [60 x i8] zeroinitializer }, align 32
@switch.table.vc4_plane_mode_set.5 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 6, i32 5, i32 0, i32 7, i32 3, i32 1, i32 0, i32 4, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.vc4_plane_mode_set.6 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 6, i32 5, i32 0, i32 7, i32 3, i32 1, i32 0, i32 4, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.vc4_plane_mode_set.7 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 808661072, i64 825382478, i64 842094158, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199170, i64 909199186]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 64, i64 0, i64 504403158265495555, i64 504403158265495556, i64 504403158265495557]
@__sancov_gen_cov_switch_values.9 = internal global [21 x i64] [i64 19, i64 32, i64 808661072, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199170, i64 909199186, i64 909202777, i64 909203022, i64 909203033]
@__sancov_gen_cov_switch_values.10 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 64, i64 0, i64 504403158265495553, i64 504403158265495555, i64 504403158265495556, i64 504403158265495557]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 17]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1223, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1468, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1469, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"hvs_formats\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 37, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"vc4_plane_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1447, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"vc4_plane_helper_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1384, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 819, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 908, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"colorspace_coeffs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 631, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/gpu/drm/vc4/vc4_plane.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 352, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"switch.table.vc4_plane_mode_set\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [34 x i8] c"switch.table.vc4_plane_mode_set.5\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [34 x i8] c"switch.table.vc4_plane_mode_set.6\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [34 x i8] c"switch.table.vc4_plane_mode_set.7\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @vc4_plane_init.modifiers, ptr @hvs_formats, ptr @vc4_plane_funcs, ptr @vc4_plane_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @colorspace_coeffs, ptr @.str.4, ptr @switch.table.vc4_plane_mode_set, ptr @switch.table.vc4_plane_mode_set.5, ptr @switch.table.vc4_plane_mode_set.6, ptr @switch.table.vc4_plane_mode_set.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_plane_init.modifiers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hvs_formats to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @colorspace_coeffs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_plane_mode_set to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_plane_mode_set.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_plane_mode_set.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_plane_mode_set.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_plane_write_dlist(ptr nocapture noundef readonly %plane, ptr noundef %dlist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %hw_dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hw_dlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dlist, ptr %hw_dlist, align 8
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlist_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11.not = icmp eq i32 %4, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %dlist1 = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.012 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %dlist1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dlist1, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %i.012
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx2 = getelementptr i32, ptr %dlist, i32 %i.012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2, i32 %9) #8, !srcloc !33
  %inc = add nuw i32 %i.012, 1
  %10 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dlist_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %11, %do.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vc4_plane_dlist_size(ptr nocapture noundef readonly %state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlist_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_plane_async_set_fb(ptr nocapture noundef readonly %plane, ptr noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %call1 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %lor.rhs.land.rhs_crit_edge, label %lor.rhs.if.end31_crit_edge

lor.rhs.if.end31_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b54 = load i1, ptr @vc4_plane_async_set_fb.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !34

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vc4_plane_async_set_fb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %lor.rhs.if.end31_crit_edge
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 7
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 8
  %add = add i32 %11, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %add)
  %hw_dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %hw_dlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_dlist, align 8
  %ptr0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptr0_offset, align 8
  %arrayidx42 = getelementptr i32, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42, i32 %12) #8, !srcloc !33
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dlist, align 4
  %19 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr0_offset, align 8
  %arrayidx44 = getelementptr i32, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %arrayidx44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_plane_init(ptr noundef %dev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %formats = alloca [19 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %formats) #8
  %0 = call ptr @memset(ptr %formats, i32 255, i32 76)
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 528, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc12, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_formats.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %i.042)
  %tobool6.not.not = icmp ne i32 %i.042, 18
  %brmerge = select i1 %tobool6.not.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr [19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 %i.042
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr [19 x i32], ptr %formats, i32 0, i32 %num_formats.041
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx10, align 4
  %inc = add i32 %num_formats.041, 1
  %inc12 = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc12, 19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %num_formats.147 = phi i32 [ %inc, %for.inc.for.end_crit_edge ], [ %num_formats.041, %for.body.for.end_crit_edge ]
  %call13 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull @vc4_plane_funcs, ptr noundef nonnull %formats, i32 noundef %num_formats.147, ptr noundef nonnull @vc4_plane_init.modifiers, i32 noundef %type, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vc4_plane_helper_funcs, ptr %helper_private.i, align 8
  %call18 = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #8
  %call19 = call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 53) #8
  %call20 = call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call.i, i32 noundef 7, i32 noundef 3, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then15 ], [ %call.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %formats) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_plane_create_additional_planes(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 19
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %call = tail call ptr @vc4_plane_init(ptr noundef %drm, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  %sub2 = sub i32 32, %1
  %shr = lshr i32 -1, %sub2
  %possible_crtcs = getelementptr inbounds %struct.drm_plane, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %possible_crtcs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 20
  %3 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn38 = load ptr, ptr %crtc_list, align 4
  %cmp7.not39 = icmp eq ptr %.pn38, %crtc_list
  br i1 %cmp7.not39, label %for.end.for.end21_crit_edge, label %for.end.for.body8_crit_edge

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body8:                                        ; preds = %for.inc15.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc15.for.body8_crit_edge ], [ %.pn38, %for.end.for.body8_crit_edge ]
  %call9 = tail call ptr @vc4_plane_init(ptr noundef %drm, i32 noundef 2)
  %cmp.i36 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %for.body8.for.inc15_crit_edge, label %if.then11

for.body8.for.inc15_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

if.then11:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  %index.i.i = getelementptr i8, ptr %.pn40, i32 148
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %5
  %possible_crtcs13 = getelementptr inbounds %struct.drm_plane, ptr %call9, i32 0, i32 5
  %6 = ptrtoint ptr %possible_crtcs13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl.i, ptr %possible_crtcs13, align 8
  %cursor = getelementptr i8, ptr %.pn40, i32 144
  %7 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %cursor, align 8
  br label %for.inc15

for.inc15:                                        ; preds = %if.then11, %for.body8.for.inc15_crit_edge
  %8 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp7.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp7.not, label %for.inc15.for.end21_crit_edge, label %for.inc15.for.body8_crit_edge

for.inc15.for.body8_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc15.for.end21_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.end21:                                        ; preds = %for.inc15.for.end21_crit_edge, %for.end.for.end21_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 368) #11
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !36

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 368, i32 noundef 3264) #8
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %lbm = getelementptr inbounds %struct.vc4_plane_state, ptr %call, i32 0, i32 22
  %2 = call ptr @memset(ptr %lbm, i32 0, i32 112)
  %dlist_initialized = getelementptr inbounds %struct.vc4_plane_state, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %dlist_initialized to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dlist_initialized, align 1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call) #8
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlist, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dlist_count, align 4
  %mul = shl i32 %7, 2
  %call31 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %mul, i32 noundef 3264) #8
  %8 = ptrtoint ptr %dlist to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %dlist, align 4
  %tobool34.not = icmp eq ptr %call31, null
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

if.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dlist_count, align 4
  %dlist_size = getelementptr inbounds %struct.vc4_plane_state, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %dlist_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dlist_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then35 ], [ null, %if.end23.cleanup_crit_edge ], [ %call, %if.end36 ], [ %call, %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_plane_destroy_state(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %flags.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 22, i32 12
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lbm = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 22
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hvs, align 8
  %mm_lock = getelementptr inbounds %struct.vc4_hvs, ptr %5, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mm_lock) #8
  tail call void @drm_mm_remove_node(ptr noundef %lbm) #8
  %6 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvs, align 8
  %mm_lock10 = getelementptr inbounds %struct.vc4_hvs, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mm_lock10, i32 noundef %call5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlist, align 4
  tail call void @kfree(ptr noundef %9) #8
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #8
  tail call void @kfree(ptr noundef %state) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vc4_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %format, label %sw.default11 [
    i32 875713112, label %entry.sw.bb_crit_edge
    i32 875713089, label %entry.sw.bb_crit_edge15
    i32 875708993, label %entry.sw.bb_crit_edge16
    i32 875709016, label %entry.sw.bb_crit_edge17
    i32 909199186, label %entry.sw.bb_crit_edge18
    i32 909199170, label %entry.sw.bb_crit_edge19
    i32 892424769, label %entry.sw.bb_crit_edge20
    i32 892424792, label %entry.sw.bb_crit_edge21
    i32 842094158, label %entry.sw.bb2_crit_edge
    i32 825382478, label %entry.sw.bb2_crit_edge22
    i32 808661072, label %sw.bb6
  ]

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  %and = and i64 %modifier, -72057594037927681
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %switch.selectcmp.case1 = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 504403158265495553, i64 %and)
  %switch.selectcmp.case2 = icmp eq i64 %and, 504403158265495553
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge22
  %and3 = and i64 %modifier, -72057594037927681
  call void @__sanitizer_cov_trace_switch(i64 %and3, ptr @__sancov_gen_cov_switch_values.8)
  switch i64 %and3, label %sw.default5 [
    i64 0, label %sw.bb2.return_crit_edge
    i64 504403158265495555, label %sw.bb2.return_crit_edge23
    i64 504403158265495556, label %sw.bb2.return_crit_edge24
    i64 504403158265495557, label %sw.bb2.return_crit_edge25
  ]

sw.bb2.return_crit_edge25:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2.return_crit_edge24:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2.return_crit_edge23:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default5:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i64 %modifier, -72057594037927681
  call void @__sanitizer_cov_trace_const_cmp8(i64 504403158265495556, i64 %and7)
  %cond = icmp eq i64 %and7, 504403158265495556
  br label %return

sw.default11:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  br label %return

return:                                           ; preds = %sw.default11, %sw.bb6, %sw.default5, %sw.bb2.return_crit_edge, %sw.bb2.return_crit_edge23, %sw.bb2.return_crit_edge24, %sw.bb2.return_crit_edge25, %sw.bb
  %retval.0 = phi i1 [ %cmp, %sw.default11 ], [ false, %sw.default5 ], [ %switch.selectcmp, %sw.bb ], [ true, %sw.bb2.return_crit_edge ], [ true, %sw.bb2.return_crit_edge23 ], [ true, %sw.bb2.return_crit_edge24 ], [ true, %sw.bb2.return_crit_edge25 ], [ %cond, %sw.bb6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_prepare_fb(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %1, i32 noundef 0) #8
  %call3 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %state) #8
  %state4 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %2 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb5, align 4
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb2, align 4
  %cmp = icmp eq ptr %3, %5
  %tobool.not = icmp eq ptr %5, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @vc4_bo_dec_usecnt(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dlist_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dlist_count, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.rhs.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i:                                       ; preds = %entry
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end, !prof !36

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i
  %call3 = tail call fastcc i32 @vc4_plane_mode_set(ptr noundef %plane, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %y_scaling.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 18
  %15 = ptrtoint ptr %y_scaling.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %y_scaling.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end5.vc4_lbm_size.exit.i_crit_edge

if.end5.vc4_lbm_size.exit.i_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_lbm_size.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5
  %arrayidx3.i.i = getelementptr %struct.vc4_plane_state, ptr %5, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 0
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.vc4_lbm_size.exit.i_crit_edge

land.lhs.true.i.i.vc4_lbm_size.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_lbm_size.exit.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vc4_lbm_size.exit.i:                              ; preds = %land.lhs.true.i.i.vc4_lbm_size.exit.i_crit_edge, %if.end5.vc4_lbm_size.exit.i_crit_edge
  %x_scaling.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 17
  %19 = ptrtoint ptr %x_scaling.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x_scaling.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp6.i.i = icmp eq i32 %20, 1
  %crtc_w.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 11
  %src_w.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 15
  %pix_per_line.0.in.i.i = select i1 %cmp6.i.i, ptr %crtc_w.i.i, ptr %src_w.i.i
  %21 = ptrtoint ptr %pix_per_line.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pix_per_line.0.i.i = load i32, ptr %pix_per_line.0.in.i.i, align 4
  %is_yuv.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 20
  %22 = ptrtoint ptr %is_yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_yuv.i.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp13.i.i = icmp eq i32 %16, 1
  %24 = select i1 %tobool.not.i.i, i1 %cmp13.i.i, i1 false
  %.sink.i.i = select i1 %24, i32 3, i32 4
  %mul.i.i = shl i32 %pix_per_line.0.i.i, %.sink.i.i
  %hvs.i.i = getelementptr inbounds %struct.vc4_dev, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %hvs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hvs.i.i, align 8
  %hvs5.i.i = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %hvs5.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hvs5.i.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool21.not.i.i = icmp eq i8 %28, 0
  %cond.i.i = select i1 %tobool21.not.i.i, i32 64, i32 128
  %sub.i.i = add i32 %mul.i.i, -1
  %add.i.i = add i32 %sub.i.i, %cond.i.i
  %29 = select i1 %tobool21.not.i.i, i32 6, i32 7
  %div45.i.i = lshr i32 %add.i.i, %29
  %mul22.i.i = mul i32 %div45.i.i, %cond.i.i
  %30 = select i1 %tobool21.not.i.i, i32 1, i32 2
  %div2746.i.i = lshr i32 %mul22.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div2746.i.i)
  %tobool.not.i14 = icmp eq i32 %div2746.i.i, 0
  br i1 %tobool.not.i14, label %vc4_lbm_size.exit.i.cleanup_crit_edge, label %if.end.i

vc4_lbm_size.exit.i.cleanup_crit_edge:            ; preds = %vc4_lbm_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %vc4_lbm_size.exit.i
  %lbm_offset.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 7
  %31 = ptrtoint ptr %lbm_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lbm_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i = icmp eq i32 %32, 0
  br i1 %tobool3.not.i, label %do.end.i15, label %if.end28.i, !prof !36

do.end.i15:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end28.i:                                       ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 22, i32 12
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end28.i
  %lbm.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 22
  %mm_lock.i = getelementptr inbounds %struct.vc4_hvs, ptr %26, i32 0, i32 6
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mm_lock.i) #8
  %35 = ptrtoint ptr %hvs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hvs.i.i, align 8
  %lbm_mm.i = getelementptr inbounds %struct.vc4_hvs, ptr %36, i32 0, i32 5
  %conv42.i = zext i32 %div2746.i.i to i64
  %hvs5.i = getelementptr inbounds %struct.vc4_hvs, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %hvs5.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hvs5.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not.i = icmp eq i8 %38, 0
  %39 = select i1 %tobool44.not.i, i64 32, i64 64
  %call.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %lbm_mm.i, ptr noundef %lbm.i, i64 noundef %conv42.i, i64 noundef %39, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #8
  %40 = ptrtoint ptr %hvs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hvs.i.i, align 8
  %mm_lock49.i = getelementptr inbounds %struct.vc4_hvs, ptr %41, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mm_lock49.i, i32 noundef %call35.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool50.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool50.not.i, label %if.then30.i.if.end107.i_crit_edge, label %if.then30.i.cleanup_crit_edge

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i.if.end107.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.i

if.else.i:                                        ; preds = %if.end28.i
  %conv53.i = zext i32 %div2746.i.i to i64
  %size.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 22, i32 2
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %conv53.i)
  %cmp55.not.i = icmp eq i64 %43, %conv53.i
  br i1 %cmp55.not.i, label %if.else.i.if.end107.i_crit_edge, label %land.rhs.i16

if.else.i.if.end107.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.i

land.rhs.i16:                                     ; preds = %if.else.i
  %.b133.i = load i1, ptr @vc4_plane_allocate_lbm.__already_done, align 1
  br i1 %.b133.i, label %land.rhs.i16.if.end107.i_crit_edge, label %if.then72.i, !prof !34

land.rhs.i16.if.end107.i_crit_edge:               ; preds = %land.rhs.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.i

if.then72.i:                                      ; preds = %land.rhs.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vc4_plane_allocate_lbm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 9, ptr noundef null) #8
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then72.i, %land.rhs.i16.if.end107.i_crit_edge, %if.else.i.if.end107.i_crit_edge, %if.then30.i.if.end107.i_crit_edge
  %start.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 22, i32 1
  %44 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start.i, align 8
  %conv109.i = trunc i64 %45 to i32
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 1
  %46 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dlist.i, align 4
  %48 = ptrtoint ptr %lbm_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lbm_offset.i, align 4
  %arrayidx.i = getelementptr i32, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv109.i, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107.i, %if.then30.i.cleanup_crit_edge, %do.end.i15, %vc4_lbm_size.exit.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ -22, %do.end.i15 ], [ 0, %if.end107.i ], [ %call.i.i, %if.then30.i.cleanup_crit_edge ], [ 0, %vc4_lbm_size.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vc4_plane_atomic_update(ptr nocapture noundef %plane, ptr nocapture noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_plane_atomic_async_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call1 = tail call fastcc i32 @vc4_plane_mode_set(ptr noundef %plane, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dlist_count, align 4
  %dlist_count5 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %dlist_count5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dlist_count5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pos0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %pos0_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos0_offset, align 8
  %pos0_offset6 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %pos0_offset6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos0_offset6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.not = icmp eq i32 %13, %15
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %pos2_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %pos2_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos2_offset, align 4
  %pos2_offset9 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %pos2_offset9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos2_offset9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp10.not = icmp eq i32 %17, %19
  br i1 %cmp10.not, label %lor.lhs.false11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ptr0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptr0_offset, align 8
  %ptr0_offset12 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %ptr0_offset12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr0_offset12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp13.not = icmp eq i32 %21, %23
  br i1 %cmp13.not, label %lor.lhs.false14, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %y_scaling.i = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 18
  %28 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false14.if.end.i_crit_edge

lor.lhs.false14.if.end.i_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false14
  %arrayidx3.i = getelementptr %struct.vc4_plane_state, ptr %7, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i = icmp eq i32 %31, 0
  br i1 %cmp4.i, label %land.lhs.true.i.vc4_lbm_size.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.vc4_lbm_size.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_lbm_size.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false14.if.end.i_crit_edge
  %x_scaling.i = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 17
  %32 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %x_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp6.i = icmp eq i32 %33, 1
  %crtc_w.i = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 11
  %src_w.i = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 15
  %pix_per_line.0.in.i = select i1 %cmp6.i, ptr %crtc_w.i, ptr %src_w.i
  %34 = ptrtoint ptr %pix_per_line.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %pix_per_line.0.i = load i32, ptr %pix_per_line.0.in.i, align 4
  %is_yuv.i = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 20
  %35 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_yuv.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp13.i = icmp eq i32 %29, 1
  %37 = select i1 %tobool.not.i, i1 %cmp13.i, i1 false
  %.sink.i = select i1 %37, i32 3, i32 4
  %mul.i = shl i32 %pix_per_line.0.i, %.sink.i
  %hvs.i = getelementptr inbounds %struct.vc4_dev, ptr %27, i32 0, i32 2
  %38 = ptrtoint ptr %hvs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hvs.i, align 8
  %hvs5.i = getelementptr inbounds %struct.vc4_hvs, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %hvs5.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hvs5.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.not.i = icmp eq i8 %41, 0
  %cond.i = select i1 %tobool21.not.i, i32 64, i32 128
  %sub.i = add i32 %mul.i, -1
  %add.i = add i32 %sub.i, %cond.i
  %42 = select i1 %tobool21.not.i, i32 6, i32 7
  %div45.i = lshr i32 %add.i, %42
  %mul22.i = mul i32 %div45.i, %cond.i
  %43 = select i1 %tobool21.not.i, i32 1, i32 2
  %div2746.i = lshr i32 %mul22.i, %43
  br label %vc4_lbm_size.exit

vc4_lbm_size.exit:                                ; preds = %if.end.i, %land.lhs.true.i.vc4_lbm_size.exit_crit_edge
  %retval.0.i = phi i32 [ %div2746.i, %if.end.i ], [ 0, %land.lhs.true.i.vc4_lbm_size.exit_crit_edge ]
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %y_scaling.i73 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 18
  %48 = ptrtoint ptr %y_scaling.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %y_scaling.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i74 = icmp eq i32 %49, 0
  br i1 %cmp.i74, label %land.lhs.true.i77, label %vc4_lbm_size.exit.if.end.i98_crit_edge

vc4_lbm_size.exit.if.end.i98_crit_edge:           ; preds = %vc4_lbm_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i98

land.lhs.true.i77:                                ; preds = %vc4_lbm_size.exit
  %arrayidx3.i75 = getelementptr %struct.vc4_plane_state, ptr %5, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %arrayidx3.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx3.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp4.i76 = icmp eq i32 %51, 0
  br i1 %cmp4.i76, label %land.lhs.true.i77.vc4_lbm_size.exit100_crit_edge, label %land.lhs.true.i77.if.end.i98_crit_edge

land.lhs.true.i77.if.end.i98_crit_edge:           ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i98

land.lhs.true.i77.vc4_lbm_size.exit100_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_lbm_size.exit100

if.end.i98:                                       ; preds = %land.lhs.true.i77.if.end.i98_crit_edge, %vc4_lbm_size.exit.if.end.i98_crit_edge
  %x_scaling.i78 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 17
  %52 = ptrtoint ptr %x_scaling.i78 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %x_scaling.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp6.i79 = icmp eq i32 %53, 1
  %crtc_w.i80 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 11
  %src_w.i81 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 15
  %pix_per_line.0.in.i82 = select i1 %cmp6.i79, ptr %crtc_w.i80, ptr %src_w.i81
  %54 = ptrtoint ptr %pix_per_line.0.in.i82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %pix_per_line.0.i83 = load i32, ptr %pix_per_line.0.in.i82, align 4
  %is_yuv.i84 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 20
  %55 = ptrtoint ptr %is_yuv.i84 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_yuv.i84, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i85 = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp13.i86 = icmp eq i32 %49, 1
  %57 = select i1 %tobool.not.i85, i1 %cmp13.i86, i1 false
  %.sink.i87 = select i1 %57, i32 3, i32 4
  %mul.i88 = shl i32 %pix_per_line.0.i83, %.sink.i87
  %hvs.i89 = getelementptr inbounds %struct.vc4_dev, ptr %47, i32 0, i32 2
  %58 = ptrtoint ptr %hvs.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hvs.i89, align 8
  %hvs5.i90 = getelementptr inbounds %struct.vc4_hvs, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %hvs5.i90 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hvs5.i90, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i91 = icmp eq i8 %61, 0
  %cond.i92 = select i1 %tobool21.not.i91, i32 64, i32 128
  %sub.i93 = add i32 %mul.i88, -1
  %add.i94 = add i32 %sub.i93, %cond.i92
  %62 = select i1 %tobool21.not.i91, i32 6, i32 7
  %div45.i95 = lshr i32 %add.i94, %62
  %mul22.i96 = mul i32 %div45.i95, %cond.i92
  %63 = select i1 %tobool21.not.i91, i32 1, i32 2
  %div2746.i97 = lshr i32 %mul22.i96, %63
  br label %vc4_lbm_size.exit100

vc4_lbm_size.exit100:                             ; preds = %if.end.i98, %land.lhs.true.i77.vc4_lbm_size.exit100_crit_edge
  %retval.0.i99 = phi i32 [ %div2746.i97, %if.end.i98 ], [ 0, %land.lhs.true.i77.vc4_lbm_size.exit100_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i99)
  %cmp18.not = icmp eq i32 %retval.0.i, %retval.0.i99
  br i1 %cmp18.not, label %for.cond.preheader, label %vc4_lbm_size.exit100.cleanup_crit_edge

vc4_lbm_size.exit100.cleanup_crit_edge:           ; preds = %vc4_lbm_size.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %vc4_lbm_size.exit100
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22103.not = icmp eq i32 %9, 0
  br i1 %cmp22103.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lbm_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 7
  %dlist37 = getelementptr inbounds %struct.vc4_plane_state, ptr %7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %13)
  %cmp24 = icmp eq i32 %i.0104, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %17)
  %cmp27 = icmp eq i32 %i.0104, %17
  %or.cond101 = select i1 %cmp24, i1 true, i1 %cmp27
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %21)
  %cmp30 = icmp eq i32 %i.0104, %21
  %or.cond102 = select i1 %or.cond101, i1 true, i1 %cmp30
  br i1 %or.cond102, label %for.body.for.inc_crit_edge, label %lor.lhs.false31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false31:                                  ; preds = %for.body
  %64 = ptrtoint ptr %lbm_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lbm_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool32.not = icmp ne i32 %65, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %65)
  %cmp34 = icmp eq i32 %i.0104, %65
  %or.cond = select i1 %tobool32.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %lor.lhs.false31.for.inc_crit_edge, label %if.end36

lor.lhs.false31.for.inc_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end36:                                         ; preds = %lor.lhs.false31
  %66 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dlist, align 4
  %arrayidx = getelementptr i32, ptr %67, i32 %i.0104
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %dlist37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dlist37, align 4
  %arrayidx38 = getelementptr i32, ptr %71, i32 %i.0104
  %72 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %73)
  %cmp39.not = icmp eq i32 %69, %73
  br i1 %cmp39.not, label %if.end36.for.inc_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end36.for.inc_crit_edge, %lor.lhs.false31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %vc4_lbm_size.exit100.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %vc4_lbm_size.exit100.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_plane_atomic_async_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb2, align 4
  store ptr %11, ptr %fb, align 4
  store ptr %9, ptr %fb2, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_x, align 4
  %14 = load ptr, ptr %state1, align 4
  %crtc_x7 = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %crtc_x7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %crtc_x7, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_y, align 4
  %18 = load ptr, ptr %state1, align 4
  %crtc_y9 = getelementptr inbounds %struct.drm_plane_state, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %crtc_y9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %crtc_y9, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_w, align 4
  %22 = load ptr, ptr %state1, align 4
  %crtc_w11 = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %crtc_w11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %crtc_w11, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_h, align 4
  %26 = load ptr, ptr %state1, align 4
  %crtc_h13 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %crtc_h13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %crtc_h13, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_x, align 4
  %30 = load ptr, ptr %state1, align 4
  %src_x15 = getelementptr inbounds %struct.drm_plane_state, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %src_x15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %src_x15, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_y, align 4
  %34 = load ptr, ptr %state1, align 4
  %src_y17 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %src_y17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %src_y17, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %36 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_w, align 4
  %38 = load ptr, ptr %state1, align 4
  %src_w19 = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %src_w19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %src_w19, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %40 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_h, align 4
  %42 = load ptr, ptr %state1, align 4
  %src_h21 = getelementptr inbounds %struct.drm_plane_state, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %src_h21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %src_h21, align 4
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %44 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %alpha, align 4
  %46 = load ptr, ptr %state1, align 4
  %alpha23 = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %alpha23 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %45, ptr %alpha23, align 4
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 13
  %48 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pixel_blend_mode, align 2
  %50 = load ptr, ptr %state1, align 4
  %pixel_blend_mode25 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %pixel_blend_mode25 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %pixel_blend_mode25, align 2
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %52 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rotation, align 4
  %54 = load ptr, ptr %state1, align 4
  %rotation27 = getelementptr inbounds %struct.drm_plane_state, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %rotation27 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %rotation27, align 4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 15
  %56 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %zpos, align 4
  %58 = load ptr, ptr %state1, align 4
  %zpos29 = getelementptr inbounds %struct.drm_plane_state, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %zpos29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %zpos29, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %60 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %normalized_zpos, align 4
  %62 = load ptr, ptr %state1, align 4
  %normalized_zpos31 = getelementptr inbounds %struct.drm_plane_state, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %normalized_zpos31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %normalized_zpos31, align 4
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 17
  %64 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %color_encoding, align 4
  %66 = load ptr, ptr %state1, align 4
  %color_encoding33 = getelementptr inbounds %struct.drm_plane_state, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %color_encoding33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %color_encoding33, align 4
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 18
  %68 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %color_range, align 4
  %70 = load ptr, ptr %state1, align 4
  %color_range35 = getelementptr inbounds %struct.drm_plane_state, ptr %70, i32 0, i32 18
  %71 = ptrtoint ptr %color_range35 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %color_range35, align 4
  %72 = load ptr, ptr %state1, align 4
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %72, i32 0, i32 20
  %src37 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %73 = call ptr @memcpy(ptr %src, ptr %src37, i32 16)
  %74 = load ptr, ptr %state1, align 4
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %74, i32 0, i32 21
  %dst39 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %75 = call ptr @memcpy(ptr %dst, ptr %dst39, i32 16)
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %76 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %visible, align 4, !range !37
  %78 = load ptr, ptr %state1, align 4
  %visible41 = getelementptr inbounds %struct.drm_plane_state, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %visible41 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %77, ptr %visible41, align 4
  %80 = load ptr, ptr %state1, align 4
  %crtc_x45 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 9
  %81 = ptrtoint ptr %crtc_x45 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crtc_x45, align 4
  %crtc_x46 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 9
  %83 = ptrtoint ptr %crtc_x46 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %crtc_x46, align 4
  %crtc_y47 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 10
  %84 = ptrtoint ptr %crtc_y47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %crtc_y47, align 8
  %crtc_y48 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 10
  %86 = ptrtoint ptr %crtc_y48 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %crtc_y48, align 8
  %crtc_h49 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 12
  %87 = ptrtoint ptr %crtc_h49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %crtc_h49, align 8
  %crtc_h50 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 12
  %89 = ptrtoint ptr %crtc_h50 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %crtc_h50, align 8
  %crtc_w51 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 11
  %90 = ptrtoint ptr %crtc_w51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crtc_w51, align 4
  %crtc_w52 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 11
  %92 = ptrtoint ptr %crtc_w52 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %crtc_w52, align 4
  %src_x53 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 13
  %93 = ptrtoint ptr %src_x53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %src_x53, align 4
  %src_x54 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 13
  %95 = ptrtoint ptr %src_x54 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %src_x54, align 4
  %src_y55 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 14
  %96 = ptrtoint ptr %src_y55 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %src_y55, align 8
  %src_y56 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 14
  %98 = ptrtoint ptr %src_y56 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %src_y56, align 8
  %src_w57 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 15
  %src_w58 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 15
  %99 = ptrtoint ptr %src_w58 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %src_w58, align 4
  %101 = ptrtoint ptr %src_w57 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %src_w57, align 4
  %src_h60 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 16
  %src_h62 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 16
  %102 = ptrtoint ptr %src_h62 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %src_h62, align 4
  %104 = ptrtoint ptr %src_h60 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 %103, ptr %src_h60, align 4
  %x_scaling = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 17
  %x_scaling65 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 17
  %105 = ptrtoint ptr %x_scaling65 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %x_scaling65, align 4
  %107 = ptrtoint ptr %x_scaling to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %x_scaling, align 4
  %y_scaling = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 18
  %y_scaling68 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 18
  %108 = ptrtoint ptr %y_scaling68 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %y_scaling68, align 4
  %110 = ptrtoint ptr %y_scaling to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %y_scaling, align 4
  %is_unity = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 19
  %111 = ptrtoint ptr %is_unity to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %is_unity, align 4, !range !37
  %is_unity71 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 19
  %113 = ptrtoint ptr %is_unity71 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %is_unity71, align 4
  %is_yuv = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 20
  %114 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %is_yuv, align 1, !range !37
  %is_yuv74 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 20
  %116 = ptrtoint ptr %is_yuv74 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %is_yuv74, align 1
  %offsets = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 21
  %offsets77 = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 21
  %117 = call ptr @memcpy(ptr %offsets, ptr %offsets77, i32 12)
  %needs_bg_fill = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 23
  %118 = ptrtoint ptr %needs_bg_fill to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %needs_bg_fill, align 8, !range !37
  %needs_bg_fill80 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 23
  %120 = ptrtoint ptr %needs_bg_fill80 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %needs_bg_fill80, align 8
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %5, i32 0, i32 1
  %121 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dlist, align 4
  %pos0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 4
  %123 = ptrtoint ptr %pos0_offset to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pos0_offset, align 8
  %arrayidx = getelementptr i32, ptr %122, i32 %124
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx, align 4
  %dlist82 = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 1
  %127 = ptrtoint ptr %dlist82 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dlist82, align 4
  %arrayidx84 = getelementptr i32, ptr %128, i32 %124
  %129 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %arrayidx84, align 4
  %130 = load ptr, ptr %dlist, align 4
  %pos2_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 5
  %131 = ptrtoint ptr %pos2_offset to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pos2_offset, align 4
  %arrayidx86 = getelementptr i32, ptr %130, i32 %132
  %133 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx86, align 4
  %135 = load ptr, ptr %dlist82, align 4
  %arrayidx89 = getelementptr i32, ptr %135, i32 %132
  %136 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %134, ptr %arrayidx89, align 4
  %137 = load ptr, ptr %dlist, align 4
  %ptr0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 6
  %138 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ptr0_offset, align 8
  %arrayidx91 = getelementptr i32, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx91, align 4
  %142 = load ptr, ptr %dlist82, align 4
  %arrayidx94 = getelementptr i32, ptr %142, i32 %139
  %143 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %141, ptr %arrayidx94, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %dlist82 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dlist82, align 4
  %146 = ptrtoint ptr %pos0_offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pos0_offset, align 8
  %arrayidx100 = getelementptr i32, ptr %145, i32 %147
  %148 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx100, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149)
  %hw_dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %80, i32 0, i32 8
  %151 = ptrtoint ptr %hw_dlist to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw_dlist, align 8
  %arrayidx102 = getelementptr i32, ptr %152, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx102, i32 %150) #8, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %153 = ptrtoint ptr %dlist82 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dlist82, align 4
  %155 = ptrtoint ptr %pos2_offset to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pos2_offset, align 4
  %arrayidx108 = getelementptr i32, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx108, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %160 = ptrtoint ptr %hw_dlist to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw_dlist, align 8
  %arrayidx111 = getelementptr i32, ptr %161, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx111, i32 %159) #8, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %162 = ptrtoint ptr %dlist82 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dlist82, align 4
  %164 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ptr0_offset, align 8
  %arrayidx117 = getelementptr i32, ptr %163, i32 %165
  %166 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx117, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %169 = ptrtoint ptr %hw_dlist to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_dlist, align 8
  %arrayidx120 = getelementptr i32, ptr %170, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx120, i32 %168) #8, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_plane_mode_set(ptr nocapture noundef readonly %plane, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dlist_count, align 4
  %format3 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format3, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %9, label %for.cond.18.i [
    i32 875713112, label %entry.vc4_get_hvs_format.exit_crit_edge
    i32 875713089, label %cleanup.fold.split.i
    i32 875708993, label %cleanup.fold.split7.i
    i32 875709016, label %cleanup.fold.split8.i
    i32 909199186, label %cleanup.fold.split9.i
    i32 909199170, label %cleanup.fold.split10.i
    i32 892424769, label %cleanup.fold.split11.i
    i32 892424792, label %cleanup.fold.split12.i
    i32 875710290, label %cleanup.fold.split13.i
    i32 875710274, label %cleanup.fold.split14.i
    i32 909202777, label %cleanup.fold.split15.i
    i32 909203033, label %cleanup.fold.split16.i
    i32 842093913, label %cleanup.fold.split17.i
    i32 842094169, label %cleanup.fold.split18.i
    i32 842094158, label %cleanup.fold.split19.i
    i32 825382478, label %cleanup.fold.split20.i
    i32 909203022, label %cleanup.fold.split21.i
    i32 825644622, label %cleanup.fold.split22.i
    i32 808661072, label %cleanup.fold.split23.i
  ]

entry.vc4_get_hvs_format.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

for.cond.18.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split7.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split19.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split20.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split21.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split22.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

cleanup.fold.split23.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_hvs_format.exit

vc4_get_hvs_format.exit:                          ; preds = %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %for.cond.18.i, %entry.vc4_get_hvs_format.exit_crit_edge
  %retval.0.i = phi ptr [ @hvs_formats, %entry.vc4_get_hvs_format.exit_crit_edge ], [ null, %for.cond.18.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 1), %cleanup.fold.split.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 2), %cleanup.fold.split7.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 3), %cleanup.fold.split8.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 4), %cleanup.fold.split9.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 5), %cleanup.fold.split10.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 6), %cleanup.fold.split11.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 7), %cleanup.fold.split12.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 8), %cleanup.fold.split13.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 9), %cleanup.fold.split14.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 10), %cleanup.fold.split15.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 11), %cleanup.fold.split16.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 12), %cleanup.fold.split17.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 13), %cleanup.fold.split18.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 14), %cleanup.fold.split19.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 15), %cleanup.fold.split20.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 16), %cleanup.fold.split21.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 17), %cleanup.fold.split22.i ], [ getelementptr inbounds ([19 x %struct.hvs_format], ptr @hvs_formats, i32 0, i32 18), %cleanup.fold.split23.i ]
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %modifier, align 8
  %and = and i64 %12, -72057594037927681
  %num_planes7 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_planes7, align 1
  %conv = zext i8 %14 to i32
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hsub, align 2
  %conv9 = zext i8 %16 to i32
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vsub, align 1
  %conv11 = zext i8 %18 to i32
  %hvs = getelementptr inbounds %struct.hvs_format, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hvs, align 4
  %dlist_initialized = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 24
  %21 = ptrtoint ptr %dlist_initialized to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dlist_initialized, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end, label %vc4_get_hvs_format.exit.cleanup3116_crit_edge

vc4_get_hvs_format.exit.cleanup3116_crit_edge:    ; preds = %vc4_get_hvs_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

if.end:                                           ; preds = %vc4_get_hvs_format.exit
  %call2.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %3, i32 noundef 0) #8
  %23 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format3, align 8
  %num_planes3.i = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %num_planes3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_planes3.i, align 1
  %conv.i = zext i8 %26 to i32
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hsub.i, align 2
  %conv5.i = zext i8 %28 to i32
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 7
  %29 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vsub.i, align 1
  %conv7.i = zext i8 %30 to i32
  %state8.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %31 = ptrtoint ptr %state8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state8.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %33 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc.i, align 4
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %34, i32 0, i32 8
  %37 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i.i.i, align 4
  %state1.i.i = getelementptr %struct.__drm_crtcs_state, ptr %36, i32 %38, i32 1
  %39 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state1.i.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #8
  br label %cleanup3116

if.end.i:                                         ; preds = %if.end
  %call10.i = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %state, ptr noundef nonnull %40, i32 noundef 1, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond.preheader.i, label %if.end.i.cleanup3116_crit_edge

if.end.i.cleanup3116_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp218.not.i = icmp eq i8 %26, 0
  br i1 %cmp218.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call2.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0219.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 7, i32 %i.0219.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %44, %42
  %arrayidx16.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 21, i32 %i.0219.i
  %45 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %arrayidx16.i, align 4
  %inc.i = add nuw nsw i32 %i.0219.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %46 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src.i, align 4
  %and.i = and i32 %47, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i, label %for.end.i.cleanup3116_crit_edge

for.end.i.cleanup3116_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

lor.lhs.false.i:                                  ; preds = %for.end.i
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %48 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %x2.i, align 4
  %and19.i = and i32 %49, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.cleanup3116_crit_edge

lor.lhs.false.i.cleanup3116_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %50 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %y1.i, align 4
  %and23.i = and i32 %51, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %lor.lhs.false21.i.cleanup3116_crit_edge

lor.lhs.false21.i.cleanup3116_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %52 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %y2.i, align 4
  %and27.i = and i32 %53, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %lor.lhs.false25.i.cleanup3116_crit_edge

lor.lhs.false25.i.cleanup3116_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

if.end30.i:                                       ; preds = %lor.lhs.false25.i
  %shr.i = ashr i32 %47, 16
  %src_x.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 13
  %54 = ptrtoint ptr %src_x.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i, ptr %src_x.i, align 4
  %shr35.i = ashr i32 %51, 16
  %src_y.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 14
  %55 = ptrtoint ptr %src_y.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr35.i, ptr %src_y.i, align 8
  %sub.i = sub i32 %49, %47
  %shr40.i = ashr i32 %sub.i, 16
  %src_w.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 15
  %56 = ptrtoint ptr %src_w.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr40.i, ptr %src_w.i, align 4
  %sub46.i = sub i32 %53, %51
  %shr47.i = ashr i32 %sub46.i, 16
  %src_h.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 16
  %57 = ptrtoint ptr %src_h.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr47.i, ptr %src_h.i, align 4
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21
  %58 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dst.i, align 4
  %crtc_x.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 9
  %60 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %crtc_x.i, align 4
  %y151.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 1
  %61 = ptrtoint ptr %y151.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %y151.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 10
  %63 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %crtc_y.i, align 8
  %x253.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 2
  %64 = ptrtoint ptr %x253.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %x253.i, align 4
  %sub56.i = sub i32 %65, %59
  %crtc_w.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 11
  %66 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub56.i, ptr %crtc_w.i, align 4
  %y258.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 3
  %67 = ptrtoint ptr %y258.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %y258.i, align 4
  %sub61.i = sub i32 %68, %62
  %crtc_h.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 12
  %69 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub61.i, ptr %crtc_h.i, align 8
  %call62.i = tail call fastcc i32 @vc4_plane_margins_adj(ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end30.i.cleanup3116_crit_edge

if.end30.i.cleanup3116_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

if.end65.i:                                       ; preds = %if.end30.i
  %70 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_w.i, align 4
  %72 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crtc_w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp.i.i = icmp eq i32 %73, %71
  %mul.i.i = mul i32 %73, 3
  %mul1.i.i = shl i32 %71, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul1.i.i)
  %cmp2.not.i.i = icmp ult i32 %mul.i.i, %mul1.i.i
  %..i.i = select i1 %cmp2.not.i.i, i32 1, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %..i.i
  %x_scaling.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17
  %74 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i, ptr %x_scaling.i, align 4
  %75 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src_h.i, align 4
  %77 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %crtc_h.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.i200.i = icmp eq i32 %78, %76
  %mul.i201.i = mul i32 %78, 3
  %mul1.i202.i = shl i32 %76, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i201.i, i32 %mul1.i202.i)
  %cmp2.not.i203.i = icmp ult i32 %mul.i201.i, %mul1.i202.i
  %..i204.i = select i1 %cmp2.not.i203.i, i32 1, i32 2
  %retval.0.i205.i = select i1 %cmp.i200.i, i32 0, i32 %..i204.i
  %y_scaling.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18
  %79 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i205.i, ptr %y_scaling.i, align 4
  %spec.select.i = select i1 %cmp.i.i, i1 %cmp.i200.i, i1 false
  %is_unity.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 19
  %frombool.i = zext i1 %spec.select.i to i8
  %80 = ptrtoint ptr %is_unity.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool.i, ptr %is_unity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp84.i = icmp ugt i8 %26, 1
  %is_yuv.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 20
  br i1 %cmp84.i, label %if.then86.i, label %if.else.i

if.then86.i:                                      ; preds = %if.end65.i
  %81 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %is_yuv.i, align 1
  %div.i = udiv i32 %71, %conv5.i
  %arrayidx90.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 15, i32 1
  %82 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div.i, ptr %arrayidx90.i, align 4
  %div93.i = udiv i32 %76, %conv7.i
  %arrayidx95.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 16, i32 1
  %83 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div93.i, ptr %arrayidx95.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %div.i)
  %cmp.i206.i = icmp eq i32 %73, %div.i
  %mul1.i208.i = shl i32 %div.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul1.i208.i)
  %cmp2.not.i209.i = icmp ult i32 %mul.i.i, %mul1.i208.i
  %..i210.i = select i1 %cmp2.not.i209.i, i32 1, i32 2
  %retval.0.i211.i = select i1 %cmp.i206.i, i32 0, i32 %..i210.i
  %arrayidx101.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %84 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %retval.0.i211.i, ptr %arrayidx101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %div93.i)
  %cmp.i212.i = icmp eq i32 %78, %div93.i
  %mul1.i214.i = shl i32 %div93.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i201.i, i32 %mul1.i214.i)
  %cmp2.not.i215.i = icmp ult i32 %mul.i201.i, %mul1.i214.i
  %..i216.i = select i1 %cmp2.not.i215.i, i32 1, i32 2
  %retval.0.i217.i = select i1 %cmp.i212.i, i32 0, i32 %..i216.i
  %arrayidx107.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i217.i, ptr %arrayidx107.i, align 4
  br i1 %cmp.i206.i, label %if.then112.i, label %if.then86.i.if.end15_crit_edge

if.then86.i.if.end15_crit_edge:                   ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then112.i:                                     ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %arrayidx101.i, align 4
  br label %if.end15

if.else.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %is_yuv.i, align 1
  %arrayidx118.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %88 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx118.i, align 4
  %arrayidx120.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx120.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else.i, %if.then112.i, %if.then86.i.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %90 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %x_scaling.i, align 4
  %shl.i = shl i32 %91, 2
  %92 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %y_scaling.i, align 4
  %or.i = or i32 %shl.i, %93
  %switch.tableidx = add i32 %or.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %94 = icmp ult i32 %switch.tableidx, 9
  br i1 %94, label %switch.lookup, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.end15
  %arrayidx.i3553 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %95 = ptrtoint ptr %arrayidx.i3553 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i3553, align 4
  %shl.i3554 = shl i32 %96, 2
  %arrayidx1.i3555 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %97 = ptrtoint ptr %arrayidx1.i3555 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx1.i3555, align 4
  %or.i3556 = or i32 %shl.i3554, %98
  %switch.tableidx4614 = add i32 %or.i3556, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx4614)
  %99 = icmp ult i32 %switch.tableidx4614, 9
  br i1 %99, label %switch.lookup4613, label %if.else.vc4_get_scl_field.exit3565_crit_edge

if.else.vc4_get_scl_field.exit3565_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_get_scl_field.exit3565

switch.lookup4613:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep4615 = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set.6, i32 0, i32 %switch.tableidx4614
  %100 = ptrtoint ptr %switch.gep4615 to i32
  call void @__asan_load4_noabort(i32 %100)
  %switch.load4616 = load i32, ptr %switch.gep4615, align 4
  br label %vc4_get_scl_field.exit3565

vc4_get_scl_field.exit3565:                       ; preds = %switch.lookup4613, %if.else.vc4_get_scl_field.exit3565_crit_edge
  %retval.0.i3564 = phi i32 [ 0, %if.else.vc4_get_scl_field.exit3565_crit_edge ], [ %switch.load4616, %switch.lookup4613 ]
  %101 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %x_scaling.i, align 4
  %shl.i3567 = shl i32 %102, 2
  %103 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %y_scaling.i, align 4
  %or.i3569 = or i32 %shl.i3567, %104
  %105 = zext i32 %or.i3569 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %or.i3569, label %vc4_get_scl_field.exit3565.if.end21_crit_edge [
    i32 4, label %sw.bb8.i3576
    i32 6, label %sw.bb2.i3570
    i32 9, label %sw.bb3.i3571
    i32 5, label %sw.bb4.i3572
    i32 8, label %sw.bb5.i3573
    i32 2, label %sw.bb6.i3574
    i32 1, label %sw.bb7.i3575
  ]

vc4_get_scl_field.exit3565.if.end21_crit_edge:    ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb2.i3570:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb3.i3571:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb4.i3572:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb5.i3573:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb6.i3574:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb7.i3575:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb8.i3576:                                     ; preds = %vc4_get_scl_field.exit3565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

switch.lookup:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set, i32 0, i32 %switch.tableidx
  %106 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %106)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep4611 = getelementptr inbounds [9 x i32], ptr @switch.table.vc4_plane_mode_set.5, i32 0, i32 %switch.tableidx
  %107 = ptrtoint ptr %switch.gep4611 to i32
  call void @__asan_load4_noabort(i32 %107)
  %switch.load4612 = load i32, ptr %switch.gep4611, align 4
  br label %if.end21

if.end21:                                         ; preds = %switch.lookup, %sw.bb8.i3576, %sw.bb7.i3575, %sw.bb6.i3574, %sw.bb5.i3573, %sw.bb4.i3572, %sw.bb3.i3571, %sw.bb2.i3570, %vc4_get_scl_field.exit3565.if.end21_crit_edge, %if.then17.if.end21_crit_edge
  %scl1.0 = phi i32 [ 1073747968, %if.then17.if.end21_crit_edge ], [ 1073749760, %sw.bb8.i3576 ], [ 1073749504, %sw.bb7.i3575 ], [ 1073749248, %sw.bb6.i3574 ], [ 1073748992, %sw.bb5.i3573 ], [ 1073748736, %sw.bb4.i3572 ], [ 1073748480, %sw.bb3.i3571 ], [ 1073748224, %sw.bb2.i3570 ], [ 1073747968, %vc4_get_scl_field.exit3565.if.end21_crit_edge ], [ %switch.load, %switch.lookup ]
  %scl0.0 = phi i32 [ 0, %if.then17.if.end21_crit_edge ], [ %retval.0.i3564, %sw.bb8.i3576 ], [ %retval.0.i3564, %sw.bb7.i3575 ], [ %retval.0.i3564, %sw.bb6.i3574 ], [ %retval.0.i3564, %sw.bb5.i3573 ], [ %retval.0.i3564, %sw.bb4.i3572 ], [ %retval.0.i3564, %sw.bb3.i3571 ], [ %retval.0.i3564, %sw.bb2.i3570 ], [ %retval.0.i3564, %vc4_get_scl_field.exit3565.if.end21_crit_edge ], [ %switch.load4612, %switch.lookup ]
  %rotation22 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 14
  %108 = ptrtoint ptr %rotation22 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rotation22, align 4
  %call23 = tail call i32 @drm_rotation_simplify(i32 noundef %109, i32 noundef 49) #8
  %110 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %src_y.i, align 8
  %and25 = and i32 %call23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end21.if.end28_crit_edge, label %if.then27

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src_h.i, align 4
  %sub = add i32 %111, -1
  %add = add i32 %sub, %113
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21.if.end28_crit_edge
  %src_y.0 = phi i32 [ %add, %if.then27 ], [ %111, %if.end21.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %and, ptr @__sancov_gen_cov_switch_values.11)
  switch i64 %and, label %sw.default684 [
    i64 0, label %sw.bb
    i64 504403158265495553, label %sw.bb126
    i64 504403158265495555, label %if.end28.sw.bb517_crit_edge
    i64 504403158265495556, label %if.end28.sw.bb517_crit_edge4623
    i64 504403158265495557, label %if.end28.sw.bb517_crit_edge4624
  ]

if.end28.sw.bb517_crit_edge4624:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb517

if.end28.sw.bb517_crit_edge4623:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb517

if.end28.sw.bb517_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb517

sw.bb:                                            ; preds = %if.end28
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %114 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pitches, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %115)
  %tobool43.not = icmp ult i32 %115, 65536
  br i1 %tobool43.not, label %sw.bb.do.end98_crit_edge, label %do.end61, !prof !34

sw.bb.do.end98_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end61:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #8
  br label %do.end98

do.end98:                                         ; preds = %do.end61, %sw.bb.do.end98_crit_edge
  %116 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pitches, align 8
  %and103 = and i32 %117, 65535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1044592.not = icmp eq i8 %14, 0
  br i1 %cmp1044592.not, label %do.end98.sw.epilog686_crit_edge, label %do.end98.for.body_crit_edge

do.end98.for.body_crit_edge:                      ; preds = %do.end98
  br label %for.body

do.end98.sw.epilog686_crit_edge:                  ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog686

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end98.for.body_crit_edge
  %i.04593 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end98.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04593)
  %tobool106.not = icmp eq i32 %i.04593, 0
  %spec.select = select i1 %tobool106.not, i32 1, i32 %conv11
  %div = udiv i32 %src_y.0, %spec.select
  %arrayidx110 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 %i.04593
  %118 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx110, align 4
  %mul = mul i32 %119, %div
  %arrayidx111 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 21, i32 %i.04593
  %120 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %121, %mul
  store i32 %add112, ptr %arrayidx111, align 4
  %122 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %src_x.i, align 4
  %cond117 = select i1 %tobool106.not, i32 1, i32 %conv9
  %div118 = udiv i32 %123, %cond117
  %124 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %format3, align 8
  %126 = getelementptr inbounds %struct.drm_format_info, ptr %125, i32 0, i32 3
  %arrayidx120 = getelementptr [4 x i8], ptr %126, i32 0, i32 %i.04593
  %127 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %128 to i32
  %mul122 = mul i32 %div118, %conv121
  %add125 = add i32 %mul122, %add112
  store i32 %add125, ptr %arrayidx111, align 4
  %inc = add nuw nsw i32 %i.04593, 1
  %exitcond4601.not = icmp eq i32 %inc, %conv
  br i1 %exitcond4601.not, label %for.body.sw.epilog686_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.sw.epilog686_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog686

sw.bb126:                                         ; preds = %if.end28
  %129 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %format3, align 8
  %131 = getelementptr inbounds %struct.drm_format_info, ptr %130, i32 0, i32 3
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %131, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %133)
  %cmp130 = icmp eq i8 %133, 2
  %cond132 = select i1 %cmp130, i32 6, i32 5
  %pitches137 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %134 = ptrtoint ptr %pitches137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pitches137, align 8
  %shr = lshr i32 %135, 7
  %136 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %src_x.i, align 4
  %shr141 = lshr i32 %137, %cond132
  %sub142 = sub nsw i32 %shr, %shr141
  %shr144 = lshr i32 %src_y.0, 4
  %and145 = and i32 %shr144, 1
  %138 = shl nuw nsw i32 %and25, 10
  %notmask = shl nsw i32 -1, %cond132
  %sub134 = xor i32 %notmask, -1
  %and150 = and i32 %137, %sub134
  %shl175 = shl i32 %and150, 26
  %and151 = shl i32 %src_y.0, 8
  %139 = and i32 %and151, 16128
  %140 = xor i32 %139, 16128
  %shl254 = select i1 %tobool26.not, i32 %139, i32 %140
  %or = or i32 %shl175, %shl254
  %shl333 = shl i32 %shr141, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %shl333)
  %tobool335.not = icmp ult i32 %shl333, 8388608
  br i1 %tobool335.not, label %sw.bb126.do.end391_crit_edge, label %do.end356, !prof !34

sw.bb126.do.end391_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end391

do.end356:                                        ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 793, i32 noundef 9, ptr noundef null) #8
  br label %do.end391

do.end391:                                        ; preds = %do.end356, %sw.bb126.do.end391_crit_edge
  %and394 = and i32 %shl333, 8323072
  %or395 = or i32 %or, %and394
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub142)
  %tobool415.not = icmp ult i32 %sub142, 128
  br i1 %tobool415.not, label %do.end391.do.end471_crit_edge, label %do.end436, !prof !34

do.end391.do.end471_crit_edge:                    ; preds = %do.end391
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end471

do.end436:                                        ; preds = %do.end391
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 9, ptr noundef null) #8
  br label %do.end471

do.end471:                                        ; preds = %do.end436, %do.end391.do.end471_crit_edge
  %and474 = and i32 %sub142, 127
  %or475 = or i32 %or395, %and474
  %or476 = or i32 %or475, %138
  %141 = shl i32 %src_y.0, 7
  %shl477 = and i32 %141, -4096
  %mul478 = mul i32 %shl477, %shr
  %offsets479 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 21
  %142 = ptrtoint ptr %offsets479 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %offsets479, align 8
  %144 = shl i32 %src_y.0, 6
  %shl482 = and i32 %144, 768
  %and148 = shl i32 %src_y.0, 4
  %shl486 = and i32 %and148, 48
  %add481 = or i32 %shl486, %shl482
  %add485 = or i32 %add481, %mul478
  %add489 = add i32 %add485, %143
  %145 = and i32 %src_y.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool491.not = icmp eq i32 %145, 0
  %shl508 = shl i32 %shr141, 12
  %shl512 = shl nuw nsw i32 %and145, 10
  %add511 = or i32 %shl508, %shl512
  %shl495 = shl i32 %sub142, 12
  %.neg.neg = shl nuw nsw i32 %and145, 10
  %add498 = or i32 %.neg.neg, -2048
  %shl503.neg = add i32 %add498, %shl495
  %add511.pn = select i1 %tobool491.not, i32 %add511, i32 %shl503.neg
  %146 = shl nuw nsw i32 %145, 9
  %147 = or i32 %146, %or476
  %storemerge = add i32 %add511.pn, %add489
  %148 = ptrtoint ptr %offsets479 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %storemerge, ptr %offsets479, align 8
  br label %sw.epilog686

sw.bb517:                                         ; preds = %if.end28.sw.bb517_crit_edge, %if.end28.sw.bb517_crit_edge4623, %if.end28.sw.bb517_crit_edge4624
  %149 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %modifier, align 8
  %shr519 = lshr i64 %150, 8
  %conv521 = trunc i64 %shr519 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv521)
  %cmp522 = icmp ugt i32 %conv521, 65535
  br i1 %cmp522, label %if.then524, label %if.end525

if.then524:                                       ; preds = %sw.bb517
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv521) #8
  br label %cleanup3116

if.end525:                                        ; preds = %sw.bb517
  %151 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %format3, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808661072, i32 %154)
  %cmp528 = icmp eq i32 %154, 808661072
  br i1 %cmp528, label %if.end525.if.end535_crit_edge, label %if.else531

if.end525.if.end535_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end535

if.else531:                                       ; preds = %if.end525
  %switch.tableidx4618 = add i64 %and, -504403158265495555
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %switch.tableidx4618)
  %155 = icmp ult i64 %switch.tableidx4618, 3
  br i1 %155, label %switch.lookup4617, label %if.else531.cleanup3116_crit_edge

if.else531.cleanup3116_crit_edge:                 ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

switch.lookup4617:                                ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast = trunc i64 %switch.tableidx4618 to i32
  %switch.offset = add i32 %switch.idx.cast, 1
  br label %if.end535

if.end535:                                        ; preds = %switch.lookup4617, %if.end525.if.end535_crit_edge
  %hvs_format.0 = phi i32 [ 17, %if.end525.if.end535_crit_edge ], [ 12, %switch.lookup4617 ]
  %tiling.0 = phi i32 [ 2, %if.end525.if.end535_crit_edge ], [ %switch.offset, %switch.lookup4617 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp5374590.not = icmp eq i8 %14, 0
  br i1 %cmp5374590.not, label %if.end535.cleanup682_crit_edge, label %for.body539.preheader

if.end535.cleanup682_crit_edge:                   ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup682

for.body539.preheader:                            ; preds = %if.end535
  %switch.tableidx4620 = add i64 %and, -504403158265495555
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %switch.tableidx4620)
  %156 = icmp ult i64 %switch.tableidx4620, 3
  %157 = trunc i64 %switch.tableidx4620 to i32
  %switch.gep4621 = getelementptr inbounds [3 x i32], ptr @switch.table.vc4_plane_mode_set.7, i32 0, i32 %157
  br label %for.body539

for.body539:                                      ; preds = %if.end573.for.body539_crit_edge, %for.body539.preheader
  %i.14591 = phi i32 [ %inc601, %if.end573.for.body539_crit_edge ], [ 0, %for.body539.preheader ]
  %158 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %format3, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808661072, i32 %161)
  %cmp543 = icmp eq i32 %161, 808661072
  br i1 %cmp543, label %if.then545, label %if.else551

if.then545:                                       ; preds = %for.body539
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %src_x.i, align 4
  %rem = urem i32 %163, 96
  %div547.lhs.trunc = trunc i32 %rem to i8
  %div547.lhs.trunc.frozen = freeze i8 %div547.lhs.trunc
  %div5474586 = udiv i8 %div547.lhs.trunc.frozen, 12
  %164 = mul i8 %div5474586, 12
  %rem5484587.decomposed = sub i8 %div547.lhs.trunc.frozen, %164
  %165 = shl nuw nsw i8 %div5474586, 4
  %add5504589 = or i8 %165, %rem5484587.decomposed
  %add550 = zext i8 %add5504589 to i32
  br label %if.end573

if.else551:                                       ; preds = %for.body539
  br i1 %156, label %switch.lookup4619, label %if.else551.cleanup3116_crit_edge

if.else551.cleanup3116_crit_edge:                 ; preds = %if.else551
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup3116

switch.lookup4619:                                ; preds = %if.else551
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %switch.gep4621 to i32
  call void @__asan_load4_noabort(i32 %166)
  %switch.load4622 = load i32, ptr %switch.gep4621, align 4
  %167 = getelementptr inbounds %struct.drm_format_info, ptr %159, i32 0, i32 3
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %167, align 2
  %div560.lhs.trunc = trunc i32 %switch.load4622 to i16
  %div560.rhs.trunc = zext i8 %169 to i16
  %div5604588 = udiv i16 %div560.lhs.trunc, %div560.rhs.trunc
  %div560.zext = zext i16 %div5604588 to i32
  %170 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %src_x.i, align 4
  %rem562 = urem i32 %171, %div560.zext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.14591)
  %tobool563.not = icmp eq i32 %i.14591, 0
  %spec.select3501 = select i1 %tobool563.not, i32 1, i32 %conv9
  %div568 = udiv i32 %rem562, %spec.select3501
  %arrayidx570 = getelementptr [4 x i8], ptr %167, i32 0, i32 %i.14591
  %172 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx570, align 1
  %conv571 = zext i8 %173 to i32
  %mul572 = mul nuw nsw i32 %div568, %conv571
  br label %if.end573

if.end573:                                        ; preds = %switch.lookup4619, %if.then545
  %pix_per_tile.0 = phi i32 [ 96, %if.then545 ], [ %div560.zext, %switch.lookup4619 ]
  %x_off540.0 = phi i32 [ %add550, %if.then545 ], [ %mul572, %switch.lookup4619 ]
  %tile_w.1 = phi i32 [ 128, %if.then545 ], [ %switch.load4622, %switch.lookup4619 ]
  %174 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %src_x.i, align 4
  %div575 = udiv i32 %175, %pix_per_tile.0
  %mul577 = mul i32 %div575, %conv521
  %arrayidx579 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 21, i32 %i.14591
  %176 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.14591)
  %tobool581.not = icmp eq i32 %i.14591, 0
  %spec.select3502 = select i1 %tobool581.not, i32 1, i32 %conv11
  %div586 = udiv i32 %src_y.0, %spec.select3502
  %cond592 = zext i1 %tobool581.not to i32
  %neg3493 = or i32 %cond592, -2
  %and593 = and i32 %x_off540.0, %neg3493
  %reass.add = add i32 %div586, %mul577
  %reass.mul = mul i32 %reass.add, %tile_w.1
  %add590 = add i32 %177, %and593
  %add596 = add i32 %add590, %reass.mul
  %178 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add596, ptr %arrayidx579, align 4
  %inc601 = add nuw nsw i32 %i.14591, 1
  %exitcond.not = icmp eq i32 %inc601, %conv
  br i1 %exitcond.not, label %for.end602, label %if.end573.for.body539_crit_edge

if.end573.for.body539_crit_edge:                  ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body539

for.end602:                                       ; preds = %if.end573
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv521)
  %tobool622.not = icmp ult i32 %conv521, 65536
  br i1 %tobool622.not, label %for.end602.cleanup682_crit_edge, label %do.end643, !prof !34

for.end602.cleanup682_crit_edge:                  ; preds = %for.end602
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup682

do.end643:                                        ; preds = %for.end602
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef null) #8
  br label %cleanup682

cleanup682:                                       ; preds = %do.end643, %for.end602.cleanup682_crit_edge, %if.end535.cleanup682_crit_edge
  %and681 = and i32 %conv521, 65535
  br label %sw.epilog686

sw.default684:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %modifier, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i64 noundef %180) #8
  br label %cleanup3116

sw.epilog686:                                     ; preds = %cleanup682, %do.end471, %for.body.sw.epilog686_crit_edge, %do.end98.sw.epilog686_crit_edge
  %hvs_format.2 = phi i32 [ %hvs_format.0, %cleanup682 ], [ %20, %do.end471 ], [ %20, %do.end98.sw.epilog686_crit_edge ], [ %20, %for.body.sw.epilog686_crit_edge ]
  %tiling.2 = phi i32 [ %tiling.0, %cleanup682 ], [ 3, %do.end471 ], [ 0, %do.end98.sw.epilog686_crit_edge ], [ 0, %for.body.sw.epilog686_crit_edge ]
  %pitch0.3 = phi i32 [ %and681, %cleanup682 ], [ %147, %do.end471 ], [ %and103, %do.end98.sw.epilog686_crit_edge ], [ %and103, %for.body.sw.epilog686_crit_edge ]
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 12
  %181 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %182)
  %cmp688.not = icmp eq i16 %182, -1
  br i1 %cmp688.not, label %sw.epilog686.land.end_crit_edge, label %land.rhs

sw.epilog686.land.end_crit_edge:                  ; preds = %sw.epilog686
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %sw.epilog686
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %format3, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %184, i32 0, i32 8
  %185 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %has_alpha, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool691 = icmp ne i8 %186, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog686.land.end_crit_edge
  %187 = phi i1 [ false, %sw.epilog686.land.end_crit_edge ], [ %tobool691, %land.rhs ]
  %hvs693 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %188 = ptrtoint ptr %hvs693 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hvs693, align 8
  %hvs5 = getelementptr inbounds %struct.vc4_hvs, ptr %189, i32 0, i32 9
  %190 = ptrtoint ptr %hvs5 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %hvs5, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool694.not = icmp eq i8 %191, 0
  br i1 %tobool694.not, label %if.end745, label %if.else1731

if.end745:                                        ; preds = %land.end
  %192 = shl nuw nsw i32 %and25, 10
  %and696 = shl i32 %call23, 12
  %193 = and i32 %and696, 65536
  %or699 = or i32 %193, %192
  %pixel_order = getelementptr inbounds %struct.hvs_format, ptr %retval.0.i, i32 0, i32 2
  %194 = ptrtoint ptr %pixel_order to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pixel_order, align 4
  %shl771 = shl i32 %195, 13
  %shl792 = shl nsw i32 %tiling.2, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shl792)
  %tobool794.not = icmp ult i32 %shl792, 4194304
  br i1 %tobool794.not, label %if.end745.do.end934_crit_edge, label %do.end815, !prof !34

if.end745.do.end934_crit_edge:                    ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end934

do.end815:                                        ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #8
  br label %do.end934

do.end934:                                        ; preds = %do.end815, %if.end745.do.end934_crit_edge
  %and853 = and i32 %shl792, 3145728
  %196 = ptrtoint ptr %is_unity.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %is_unity.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool855.not = icmp eq i8 %197, 0
  %cond857 = select i1 %tobool855.not, i32 0, i32 16
  %shl876 = shl i32 %scl0.0, 5
  %and937 = and i32 %shl876, 224
  %or772 = or i32 %scl1.0, %and937
  %or774 = or i32 %or772, %or699
  %or854 = or i32 %or774, %hvs_format.2
  %or858 = or i32 %or854, %and853
  %or938 = or i32 %or858, %shl771
  %or1018 = or i32 %or938, %cond857
  %198 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dlist_count, align 4
  %dlist_size.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %200 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp.i.i3579 = icmp eq i32 %199, %201
  br i1 %cmp.i.i3579, label %if.then.i.i, label %do.end934.if.end10.i.i_crit_edge

do.end934.if.end10.i.i_crit_edge:                 ; preds = %do.end934
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %do.end934
  %mul.i.i3580 = shl i32 %199, 1
  %202 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3580, i32 4) #8
  %203 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %202, i32 4) #8
  %204 = extractvalue { i32, i1 } %203, 1
  br i1 %204, label %if.then.i.i.vc4_dlist_write.exit_crit_edge, label %if.end7.i.i.i, !prof !36

if.then.i.i.vc4_dlist_write.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

if.end7.i.i.i:                                    ; preds = %if.then.i.i
  %205 = extractvalue { i32, i1 } %203, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %205, i32 noundef 3264) #12
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, label %cleanup.i.i

if.end7.i.i.i.vc4_dlist_write.exit_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

cleanup.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %206 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dlist.i.i, align 4
  %208 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dlist_count, align 4
  %mul5.i.i = shl i32 %209, 2
  %210 = call ptr @memcpy(ptr %call8.i.i.i, ptr %207, i32 %mul5.i.i)
  tail call void @kfree(ptr noundef %207) #8
  %211 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call8.i.i.i, ptr %dlist.i.i, align 4
  %212 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %202, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %cleanup.i.i, %do.end934.if.end10.i.i_crit_edge
  %213 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dlist_count, align 4
  %inc.i.i = add i32 %214, 1
  store i32 %inc.i.i, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit

vc4_dlist_write.exit:                             ; preds = %if.end10.i.i, %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, %if.then.i.i.vc4_dlist_write.exit_crit_edge
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %215 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i3581 = getelementptr i32, ptr %216, i32 %199
  %217 = ptrtoint ptr %arrayidx.i3581 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or1018, ptr %arrayidx.i3581, align 4
  %218 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %dlist_count, align 4
  %pos0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 4
  %220 = ptrtoint ptr %pos0_offset to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %pos0_offset, align 8
  %221 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %alpha, align 4
  %223 = lshr i16 %222, 8
  %224 = zext i16 %223 to i32
  %shl1109 = shl nuw i32 %224, 24
  %225 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %crtc_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %226)
  %tobool1130.not = icmp ult i32 %226, 4096
  br i1 %tobool1130.not, label %vc4_dlist_write.exit.do.end1188_crit_edge, label %do.end1151, !prof !34

vc4_dlist_write.exit.do.end1188_crit_edge:        ; preds = %vc4_dlist_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1188

do.end1151:                                       ; preds = %vc4_dlist_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef null) #8
  br label %do.end1188

do.end1188:                                       ; preds = %do.end1151, %vc4_dlist_write.exit.do.end1188_crit_edge
  %227 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %crtc_x.i, align 4
  %and1192 = and i32 %228, 4095
  %or1193 = or i32 %and1192, %shl1109
  %229 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %crtc_y.i, align 8
  %231 = and i32 %230, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool1213.not = icmp eq i32 %231, 0
  br i1 %tobool1213.not, label %do.end1188.do.end1271_crit_edge, label %do.end1234, !prof !34

do.end1188.do.end1271_crit_edge:                  ; preds = %do.end1188
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1271

do.end1234:                                       ; preds = %do.end1188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 9, ptr noundef null) #8
  br label %do.end1271

do.end1271:                                       ; preds = %do.end1234, %do.end1188.do.end1271_crit_edge
  %232 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %crtc_y.i, align 8
  %shl1274 = shl i32 %233, 12
  %and1275 = and i32 %shl1274, 16773120
  %or1276 = or i32 %and1275, %or1193
  %234 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %dlist_count, align 4
  %236 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %237)
  %cmp.i.i3584 = icmp eq i32 %235, %237
  br i1 %cmp.i.i3584, label %if.then.i.i3586, label %do.end1271.if.end10.i.i3626_crit_edge

do.end1271.if.end10.i.i3626_crit_edge:            ; preds = %do.end1271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3626

if.then.i.i3586:                                  ; preds = %do.end1271
  %mul.i.i3585 = shl i32 %235, 1
  %238 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3585, i32 4) #8
  %239 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %238, i32 4) #8
  %240 = extractvalue { i32, i1 } %239, 1
  br i1 %240, label %if.then.i.i3586.vc4_dlist_write.exit3629_crit_edge, label %if.end7.i.i.i3617, !prof !36

if.then.i.i3586.vc4_dlist_write.exit3629_crit_edge: ; preds = %if.then.i.i3586
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3629

if.end7.i.i.i3617:                                ; preds = %if.then.i.i3586
  %241 = extractvalue { i32, i1 } %239, 0
  %call8.i.i.i3616 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %241, i32 noundef 3264) #12
  %tobool.not.i.i3619 = icmp eq ptr %call8.i.i.i3616, null
  br i1 %tobool.not.i.i3619, label %if.end7.i.i.i3617.vc4_dlist_write.exit3629_crit_edge, label %cleanup.i.i3624

if.end7.i.i.i3617.vc4_dlist_write.exit3629_crit_edge: ; preds = %if.end7.i.i.i3617
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3629

cleanup.i.i3624:                                  ; preds = %if.end7.i.i.i3617
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dlist.i, align 4
  %244 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3623 = shl i32 %245, 2
  %246 = call ptr @memcpy(ptr %call8.i.i.i3616, ptr %243, i32 %mul5.i.i3623)
  tail call void @kfree(ptr noundef %243) #8
  %247 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call8.i.i.i3616, ptr %dlist.i, align 4
  %248 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %238, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i3626

if.end10.i.i3626:                                 ; preds = %cleanup.i.i3624, %do.end1271.if.end10.i.i3626_crit_edge
  %249 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dlist_count, align 4
  %inc.i.i3625 = add i32 %250, 1
  store i32 %inc.i.i3625, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3629

vc4_dlist_write.exit3629:                         ; preds = %if.end10.i.i3626, %if.end7.i.i.i3617.vc4_dlist_write.exit3629_crit_edge, %if.then.i.i3586.vc4_dlist_write.exit3629_crit_edge
  %251 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i3628 = getelementptr i32, ptr %252, i32 %235
  %253 = ptrtoint ptr %arrayidx.i3628 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %or1276, ptr %arrayidx.i3628, align 4
  %254 = ptrtoint ptr %is_unity.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %is_unity.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool1278.not = icmp eq i8 %255, 0
  br i1 %tobool1278.not, label %if.then1279, label %vc4_dlist_write.exit3629.if.end1445_crit_edge

vc4_dlist_write.exit3629.if.end1445_crit_edge:    ; preds = %vc4_dlist_write.exit3629
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1445

if.then1279:                                      ; preds = %vc4_dlist_write.exit3629
  %256 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %crtc_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %257)
  %tobool1299.not = icmp ult i32 %257, 4096
  br i1 %tobool1299.not, label %if.then1279.do.end1357_crit_edge, label %do.end1320, !prof !34

if.then1279.do.end1357_crit_edge:                 ; preds = %if.then1279
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1357

do.end1320:                                       ; preds = %if.then1279
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 945, i32 noundef 9, ptr noundef null) #8
  br label %do.end1357

do.end1357:                                       ; preds = %do.end1320, %if.then1279.do.end1357_crit_edge
  %258 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %crtc_w.i, align 4
  %and1361 = and i32 %259, 4095
  %260 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %crtc_h.i, align 8
  %262 = and i32 %261, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool1381.not = icmp eq i32 %262, 0
  br i1 %tobool1381.not, label %do.end1357.do.end1439_crit_edge, label %do.end1402, !prof !34

do.end1357.do.end1439_crit_edge:                  ; preds = %do.end1357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1439

do.end1402:                                       ; preds = %do.end1357
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 947, i32 noundef 9, ptr noundef null) #8
  br label %do.end1439

do.end1439:                                       ; preds = %do.end1402, %do.end1357.do.end1439_crit_edge
  %263 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %crtc_h.i, align 8
  %shl1442 = shl i32 %264, 16
  %and1443 = and i32 %shl1442, 268369920
  %or1444 = or i32 %and1443, %and1361
  tail call fastcc void @vc4_dlist_write(ptr noundef %state, i32 noundef %or1444)
  br label %if.end1445

if.end1445:                                       ; preds = %do.end1439, %vc4_dlist_write.exit3629.if.end1445_crit_edge
  %265 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %dlist_count, align 4
  %pos2_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 5
  %267 = ptrtoint ptr %pos2_offset to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %pos2_offset, align 4
  %268 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %format3, align 8
  %has_alpha1515 = getelementptr inbounds %struct.drm_format_info, ptr %269, i32 0, i32 8
  %270 = ptrtoint ptr %has_alpha1515 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %has_alpha1515, align 4, !range !37
  %272 = xor i8 %271, 1
  %273 = zext i8 %272 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool1541.not = icmp eq i8 %271, 0
  %shl1544 = shl nuw nsw i32 %273, 30
  %cond1548 = select i1 %187, i32 268435456, i32 0
  %or1549 = or i32 %shl1544, %cond1548
  %cond1554 = select i1 %tobool1541.not, i32 0, i32 536870912
  %or1555 = or i32 %or1549, %cond1554
  %274 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %src_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %275)
  %tobool1576.not = icmp ult i32 %275, 4096
  br i1 %tobool1576.not, label %if.end1445.do.end1636_crit_edge, label %do.end1597, !prof !34

if.end1445.do.end1636_crit_edge:                  ; preds = %if.end1445
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1636

do.end1597:                                       ; preds = %if.end1445
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 961, i32 noundef 9, ptr noundef null) #8
  br label %do.end1636

do.end1636:                                       ; preds = %do.end1597, %if.end1445.do.end1636_crit_edge
  %276 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %src_w.i, align 4
  %and1641 = and i32 %277, 4095
  %or1642 = or i32 %and1641, %or1555
  %278 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %src_h.i, align 4
  %280 = and i32 %279, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool1664.not = icmp eq i32 %280, 0
  br i1 %tobool1664.not, label %do.end1636.do.end1724_crit_edge, label %do.end1685, !prof !34

do.end1636.do.end1724_crit_edge:                  ; preds = %do.end1636
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1724

do.end1685:                                       ; preds = %do.end1636
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #8
  br label %do.end1724

do.end1724:                                       ; preds = %do.end1685, %do.end1636.do.end1724_crit_edge
  %281 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %src_h.i, align 4
  %shl1728 = shl i32 %282, 16
  %and1729 = and i32 %shl1728, 268369920
  %or1730 = or i32 %and1729, %or1642
  %283 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %dlist_count, align 4
  %285 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp.i.i3632 = icmp eq i32 %284, %286
  br i1 %cmp.i.i3632, label %if.then.i.i3634, label %do.end1724.if.end10.i.i3674_crit_edge

do.end1724.if.end10.i.i3674_crit_edge:            ; preds = %do.end1724
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3674

if.then.i.i3634:                                  ; preds = %do.end1724
  %mul.i.i3633 = shl i32 %284, 1
  %287 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3633, i32 4) #8
  %288 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %287, i32 4) #8
  %289 = extractvalue { i32, i1 } %288, 1
  br i1 %289, label %if.then.i.i3634.vc4_dlist_write.exit3677_crit_edge, label %if.end7.i.i.i3665, !prof !36

if.then.i.i3634.vc4_dlist_write.exit3677_crit_edge: ; preds = %if.then.i.i3634
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3677

if.end7.i.i.i3665:                                ; preds = %if.then.i.i3634
  %290 = extractvalue { i32, i1 } %288, 0
  %call8.i.i.i3664 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %290, i32 noundef 3264) #12
  %tobool.not.i.i3667 = icmp eq ptr %call8.i.i.i3664, null
  br i1 %tobool.not.i.i3667, label %if.end7.i.i.i3665.vc4_dlist_write.exit3677_crit_edge, label %cleanup.i.i3672

if.end7.i.i.i3665.vc4_dlist_write.exit3677_crit_edge: ; preds = %if.end7.i.i.i3665
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3677

cleanup.i.i3672:                                  ; preds = %if.end7.i.i.i3665
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dlist.i, align 4
  %293 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3671 = shl i32 %294, 2
  %295 = call ptr @memcpy(ptr %call8.i.i.i3664, ptr %292, i32 %mul5.i.i3671)
  tail call void @kfree(ptr noundef %292) #8
  %296 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call8.i.i.i3664, ptr %dlist.i, align 4
  %297 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %287, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i3674

if.end10.i.i3674:                                 ; preds = %cleanup.i.i3672, %do.end1724.if.end10.i.i3674_crit_edge
  %298 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dlist_count, align 4
  %inc.i.i3673 = add i32 %299, 1
  store i32 %inc.i.i3673, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3677

vc4_dlist_write.exit3677:                         ; preds = %if.end10.i.i3674, %if.end7.i.i.i3665.vc4_dlist_write.exit3677_crit_edge, %if.then.i.i3634.vc4_dlist_write.exit3677_crit_edge
  %300 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i3676 = getelementptr i32, ptr %301, i32 %284
  %302 = ptrtoint ptr %arrayidx.i3676 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %or1730, ptr %arrayidx.i3676, align 4
  %303 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %dlist_count, align 4
  %305 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %304, i32 %306)
  %cmp.i.i3680 = icmp eq i32 %304, %306
  br i1 %cmp.i.i3680, label %if.then.i.i3682, label %vc4_dlist_write.exit3677.if.end2714.sink.split_crit_edge

vc4_dlist_write.exit3677.if.end2714.sink.split_crit_edge: ; preds = %vc4_dlist_write.exit3677
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714.sink.split

if.then.i.i3682:                                  ; preds = %vc4_dlist_write.exit3677
  %mul.i.i3681 = shl i32 %304, 1
  %307 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3681, i32 4) #8
  %308 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %307, i32 4) #8
  %309 = extractvalue { i32, i1 } %308, 1
  br i1 %309, label %if.then.i.i3682.if.end2714_crit_edge, label %if.end7.i.i.i3713, !prof !36

if.then.i.i3682.if.end2714_crit_edge:             ; preds = %if.then.i.i3682
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714

if.end7.i.i.i3713:                                ; preds = %if.then.i.i3682
  %310 = extractvalue { i32, i1 } %308, 0
  %call8.i.i.i3712 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %310, i32 noundef 3264) #12
  %tobool.not.i.i3715 = icmp eq ptr %call8.i.i.i3712, null
  br i1 %tobool.not.i.i3715, label %if.end7.i.i.i3713.if.end2714_crit_edge, label %cleanup.i.i3720

if.end7.i.i.i3713.if.end2714_crit_edge:           ; preds = %if.end7.i.i.i3713
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714

cleanup.i.i3720:                                  ; preds = %if.end7.i.i.i3713
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dlist.i, align 4
  %313 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3719 = shl i32 %314, 2
  %315 = call ptr @memcpy(ptr %call8.i.i.i3712, ptr %312, i32 %mul5.i.i3719)
  tail call void @kfree(ptr noundef %312) #8
  %316 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %call8.i.i.i3712, ptr %dlist.i, align 4
  %317 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %307, ptr %dlist_size.i.i, align 8
  br label %if.end2714.sink.split

if.else1731:                                      ; preds = %land.end
  %pixel_order1732 = getelementptr inbounds %struct.hvs_format, ptr %retval.0.i, i32 0, i32 2
  %318 = ptrtoint ptr %pixel_order1732 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %pixel_order1732, align 4
  %pixel_order_hvs5 = getelementptr inbounds %struct.hvs_format, ptr %retval.0.i, i32 0, i32 3
  %320 = ptrtoint ptr %pixel_order_hvs5 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %pixel_order_hvs5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool1733.not = icmp eq i32 %321, 0
  %spec.select3523 = select i1 %tobool1733.not, i32 %319, i32 %321
  %shl1737 = shl i32 %spec.select3523, 13
  %shl1758 = shl nsw i32 %tiling.2, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shl1758)
  %tobool1760.not = icmp ult i32 %shl1758, 4194304
  br i1 %tobool1760.not, label %if.else1731.do.end1901_crit_edge, label %do.end1781, !prof !34

if.else1731.do.end1901_crit_edge:                 ; preds = %if.else1731
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1901

do.end1781:                                       ; preds = %if.else1731
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 979, i32 noundef 9, ptr noundef null) #8
  br label %do.end1901

do.end1901:                                       ; preds = %do.end1781, %if.else1731.do.end1901_crit_edge
  %and1819 = and i32 %shl1758, 3145728
  %322 = ptrtoint ptr %is_unity.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %is_unity.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool1822.not = icmp eq i8 %323, 0
  %cond1824 = select i1 %tobool1822.not, i32 0, i32 32768
  %shl1843 = shl i32 %scl0.0, 5
  %and1904 = and i32 %shl1843, 224
  %or1740 = or i32 %scl1.0, %and1904
  %or1820 = or i32 %or1740, %hvs_format.2
  %or1825 = or i32 %or1820, %and1819
  %or1905 = or i32 %or1825, %shl1737
  %or1987 = or i32 %or1905, %cond1824
  %324 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %dlist_count, align 4
  %dlist_size.i.i3727 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %326 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %dlist_size.i.i3727, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %327)
  %cmp.i.i3728 = icmp eq i32 %325, %327
  br i1 %cmp.i.i3728, label %if.then.i.i3730, label %do.end1901.if.end10.i.i3770_crit_edge

do.end1901.if.end10.i.i3770_crit_edge:            ; preds = %do.end1901
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3770

if.then.i.i3730:                                  ; preds = %do.end1901
  %mul.i.i3729 = shl i32 %325, 1
  %328 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3729, i32 4) #8
  %329 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %328, i32 4) #8
  %330 = extractvalue { i32, i1 } %329, 1
  br i1 %330, label %if.then.i.i3730.vc4_dlist_write.exit3773_crit_edge, label %if.end7.i.i.i3761, !prof !36

if.then.i.i3730.vc4_dlist_write.exit3773_crit_edge: ; preds = %if.then.i.i3730
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3773

if.end7.i.i.i3761:                                ; preds = %if.then.i.i3730
  %331 = extractvalue { i32, i1 } %329, 0
  %call8.i.i.i3760 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %331, i32 noundef 3264) #12
  %tobool.not.i.i3763 = icmp eq ptr %call8.i.i.i3760, null
  br i1 %tobool.not.i.i3763, label %if.end7.i.i.i3761.vc4_dlist_write.exit3773_crit_edge, label %cleanup.i.i3768

if.end7.i.i.i3761.vc4_dlist_write.exit3773_crit_edge: ; preds = %if.end7.i.i.i3761
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3773

cleanup.i.i3768:                                  ; preds = %if.end7.i.i.i3761
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i3766 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %332 = ptrtoint ptr %dlist.i.i3766 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dlist.i.i3766, align 4
  %334 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3767 = shl i32 %335, 2
  %336 = call ptr @memcpy(ptr %call8.i.i.i3760, ptr %333, i32 %mul5.i.i3767)
  tail call void @kfree(ptr noundef %333) #8
  %337 = ptrtoint ptr %dlist.i.i3766 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call8.i.i.i3760, ptr %dlist.i.i3766, align 4
  %338 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %328, ptr %dlist_size.i.i3727, align 8
  br label %if.end10.i.i3770

if.end10.i.i3770:                                 ; preds = %cleanup.i.i3768, %do.end1901.if.end10.i.i3770_crit_edge
  %339 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %dlist_count, align 4
  %inc.i.i3769 = add i32 %340, 1
  store i32 %inc.i.i3769, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3773

vc4_dlist_write.exit3773:                         ; preds = %if.end10.i.i3770, %if.end7.i.i.i3761.vc4_dlist_write.exit3773_crit_edge, %if.then.i.i3730.vc4_dlist_write.exit3773_crit_edge
  %dlist.i3771 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %341 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dlist.i3771, align 4
  %arrayidx.i3772 = getelementptr i32, ptr %342, i32 %325
  %343 = ptrtoint ptr %arrayidx.i3772 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %or1987, ptr %arrayidx.i3772, align 4
  %344 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %dlist_count, align 4
  %pos0_offset1989 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 4
  %346 = ptrtoint ptr %pos0_offset1989 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %pos0_offset1989, align 8
  %347 = shl nuw i32 %and25, 26
  %348 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %crtc_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %349)
  %tobool2013.not = icmp ult i32 %349, 4096
  br i1 %tobool2013.not, label %vc4_dlist_write.exit3773.do.end2071_crit_edge, label %do.end2034, !prof !34

vc4_dlist_write.exit3773.do.end2071_crit_edge:    ; preds = %vc4_dlist_write.exit3773
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2071

do.end2034:                                       ; preds = %vc4_dlist_write.exit3773
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 993, i32 noundef 9, ptr noundef null) #8
  br label %do.end2071

do.end2071:                                       ; preds = %do.end2034, %vc4_dlist_write.exit3773.do.end2071_crit_edge
  %350 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %crtc_x.i, align 4
  %and2075 = and i32 %351, 4095
  %or2076 = or i32 %and2075, %347
  %and2077 = shl i32 %call23, 11
  %352 = and i32 %and2077, 32768
  %or2080 = or i32 %or2076, %352
  %353 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %crtc_y.i, align 8
  %355 = and i32 %354, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool2101.not = icmp eq i32 %355, 0
  br i1 %tobool2101.not, label %do.end2071.do.end2159_crit_edge, label %do.end2122, !prof !34

do.end2071.do.end2159_crit_edge:                  ; preds = %do.end2071
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2159

do.end2122:                                       ; preds = %do.end2071
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %do.end2159

do.end2159:                                       ; preds = %do.end2122, %do.end2071.do.end2159_crit_edge
  %356 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %crtc_y.i, align 8
  %shl2162 = shl i32 %357, 16
  %and2163 = and i32 %shl2162, 268369920
  %or2164 = or i32 %and2163, %or2080
  %358 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %dlist_count, align 4
  %360 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %dlist_size.i.i3727, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %359, i32 %361)
  %cmp.i.i3776 = icmp eq i32 %359, %361
  br i1 %cmp.i.i3776, label %if.then.i.i3778, label %do.end2159.if.end10.i.i3818_crit_edge

do.end2159.if.end10.i.i3818_crit_edge:            ; preds = %do.end2159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3818

if.then.i.i3778:                                  ; preds = %do.end2159
  %mul.i.i3777 = shl i32 %359, 1
  %362 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3777, i32 4) #8
  %363 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %362, i32 4) #8
  %364 = extractvalue { i32, i1 } %363, 1
  br i1 %364, label %if.then.i.i3778.vc4_dlist_write.exit3821_crit_edge, label %if.end7.i.i.i3809, !prof !36

if.then.i.i3778.vc4_dlist_write.exit3821_crit_edge: ; preds = %if.then.i.i3778
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3821

if.end7.i.i.i3809:                                ; preds = %if.then.i.i3778
  %365 = extractvalue { i32, i1 } %363, 0
  %call8.i.i.i3808 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %365, i32 noundef 3264) #12
  %tobool.not.i.i3811 = icmp eq ptr %call8.i.i.i3808, null
  br i1 %tobool.not.i.i3811, label %if.end7.i.i.i3809.vc4_dlist_write.exit3821_crit_edge, label %cleanup.i.i3816

if.end7.i.i.i3809.vc4_dlist_write.exit3821_crit_edge: ; preds = %if.end7.i.i.i3809
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3821

cleanup.i.i3816:                                  ; preds = %if.end7.i.i.i3809
  call void @__sanitizer_cov_trace_pc() #10
  %366 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dlist.i3771, align 4
  %368 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3815 = shl i32 %369, 2
  %370 = call ptr @memcpy(ptr %call8.i.i.i3808, ptr %367, i32 %mul5.i.i3815)
  tail call void @kfree(ptr noundef %367) #8
  %371 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call8.i.i.i3808, ptr %dlist.i3771, align 4
  %372 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %362, ptr %dlist_size.i.i3727, align 8
  br label %if.end10.i.i3818

if.end10.i.i3818:                                 ; preds = %cleanup.i.i3816, %do.end2159.if.end10.i.i3818_crit_edge
  %373 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %dlist_count, align 4
  %inc.i.i3817 = add i32 %374, 1
  store i32 %inc.i.i3817, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3821

vc4_dlist_write.exit3821:                         ; preds = %if.end10.i.i3818, %if.end7.i.i.i3809.vc4_dlist_write.exit3821_crit_edge, %if.then.i.i3778.vc4_dlist_write.exit3821_crit_edge
  %375 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dlist.i3771, align 4
  %arrayidx.i3820 = getelementptr i32, ptr %376, i32 %359
  %377 = ptrtoint ptr %arrayidx.i3820 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %or2164, ptr %arrayidx.i3820, align 4
  %378 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %alpha, align 4
  %380 = and i16 %379, -16
  %and2255 = zext i16 %380 to i32
  %381 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %format3, align 8
  %has_alpha2257 = getelementptr inbounds %struct.drm_format_info, ptr %382, i32 0, i32 8
  %383 = ptrtoint ptr %has_alpha2257 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %has_alpha2257, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool2258.not = icmp eq i8 %384, 0
  %cond2260 = select i1 %tobool2258.not, i32 0, i32 536870912
  %cond2264 = select i1 %187, i32 268435456, i32 0
  %385 = xor i8 %384, 1
  %386 = zext i8 %385 to i32
  %shl2363 = shl nuw nsw i32 %386, 30
  %or2261 = or i32 %cond2264, %and2255
  %or2265 = or i32 %or2261, %cond2260
  %or2365 = or i32 %or2265, %shl2363
  %387 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %dlist_count, align 4
  %389 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %dlist_size.i.i3727, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %390)
  %cmp.i.i3824 = icmp eq i32 %388, %390
  br i1 %cmp.i.i3824, label %if.then.i.i3826, label %vc4_dlist_write.exit3821.if.end10.i.i3866_crit_edge

vc4_dlist_write.exit3821.if.end10.i.i3866_crit_edge: ; preds = %vc4_dlist_write.exit3821
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3866

if.then.i.i3826:                                  ; preds = %vc4_dlist_write.exit3821
  %mul.i.i3825 = shl i32 %388, 1
  %391 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3825, i32 4) #8
  %392 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %391, i32 4) #8
  %393 = extractvalue { i32, i1 } %392, 1
  br i1 %393, label %if.then.i.i3826.vc4_dlist_write.exit3869_crit_edge, label %if.end7.i.i.i3857, !prof !36

if.then.i.i3826.vc4_dlist_write.exit3869_crit_edge: ; preds = %if.then.i.i3826
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3869

if.end7.i.i.i3857:                                ; preds = %if.then.i.i3826
  %394 = extractvalue { i32, i1 } %392, 0
  %call8.i.i.i3856 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %394, i32 noundef 3264) #12
  %tobool.not.i.i3859 = icmp eq ptr %call8.i.i.i3856, null
  br i1 %tobool.not.i.i3859, label %if.end7.i.i.i3857.vc4_dlist_write.exit3869_crit_edge, label %cleanup.i.i3864

if.end7.i.i.i3857.vc4_dlist_write.exit3869_crit_edge: ; preds = %if.end7.i.i.i3857
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3869

cleanup.i.i3864:                                  ; preds = %if.end7.i.i.i3857
  call void @__sanitizer_cov_trace_pc() #10
  %395 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dlist.i3771, align 4
  %397 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3863 = shl i32 %398, 2
  %399 = call ptr @memcpy(ptr %call8.i.i.i3856, ptr %396, i32 %mul5.i.i3863)
  tail call void @kfree(ptr noundef %396) #8
  %400 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %call8.i.i.i3856, ptr %dlist.i3771, align 4
  %401 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %391, ptr %dlist_size.i.i3727, align 8
  br label %if.end10.i.i3866

if.end10.i.i3866:                                 ; preds = %cleanup.i.i3864, %vc4_dlist_write.exit3821.if.end10.i.i3866_crit_edge
  %402 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %dlist_count, align 4
  %inc.i.i3865 = add i32 %403, 1
  store i32 %inc.i.i3865, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3869

vc4_dlist_write.exit3869:                         ; preds = %if.end10.i.i3866, %if.end7.i.i.i3857.vc4_dlist_write.exit3869_crit_edge, %if.then.i.i3826.vc4_dlist_write.exit3869_crit_edge
  %404 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %dlist.i3771, align 4
  %arrayidx.i3868 = getelementptr i32, ptr %405, i32 %388
  %406 = ptrtoint ptr %arrayidx.i3868 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %or2365, ptr %arrayidx.i3868, align 4
  %407 = ptrtoint ptr %is_unity.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %is_unity.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool2367.not = icmp eq i8 %408, 0
  br i1 %tobool2367.not, label %if.then2368, label %vc4_dlist_write.exit3869.if.end2536_crit_edge

vc4_dlist_write.exit3869.if.end2536_crit_edge:    ; preds = %vc4_dlist_write.exit3869
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2536

if.then2368:                                      ; preds = %vc4_dlist_write.exit3869
  %409 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %crtc_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %410)
  %tobool2389.not = icmp ult i32 %410, 8192
  br i1 %tobool2389.not, label %if.then2368.do.end2447_crit_edge, label %do.end2410, !prof !34

if.then2368.do.end2447_crit_edge:                 ; preds = %if.then2368
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2447

do.end2410:                                       ; preds = %if.then2368
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1018, i32 noundef 9, ptr noundef null) #8
  br label %do.end2447

do.end2447:                                       ; preds = %do.end2410, %if.then2368.do.end2447_crit_edge
  %411 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %crtc_w.i, align 4
  %and2451 = and i32 %412, 8191
  %413 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %crtc_h.i, align 8
  %415 = and i32 %414, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool2472.not = icmp eq i32 %415, 0
  br i1 %tobool2472.not, label %do.end2447.do.end2530_crit_edge, label %do.end2493, !prof !34

do.end2447.do.end2530_crit_edge:                  ; preds = %do.end2447
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2530

do.end2493:                                       ; preds = %do.end2447
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1020, i32 noundef 9, ptr noundef null) #8
  br label %do.end2530

do.end2530:                                       ; preds = %do.end2493, %do.end2447.do.end2530_crit_edge
  %416 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %crtc_h.i, align 8
  %shl2533 = shl i32 %417, 16
  %and2534 = and i32 %shl2533, 536805376
  %or2535 = or i32 %and2534, %and2451
  tail call fastcc void @vc4_dlist_write(ptr noundef %state, i32 noundef %or2535)
  br label %if.end2536

if.end2536:                                       ; preds = %do.end2530, %vc4_dlist_write.exit3869.if.end2536_crit_edge
  %418 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %dlist_count, align 4
  %pos2_offset2538 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 5
  %420 = ptrtoint ptr %pos2_offset2538 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %419, ptr %pos2_offset2538, align 4
  %421 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %src_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %422)
  %tobool2560.not = icmp ult i32 %422, 8192
  br i1 %tobool2560.not, label %if.end2536.do.end2620_crit_edge, label %do.end2581, !prof !34

if.end2536.do.end2620_crit_edge:                  ; preds = %if.end2536
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2620

do.end2581:                                       ; preds = %if.end2536
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #8
  br label %do.end2620

do.end2620:                                       ; preds = %do.end2581, %if.end2536.do.end2620_crit_edge
  %423 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %src_w.i, align 4
  %and2625 = and i32 %424, 8191
  %425 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %src_h.i, align 4
  %427 = and i32 %426, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %tobool2647.not = icmp eq i32 %427, 0
  br i1 %tobool2647.not, label %do.end2620.do.end2707_crit_edge, label %do.end2668, !prof !34

do.end2620.do.end2707_crit_edge:                  ; preds = %do.end2620
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2707

do.end2668:                                       ; preds = %do.end2620
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1029, i32 noundef 9, ptr noundef null) #8
  br label %do.end2707

do.end2707:                                       ; preds = %do.end2668, %do.end2620.do.end2707_crit_edge
  %428 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %src_h.i, align 4
  %shl2711 = shl i32 %429, 16
  %and2712 = and i32 %shl2711, 536805376
  %or2713 = or i32 %and2712, %and2625
  %430 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %dlist_count, align 4
  %432 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %dlist_size.i.i3727, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %431, i32 %433)
  %cmp.i.i3872 = icmp eq i32 %431, %433
  br i1 %cmp.i.i3872, label %if.then.i.i3874, label %do.end2707.if.end10.i.i3914_crit_edge

do.end2707.if.end10.i.i3914_crit_edge:            ; preds = %do.end2707
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i3914

if.then.i.i3874:                                  ; preds = %do.end2707
  %mul.i.i3873 = shl i32 %431, 1
  %434 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3873, i32 4) #8
  %435 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %434, i32 4) #8
  %436 = extractvalue { i32, i1 } %435, 1
  br i1 %436, label %if.then.i.i3874.vc4_dlist_write.exit3917_crit_edge, label %if.end7.i.i.i3905, !prof !36

if.then.i.i3874.vc4_dlist_write.exit3917_crit_edge: ; preds = %if.then.i.i3874
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3917

if.end7.i.i.i3905:                                ; preds = %if.then.i.i3874
  %437 = extractvalue { i32, i1 } %435, 0
  %call8.i.i.i3904 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %437, i32 noundef 3264) #12
  %tobool.not.i.i3907 = icmp eq ptr %call8.i.i.i3904, null
  br i1 %tobool.not.i.i3907, label %if.end7.i.i.i3905.vc4_dlist_write.exit3917_crit_edge, label %cleanup.i.i3912

if.end7.i.i.i3905.vc4_dlist_write.exit3917_crit_edge: ; preds = %if.end7.i.i.i3905
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit3917

cleanup.i.i3912:                                  ; preds = %if.end7.i.i.i3905
  call void @__sanitizer_cov_trace_pc() #10
  %438 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %dlist.i3771, align 4
  %440 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3911 = shl i32 %441, 2
  %442 = call ptr @memcpy(ptr %call8.i.i.i3904, ptr %439, i32 %mul5.i.i3911)
  tail call void @kfree(ptr noundef %439) #8
  %443 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call8.i.i.i3904, ptr %dlist.i3771, align 4
  %444 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %434, ptr %dlist_size.i.i3727, align 8
  br label %if.end10.i.i3914

if.end10.i.i3914:                                 ; preds = %cleanup.i.i3912, %do.end2707.if.end10.i.i3914_crit_edge
  %445 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %dlist_count, align 4
  %inc.i.i3913 = add i32 %446, 1
  store i32 %inc.i.i3913, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit3917

vc4_dlist_write.exit3917:                         ; preds = %if.end10.i.i3914, %if.end7.i.i.i3905.vc4_dlist_write.exit3917_crit_edge, %if.then.i.i3874.vc4_dlist_write.exit3917_crit_edge
  %447 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %dlist.i3771, align 4
  %arrayidx.i3916 = getelementptr i32, ptr %448, i32 %431
  %449 = ptrtoint ptr %arrayidx.i3916 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %or2713, ptr %arrayidx.i3916, align 4
  %450 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %dlist_count, align 4
  %452 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %dlist_size.i.i3727, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %451, i32 %453)
  %cmp.i.i3920 = icmp eq i32 %451, %453
  br i1 %cmp.i.i3920, label %if.then.i.i3922, label %vc4_dlist_write.exit3917.if.end2714.sink.split_crit_edge

vc4_dlist_write.exit3917.if.end2714.sink.split_crit_edge: ; preds = %vc4_dlist_write.exit3917
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714.sink.split

if.then.i.i3922:                                  ; preds = %vc4_dlist_write.exit3917
  %mul.i.i3921 = shl i32 %451, 1
  %454 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3921, i32 4) #8
  %455 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %454, i32 4) #8
  %456 = extractvalue { i32, i1 } %455, 1
  br i1 %456, label %if.then.i.i3922.if.end2714_crit_edge, label %if.end7.i.i.i3953, !prof !36

if.then.i.i3922.if.end2714_crit_edge:             ; preds = %if.then.i.i3922
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714

if.end7.i.i.i3953:                                ; preds = %if.then.i.i3922
  %457 = extractvalue { i32, i1 } %455, 0
  %call8.i.i.i3952 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %457, i32 noundef 3264) #12
  %tobool.not.i.i3955 = icmp eq ptr %call8.i.i.i3952, null
  br i1 %tobool.not.i.i3955, label %if.end7.i.i.i3953.if.end2714_crit_edge, label %cleanup.i.i3960

if.end7.i.i.i3953.if.end2714_crit_edge:           ; preds = %if.end7.i.i.i3953
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2714

cleanup.i.i3960:                                  ; preds = %if.end7.i.i.i3953
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dlist.i3771, align 4
  %460 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %dlist_count, align 4
  %mul5.i.i3959 = shl i32 %461, 2
  %462 = call ptr @memcpy(ptr %call8.i.i.i3952, ptr %459, i32 %mul5.i.i3959)
  tail call void @kfree(ptr noundef %459) #8
  %463 = ptrtoint ptr %dlist.i3771 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call8.i.i.i3952, ptr %dlist.i3771, align 4
  %464 = ptrtoint ptr %dlist_size.i.i3727 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %454, ptr %dlist_size.i.i3727, align 8
  br label %if.end2714.sink.split

if.end2714.sink.split:                            ; preds = %cleanup.i.i3960, %vc4_dlist_write.exit3917.if.end2714.sink.split_crit_edge, %cleanup.i.i3720, %vc4_dlist_write.exit3677.if.end2714.sink.split_crit_edge
  %dlist.i3771.sink.ph = phi ptr [ %dlist.i, %cleanup.i.i3720 ], [ %dlist.i, %vc4_dlist_write.exit3677.if.end2714.sink.split_crit_edge ], [ %dlist.i3771, %cleanup.i.i3960 ], [ %dlist.i3771, %vc4_dlist_write.exit3917.if.end2714.sink.split_crit_edge ]
  %.sink4608.ph = phi i32 [ %304, %cleanup.i.i3720 ], [ %304, %vc4_dlist_write.exit3677.if.end2714.sink.split_crit_edge ], [ %451, %cleanup.i.i3960 ], [ %451, %vc4_dlist_write.exit3917.if.end2714.sink.split_crit_edge ]
  %465 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %dlist_count, align 4
  %inc.i.i3961 = add i32 %466, 1
  store i32 %inc.i.i3961, ptr %dlist_count, align 4
  br label %if.end2714

if.end2714:                                       ; preds = %if.end2714.sink.split, %if.end7.i.i.i3953.if.end2714_crit_edge, %if.then.i.i3922.if.end2714_crit_edge, %if.end7.i.i.i3713.if.end2714_crit_edge, %if.then.i.i3682.if.end2714_crit_edge
  %dlist.i3771.sink = phi ptr [ %dlist.i, %if.then.i.i3682.if.end2714_crit_edge ], [ %dlist.i, %if.end7.i.i.i3713.if.end2714_crit_edge ], [ %dlist.i3771, %if.then.i.i3922.if.end2714_crit_edge ], [ %dlist.i3771, %if.end7.i.i.i3953.if.end2714_crit_edge ], [ %dlist.i3771.sink.ph, %if.end2714.sink.split ]
  %.sink4608 = phi i32 [ %304, %if.then.i.i3682.if.end2714_crit_edge ], [ %304, %if.end7.i.i.i3713.if.end2714_crit_edge ], [ %451, %if.then.i.i3922.if.end2714_crit_edge ], [ %451, %if.end7.i.i.i3953.if.end2714_crit_edge ], [ %.sink4608.ph, %if.end2714.sink.split ]
  %467 = ptrtoint ptr %dlist.i3771.sink to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %dlist.i3771.sink, align 4
  %arrayidx.i3964 = getelementptr i32, ptr %468, i32 %.sink4608
  %469 = ptrtoint ptr %arrayidx.i3964 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 -1061109568, ptr %arrayidx.i3964, align 4
  %470 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %dlist_count, align 4
  %ptr0_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 6
  %472 = ptrtoint ptr %ptr0_offset to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %471, ptr %ptr0_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp27174594.not = icmp eq i8 %14, 0
  br i1 %cmp27174594.not, label %if.end2714.for.end2731_crit_edge, label %for.body2719.lr.ph

if.end2714.for.end2731_crit_edge:                 ; preds = %if.end2714
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end2731

for.body2719.lr.ph:                               ; preds = %if.end2714
  %dlist_size.i.i3967 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %dlist.i.i4006 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  br label %for.body2719

for.cond2725.preheader:                           ; preds = %vc4_dlist_write.exit4013
  br i1 %cmp27174594.not, label %for.cond2725.preheader.for.end2731_crit_edge, label %for.body2728.lr.ph

for.cond2725.preheader.for.end2731_crit_edge:     ; preds = %for.cond2725.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end2731

for.body2728.lr.ph:                               ; preds = %for.cond2725.preheader
  %dlist_size.i.i4015 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %dlist.i.i4054 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  br label %for.body2728

for.body2719:                                     ; preds = %vc4_dlist_write.exit4013.for.body2719_crit_edge, %for.body2719.lr.ph
  %i.24595 = phi i32 [ 0, %for.body2719.lr.ph ], [ %inc2723, %vc4_dlist_write.exit4013.for.body2719_crit_edge ]
  %arrayidx2721 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 21, i32 %i.24595
  %473 = ptrtoint ptr %arrayidx2721 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %arrayidx2721, align 4
  %475 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %dlist_count, align 4
  %477 = ptrtoint ptr %dlist_size.i.i3967 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %dlist_size.i.i3967, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %476, i32 %478)
  %cmp.i.i3968 = icmp eq i32 %476, %478
  br i1 %cmp.i.i3968, label %if.then.i.i3970, label %for.body2719.if.end10.i.i4010_crit_edge

for.body2719.if.end10.i.i4010_crit_edge:          ; preds = %for.body2719
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4010

if.then.i.i3970:                                  ; preds = %for.body2719
  %mul.i.i3969 = shl i32 %476, 1
  %479 = tail call i32 @llvm.umax.i32(i32 %mul.i.i3969, i32 4) #8
  %480 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %479, i32 4) #8
  %481 = extractvalue { i32, i1 } %480, 1
  br i1 %481, label %if.then.i.i3970.vc4_dlist_write.exit4013_crit_edge, label %if.end7.i.i.i4001, !prof !36

if.then.i.i3970.vc4_dlist_write.exit4013_crit_edge: ; preds = %if.then.i.i3970
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4013

if.end7.i.i.i4001:                                ; preds = %if.then.i.i3970
  %482 = extractvalue { i32, i1 } %480, 0
  %call8.i.i.i4000 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %482, i32 noundef 3264) #12
  %tobool.not.i.i4003 = icmp eq ptr %call8.i.i.i4000, null
  br i1 %tobool.not.i.i4003, label %if.end7.i.i.i4001.vc4_dlist_write.exit4013_crit_edge, label %cleanup.i.i4008

if.end7.i.i.i4001.vc4_dlist_write.exit4013_crit_edge: ; preds = %if.end7.i.i.i4001
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4013

cleanup.i.i4008:                                  ; preds = %if.end7.i.i.i4001
  call void @__sanitizer_cov_trace_pc() #10
  %483 = ptrtoint ptr %dlist.i.i4006 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %dlist.i.i4006, align 4
  %485 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4007 = shl i32 %486, 2
  %487 = call ptr @memcpy(ptr %call8.i.i.i4000, ptr %484, i32 %mul5.i.i4007)
  tail call void @kfree(ptr noundef %484) #8
  %488 = ptrtoint ptr %dlist.i.i4006 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %call8.i.i.i4000, ptr %dlist.i.i4006, align 4
  %489 = ptrtoint ptr %dlist_size.i.i3967 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %479, ptr %dlist_size.i.i3967, align 8
  br label %if.end10.i.i4010

if.end10.i.i4010:                                 ; preds = %cleanup.i.i4008, %for.body2719.if.end10.i.i4010_crit_edge
  %490 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %dlist_count, align 4
  %inc.i.i4009 = add i32 %491, 1
  store i32 %inc.i.i4009, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4013

vc4_dlist_write.exit4013:                         ; preds = %if.end10.i.i4010, %if.end7.i.i.i4001.vc4_dlist_write.exit4013_crit_edge, %if.then.i.i3970.vc4_dlist_write.exit4013_crit_edge
  %492 = ptrtoint ptr %dlist.i.i4006 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dlist.i.i4006, align 4
  %arrayidx.i4012 = getelementptr i32, ptr %493, i32 %476
  %494 = ptrtoint ptr %arrayidx.i4012 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %474, ptr %arrayidx.i4012, align 4
  %inc2723 = add nuw nsw i32 %i.24595, 1
  %exitcond4602.not = icmp eq i32 %inc2723, %conv
  br i1 %exitcond4602.not, label %for.cond2725.preheader, label %vc4_dlist_write.exit4013.for.body2719_crit_edge

vc4_dlist_write.exit4013.for.body2719_crit_edge:  ; preds = %vc4_dlist_write.exit4013
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body2719

for.body2728:                                     ; preds = %vc4_dlist_write.exit4061.for.body2728_crit_edge, %for.body2728.lr.ph
  %i.34597 = phi i32 [ 0, %for.body2728.lr.ph ], [ %inc2730, %vc4_dlist_write.exit4061.for.body2728_crit_edge ]
  %495 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %dlist_count, align 4
  %497 = ptrtoint ptr %dlist_size.i.i4015 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %dlist_size.i.i4015, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %496, i32 %498)
  %cmp.i.i4016 = icmp eq i32 %496, %498
  br i1 %cmp.i.i4016, label %if.then.i.i4018, label %for.body2728.if.end10.i.i4058_crit_edge

for.body2728.if.end10.i.i4058_crit_edge:          ; preds = %for.body2728
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4058

if.then.i.i4018:                                  ; preds = %for.body2728
  %mul.i.i4017 = shl i32 %496, 1
  %499 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4017, i32 4) #8
  %500 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %499, i32 4) #8
  %501 = extractvalue { i32, i1 } %500, 1
  br i1 %501, label %if.then.i.i4018.vc4_dlist_write.exit4061_crit_edge, label %if.end7.i.i.i4049, !prof !36

if.then.i.i4018.vc4_dlist_write.exit4061_crit_edge: ; preds = %if.then.i.i4018
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4061

if.end7.i.i.i4049:                                ; preds = %if.then.i.i4018
  %502 = extractvalue { i32, i1 } %500, 0
  %call8.i.i.i4048 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %502, i32 noundef 3264) #12
  %tobool.not.i.i4051 = icmp eq ptr %call8.i.i.i4048, null
  br i1 %tobool.not.i.i4051, label %if.end7.i.i.i4049.vc4_dlist_write.exit4061_crit_edge, label %cleanup.i.i4056

if.end7.i.i.i4049.vc4_dlist_write.exit4061_crit_edge: ; preds = %if.end7.i.i.i4049
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4061

cleanup.i.i4056:                                  ; preds = %if.end7.i.i.i4049
  call void @__sanitizer_cov_trace_pc() #10
  %503 = ptrtoint ptr %dlist.i.i4054 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %dlist.i.i4054, align 4
  %505 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4055 = shl i32 %506, 2
  %507 = call ptr @memcpy(ptr %call8.i.i.i4048, ptr %504, i32 %mul5.i.i4055)
  tail call void @kfree(ptr noundef %504) #8
  %508 = ptrtoint ptr %dlist.i.i4054 to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %call8.i.i.i4048, ptr %dlist.i.i4054, align 4
  %509 = ptrtoint ptr %dlist_size.i.i4015 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %499, ptr %dlist_size.i.i4015, align 8
  br label %if.end10.i.i4058

if.end10.i.i4058:                                 ; preds = %cleanup.i.i4056, %for.body2728.if.end10.i.i4058_crit_edge
  %510 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %dlist_count, align 4
  %inc.i.i4057 = add i32 %511, 1
  store i32 %inc.i.i4057, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4061

vc4_dlist_write.exit4061:                         ; preds = %if.end10.i.i4058, %if.end7.i.i.i4049.vc4_dlist_write.exit4061_crit_edge, %if.then.i.i4018.vc4_dlist_write.exit4061_crit_edge
  %512 = ptrtoint ptr %dlist.i.i4054 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dlist.i.i4054, align 4
  %arrayidx.i4060 = getelementptr i32, ptr %513, i32 %496
  %514 = ptrtoint ptr %arrayidx.i4060 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 -1061109568, ptr %arrayidx.i4060, align 4
  %inc2730 = add nuw nsw i32 %i.34597, 1
  %exitcond4603.not = icmp eq i32 %inc2730, %conv
  br i1 %exitcond4603.not, label %vc4_dlist_write.exit4061.for.end2731_crit_edge, label %vc4_dlist_write.exit4061.for.body2728_crit_edge

vc4_dlist_write.exit4061.for.body2728_crit_edge:  ; preds = %vc4_dlist_write.exit4061
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body2728

vc4_dlist_write.exit4061.for.end2731_crit_edge:   ; preds = %vc4_dlist_write.exit4061
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end2731

for.end2731:                                      ; preds = %vc4_dlist_write.exit4061.for.end2731_crit_edge, %for.cond2725.preheader.for.end2731_crit_edge, %if.end2714.for.end2731_crit_edge
  %515 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %dlist_count, align 4
  %dlist_size.i.i4063 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %517 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %516, i32 %518)
  %cmp.i.i4064 = icmp eq i32 %516, %518
  br i1 %cmp.i.i4064, label %if.then.i.i4066, label %for.end2731.if.end10.i.i4106_crit_edge

for.end2731.if.end10.i.i4106_crit_edge:           ; preds = %for.end2731
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4106

if.then.i.i4066:                                  ; preds = %for.end2731
  %mul.i.i4065 = shl i32 %516, 1
  %519 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4065, i32 4) #8
  %520 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %519, i32 4) #8
  %521 = extractvalue { i32, i1 } %520, 1
  br i1 %521, label %if.then.i.i4066.vc4_dlist_write.exit4109_crit_edge, label %if.end7.i.i.i4097, !prof !36

if.then.i.i4066.vc4_dlist_write.exit4109_crit_edge: ; preds = %if.then.i.i4066
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4109

if.end7.i.i.i4097:                                ; preds = %if.then.i.i4066
  %522 = extractvalue { i32, i1 } %520, 0
  %call8.i.i.i4096 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %522, i32 noundef 3264) #12
  %tobool.not.i.i4099 = icmp eq ptr %call8.i.i.i4096, null
  br i1 %tobool.not.i.i4099, label %if.end7.i.i.i4097.vc4_dlist_write.exit4109_crit_edge, label %cleanup.i.i4104

if.end7.i.i.i4097.vc4_dlist_write.exit4109_crit_edge: ; preds = %if.end7.i.i.i4097
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4109

cleanup.i.i4104:                                  ; preds = %if.end7.i.i.i4097
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i4102 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %523 = ptrtoint ptr %dlist.i.i4102 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %dlist.i.i4102, align 4
  %525 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4103 = shl i32 %526, 2
  %527 = call ptr @memcpy(ptr %call8.i.i.i4096, ptr %524, i32 %mul5.i.i4103)
  tail call void @kfree(ptr noundef %524) #8
  %528 = ptrtoint ptr %dlist.i.i4102 to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr %call8.i.i.i4096, ptr %dlist.i.i4102, align 4
  %529 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %519, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4106

if.end10.i.i4106:                                 ; preds = %cleanup.i.i4104, %for.end2731.if.end10.i.i4106_crit_edge
  %530 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %dlist_count, align 4
  %inc.i.i4105 = add i32 %531, 1
  store i32 %inc.i.i4105, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4109

vc4_dlist_write.exit4109:                         ; preds = %if.end10.i.i4106, %if.end7.i.i.i4097.vc4_dlist_write.exit4109_crit_edge, %if.then.i.i4066.vc4_dlist_write.exit4109_crit_edge
  %dlist.i4107 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %532 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4108 = getelementptr i32, ptr %533, i32 %516
  %534 = ptrtoint ptr %arrayidx.i4108 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %pitch0.3, ptr %arrayidx.i4108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp27334598 = icmp ugt i8 %14, 1
  br i1 %cmp27334598, label %vc4_dlist_write.exit4109.for.body2735_crit_edge, label %vc4_dlist_write.exit4109.for.end2832_crit_edge

vc4_dlist_write.exit4109.for.end2832_crit_edge:   ; preds = %vc4_dlist_write.exit4109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end2832

vc4_dlist_write.exit4109.for.body2735_crit_edge:  ; preds = %vc4_dlist_write.exit4109
  br label %for.body2735

for.body2735:                                     ; preds = %for.inc2830.for.body2735_crit_edge, %vc4_dlist_write.exit4109.for.body2735_crit_edge
  %i.44599 = phi i32 [ %inc2831, %for.inc2830.for.body2735_crit_edge ], [ 1, %vc4_dlist_write.exit4109.for.body2735_crit_edge ]
  %535 = zext i32 %hvs_format.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %535, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %hvs_format.2, label %if.then2740 [
    i32 12, label %for.body2735.if.else2828_crit_edge
    i32 17, label %for.body2735.if.else2828_crit_edge4625
  ]

for.body2735.if.else2828_crit_edge4625:           ; preds = %for.body2735
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else2828

for.body2735.if.else2828_crit_edge:               ; preds = %for.body2735
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else2828

if.then2740:                                      ; preds = %for.body2735
  %arrayidx2759 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 %i.44599
  %536 = ptrtoint ptr %arrayidx2759 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx2759, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %537)
  %tobool2762.not = icmp ult i32 %537, 65536
  br i1 %tobool2762.not, label %if.then2740.do.end2822_crit_edge, label %do.end2783, !prof !34

if.then2740.do.end2822_crit_edge:                 ; preds = %if.then2740
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2822

do.end2783:                                       ; preds = %if.then2740
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1057, i32 noundef 9, ptr noundef null) #8
  br label %do.end2822

do.end2822:                                       ; preds = %do.end2783, %if.then2740.do.end2822_crit_edge
  %538 = ptrtoint ptr %arrayidx2759 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %arrayidx2759, align 4
  %and2827 = and i32 %539, 65535
  %540 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %dlist_count, align 4
  %542 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %541, i32 %543)
  %cmp.i.i4112 = icmp eq i32 %541, %543
  br i1 %cmp.i.i4112, label %if.then.i.i4114, label %do.end2822.for.inc2830.sink.split_crit_edge

do.end2822.for.inc2830.sink.split_crit_edge:      ; preds = %do.end2822
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830.sink.split

if.then.i.i4114:                                  ; preds = %do.end2822
  %mul.i.i4113 = shl i32 %541, 1
  %544 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4113, i32 4) #8
  %545 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %544, i32 4) #8
  %546 = extractvalue { i32, i1 } %545, 1
  br i1 %546, label %if.then.i.i4114.for.inc2830_crit_edge, label %if.end7.i.i.i4145, !prof !36

if.then.i.i4114.for.inc2830_crit_edge:            ; preds = %if.then.i.i4114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830

if.end7.i.i.i4145:                                ; preds = %if.then.i.i4114
  %547 = extractvalue { i32, i1 } %545, 0
  %call8.i.i.i4144 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %547, i32 noundef 3264) #12
  %tobool.not.i.i4147 = icmp eq ptr %call8.i.i.i4144, null
  br i1 %tobool.not.i.i4147, label %if.end7.i.i.i4145.for.inc2830_crit_edge, label %cleanup.i.i4152

if.end7.i.i.i4145.for.inc2830_crit_edge:          ; preds = %if.end7.i.i.i4145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830

cleanup.i.i4152:                                  ; preds = %if.end7.i.i.i4145
  call void @__sanitizer_cov_trace_pc() #10
  %548 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dlist.i4107, align 4
  %550 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4151 = shl i32 %551, 2
  %552 = call ptr @memcpy(ptr %call8.i.i.i4144, ptr %549, i32 %mul5.i.i4151)
  br label %for.inc2830.sink.split.sink.split

if.else2828:                                      ; preds = %for.body2735.if.else2828_crit_edge, %for.body2735.if.else2828_crit_edge4625
  %553 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %dlist_count, align 4
  %555 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %554, i32 %556)
  %cmp.i.i4160 = icmp eq i32 %554, %556
  br i1 %cmp.i.i4160, label %if.then.i.i4162, label %if.else2828.for.inc2830.sink.split_crit_edge

if.else2828.for.inc2830.sink.split_crit_edge:     ; preds = %if.else2828
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830.sink.split

if.then.i.i4162:                                  ; preds = %if.else2828
  %mul.i.i4161 = shl i32 %554, 1
  %557 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4161, i32 4) #8
  %558 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %557, i32 4) #8
  %559 = extractvalue { i32, i1 } %558, 1
  br i1 %559, label %if.then.i.i4162.for.inc2830_crit_edge, label %if.end7.i.i.i4193, !prof !36

if.then.i.i4162.for.inc2830_crit_edge:            ; preds = %if.then.i.i4162
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830

if.end7.i.i.i4193:                                ; preds = %if.then.i.i4162
  %560 = extractvalue { i32, i1 } %558, 0
  %call8.i.i.i4192 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %560, i32 noundef 3264) #12
  %tobool.not.i.i4195 = icmp eq ptr %call8.i.i.i4192, null
  br i1 %tobool.not.i.i4195, label %if.end7.i.i.i4193.for.inc2830_crit_edge, label %cleanup.i.i4200

if.end7.i.i.i4193.for.inc2830_crit_edge:          ; preds = %if.end7.i.i.i4193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc2830

cleanup.i.i4200:                                  ; preds = %if.end7.i.i.i4193
  call void @__sanitizer_cov_trace_pc() #10
  %561 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %dlist.i4107, align 4
  %563 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4199 = shl i32 %564, 2
  %565 = call ptr @memcpy(ptr %call8.i.i.i4192, ptr %562, i32 %mul5.i.i4199)
  br label %for.inc2830.sink.split.sink.split

for.inc2830.sink.split.sink.split:                ; preds = %cleanup.i.i4200, %cleanup.i.i4152
  %.sink4610 = phi ptr [ %562, %cleanup.i.i4200 ], [ %549, %cleanup.i.i4152 ]
  %retval.0.i31.i.i4197.sink = phi ptr [ %call8.i.i.i4192, %cleanup.i.i4200 ], [ %call8.i.i.i4144, %cleanup.i.i4152 ]
  %.sink = phi i32 [ %557, %cleanup.i.i4200 ], [ %544, %cleanup.i.i4152 ]
  %.sink4609.ph.ph = phi i32 [ %554, %cleanup.i.i4200 ], [ %541, %cleanup.i.i4152 ]
  %and2827.sink.ph.ph = phi i32 [ %pitch0.3, %cleanup.i.i4200 ], [ %and2827, %cleanup.i.i4152 ]
  tail call void @kfree(ptr noundef %.sink4610) #8
  %566 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %retval.0.i31.i.i4197.sink, ptr %dlist.i4107, align 4
  %567 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 %.sink, ptr %dlist_size.i.i4063, align 8
  br label %for.inc2830.sink.split

for.inc2830.sink.split:                           ; preds = %for.inc2830.sink.split.sink.split, %if.else2828.for.inc2830.sink.split_crit_edge, %do.end2822.for.inc2830.sink.split_crit_edge
  %.sink4609.ph = phi i32 [ %541, %do.end2822.for.inc2830.sink.split_crit_edge ], [ %554, %if.else2828.for.inc2830.sink.split_crit_edge ], [ %.sink4609.ph.ph, %for.inc2830.sink.split.sink.split ]
  %and2827.sink.ph = phi i32 [ %and2827, %do.end2822.for.inc2830.sink.split_crit_edge ], [ %pitch0.3, %if.else2828.for.inc2830.sink.split_crit_edge ], [ %and2827.sink.ph.ph, %for.inc2830.sink.split.sink.split ]
  %568 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %dlist_count, align 4
  %inc.i.i4201 = add i32 %569, 1
  store i32 %inc.i.i4201, ptr %dlist_count, align 4
  br label %for.inc2830

for.inc2830:                                      ; preds = %for.inc2830.sink.split, %if.end7.i.i.i4193.for.inc2830_crit_edge, %if.then.i.i4162.for.inc2830_crit_edge, %if.end7.i.i.i4145.for.inc2830_crit_edge, %if.then.i.i4114.for.inc2830_crit_edge
  %.sink4609 = phi i32 [ %541, %if.then.i.i4114.for.inc2830_crit_edge ], [ %541, %if.end7.i.i.i4145.for.inc2830_crit_edge ], [ %554, %if.then.i.i4162.for.inc2830_crit_edge ], [ %554, %if.end7.i.i.i4193.for.inc2830_crit_edge ], [ %.sink4609.ph, %for.inc2830.sink.split ]
  %and2827.sink = phi i32 [ %and2827, %if.then.i.i4114.for.inc2830_crit_edge ], [ %and2827, %if.end7.i.i.i4145.for.inc2830_crit_edge ], [ %pitch0.3, %if.then.i.i4162.for.inc2830_crit_edge ], [ %pitch0.3, %if.end7.i.i.i4193.for.inc2830_crit_edge ], [ %and2827.sink.ph, %for.inc2830.sink.split ]
  %570 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4156 = getelementptr i32, ptr %571, i32 %.sink4609
  %572 = ptrtoint ptr %arrayidx.i4156 to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %and2827.sink, ptr %arrayidx.i4156, align 4
  %inc2831 = add nuw nsw i32 %i.44599, 1
  %exitcond4604.not = icmp eq i32 %inc2831, %conv
  br i1 %exitcond4604.not, label %for.inc2830.for.end2832_crit_edge, label %for.inc2830.for.body2735_crit_edge

for.inc2830.for.body2735_crit_edge:               ; preds = %for.inc2830
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body2735

for.inc2830.for.end2832_crit_edge:                ; preds = %for.inc2830
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end2832

for.end2832:                                      ; preds = %for.inc2830.for.end2832_crit_edge, %vc4_dlist_write.exit4109.for.end2832_crit_edge
  %573 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %is_yuv.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %574)
  %tobool2833.not = icmp eq i8 %574, 0
  br i1 %tobool2833.not, label %for.end2832.if.end2850_crit_edge, label %if.then2834

for.end2832.if.end2850_crit_edge:                 ; preds = %for.end2832
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2850

if.then2834:                                      ; preds = %for.end2832
  %color_encoding2835 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 17
  %575 = ptrtoint ptr %color_encoding2835 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %color_encoding2835, align 4
  %color_range2836 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 18
  %577 = ptrtoint ptr %color_range2836 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %color_range2836, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %576)
  %cmp2837 = icmp ugt i32 %576, 2
  %spec.store.select = select i1 %cmp2837, i32 0, i32 %576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %578)
  %cmp2841 = icmp ugt i32 %578, 1
  %spec.store.select3138 = select i1 %cmp2841, i32 0, i32 %578
  %arrayidx2846 = getelementptr [2 x [3 x [3 x i32]]], ptr @colorspace_coeffs, i32 0, i32 %spec.store.select3138, i32 %spec.store.select
  %579 = ptrtoint ptr %arrayidx2846 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %arrayidx2846, align 4
  %581 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %dlist_count, align 4
  %583 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %582, i32 %584)
  %cmp.i.i4208 = icmp eq i32 %582, %584
  br i1 %cmp.i.i4208, label %if.then.i.i4210, label %if.then2834.if.end10.i.i4250_crit_edge

if.then2834.if.end10.i.i4250_crit_edge:           ; preds = %if.then2834
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4250

if.then.i.i4210:                                  ; preds = %if.then2834
  %mul.i.i4209 = shl i32 %582, 1
  %585 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4209, i32 4) #8
  %586 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %585, i32 4) #8
  %587 = extractvalue { i32, i1 } %586, 1
  br i1 %587, label %if.then.i.i4210.vc4_dlist_write.exit4253_crit_edge, label %if.end7.i.i.i4241, !prof !36

if.then.i.i4210.vc4_dlist_write.exit4253_crit_edge: ; preds = %if.then.i.i4210
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4253

if.end7.i.i.i4241:                                ; preds = %if.then.i.i4210
  %588 = extractvalue { i32, i1 } %586, 0
  %call8.i.i.i4240 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %588, i32 noundef 3264) #12
  %tobool.not.i.i4243 = icmp eq ptr %call8.i.i.i4240, null
  br i1 %tobool.not.i.i4243, label %if.end7.i.i.i4241.vc4_dlist_write.exit4253_crit_edge, label %cleanup.i.i4248

if.end7.i.i.i4241.vc4_dlist_write.exit4253_crit_edge: ; preds = %if.end7.i.i.i4241
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4253

cleanup.i.i4248:                                  ; preds = %if.end7.i.i.i4241
  call void @__sanitizer_cov_trace_pc() #10
  %589 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %dlist.i4107, align 4
  %591 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4247 = shl i32 %592, 2
  %593 = call ptr @memcpy(ptr %call8.i.i.i4240, ptr %590, i32 %mul5.i.i4247)
  tail call void @kfree(ptr noundef %590) #8
  %594 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %594)
  store ptr %call8.i.i.i4240, ptr %dlist.i4107, align 4
  %595 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 %585, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4250

if.end10.i.i4250:                                 ; preds = %cleanup.i.i4248, %if.then2834.if.end10.i.i4250_crit_edge
  %596 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %dlist_count, align 4
  %inc.i.i4249 = add i32 %597, 1
  store i32 %inc.i.i4249, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4253

vc4_dlist_write.exit4253:                         ; preds = %if.end10.i.i4250, %if.end7.i.i.i4241.vc4_dlist_write.exit4253_crit_edge, %if.then.i.i4210.vc4_dlist_write.exit4253_crit_edge
  %598 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4252 = getelementptr i32, ptr %599, i32 %582
  %600 = ptrtoint ptr %arrayidx.i4252 to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 %580, ptr %arrayidx.i4252, align 4
  %arrayidx2848 = getelementptr i32, ptr %arrayidx2846, i32 1
  %601 = ptrtoint ptr %arrayidx2848 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx2848, align 4
  %603 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %dlist_count, align 4
  %605 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %604, i32 %606)
  %cmp.i.i4256 = icmp eq i32 %604, %606
  br i1 %cmp.i.i4256, label %if.then.i.i4258, label %vc4_dlist_write.exit4253.if.end10.i.i4298_crit_edge

vc4_dlist_write.exit4253.if.end10.i.i4298_crit_edge: ; preds = %vc4_dlist_write.exit4253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4298

if.then.i.i4258:                                  ; preds = %vc4_dlist_write.exit4253
  %mul.i.i4257 = shl i32 %604, 1
  %607 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4257, i32 4) #8
  %608 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %607, i32 4) #8
  %609 = extractvalue { i32, i1 } %608, 1
  br i1 %609, label %if.then.i.i4258.vc4_dlist_write.exit4301_crit_edge, label %if.end7.i.i.i4289, !prof !36

if.then.i.i4258.vc4_dlist_write.exit4301_crit_edge: ; preds = %if.then.i.i4258
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4301

if.end7.i.i.i4289:                                ; preds = %if.then.i.i4258
  %610 = extractvalue { i32, i1 } %608, 0
  %call8.i.i.i4288 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %610, i32 noundef 3264) #12
  %tobool.not.i.i4291 = icmp eq ptr %call8.i.i.i4288, null
  br i1 %tobool.not.i.i4291, label %if.end7.i.i.i4289.vc4_dlist_write.exit4301_crit_edge, label %cleanup.i.i4296

if.end7.i.i.i4289.vc4_dlist_write.exit4301_crit_edge: ; preds = %if.end7.i.i.i4289
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4301

cleanup.i.i4296:                                  ; preds = %if.end7.i.i.i4289
  call void @__sanitizer_cov_trace_pc() #10
  %611 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %dlist.i4107, align 4
  %613 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4295 = shl i32 %614, 2
  %615 = call ptr @memcpy(ptr %call8.i.i.i4288, ptr %612, i32 %mul5.i.i4295)
  tail call void @kfree(ptr noundef %612) #8
  %616 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr %call8.i.i.i4288, ptr %dlist.i4107, align 4
  %617 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 %607, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4298

if.end10.i.i4298:                                 ; preds = %cleanup.i.i4296, %vc4_dlist_write.exit4253.if.end10.i.i4298_crit_edge
  %618 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %dlist_count, align 4
  %inc.i.i4297 = add i32 %619, 1
  store i32 %inc.i.i4297, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4301

vc4_dlist_write.exit4301:                         ; preds = %if.end10.i.i4298, %if.end7.i.i.i4289.vc4_dlist_write.exit4301_crit_edge, %if.then.i.i4258.vc4_dlist_write.exit4301_crit_edge
  %620 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4300 = getelementptr i32, ptr %621, i32 %604
  %622 = ptrtoint ptr %arrayidx.i4300 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %602, ptr %arrayidx.i4300, align 4
  %arrayidx2849 = getelementptr i32, ptr %arrayidx2846, i32 2
  %623 = ptrtoint ptr %arrayidx2849 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %arrayidx2849, align 4
  %625 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %dlist_count, align 4
  %627 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %626, i32 %628)
  %cmp.i.i4304 = icmp eq i32 %626, %628
  br i1 %cmp.i.i4304, label %if.then.i.i4306, label %vc4_dlist_write.exit4301.if.end10.i.i4346_crit_edge

vc4_dlist_write.exit4301.if.end10.i.i4346_crit_edge: ; preds = %vc4_dlist_write.exit4301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4346

if.then.i.i4306:                                  ; preds = %vc4_dlist_write.exit4301
  %mul.i.i4305 = shl i32 %626, 1
  %629 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4305, i32 4) #8
  %630 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %629, i32 4) #8
  %631 = extractvalue { i32, i1 } %630, 1
  br i1 %631, label %if.then.i.i4306.vc4_dlist_write.exit4349_crit_edge, label %if.end7.i.i.i4337, !prof !36

if.then.i.i4306.vc4_dlist_write.exit4349_crit_edge: ; preds = %if.then.i.i4306
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4349

if.end7.i.i.i4337:                                ; preds = %if.then.i.i4306
  %632 = extractvalue { i32, i1 } %630, 0
  %call8.i.i.i4336 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %632, i32 noundef 3264) #12
  %tobool.not.i.i4339 = icmp eq ptr %call8.i.i.i4336, null
  br i1 %tobool.not.i.i4339, label %if.end7.i.i.i4337.vc4_dlist_write.exit4349_crit_edge, label %cleanup.i.i4344

if.end7.i.i.i4337.vc4_dlist_write.exit4349_crit_edge: ; preds = %if.end7.i.i.i4337
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4349

cleanup.i.i4344:                                  ; preds = %if.end7.i.i.i4337
  call void @__sanitizer_cov_trace_pc() #10
  %633 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %dlist.i4107, align 4
  %635 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4343 = shl i32 %636, 2
  %637 = call ptr @memcpy(ptr %call8.i.i.i4336, ptr %634, i32 %mul5.i.i4343)
  tail call void @kfree(ptr noundef %634) #8
  %638 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %638)
  store ptr %call8.i.i.i4336, ptr %dlist.i4107, align 4
  %639 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 %629, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4346

if.end10.i.i4346:                                 ; preds = %cleanup.i.i4344, %vc4_dlist_write.exit4301.if.end10.i.i4346_crit_edge
  %640 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %dlist_count, align 4
  %inc.i.i4345 = add i32 %641, 1
  store i32 %inc.i.i4345, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4349

vc4_dlist_write.exit4349:                         ; preds = %if.end10.i.i4346, %if.end7.i.i.i4337.vc4_dlist_write.exit4349_crit_edge, %if.then.i.i4306.vc4_dlist_write.exit4349_crit_edge
  %642 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4348 = getelementptr i32, ptr %643, i32 %626
  %644 = ptrtoint ptr %arrayidx.i4348 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 %624, ptr %arrayidx.i4348, align 4
  br label %if.end2850

if.end2850:                                       ; preds = %vc4_dlist_write.exit4349, %for.end2832.if.end2850_crit_edge
  %lbm_offset = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 7
  %645 = ptrtoint ptr %lbm_offset to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 0, ptr %lbm_offset, align 4
  %646 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %x_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %647)
  %cmp2852.not = icmp eq i32 %647, 0
  br i1 %cmp2852.not, label %lor.lhs.false, label %if.end2850.if.then2867_crit_edge

if.end2850.if.then2867_crit_edge:                 ; preds = %if.end2850
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2867

lor.lhs.false:                                    ; preds = %if.end2850
  %arrayidx2855 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %648 = ptrtoint ptr %arrayidx2855 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %arrayidx2855, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %649)
  %cmp2856.not = icmp eq i32 %649, 0
  br i1 %cmp2856.not, label %lor.lhs.false2858, label %lor.lhs.false.if.then2867_crit_edge

lor.lhs.false.if.then2867_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2867

lor.lhs.false2858:                                ; preds = %lor.lhs.false
  %650 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %y_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %651)
  %cmp2860.not = icmp eq i32 %651, 0
  br i1 %cmp2860.not, label %lor.lhs.false2862, label %lor.lhs.false2858.if.then2877_crit_edge

lor.lhs.false2858.if.then2877_crit_edge:          ; preds = %lor.lhs.false2858
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2877

lor.lhs.false2862:                                ; preds = %lor.lhs.false2858
  %arrayidx2864 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %652 = ptrtoint ptr %arrayidx2864 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %arrayidx2864, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %cmp2865.not = icmp eq i32 %653, 0
  br i1 %cmp2865.not, label %lor.lhs.false2862.if.end2997_crit_edge, label %lor.lhs.false2862.if.then2867_crit_edge

lor.lhs.false2862.if.then2867_crit_edge:          ; preds = %lor.lhs.false2862
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2867

lor.lhs.false2862.if.end2997_crit_edge:           ; preds = %lor.lhs.false2862
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2997

if.then2867:                                      ; preds = %lor.lhs.false2862.if.then2867_crit_edge, %lor.lhs.false.if.then2867_crit_edge, %if.end2850.if.then2867_crit_edge
  %654 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %.pr = load i32, ptr %y_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp2870.not = icmp eq i32 %.pr, 0
  br i1 %cmp2870.not, label %lor.lhs.false2872, label %if.then2867.if.then2877_crit_edge

if.then2867.if.then2877_crit_edge:                ; preds = %if.then2867
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2877

lor.lhs.false2872:                                ; preds = %if.then2867
  %arrayidx2874 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %655 = ptrtoint ptr %arrayidx2874 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %arrayidx2874, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %656)
  %cmp2875.not = icmp eq i32 %656, 0
  br i1 %cmp2875.not, label %lor.lhs.false2872.if.end2880_crit_edge, label %lor.lhs.false2872.if.then2877_crit_edge

lor.lhs.false2872.if.then2877_crit_edge:          ; preds = %lor.lhs.false2872
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2877

lor.lhs.false2872.if.end2880_crit_edge:           ; preds = %lor.lhs.false2872
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2880

if.then2877:                                      ; preds = %lor.lhs.false2872.if.then2877_crit_edge, %if.then2867.if.then2877_crit_edge, %lor.lhs.false2858.if.then2877_crit_edge
  %657 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %dlist_count, align 4
  %659 = ptrtoint ptr %lbm_offset to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 %658, ptr %lbm_offset, align 4
  %660 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %658, i32 %661)
  %cmp.i = icmp eq i32 %658, %661
  br i1 %cmp.i, label %if.then.i4351, label %if.then2877.if.end10.i_crit_edge

if.then2877.if.end10.i_crit_edge:                 ; preds = %if.then2877
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i4351:                                    ; preds = %if.then2877
  %mul.i = shl i32 %658, 1
  %662 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 4) #8
  %663 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %662, i32 4) #8
  %664 = extractvalue { i32, i1 } %663, 1
  br i1 %664, label %if.then.i4351.if.end2880_crit_edge, label %if.end7.i.i, !prof !36

if.then.i4351.if.end2880_crit_edge:               ; preds = %if.then.i4351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2880

if.end7.i.i:                                      ; preds = %if.then.i4351
  %665 = extractvalue { i32, i1 } %663, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %665, i32 noundef 3264) #12
  %tobool.not.i4357 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i4357, label %if.end7.i.i.if.end2880_crit_edge, label %cleanup.i

if.end7.i.i.if.end2880_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2880

cleanup.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %666 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %dlist.i4107, align 4
  %668 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %dlist_count, align 4
  %mul5.i = shl i32 %669, 2
  %670 = call ptr @memcpy(ptr %call8.i.i, ptr %667, i32 %mul5.i)
  tail call void @kfree(ptr noundef %667) #8
  %671 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %671)
  store ptr %call8.i.i, ptr %dlist.i4107, align 4
  %672 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %662, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %cleanup.i, %if.then2877.if.end10.i_crit_edge
  %673 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %dlist_count, align 4
  %inc.i4359 = add i32 %674, 1
  store i32 %inc.i4359, ptr %dlist_count, align 4
  br label %if.end2880

if.end2880:                                       ; preds = %if.end10.i, %if.end7.i.i.if.end2880_crit_edge, %if.then.i4351.if.end2880_crit_edge, %lor.lhs.false2872.if.end2880_crit_edge
  br i1 %cmp27334598, label %if.then2883, label %if.end2880.if.end2884_crit_edge

if.end2880.if.end2884_crit_edge:                  ; preds = %if.end2880
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2884

if.then2883:                                      ; preds = %if.end2880
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vc4_write_scaling_parameters(ptr noundef %state, i32 noundef 1)
  br label %if.end2884

if.end2884:                                       ; preds = %if.then2883, %if.end2880.if.end2884_crit_edge
  tail call fastcc void @vc4_write_scaling_parameters(ptr noundef %state, i32 noundef 0)
  %675 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %x_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %676)
  %cmp2887 = icmp eq i32 %676, 2
  br i1 %cmp2887, label %if.end2884.if.then2904_crit_edge, label %lor.lhs.false2889

if.end2884.if.then2904_crit_edge:                 ; preds = %if.end2884
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2904

lor.lhs.false2889:                                ; preds = %if.end2884
  %677 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %y_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %678)
  %cmp2892 = icmp eq i32 %678, 2
  br i1 %cmp2892, label %lor.lhs.false2889.if.then2904_crit_edge, label %lor.lhs.false2894

lor.lhs.false2889.if.then2904_crit_edge:          ; preds = %lor.lhs.false2889
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2904

lor.lhs.false2894:                                ; preds = %lor.lhs.false2889
  %arrayidx2896 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %679 = ptrtoint ptr %arrayidx2896 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %arrayidx2896, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %680)
  %cmp2897 = icmp eq i32 %680, 2
  br i1 %cmp2897, label %lor.lhs.false2894.if.then2904_crit_edge, label %lor.lhs.false2899

lor.lhs.false2894.if.then2904_crit_edge:          ; preds = %lor.lhs.false2894
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2904

lor.lhs.false2899:                                ; preds = %lor.lhs.false2894
  %arrayidx2901 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %681 = ptrtoint ptr %arrayidx2901 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %arrayidx2901, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %682)
  %cmp2902 = icmp eq i32 %682, 2
  br i1 %cmp2902, label %lor.lhs.false2899.if.then2904_crit_edge, label %lor.lhs.false2899.if.end2997_crit_edge

lor.lhs.false2899.if.end2997_crit_edge:           ; preds = %lor.lhs.false2899
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2997

lor.lhs.false2899.if.then2904_crit_edge:          ; preds = %lor.lhs.false2899
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2904

if.then2904:                                      ; preds = %lor.lhs.false2899.if.then2904_crit_edge, %lor.lhs.false2894.if.then2904_crit_edge, %lor.lhs.false2889.if.then2904_crit_edge, %if.end2884.if.then2904_crit_edge
  %683 = ptrtoint ptr %hvs693 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %hvs693, align 8
  %start = getelementptr inbounds %struct.vc4_hvs, ptr %684, i32 0, i32 7, i32 1
  %685 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %685)
  %686 = load i64, ptr %start, align 8
  %687 = and i64 %686, 4294950912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %687)
  %tobool2926.not = icmp eq i64 %687, 0
  br i1 %tobool2926.not, label %if.then2904.do.end2988_crit_edge, label %do.end2947, !prof !34

if.then2904.do.end2988_crit_edge:                 ; preds = %if.then2904
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2988

do.end2947:                                       ; preds = %if.then2904
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1113, i32 noundef 9, ptr noundef null) #8
  br label %do.end2988

do.end2988:                                       ; preds = %do.end2947, %if.then2904.do.end2988_crit_edge
  %688 = ptrtoint ptr %hvs693 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %hvs693, align 8
  %start2971 = getelementptr inbounds %struct.vc4_hvs, ptr %689, i32 0, i32 7, i32 1
  %690 = ptrtoint ptr %start2971 to i32
  call void @__asan_load8_noabort(i32 %690)
  %691 = load i64, ptr %start2971, align 8
  %conv2993 = trunc i64 %691 to i32
  %and2995 = and i32 %conv2993, 16383
  %692 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %dlist_count, align 4
  %694 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %693, i32 %695)
  %cmp.i.i4362 = icmp eq i32 %693, %695
  br i1 %cmp.i.i4362, label %if.then.i.i4364, label %do.end2988.if.end10.i.i4404_crit_edge

do.end2988.if.end10.i.i4404_crit_edge:            ; preds = %do.end2988
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4404

if.then.i.i4364:                                  ; preds = %do.end2988
  %mul.i.i4363 = shl i32 %693, 1
  %696 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4363, i32 4) #8
  %697 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %696, i32 4) #8
  %698 = extractvalue { i32, i1 } %697, 1
  br i1 %698, label %if.then.i.i4364.vc4_dlist_write.exit4407_crit_edge, label %if.end7.i.i.i4395, !prof !36

if.then.i.i4364.vc4_dlist_write.exit4407_crit_edge: ; preds = %if.then.i.i4364
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4407

if.end7.i.i.i4395:                                ; preds = %if.then.i.i4364
  %699 = extractvalue { i32, i1 } %697, 0
  %call8.i.i.i4394 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %699, i32 noundef 3264) #12
  %tobool.not.i.i4397 = icmp eq ptr %call8.i.i.i4394, null
  br i1 %tobool.not.i.i4397, label %if.end7.i.i.i4395.vc4_dlist_write.exit4407_crit_edge, label %cleanup.i.i4402

if.end7.i.i.i4395.vc4_dlist_write.exit4407_crit_edge: ; preds = %if.end7.i.i.i4395
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4407

cleanup.i.i4402:                                  ; preds = %if.end7.i.i.i4395
  call void @__sanitizer_cov_trace_pc() #10
  %700 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %dlist.i4107, align 4
  %702 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4401 = shl i32 %703, 2
  %704 = call ptr @memcpy(ptr %call8.i.i.i4394, ptr %701, i32 %mul5.i.i4401)
  tail call void @kfree(ptr noundef %701) #8
  %705 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %705)
  store ptr %call8.i.i.i4394, ptr %dlist.i4107, align 4
  %706 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %696, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4404

if.end10.i.i4404:                                 ; preds = %cleanup.i.i4402, %do.end2988.if.end10.i.i4404_crit_edge
  %707 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %dlist_count, align 4
  %inc.i.i4403 = add i32 %708, 1
  store i32 %inc.i.i4403, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4407

vc4_dlist_write.exit4407:                         ; preds = %if.end10.i.i4404, %if.end7.i.i.i4395.vc4_dlist_write.exit4407_crit_edge, %if.then.i.i4364.vc4_dlist_write.exit4407_crit_edge
  %709 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4406 = getelementptr i32, ptr %710, i32 %693
  %711 = ptrtoint ptr %arrayidx.i4406 to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %and2995, ptr %arrayidx.i4406, align 4
  %712 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %dlist_count, align 4
  %714 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %713, i32 %715)
  %cmp.i.i4410 = icmp eq i32 %713, %715
  br i1 %cmp.i.i4410, label %if.then.i.i4412, label %vc4_dlist_write.exit4407.if.end10.i.i4452_crit_edge

vc4_dlist_write.exit4407.if.end10.i.i4452_crit_edge: ; preds = %vc4_dlist_write.exit4407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4452

if.then.i.i4412:                                  ; preds = %vc4_dlist_write.exit4407
  %mul.i.i4411 = shl i32 %713, 1
  %716 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4411, i32 4) #8
  %717 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %716, i32 4) #8
  %718 = extractvalue { i32, i1 } %717, 1
  br i1 %718, label %if.then.i.i4412.vc4_dlist_write.exit4455_crit_edge, label %if.end7.i.i.i4443, !prof !36

if.then.i.i4412.vc4_dlist_write.exit4455_crit_edge: ; preds = %if.then.i.i4412
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4455

if.end7.i.i.i4443:                                ; preds = %if.then.i.i4412
  %719 = extractvalue { i32, i1 } %717, 0
  %call8.i.i.i4442 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %719, i32 noundef 3264) #12
  %tobool.not.i.i4445 = icmp eq ptr %call8.i.i.i4442, null
  br i1 %tobool.not.i.i4445, label %if.end7.i.i.i4443.vc4_dlist_write.exit4455_crit_edge, label %cleanup.i.i4450

if.end7.i.i.i4443.vc4_dlist_write.exit4455_crit_edge: ; preds = %if.end7.i.i.i4443
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4455

cleanup.i.i4450:                                  ; preds = %if.end7.i.i.i4443
  call void @__sanitizer_cov_trace_pc() #10
  %720 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %dlist.i4107, align 4
  %722 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4449 = shl i32 %723, 2
  %724 = call ptr @memcpy(ptr %call8.i.i.i4442, ptr %721, i32 %mul5.i.i4449)
  tail call void @kfree(ptr noundef %721) #8
  %725 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %725)
  store ptr %call8.i.i.i4442, ptr %dlist.i4107, align 4
  %726 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %726)
  store i32 %716, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4452

if.end10.i.i4452:                                 ; preds = %cleanup.i.i4450, %vc4_dlist_write.exit4407.if.end10.i.i4452_crit_edge
  %727 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %dlist_count, align 4
  %inc.i.i4451 = add i32 %728, 1
  store i32 %inc.i.i4451, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4455

vc4_dlist_write.exit4455:                         ; preds = %if.end10.i.i4452, %if.end7.i.i.i4443.vc4_dlist_write.exit4455_crit_edge, %if.then.i.i4412.vc4_dlist_write.exit4455_crit_edge
  %729 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4454 = getelementptr i32, ptr %730, i32 %713
  %731 = ptrtoint ptr %arrayidx.i4454 to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %and2995, ptr %arrayidx.i4454, align 4
  %732 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %dlist_count, align 4
  %734 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %733, i32 %735)
  %cmp.i.i4458 = icmp eq i32 %733, %735
  br i1 %cmp.i.i4458, label %if.then.i.i4460, label %vc4_dlist_write.exit4455.if.end10.i.i4500_crit_edge

vc4_dlist_write.exit4455.if.end10.i.i4500_crit_edge: ; preds = %vc4_dlist_write.exit4455
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4500

if.then.i.i4460:                                  ; preds = %vc4_dlist_write.exit4455
  %mul.i.i4459 = shl i32 %733, 1
  %736 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4459, i32 4) #8
  %737 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %736, i32 4) #8
  %738 = extractvalue { i32, i1 } %737, 1
  br i1 %738, label %if.then.i.i4460.vc4_dlist_write.exit4503_crit_edge, label %if.end7.i.i.i4491, !prof !36

if.then.i.i4460.vc4_dlist_write.exit4503_crit_edge: ; preds = %if.then.i.i4460
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4503

if.end7.i.i.i4491:                                ; preds = %if.then.i.i4460
  %739 = extractvalue { i32, i1 } %737, 0
  %call8.i.i.i4490 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %739, i32 noundef 3264) #12
  %tobool.not.i.i4493 = icmp eq ptr %call8.i.i.i4490, null
  br i1 %tobool.not.i.i4493, label %if.end7.i.i.i4491.vc4_dlist_write.exit4503_crit_edge, label %cleanup.i.i4498

if.end7.i.i.i4491.vc4_dlist_write.exit4503_crit_edge: ; preds = %if.end7.i.i.i4491
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4503

cleanup.i.i4498:                                  ; preds = %if.end7.i.i.i4491
  call void @__sanitizer_cov_trace_pc() #10
  %740 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %dlist.i4107, align 4
  %742 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4497 = shl i32 %743, 2
  %744 = call ptr @memcpy(ptr %call8.i.i.i4490, ptr %741, i32 %mul5.i.i4497)
  tail call void @kfree(ptr noundef %741) #8
  %745 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %745)
  store ptr %call8.i.i.i4490, ptr %dlist.i4107, align 4
  %746 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 %736, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4500

if.end10.i.i4500:                                 ; preds = %cleanup.i.i4498, %vc4_dlist_write.exit4455.if.end10.i.i4500_crit_edge
  %747 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %dlist_count, align 4
  %inc.i.i4499 = add i32 %748, 1
  store i32 %inc.i.i4499, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4503

vc4_dlist_write.exit4503:                         ; preds = %if.end10.i.i4500, %if.end7.i.i.i4491.vc4_dlist_write.exit4503_crit_edge, %if.then.i.i4460.vc4_dlist_write.exit4503_crit_edge
  %749 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4502 = getelementptr i32, ptr %750, i32 %733
  %751 = ptrtoint ptr %arrayidx.i4502 to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 %and2995, ptr %arrayidx.i4502, align 4
  %752 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %dlist_count, align 4
  %754 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %dlist_size.i.i4063, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %753, i32 %755)
  %cmp.i.i4506 = icmp eq i32 %753, %755
  br i1 %cmp.i.i4506, label %if.then.i.i4508, label %vc4_dlist_write.exit4503.if.end10.i.i4548_crit_edge

vc4_dlist_write.exit4503.if.end10.i.i4548_crit_edge: ; preds = %vc4_dlist_write.exit4503
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i4548

if.then.i.i4508:                                  ; preds = %vc4_dlist_write.exit4503
  %mul.i.i4507 = shl i32 %753, 1
  %756 = tail call i32 @llvm.umax.i32(i32 %mul.i.i4507, i32 4) #8
  %757 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %756, i32 4) #8
  %758 = extractvalue { i32, i1 } %757, 1
  br i1 %758, label %if.then.i.i4508.vc4_dlist_write.exit4551_crit_edge, label %if.end7.i.i.i4539, !prof !36

if.then.i.i4508.vc4_dlist_write.exit4551_crit_edge: ; preds = %if.then.i.i4508
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4551

if.end7.i.i.i4539:                                ; preds = %if.then.i.i4508
  %759 = extractvalue { i32, i1 } %757, 0
  %call8.i.i.i4538 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %759, i32 noundef 3264) #12
  %tobool.not.i.i4541 = icmp eq ptr %call8.i.i.i4538, null
  br i1 %tobool.not.i.i4541, label %if.end7.i.i.i4539.vc4_dlist_write.exit4551_crit_edge, label %cleanup.i.i4546

if.end7.i.i.i4539.vc4_dlist_write.exit4551_crit_edge: ; preds = %if.end7.i.i.i4539
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit4551

cleanup.i.i4546:                                  ; preds = %if.end7.i.i.i4539
  call void @__sanitizer_cov_trace_pc() #10
  %760 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %dlist.i4107, align 4
  %762 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %dlist_count, align 4
  %mul5.i.i4545 = shl i32 %763, 2
  %764 = call ptr @memcpy(ptr %call8.i.i.i4538, ptr %761, i32 %mul5.i.i4545)
  tail call void @kfree(ptr noundef %761) #8
  %765 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_store4_noabort(i32 %765)
  store ptr %call8.i.i.i4538, ptr %dlist.i4107, align 4
  %766 = ptrtoint ptr %dlist_size.i.i4063 to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 %756, ptr %dlist_size.i.i4063, align 8
  br label %if.end10.i.i4548

if.end10.i.i4548:                                 ; preds = %cleanup.i.i4546, %vc4_dlist_write.exit4503.if.end10.i.i4548_crit_edge
  %767 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %dlist_count, align 4
  %inc.i.i4547 = add i32 %768, 1
  store i32 %inc.i.i4547, ptr %dlist_count, align 4
  br label %vc4_dlist_write.exit4551

vc4_dlist_write.exit4551:                         ; preds = %if.end10.i.i4548, %if.end7.i.i.i4539.vc4_dlist_write.exit4551_crit_edge, %if.then.i.i4508.vc4_dlist_write.exit4551_crit_edge
  %769 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx.i4550 = getelementptr i32, ptr %770, i32 %753
  %771 = ptrtoint ptr %arrayidx.i4550 to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 %and2995, ptr %arrayidx.i4550, align 4
  br label %if.end2997

if.end2997:                                       ; preds = %vc4_dlist_write.exit4551, %lor.lhs.false2899.if.end2997_crit_edge, %lor.lhs.false2862.if.end2997_crit_edge
  %772 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %dlist_count, align 4
  %774 = and i32 %773, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %774)
  %tobool3018.not = icmp eq i32 %774, 0
  br i1 %tobool3018.not, label %if.end2997.do.end3076_crit_edge, label %do.end3039, !prof !34

if.end2997.do.end3076_crit_edge:                  ; preds = %if.end2997
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3076

do.end3039:                                       ; preds = %if.end2997
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1127, i32 noundef 9, ptr noundef null) #8
  br label %do.end3076

do.end3076:                                       ; preds = %do.end3039, %if.end2997.do.end3076_crit_edge
  %775 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %dlist_count, align 4
  %shl3079 = shl i32 %776, 24
  %and3080 = and i32 %shl3079, 1056964608
  %777 = ptrtoint ptr %dlist.i4107 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %dlist.i4107, align 4
  %arrayidx3081 = getelementptr i32, ptr %778, i32 %5
  %779 = ptrtoint ptr %arrayidx3081 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %arrayidx3081, align 4
  %or3082 = or i32 %780, %and3080
  store i32 %or3082, ptr %arrayidx3081, align 4
  %781 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %crtc_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %782)
  %cmp3084 = icmp eq i32 %782, 0
  br i1 %cmp3084, label %land.lhs.true3086, label %do.end3076.lor.end_crit_edge

do.end3076.lor.end_crit_edge:                     ; preds = %do.end3076
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true3086:                                ; preds = %do.end3076
  %783 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %crtc_y.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %784)
  %cmp3088 = icmp eq i32 %784, 0
  br i1 %cmp3088, label %land.lhs.true3090, label %land.lhs.true3086.lor.end_crit_edge

land.lhs.true3086.lor.end_crit_edge:              ; preds = %land.lhs.true3086
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true3090:                                ; preds = %land.lhs.true3086
  %785 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %crtc_w.i, align 4
  %787 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %crtc.i, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %788, i32 0, i32 12, i32 1
  %789 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %789)
  %790 = load i16, ptr %hdisplay, align 4
  %conv3092 = zext i16 %790 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %786, i32 %conv3092)
  %cmp3093 = icmp eq i32 %786, %conv3092
  br i1 %cmp3093, label %land.end3102, label %land.lhs.true3090.lor.end_crit_edge

land.lhs.true3090.lor.end_crit_edge:              ; preds = %land.lhs.true3090
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.end3102:                                     ; preds = %land.lhs.true3090
  %791 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %crtc_h.i, align 8
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %788, i32 0, i32 12, i32 6
  %793 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %793)
  %794 = load i16, ptr %vdisplay, align 2
  %conv3099 = zext i16 %794 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %792, i32 %conv3099)
  %cmp3100 = icmp ne i32 %792, %conv3099
  %795 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %format3, align 8
  %has_alpha3105 = getelementptr inbounds %struct.drm_format_info, ptr %796, i32 0, i32 8
  %797 = ptrtoint ptr %has_alpha3105 to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %has_alpha3105, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %798)
  %tobool3106.not = icmp ne i8 %798, 0
  %brmerge3549 = select i1 %tobool3106.not, i1 true, i1 %cmp3100
  br i1 %brmerge3549, label %land.end3102.lor.end_crit_edge, label %lor.rhs

land.end3102.lor.end_crit_edge:                   ; preds = %land.end3102
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %land.end3102
  call void @__sanitizer_cov_trace_pc() #10
  %799 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %799)
  %800 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %800)
  %cmp3112 = icmp ne i16 %800, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end3102.lor.end_crit_edge, %land.lhs.true3090.lor.end_crit_edge, %land.lhs.true3086.lor.end_crit_edge, %do.end3076.lor.end_crit_edge
  %801 = phi i1 [ true, %land.end3102.lor.end_crit_edge ], [ %cmp3112, %lor.rhs ], [ true, %land.lhs.true3090.lor.end_crit_edge ], [ true, %land.lhs.true3086.lor.end_crit_edge ], [ true, %do.end3076.lor.end_crit_edge ]
  %needs_bg_fill = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 23
  %frombool3114 = zext i1 %801 to i8
  %802 = ptrtoint ptr %needs_bg_fill to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 %frombool3114, ptr %needs_bg_fill, align 8
  %803 = ptrtoint ptr %dlist_initialized to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 1, ptr %dlist_initialized, align 1
  %804 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %fb2, align 4
  %806 = ptrtoint ptr %state8.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %state8.i, align 4
  %808 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %crtc.i, align 4
  %crtcs.i.i4554 = getelementptr inbounds %struct.drm_atomic_state, ptr %807, i32 0, i32 4
  %810 = ptrtoint ptr %crtcs.i.i4554 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %crtcs.i.i4554, align 4
  %index.i.i.i4555 = getelementptr inbounds %struct.drm_crtc, ptr %809, i32 0, i32 8
  %812 = ptrtoint ptr %index.i.i.i4555 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %index.i.i.i4555, align 4
  %state1.i.i4556 = getelementptr %struct.__drm_crtcs_state, ptr %811, i32 %813, i32 1
  %814 = ptrtoint ptr %state1.i.i4556 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %state1.i.i4556, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %815, i32 0, i32 7
  %call4.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode.i) #8
  %816 = ptrtoint ptr %x_scaling.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %x_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %817)
  %cmp.not.i = icmp eq i32 %817, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i4558, label %lor.end.if.end.i4562_crit_edge

lor.end.if.end.i4562_crit_edge:                   ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i4562

lor.lhs.false.i4558:                              ; preds = %lor.end
  %arrayidx6.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 1
  %818 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %819)
  %cmp7.not.i = icmp eq i32 %819, 0
  br i1 %cmp7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i4558.if.end.i4562_crit_edge

lor.lhs.false.i4558.if.end.i4562_crit_edge:       ; preds = %lor.lhs.false.i4558
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i4562

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i4558
  %820 = ptrtoint ptr %y_scaling.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load i32, ptr %y_scaling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %821)
  %cmp10.not.i = icmp eq i32 %821, 0
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.end.i4562_crit_edge

lor.lhs.false8.i.if.end.i4562_crit_edge:          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i4562

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 1
  %822 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %823)
  %cmp14.not.i = icmp eq i32 %823, 0
  %spec.select.i4560 = select i1 %cmp14.not.i, i32 2, i32 1
  br label %if.end.i4562

if.end.i4562:                                     ; preds = %lor.lhs.false11.i, %lor.lhs.false8.i.if.end.i4562_crit_edge, %lor.lhs.false.i4558.if.end.i4562_crit_edge, %lor.end.if.end.i4562_crit_edge
  %hvs_load_shift.0.i = phi i32 [ 1, %lor.lhs.false8.i.if.end.i4562_crit_edge ], [ 1, %lor.lhs.false.i4558.if.end.i4562_crit_edge ], [ 1, %lor.end.if.end.i4562_crit_edge ], [ %spec.select.i4560, %lor.lhs.false11.i ]
  %membus_load.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 26
  %hvs_load.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 25
  %format.i4561 = getelementptr inbounds %struct.drm_framebuffer, ptr %805, i32 0, i32 4
  %824 = call ptr @memset(ptr %hvs_load.i, i32 0, i32 16)
  %825 = ptrtoint ptr %format.i4561 to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %format.i4561, align 8
  %num_planes69.i = getelementptr inbounds %struct.drm_format_info, ptr %826, i32 0, i32 2
  %827 = ptrtoint ptr %num_planes69.i to i32
  call void @__asan_load1_noabort(i32 %827)
  %828 = load i8, ptr %num_planes69.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %828)
  %cmp1571.not.i = icmp eq i8 %828, 0
  br i1 %cmp1571.not.i, label %if.end.i4562.vc4_plane_calc_load.exit_crit_edge, label %for.body.lr.ph.i4565

if.end.i4562.vc4_plane_calc_load.exit_crit_edge:  ; preds = %if.end.i4562
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_plane_calc_load.exit

for.body.lr.ph.i4565:                             ; preds = %if.end.i4562
  %829 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %crtc_h.i, align 8
  %831 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %crtc_w.i, align 4
  %mul31.i = mul i32 %832, %830
  %conv32.i = sext i32 %mul31.i to i64
  %add.i4566 = add i32 %830, -1
  br label %for.body.i4572

for.body.i4572:                                   ; preds = %for.body.i4572.for.body.i4572_crit_edge, %for.body.lr.ph.i4565
  %833 = phi ptr [ %826, %for.body.lr.ph.i4565 ], [ %846, %for.body.i4572.for.body.i4572_crit_edge ]
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i4565 ], [ %inc.i4570, %for.body.i4572.for.body.i4572_crit_edge ]
  %arrayidx17.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 16, i32 %i.072.i
  %834 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %arrayidx17.i, align 4
  %sub.i4567 = add i32 %add.i4566, %835
  %div.i4568 = udiv i32 %sub.i4567, %830
  %arrayidx19.i = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 15, i32 %i.072.i
  %836 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %arrayidx19.i, align 4
  %838 = getelementptr inbounds %struct.drm_format_info, ptr %833, i32 0, i32 3
  %arrayidx24.i = getelementptr [4 x i8], ptr %838, i32 0, i32 %i.072.i
  %839 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %840 to i32
  %mul.i4569 = mul i32 %div.i4568, %835
  %mul22.i = mul i32 %mul.i4569, %837
  %mul26.i = mul i32 %mul22.i, %conv25.i
  %conv27.i = zext i32 %mul26.i to i64
  %841 = ptrtoint ptr %membus_load.i to i32
  call void @__asan_load8_noabort(i32 %841)
  %842 = load i64, ptr %membus_load.i, align 8
  %add29.i = add i64 %842, %conv27.i
  store i64 %add29.i, ptr %membus_load.i, align 8
  %843 = ptrtoint ptr %hvs_load.i to i32
  call void @__asan_load8_noabort(i32 %843)
  %844 = load i64, ptr %hvs_load.i, align 8
  %add34.i = add i64 %844, %conv32.i
  store i64 %add34.i, ptr %hvs_load.i, align 8
  %inc.i4570 = add nuw nsw i32 %i.072.i, 1
  %845 = ptrtoint ptr %format.i4561 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %format.i4561, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %846, i32 0, i32 2
  %847 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %847)
  %848 = load i8, ptr %num_planes.i, align 1
  %conv.i4571 = zext i8 %848 to i32
  %cmp15.i = icmp ult i32 %inc.i4570, %conv.i4571
  br i1 %cmp15.i, label %for.body.i4572.for.body.i4572_crit_edge, label %for.body.i4572.vc4_plane_calc_load.exit_crit_edge

for.body.i4572.vc4_plane_calc_load.exit_crit_edge: ; preds = %for.body.i4572
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_plane_calc_load.exit

for.body.i4572.for.body.i4572_crit_edge:          ; preds = %for.body.i4572
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i4572

vc4_plane_calc_load.exit:                         ; preds = %for.body.i4572.vc4_plane_calc_load.exit_crit_edge, %if.end.i4562.vc4_plane_calc_load.exit_crit_edge
  %conv35.i = zext i32 %call4.i to i64
  %849 = ptrtoint ptr %hvs_load.i to i32
  call void @__asan_load8_noabort(i32 %849)
  %850 = load i64, ptr %hvs_load.i, align 8
  %mul37.i = mul i64 %850, %conv35.i
  %sh_prom.i = zext i32 %hvs_load_shift.0.i to i64
  %shr.i4573 = lshr i64 %mul37.i, %sh_prom.i
  store i64 %shr.i4573, ptr %hvs_load.i, align 8
  %851 = ptrtoint ptr %membus_load.i to i32
  call void @__asan_load8_noabort(i32 %851)
  %852 = load i64, ptr %membus_load.i, align 8
  %mul41.i = mul i64 %852, %conv35.i
  store i64 %mul41.i, ptr %membus_load.i, align 8
  br label %cleanup3116

cleanup3116:                                      ; preds = %vc4_plane_calc_load.exit, %sw.default684, %if.else551.cleanup3116_crit_edge, %if.else531.cleanup3116_crit_edge, %if.then524, %if.end30.i.cleanup3116_crit_edge, %lor.lhs.false25.i.cleanup3116_crit_edge, %lor.lhs.false21.i.cleanup3116_crit_edge, %lor.lhs.false.i.cleanup3116_crit_edge, %for.end.i.cleanup3116_crit_edge, %if.end.i.cleanup3116_crit_edge, %if.then.i, %vc4_get_hvs_format.exit.cleanup3116_crit_edge
  %retval.3 = phi i32 [ -22, %sw.default684 ], [ 0, %vc4_plane_calc_load.exit ], [ 0, %vc4_get_hvs_format.exit.cleanup3116_crit_edge ], [ %call62.i, %if.end30.i.cleanup3116_crit_edge ], [ -22, %for.end.i.cleanup3116_crit_edge ], [ -22, %lor.lhs.false.i.cleanup3116_crit_edge ], [ -22, %lor.lhs.false21.i.cleanup3116_crit_edge ], [ -22, %lor.lhs.false25.i.cleanup3116_crit_edge ], [ %call10.i, %if.end.i.cleanup3116_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then524 ], [ -22, %if.else531.cleanup3116_crit_edge ], [ -22, %if.else551.cleanup3116_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_dlist_write(ptr nocapture noundef %vc4_state, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dlist_count = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 3
  %0 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlist_count, align 4
  %dlist_size.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 2
  %2 = ptrtoint ptr %dlist_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlist_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %mul.i = shl i32 %1, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 4) #8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.then.i.vc4_dlist_counter_increment.exit_crit_edge, label %if.end7.i.i, !prof !36

if.then.i.vc4_dlist_counter_increment.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_counter_increment.exit

if.end7.i.i:                                      ; preds = %if.then.i
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.vc4_dlist_counter_increment.exit_crit_edge, label %cleanup.i

if.end7.i.i.vc4_dlist_counter_increment.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_counter_increment.exit

cleanup.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %8 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlist.i, align 4
  %10 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dlist_count, align 4
  %mul5.i = shl i32 %11, 2
  %12 = call ptr @memcpy(ptr %call8.i.i, ptr %9, i32 %mul5.i)
  tail call void @kfree(ptr noundef %9) #8
  %13 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %dlist.i, align 4
  %14 = ptrtoint ptr %dlist_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %dlist_size.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %cleanup.i, %entry.if.end10.i_crit_edge
  %15 = ptrtoint ptr %dlist_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dlist_count, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %dlist_count, align 4
  br label %vc4_dlist_counter_increment.exit

vc4_dlist_counter_increment.exit:                 ; preds = %if.end10.i, %if.end7.i.i.vc4_dlist_counter_increment.exit_crit_edge, %if.then.i.vc4_dlist_counter_increment.exit_crit_edge
  %dlist = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %17 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dlist, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_write_scaling_parameters(ptr noundef %state, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 17, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 15, i32 %channel
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %crtc_w = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 11
  %4 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_w, align 4
  tail call fastcc void @vc4_write_ppf(ptr noundef %state, i32 noundef %3, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 18, i32 %channel
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %arrayidx5 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 16, i32 %channel
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %crtc_h = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 12
  %10 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_h, align 8
  tail call fastcc void @vc4_write_ppf(ptr noundef %state, i32 noundef %9, i32 noundef %11)
  %dlist_count.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlist_count.i, align 4
  %dlist_size.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.i = icmp eq i32 %13, %15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then4.if.end10.i.i_crit_edge

if.then4.if.end10.i.i_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.then4
  %mul.i.i = shl i32 %13, 1
  %16 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 4) #8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #8
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.then.i.i.vc4_dlist_write.exit_crit_edge, label %if.end7.i.i.i, !prof !36

if.then.i.i.vc4_dlist_write.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

if.end7.i.i.i:                                    ; preds = %if.then.i.i
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #12
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, label %cleanup.i.i

if.end7.i.i.i.vc4_dlist_write.exit_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

cleanup.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dlist.i.i, align 4
  %22 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dlist_count.i, align 4
  %mul5.i.i = shl i32 %23, 2
  %24 = call ptr @memcpy(ptr %call8.i.i.i, ptr %21, i32 %mul5.i.i)
  tail call void @kfree(ptr noundef %21) #8
  %25 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i.i, ptr %dlist.i.i, align 4
  %26 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %16, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %cleanup.i.i, %if.then4.if.end10.i.i_crit_edge
  %27 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dlist_count.i, align 4
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, ptr %dlist_count.i, align 4
  br label %vc4_dlist_write.exit

vc4_dlist_write.exit:                             ; preds = %if.end10.i.i, %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, %if.then.i.i.vc4_dlist_write.exit_crit_edge
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %29 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %30, i32 %13
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1061109568, ptr %arrayidx.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %vc4_dlist_write.exit, %if.end.if.end6_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp9 = icmp eq i32 %33, 1
  br i1 %cmp9, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 15, i32 %channel
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx12, align 4
  %crtc_w13 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 11
  %36 = ptrtoint ptr %crtc_w13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_w13, align 4
  tail call fastcc void @vc4_write_tpz(ptr noundef %state, i32 noundef %35, i32 noundef %37)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %38 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp17 = icmp eq i32 %39, 1
  br i1 %cmp17, label %if.then18, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  %arrayidx20 = getelementptr %struct.vc4_plane_state, ptr %state, i32 0, i32 16, i32 %channel
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20, align 4
  %crtc_h21 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 12
  %42 = ptrtoint ptr %crtc_h21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_h21, align 8
  tail call fastcc void @vc4_write_tpz(ptr noundef %state, i32 noundef %41, i32 noundef %43)
  %dlist_count.i47 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 3
  %44 = ptrtoint ptr %dlist_count.i47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dlist_count.i47, align 4
  %dlist_size.i.i48 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 2
  %46 = ptrtoint ptr %dlist_size.i.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dlist_size.i.i48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp.i.i49 = icmp eq i32 %45, %47
  br i1 %cmp.i.i49, label %if.then.i.i51, label %if.then18.if.end10.i.i91_crit_edge

if.then18.if.end10.i.i91_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i91

if.then.i.i51:                                    ; preds = %if.then18
  %mul.i.i50 = shl i32 %45, 1
  %48 = tail call i32 @llvm.umax.i32(i32 %mul.i.i50, i32 4) #8
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 4) #8
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.then.i.i51.vc4_dlist_write.exit94_crit_edge, label %if.end7.i.i.i82, !prof !36

if.then.i.i51.vc4_dlist_write.exit94_crit_edge:   ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit94

if.end7.i.i.i82:                                  ; preds = %if.then.i.i51
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i.i81 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3264) #12
  %tobool.not.i.i84 = icmp eq ptr %call8.i.i.i81, null
  br i1 %tobool.not.i.i84, label %if.end7.i.i.i82.vc4_dlist_write.exit94_crit_edge, label %cleanup.i.i89

if.end7.i.i.i82.vc4_dlist_write.exit94_crit_edge: ; preds = %if.end7.i.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit94

cleanup.i.i89:                                    ; preds = %if.end7.i.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i87 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %52 = ptrtoint ptr %dlist.i.i87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dlist.i.i87, align 4
  %54 = ptrtoint ptr %dlist_count.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dlist_count.i47, align 4
  %mul5.i.i88 = shl i32 %55, 2
  %56 = call ptr @memcpy(ptr %call8.i.i.i81, ptr %53, i32 %mul5.i.i88)
  tail call void @kfree(ptr noundef %53) #8
  %57 = ptrtoint ptr %dlist.i.i87 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i.i81, ptr %dlist.i.i87, align 4
  %58 = ptrtoint ptr %dlist_size.i.i48 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %48, ptr %dlist_size.i.i48, align 8
  br label %if.end10.i.i91

if.end10.i.i91:                                   ; preds = %cleanup.i.i89, %if.then18.if.end10.i.i91_crit_edge
  %59 = ptrtoint ptr %dlist_count.i47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dlist_count.i47, align 4
  %inc.i.i90 = add i32 %60, 1
  store i32 %inc.i.i90, ptr %dlist_count.i47, align 4
  br label %vc4_dlist_write.exit94

vc4_dlist_write.exit94:                           ; preds = %if.end10.i.i91, %if.end7.i.i.i82.vc4_dlist_write.exit94_crit_edge, %if.then.i.i51.vc4_dlist_write.exit94_crit_edge
  %dlist.i92 = getelementptr inbounds %struct.vc4_plane_state, ptr %state, i32 0, i32 1
  %61 = ptrtoint ptr %dlist.i92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dlist.i92, align 4
  %arrayidx.i93 = getelementptr i32, ptr %62, i32 %45
  %63 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1061109568, ptr %arrayidx.i93, align 4
  br label %if.end22

if.end22:                                         ; preds = %vc4_dlist_write.exit94, %if.end14.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_plane_margins_adj(ptr nocapture noundef %pstate) unnamed_addr #0 align 64 {
entry:
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #8
  %0 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %left, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #8
  %1 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %right, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top) #8
  %2 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %top, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bottom) #8
  %3 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bottom, align 4, !annotation !41
  %state = getelementptr inbounds %struct.drm_plane_state, ptr %pstate, i32 0, i32 25
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %pstate, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %11, i32 3
  %12 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state.i, align 4
  call void @vc4_crtc_get_margins(ptr noundef %13, ptr noundef nonnull %left, ptr noundef nonnull %right, ptr noundef nonnull %top, ptr noundef nonnull %bottom) #8
  %14 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %20 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bottom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %right, align 4
  %add = add i32 %23, %15
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp.not = icmp ult i32 %add, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %26 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %top, align 4
  %28 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bottom, align 4
  %add8 = add i32 %29, %27
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 8, i32 6
  %30 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vdisplay, align 2
  %conv10 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %conv10)
  %cmp11.not = icmp ult i32 %add8, %conv10
  br i1 %cmp11.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %conv, %add
  %crtc_x = getelementptr inbounds %struct.vc4_plane_state, ptr %pstate, i32 0, i32 9
  %32 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_x, align 4
  %mul = mul i32 %33, %sub
  %div148 = lshr i32 %conv, 1
  %add22 = add i32 %mul, %div148
  %div24 = udiv i32 %add22, %conv
  %add27 = add i32 %div24, %15
  store i32 %add27, ptr %crtc_x, align 4
  %34 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay, align 4
  %conv31 = zext i16 %35 to i32
  %sub32 = sub i32 %conv31, %15
  %36 = call i32 @llvm.umin.i32(i32 %add27, i32 %sub32)
  %37 = ptrtoint ptr %crtc_x to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %crtc_x, align 4
  %38 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay, align 2
  %conv44 = zext i16 %39 to i32
  %sub46 = sub i32 %conv44, %add8
  %crtc_y = getelementptr inbounds %struct.vc4_plane_state, ptr %pstate, i32 0, i32 10
  %40 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_y, align 8
  %mul48 = mul i32 %sub46, %41
  %div54149 = lshr i32 %conv44, 1
  %add55 = add i32 %mul48, %div54149
  %div57 = udiv i32 %add55, %conv44
  %add60 = add i32 %div57, %27
  store i32 %add60, ptr %crtc_y, align 8
  %42 = load i16, ptr %vdisplay, align 2
  %conv64 = zext i16 %42 to i32
  %sub65 = sub i32 %conv64, %27
  %43 = call i32 @llvm.umin.i32(i32 %add60, i32 %sub65)
  %44 = ptrtoint ptr %crtc_y to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %crtc_y, align 8
  %crtc_w = getelementptr inbounds %struct.vc4_plane_state, ptr %pstate, i32 0, i32 11
  %45 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_w, align 4
  %mul76 = mul i32 %46, %sub
  %47 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hdisplay, align 4
  %conv81 = zext i16 %48 to i32
  %div82150 = lshr i32 %conv81, 1
  %add83 = add i32 %div82150, %mul76
  %div85 = udiv i32 %add83, %conv81
  store i32 %div85, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.vc4_plane_state, ptr %pstate, i32 0, i32 12
  %49 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_h, align 8
  %mul88 = mul i32 %50, %sub46
  %51 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vdisplay, align 2
  %conv93 = zext i16 %52 to i32
  %div94151 = lshr i32 %conv93, 1
  %add95 = add i32 %div94151, %mul88
  %div97 = udiv i32 %add95, %conv93
  store i32 %div97, ptr %crtc_h, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add83, i32 %conv81)
  %tobool100.not = icmp ult i32 %add83, %conv81
  call void @__sanitizer_cov_trace_cmp4(i32 %add95, i32 %conv93)
  %tobool103.not = icmp ult i32 %add95, %conv93
  %or.cond = select i1 %tobool100.not, i1 true, i1 %tobool103.not
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bottom) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_get_margins(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_write_ppf(ptr nocapture noundef %vc4_state, i32 noundef %src, i32 noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %src, 16
  %div = udiv i32 %mul, %dst
  %shl = shl i32 %div, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %shl)
  %tobool.not = icmp ult i32 %shl, 33554432
  br i1 %tobool.not, label %entry.if.end106_crit_edge, label %do.end29, !prof !34

entry.if.end106_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 448, i32 noundef 9, ptr noundef null) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end29, %entry.if.end106_crit_edge
  %dlist_count.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 3
  %0 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlist_count.i, align 4
  %dlist_size.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 2
  %2 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end106.if.end10.i.i_crit_edge

if.end106.if.end10.i.i_crit_edge:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end106
  %mul.i.i = shl i32 %1, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 4) #8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.then.i.i.vc4_dlist_write.exit_crit_edge, label %if.end7.i.i.i, !prof !36

if.then.i.i.vc4_dlist_write.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

if.end7.i.i.i:                                    ; preds = %if.then.i.i
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, label %cleanup.i.i

if.end7.i.i.i.vc4_dlist_write.exit_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

cleanup.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %8 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlist.i.i, align 4
  %10 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dlist_count.i, align 4
  %mul5.i.i = shl i32 %11, 2
  %12 = call ptr @memcpy(ptr %call8.i.i.i, ptr %9, i32 %mul5.i.i)
  tail call void @kfree(ptr noundef %9) #8
  %13 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i.i, ptr %dlist.i.i, align 4
  %14 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %cleanup.i.i, %if.end106.if.end10.i.i_crit_edge
  %15 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dlist_count.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %dlist_count.i, align 4
  br label %vc4_dlist_write.exit

vc4_dlist_write.exit:                             ; preds = %if.end10.i.i, %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, %if.then.i.i.vc4_dlist_write.exit_crit_edge
  %and64 = and i32 %shl, 33554176
  %or = or i32 %and64, 1073741824
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %17 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %18, i32 %1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_write_tpz(ptr nocapture noundef %vc4_state, i32 noundef %src, i32 noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %src, 16
  %div = udiv i32 %mul, %dst
  %shl = shl i32 %div, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shl)
  %tobool.not = icmp ult i32 %shl, 536870912
  br i1 %tobool.not, label %entry.if.end107_crit_edge, label %do.end30, !prof !34

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #8
  br label %if.end107

if.end107:                                        ; preds = %do.end30, %entry.if.end107_crit_edge
  %and65 = and i32 %shl, 536870656
  %dlist_count.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 3
  %0 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlist_count.i, align 4
  %dlist_size.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 2
  %2 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end107.if.end10.i.i_crit_edge

if.end107.if.end10.i.i_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end107
  %mul.i.i = shl i32 %1, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 4) #8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.then.i.i.vc4_dlist_write.exit_crit_edge, label %if.end7.i.i.i, !prof !36

if.then.i.i.vc4_dlist_write.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

if.end7.i.i.i:                                    ; preds = %if.then.i.i
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, label %cleanup.i.i

if.end7.i.i.i.vc4_dlist_write.exit_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit

cleanup.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlist.i.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %8 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlist.i.i, align 4
  %10 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dlist_count.i, align 4
  %mul5.i.i = shl i32 %11, 2
  %12 = call ptr @memcpy(ptr %call8.i.i.i, ptr %9, i32 %mul5.i.i)
  tail call void @kfree(ptr noundef %9) #8
  %13 = ptrtoint ptr %dlist.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i.i, ptr %dlist.i.i, align 4
  %14 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %cleanup.i.i, %if.end107.if.end10.i.i_crit_edge
  %15 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dlist_count.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %dlist_count.i, align 4
  br label %vc4_dlist_write.exit

vc4_dlist_write.exit:                             ; preds = %if.end10.i.i, %if.end7.i.i.i.vc4_dlist_write.exit_crit_edge, %if.then.i.i.vc4_dlist_write.exit_crit_edge
  %dlist.i = getelementptr inbounds %struct.vc4_plane_state, ptr %vc4_state, i32 0, i32 1
  %17 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %18, i32 %1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and65, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div)
  %tobool151.not = icmp ugt i32 %div, 65535
  br i1 %tobool151.not, label %vc4_dlist_write.exit.do.end207_crit_edge, label %do.end172, !prof !34

vc4_dlist_write.exit.do.end207_crit_edge:         ; preds = %vc4_dlist_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end207

do.end172:                                        ; preds = %vc4_dlist_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #8
  br label %do.end207

do.end207:                                        ; preds = %do.end172, %vc4_dlist_write.exit.do.end207_crit_edge
  %20 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dlist_count.i, align 4
  %22 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dlist_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i.i225 = icmp eq i32 %21, %23
  br i1 %cmp.i.i225, label %if.then.i.i227, label %do.end207.if.end10.i.i267_crit_edge

do.end207.if.end10.i.i267_crit_edge:              ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i267

if.then.i.i227:                                   ; preds = %do.end207
  %mul.i.i226 = shl i32 %21, 1
  %24 = tail call i32 @llvm.umax.i32(i32 %mul.i.i226, i32 4) #8
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #8
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %if.then.i.i227.vc4_dlist_write.exit270_crit_edge, label %if.end7.i.i.i258, !prof !36

if.then.i.i227.vc4_dlist_write.exit270_crit_edge: ; preds = %if.then.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit270

if.end7.i.i.i258:                                 ; preds = %if.then.i.i227
  %27 = extractvalue { i32, i1 } %25, 0
  %call8.i.i.i257 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #12
  %tobool.not.i.i260 = icmp eq ptr %call8.i.i.i257, null
  br i1 %tobool.not.i.i260, label %if.end7.i.i.i258.vc4_dlist_write.exit270_crit_edge, label %cleanup.i.i265

if.end7.i.i.i258.vc4_dlist_write.exit270_crit_edge: ; preds = %if.end7.i.i.i258
  call void @__sanitizer_cov_trace_pc() #10
  br label %vc4_dlist_write.exit270

cleanup.i.i265:                                   ; preds = %if.end7.i.i.i258
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dlist.i, align 4
  %30 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dlist_count.i, align 4
  %mul5.i.i264 = shl i32 %31, 2
  %32 = call ptr @memcpy(ptr %call8.i.i.i257, ptr %29, i32 %mul5.i.i264)
  tail call void @kfree(ptr noundef %29) #8
  %33 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i257, ptr %dlist.i, align 4
  %34 = ptrtoint ptr %dlist_size.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %24, ptr %dlist_size.i.i, align 8
  br label %if.end10.i.i267

if.end10.i.i267:                                  ; preds = %cleanup.i.i265, %do.end207.if.end10.i.i267_crit_edge
  %35 = ptrtoint ptr %dlist_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dlist_count.i, align 4
  %inc.i.i266 = add i32 %36, 1
  store i32 %inc.i.i266, ptr %dlist_count.i, align 4
  br label %vc4_dlist_write.exit270

vc4_dlist_write.exit270:                          ; preds = %if.end10.i.i267, %if.end7.i.i.i258.vc4_dlist_write.exit270_crit_edge, %if.then.i.i227.vc4_dlist_write.exit270_crit_edge
  %div1 = udiv i32 -1, %div
  %and210 = and i32 %div1, 65535
  %37 = ptrtoint ptr %dlist.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dlist.i, align 4
  %arrayidx.i269 = getelementptr i32, ptr %38, i32 %21
  %39 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and210, ptr %arrayidx.i269, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 1223, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 1468, i32 10}
!5 = !{ptr @vc4_plane_init.modifiers, !6, !"modifiers", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 1469, i32 24}
!7 = !{ptr @hvs_formats, !8, !"hvs_formats", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 37, i32 3}
!9 = !{ptr @vc4_plane_funcs, !10, !"vc4_plane_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 1447, i32 37}
!11 = !{ptr @vc4_plane_helper_funcs, !12, !"vc4_plane_helper_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 1384, i32 44}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 819, i32 4}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 908, i32 3}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 352, i32 3}
!19 = !{ptr @colorspace_coeffs, !20, !"colorspace_coeffs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 631, i32 18}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/vc4/vc4_plane.c", i32 618, i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2160392439}
!33 = !{i64 6954992}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2160395158}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i8 0, i8 2}
!38 = !{i64 2160395796}
!39 = !{i64 2160396387}
!40 = !{i64 2160396978}
!41 = !{!"auto-init"}
