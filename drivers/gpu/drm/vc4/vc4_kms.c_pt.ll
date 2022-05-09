; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.91, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.92, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.91 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.92 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.vc4_hvs_state = type { %struct.drm_private_state, i32, [3 x %struct.anon.93] }
%struct.drm_private_state = type { ptr }
%struct.anon.93 = type { i8, i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.94, i32, i8 }
%struct.anon.94 = type { i32, i32, i32, i32 }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_ctm_state = type { %struct.drm_private_state, ptr, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.vc4_load_tracker_state = type { %struct.drm_private_state, i64, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_crtc_commit = type { ptr, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, i8 }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.vc4_crtc_data = type { i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm2711-vc5\00", [47 x i8] zeroinitializer }, align 32
@vc4_kms_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 967, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_kms_load\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_kms.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_kms_load._entry_ptr = internal global ptr @vc4_kms_load._entry, section ".printk_index", align 4
@vc4_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @vc4_fb_create, ptr null, ptr null, ptr null, ptr @vc4_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vc4_mode_config_helpers = internal global { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @vc4_atomic_commit_tail, ptr @vc4_atomic_commit_setup }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to look up GEM BO %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Too many CTM configured\0A\00", [39 x i8] zeroinitializer }, align 32
@vc4_atomic_commit_tail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] *ERROR* Timed out waiting for commit\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vc4_atomic_commit_tail\00", [41 x i8] zeroinitializer }, align 32
@vc4_atomic_commit_tail._entry_ptr = internal global ptr @vc4_atomic_commit_tail._entry, section ".printk_index", align 4
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Running the core clock at %lu Hz\0A\00", [62 x i8] zeroinitializer }, align 32
@vc4_ctm_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @vc4_ctm_duplicate_state, ptr @vc4_ctm_destroy_state }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vc4_ctm_obj_fini\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vc4_load_tracker_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @vc4_load_tracker_duplicate_state, ptr @vc4_load_tracker_destroy_state }, [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vc4_load_tracker_obj_fini\00", [38 x i8] zeroinitializer }, align 32
@vc4_hvs_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @vc4_hvs_channels_duplicate_state, ptr @vc4_hvs_channels_destroy_state }, [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vc4_hvs_channels_obj_fini\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 947, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 967, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"vc4_mode_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 937, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"vc4_mode_config_helpers\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 932, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 469, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 538, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 381, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 416, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"vc4_ctm_state_funcs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 110, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 135, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"vc4_load_tracker_state_funcs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 637, i32 45 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 661, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"vc4_hvs_state_funcs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 703, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_kms.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 727, i32 9 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @vc4_atomic_commit_tail._entry, ptr @vc4_atomic_commit_tail._entry_ptr, ptr @vc4_kms_load._entry, ptr @vc4_kms_load._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vc4_mode_funcs, ptr @vc4_mode_config_helpers, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @vc4_ctm_state_funcs, ptr @.str.11, ptr @vc4_load_tracker_state_funcs, ptr @.str.12, ptr @vc4_hvs_state_funcs, ptr @.str.13], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_kms_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_atomic_commit_tail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_ctm_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_load_tracker_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hvs_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_kms_load(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %load_tracker_enabled = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %load_tracker_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %load_tracker_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vblank_disable_immediate = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 22
  %5 = ptrtoint ptr %vblank_disable_immediate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %vblank_disable_immediate, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 4
  %call4 = tail call i32 @drm_vblank_init(ptr noundef %dev, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %spec.select = select i1 %tobool.not, i32 2048, i32 7680
  %10 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vc4_mode_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 103
  %15 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vc4_mode_config_helpers, ptr %helper_private, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 91
  %16 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24, ptr %preferred_depth, align 4
  %async_page_flip = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 96
  %17 = ptrtoint ptr %async_page_flip to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %async_page_flip, align 1
  %ctm_state_lock.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 34
  tail call void @drm_modeset_lock_init(ptr noundef %ctm_state_lock.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %vc4_ctm_obj_init.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vc4_ctm_obj_init.exit:                            ; preds = %if.end7
  %ctm_manager.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 35
  tail call void @drm_atomic_private_obj_init(ptr noundef %dev, ptr noundef %ctm_manager.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @vc4_ctm_state_funcs) #7
  %call3.i = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @vc4_ctm_obj_fini, ptr noundef null, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool22.not = icmp eq i32 %call3.i, 0
  br i1 %tobool22.not, label %if.end24, label %vc4_ctm_obj_init.exit.cleanup_crit_edge

vc4_ctm_obj_init.exit.cleanup_crit_edge:          ; preds = %vc4_ctm_obj_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %vc4_ctm_obj_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not.i62 = icmp eq ptr %call7.i.i.i61, null
  br i1 %tobool.not.i62, label %if.end24.cleanup_crit_edge, label %vc4_load_tracker_obj_init.exit

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vc4_load_tracker_obj_init.exit:                   ; preds = %if.end24
  %load_tracker.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 37
  tail call void @drm_atomic_private_obj_init(ptr noundef %dev, ptr noundef %load_tracker.i, ptr noundef nonnull %call7.i.i.i61, ptr noundef nonnull @vc4_load_tracker_state_funcs) #7
  %call3.i63 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @vc4_load_tracker_obj_fini, ptr noundef null, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i63)
  %tobool26.not = icmp eq i32 %call3.i63, 0
  br i1 %tobool26.not, label %if.end28, label %vc4_load_tracker_obj_init.exit.cleanup_crit_edge

vc4_load_tracker_obj_init.exit.cleanup_crit_edge: ; preds = %vc4_load_tracker_obj_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %vc4_load_tracker_obj_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not.i67 = icmp eq ptr %call7.i.i.i66, null
  br i1 %tobool.not.i67, label %if.end28.cleanup_crit_edge, label %vc4_hvs_channels_obj_init.exit

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vc4_hvs_channels_obj_init.exit:                   ; preds = %if.end28
  %hvs_channels.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 36
  tail call void @drm_atomic_private_obj_init(ptr noundef %dev, ptr noundef %hvs_channels.i, ptr noundef nonnull %call7.i.i.i66, ptr noundef nonnull @vc4_hvs_state_funcs) #7
  %call3.i68 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @vc4_hvs_channels_obj_fini, ptr noundef null, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i68)
  %tobool30.not = icmp eq i32 %call3.i68, 0
  br i1 %tobool30.not, label %if.end32, label %vc4_hvs_channels_obj_init.exit.cleanup_crit_edge

vc4_hvs_channels_obj_init.exit.cleanup_crit_edge: ; preds = %vc4_hvs_channels_obj_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %vc4_hvs_channels_obj_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_config_reset(ptr noundef %dev) #7
  tail call void @drm_kms_helper_poll_init(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %vc4_hvs_channels_obj_init.exit.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %vc4_load_tracker_obj_init.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %vc4_ctm_obj_init.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end32 ], [ %call3.i, %vc4_ctm_obj_init.exit.cleanup_crit_edge ], [ %call3.i63, %vc4_load_tracker_obj_init.exit.cleanup_crit_edge ], [ %call3.i68, %vc4_hvs_channels_obj_init.exit.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  %mode_cmd_local = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd_local) #7
  %0 = call ptr @memset(ptr %mode_cmd_local, i32 255, i32 104)
  %flags = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %3 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handles, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %4) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %5 = call ptr @memcpy(ptr %mode_cmd_local, ptr %mode_cmd, i32 104)
  %t_format = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %t_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %t_format, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool7.not, i64 0, i64 504403158265495553
  %8 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd_local, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %spec.select, ptr %8, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !49

if.end5.i.i.i.i.i.i.if.end14_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %if.end14

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7, !callees !51
  br label %if.end14

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handles, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %12) #7
  br label %cleanup16

if.end14:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  %mode_cmd.addr.1 = phi ptr [ %mode_cmd, %entry.if.end14_crit_edge ], [ %mode_cmd_local, %if.then.i.i.i ], [ %mode_cmd_local, %if.then10.i.i.i.i.i.i ], [ %mode_cmd_local, %if.end5.i.i.i.i.i.i.if.end14_crit_edge ]
  %call15 = call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd.addr.1) #7
  br label %cleanup16

cleanup16:                                        ; preds = %if.end14, %cleanup
  %retval.1 = phi ptr [ %call15, %if.end14 ], [ inttoptr (i32 -2 to ptr), %cleanup ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd_local) #7
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_atomic_check(ptr noundef %dev, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %hvs_channels.i.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 36
  %call1.i.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %hvs_channels.i.i) #7
  %cmp.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vc4_pv_muxing_atomic_check.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %entry
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %num_crtc6.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp77.not.i = icmp eq i32 %5, 0
  br i1 %cmp77.not.i, label %for.body.preheader.i.if.end_crit_edge, label %for.body8.lr.ph.i

for.body.preheader.i.if.end_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body8.lr.ph.i:                                ; preds = %for.body.preheader.i
  %arrayidx.2.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.2.i = load i8, ptr %arrayidx.2.i, align 4
  %7 = lshr i8 %bf.load.2.i, 5
  %8 = and i8 %7, 4
  %arrayidx.1.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.1.i = load i8, ptr %arrayidx.1.i, align 4
  %10 = lshr i8 %bf.load.1.i, 6
  %11 = and i8 %10, 2
  %arrayidx.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %arrayidx.i, align 4
  %13 = xor i8 %bf.load.i, -1
  %14 = lshr i8 %13, 7
  %15 = or i8 %14, %8
  %16 = or i8 %15, %11
  %unassigned_channels.1.213.i = xor i8 %16, 6
  %unassigned_channels.1.2.i = zext i8 %unassigned_channels.1.213.i to i32
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc54.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.19.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc55.i, %for.inc54.i.for.body8.i_crit_edge ]
  %unassigned_channels.28.i = phi i32 [ %unassigned_channels.1.2.i, %for.body8.lr.ph.i ], [ %unassigned_channels.4.i, %for.inc54.i.for.body8.i_crit_edge ]
  %17 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtcs.i, align 4
  %arrayidx9.i = getelementptr %struct.__drm_crtcs_state, ptr %18, i32 %i.19.i
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9.i, align 8
  %tobool10.not.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i, label %for.body8.i.for.inc54.i_crit_edge, label %land.lhs.true.i

for.body8.i.for.inc54.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54.i

land.lhs.true.i:                                  ; preds = %for.body8.i
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %18, i32 %i.19.i, i32 2
  %21 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_state.i, align 8
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %18, i32 %i.19.i, i32 3
  %23 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %new_state.i, align 4
  %enable.i = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable.i, align 4, !range !46
  %enable23.i = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %enable23.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable23.i, align 4, !range !46
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp26.i = icmp eq i8 %26, %28
  br i1 %cmp26.i, label %land.lhs.true.i.for.inc54.i_crit_edge, label %if.end29.i

land.lhs.true.i.for.inc54.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54.i

if.end29.i:                                       ; preds = %land.lhs.true.i
  %update_muxing.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %24, i32 0, i32 6
  %29 = ptrtoint ptr %update_muxing.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %update_muxing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool31.not.i = icmp eq i8 %28, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end37.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %22, i32 0, i32 3
  %30 = ptrtoint ptr %assigned_channel.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %assigned_channel.i, align 4
  %arrayidx34.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i, i32 0, i32 2, i32 %31
  %32 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load35.i = load i8, ptr %arrayidx34.i, align 4
  %bf.clear.i = and i8 %bf.load35.i, 127
  store i8 %bf.clear.i, ptr %arrayidx34.i, align 4
  %assigned_channel36.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %24, i32 0, i32 3
  %33 = ptrtoint ptr %assigned_channel36.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %assigned_channel36.i, align 4
  br label %for.inc54.i

if.end37.i:                                       ; preds = %if.end29.i
  %data.i = getelementptr inbounds %struct.vc4_crtc, ptr %20, i32 0, i32 2
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %and.i = and i32 %37, %unassigned_channels.28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %if.end37.i.cleanup_crit_edge, label %if.end40.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #7, !range !52
  %assigned_channel41.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %24, i32 0, i32 3
  %39 = ptrtoint ptr %assigned_channel41.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %assigned_channel41.i, align 4
  %shl42.i = shl nuw i32 1, %38
  %neg.i = xor i32 %shl42.i, -1
  %and43.i = and i32 %unassigned_channels.28.i, %neg.i
  %arrayidx45.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i, i32 0, i32 2, i32 %38
  %40 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load46.i = load i8, ptr %arrayidx45.i, align 4
  %bf.set48.i = or i8 %bf.load46.i, -128
  store i8 %bf.set48.i, ptr %arrayidx45.i, align 4
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.end40.i, %if.then32.i, %land.lhs.true.i.for.inc54.i_crit_edge, %for.body8.i.for.inc54.i_crit_edge
  %unassigned_channels.4.i = phi i32 [ %unassigned_channels.28.i, %for.body8.i.for.inc54.i_crit_edge ], [ %unassigned_channels.28.i, %land.lhs.true.i.for.inc54.i_crit_edge ], [ %unassigned_channels.28.i, %if.then32.i ], [ %and43.i, %if.end40.i ]
  %inc55.i = add nuw i32 %i.19.i, 1
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 19
  %43 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_crtc.i, align 4
  %cmp7.i = icmp ult i32 %inc55.i, %44
  br i1 %cmp7.i, label %for.inc54.i.for.body8.i_crit_edge, label %for.inc54.i.if.end_crit_edge

for.inc54.i.if.end_crit_edge:                     ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc54.i.for.body8.i_crit_edge:                ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

vc4_pv_muxing_atomic_check.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call1.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %for.inc54.i.if.end_crit_edge, %for.body.preheader.i.if.end_crit_edge
  %46 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i, align 4
  %num_crtc165.i = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 30, i32 19
  %48 = ptrtoint ptr %num_crtc165.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_crtc165.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp166.i = icmp sgt i32 %49, 0
  br i1 %cmp166.i, label %for.body.lr.ph.i, label %if.end.for.cond21.preheader.i_crit_edge

if.end.for.cond21.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %crtcs.i26 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %acquire_ctx.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 9
  %ctm_manager.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 35
  br label %for.body.i

for.cond21.preheader.i:                           ; preds = %for.inc.i.for.cond21.preheader.i_crit_edge, %if.end.for.cond21.preheader.i_crit_edge
  %ctm_state.0.lcssa.i = phi ptr [ null, %if.end.for.cond21.preheader.i_crit_edge ], [ %ctm_state.1.i, %for.inc.i.for.cond21.preheader.i_crit_edge ]
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %num_crtc24171.i = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 19
  %52 = ptrtoint ptr %num_crtc24171.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_crtc24171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp25172.i = icmp sgt i32 %53, 0
  br i1 %cmp25172.i, label %for.body26.lr.ph.i, label %for.cond21.preheader.i.if.end3_crit_edge

for.cond21.preheader.i.if.end3_crit_edge:         ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body26.lr.ph.i:                               ; preds = %for.cond21.preheader.i
  %crtcs27.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %acquire_ctx.i150.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 9
  %ctm_manager50.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 35
  br label %for.body26.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %54 = phi ptr [ %47, %for.body.lr.ph.i ], [ %72, %for.inc.i.for.body.i_crit_edge ]
  %i.0168.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ctm_state.0167.i = phi ptr [ null, %for.body.lr.ph.i ], [ %ctm_state.1.i, %for.inc.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %crtcs.i26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crtcs.i26, align 4
  %arrayidx.i27 = getelementptr %struct.__drm_crtcs_state, ptr %56, i32 %i.0168.i
  %57 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i27, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i30

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i30:                                ; preds = %for.body.i
  %new_state.i28 = getelementptr %struct.__drm_crtcs_state, ptr %56, i32 %i.0168.i, i32 3
  %59 = ptrtoint ptr %new_state.i28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %new_state.i28, align 4
  %ctm9.i = getelementptr inbounds %struct.drm_crtc_state, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %ctm9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctm9.i, align 4
  %tobool10.not.i29 = icmp eq ptr %62, null
  br i1 %tobool10.not.i29, label %land.lhs.true11.i, label %land.lhs.true.i30.for.inc.i_crit_edge

land.lhs.true.i30.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i30
  %old_state.i31 = getelementptr %struct.__drm_crtcs_state, ptr %56, i32 %i.0168.i, i32 2
  %63 = ptrtoint ptr %old_state.i31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %old_state.i31, align 8
  %ctm12.i = getelementptr inbounds %struct.drm_crtc_state, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %ctm12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctm12.i, align 4
  %tobool13.not.i = icmp eq ptr %66, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %if.then14.i

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then14.i:                                      ; preds = %land.lhs.true11.i
  %ctm_state_lock.i.i = getelementptr inbounds %struct.vc4_dev, ptr %54, i32 0, i32 34
  %67 = ptrtoint ptr %acquire_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %acquire_ctx.i.i, align 4
  %call2.i.i = tail call i32 @drm_modeset_lock(ptr noundef %ctm_state_lock.i.i, ptr noundef %68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = inttoptr i32 %call2.i.i to ptr
  br label %vc4_get_ctm_state.exit.i

if.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %ctm_manager.i) #7
  br label %vc4_get_ctm_state.exit.i

vc4_get_ctm_state.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %69, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  %cmp.i.i32 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i32, label %vc4_get_ctm_state.exit.i.vc4_ctm_atomic_check.exit_crit_edge, label %if.end.i

vc4_get_ctm_state.exit.i.vc4_ctm_atomic_check.exit_crit_edge: ; preds = %vc4_get_ctm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_ctm_atomic_check.exit

if.end.i:                                         ; preds = %vc4_get_ctm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %fifo.i = getelementptr inbounds %struct.vc4_ctm_state, ptr %retval.0.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %fifo.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true.i30.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ctm_state.1.i = phi ptr [ %ctm_state.0167.i, %land.lhs.true.i30.for.inc.i_crit_edge ], [ %retval.0.i.i, %if.end.i ], [ %ctm_state.0167.i, %land.lhs.true11.i.for.inc.i_crit_edge ], [ %ctm_state.0167.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0168.i, 1
  %71 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i, align 4
  %num_crtc.i33 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 30, i32 19
  %73 = ptrtoint ptr %num_crtc.i33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_crtc.i33, align 4
  %cmp.i = icmp slt i32 %inc.i, %74
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond21.preheader.i_crit_edge

for.inc.i.for.cond21.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body26.i:                                     ; preds = %for.inc88.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %75 = phi ptr [ %51, %for.body26.lr.ph.i ], [ %120, %for.inc88.i.for.body26.i_crit_edge ]
  %i.1174.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %inc89.i, %for.inc88.i.for.body26.i_crit_edge ]
  %ctm_state.2173.i = phi ptr [ %ctm_state.0.lcssa.i, %for.body26.lr.ph.i ], [ %ctm_state.4.i, %for.inc88.i.for.body26.i_crit_edge ]
  %76 = ptrtoint ptr %crtcs27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %crtcs27.i, align 4
  %arrayidx28.i = getelementptr %struct.__drm_crtcs_state, ptr %77, i32 %i.1174.i
  %78 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx28.i, align 8
  %tobool30.not.i = icmp eq ptr %79, null
  br i1 %tobool30.not.i, label %for.body26.i.for.inc88.i_crit_edge, label %land.lhs.true31.i

for.body26.i.for.inc88.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88.i

land.lhs.true31.i:                                ; preds = %for.body26.i
  %old_state37.i = getelementptr %struct.__drm_crtcs_state, ptr %77, i32 %i.1174.i, i32 2
  %80 = ptrtoint ptr %old_state37.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %old_state37.i, align 8
  %new_state40.i = getelementptr %struct.__drm_crtcs_state, ptr %77, i32 %i.1174.i, i32 3
  %82 = ptrtoint ptr %new_state40.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %new_state40.i, align 4
  %ctm43.i = getelementptr inbounds %struct.drm_crtc_state, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %ctm43.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctm43.i, align 4
  %ctm44.i = getelementptr inbounds %struct.drm_crtc_state, ptr %81, i32 0, i32 11
  %86 = ptrtoint ptr %ctm44.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctm44.i, align 4
  %cmp45.i = icmp eq ptr %85, %87
  br i1 %cmp45.i, label %land.lhs.true31.i.for.inc88.i_crit_edge, label %if.end47.i

land.lhs.true31.i.for.inc88.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88.i

if.end47.i:                                       ; preds = %land.lhs.true31.i
  %tobool48.not.i = icmp eq ptr %ctm_state.2173.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end47.i.if.end56.i_crit_edge

if.end47.i.if.end56.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end47.i
  %ctm_state_lock.i149.i = getelementptr inbounds %struct.vc4_dev, ptr %75, i32 0, i32 34
  %88 = ptrtoint ptr %acquire_ctx.i150.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %acquire_ctx.i150.i, align 4
  %call2.i151.i = tail call i32 @drm_modeset_lock(ptr noundef %ctm_state_lock.i149.i, ptr noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i151.i)
  %tobool.not.i152.i = icmp eq i32 %call2.i151.i, 0
  br i1 %tobool.not.i152.i, label %if.end.i155.i, label %if.then.i153.i

if.then.i153.i:                                   ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = inttoptr i32 %call2.i151.i to ptr
  br label %vc4_get_ctm_state.exit157.i

if.end.i155.i:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i154.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %ctm_manager50.i) #7
  br label %vc4_get_ctm_state.exit157.i

vc4_get_ctm_state.exit157.i:                      ; preds = %if.end.i155.i, %if.then.i153.i
  %retval.0.i156.i = phi ptr [ %90, %if.then.i153.i ], [ %call4.i154.i, %if.end.i155.i ]
  %cmp.i158.i = icmp ugt ptr %retval.0.i156.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i, label %vc4_get_ctm_state.exit157.i.vc4_ctm_atomic_check.exit_crit_edge, label %vc4_get_ctm_state.exit157.i.if.end56.i_crit_edge

vc4_get_ctm_state.exit157.i.if.end56.i_crit_edge: ; preds = %vc4_get_ctm_state.exit157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

vc4_get_ctm_state.exit157.i.vc4_ctm_atomic_check.exit_crit_edge: ; preds = %vc4_get_ctm_state.exit157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_ctm_atomic_check.exit

if.end56.i:                                       ; preds = %vc4_get_ctm_state.exit157.i.if.end56.i_crit_edge, %if.end47.i.if.end56.i_crit_edge
  %ctm_state.3.i = phi ptr [ %ctm_state.2173.i, %if.end47.i.if.end56.i_crit_edge ], [ %retval.0.i156.i, %vc4_get_ctm_state.exit157.i.if.end56.i_crit_edge ]
  %91 = ptrtoint ptr %ctm43.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctm43.i, align 4
  %tobool58.not.i = icmp eq ptr %92, null
  br i1 %tobool58.not.i, label %if.end56.i.for.inc88.i_crit_edge, label %if.then59.i

if.end56.i.for.inc88.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc88.i

if.then59.i:                                      ; preds = %if.end56.i
  %assigned_channel.i34 = getelementptr inbounds %struct.vc4_crtc_state, ptr %83, i32 0, i32 3
  %93 = ptrtoint ptr %assigned_channel.i34 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %assigned_channel.i34, align 4
  %add.i = add i32 %94, 1
  %fifo62.i = getelementptr inbounds %struct.vc4_ctm_state, ptr %ctm_state.3.i, i32 0, i32 2
  %95 = ptrtoint ptr %fifo62.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fifo62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool63.not.i = icmp eq i32 %96, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add.i)
  %cmp66.not.i = icmp eq i32 %96, %add.i
  %or.cond.i = select i1 %tobool63.not.i, i1 true, i1 %cmp66.not.i
  br i1 %or.cond.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end68.i:                                       ; preds = %if.then59.i
  %data.i35 = getelementptr inbounds %struct.drm_property_blob, ptr %92, i32 0, i32 5
  %97 = ptrtoint ptr %data.i35 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i35, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %98, align 8
  %and.i36 = and i64 %100, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i36)
  %cmp74.i = icmp ugt i64 %and.i36, 4294967296
  br i1 %cmp74.i, label %if.end68.i.cleanup_crit_edge, label %for.inc77.i

if.end68.i.cleanup_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.i:                                      ; preds = %if.end68.i
  %arrayidx73.1.i = getelementptr [9 x i64], ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx73.1.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx73.1.i, align 8
  %and.1.i = and i64 %102, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.1.i)
  %cmp74.1.i = icmp ugt i64 %and.1.i, 4294967296
  br i1 %cmp74.1.i, label %for.inc77.i.cleanup_crit_edge, label %for.inc77.1.i

for.inc77.i.cleanup_crit_edge:                    ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.1.i:                                    ; preds = %for.inc77.i
  %arrayidx73.2.i = getelementptr [9 x i64], ptr %98, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx73.2.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx73.2.i, align 8
  %and.2.i = and i64 %104, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.2.i)
  %cmp74.2.i = icmp ugt i64 %and.2.i, 4294967296
  br i1 %cmp74.2.i, label %for.inc77.1.i.cleanup_crit_edge, label %for.inc77.2.i

for.inc77.1.i.cleanup_crit_edge:                  ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.2.i:                                    ; preds = %for.inc77.1.i
  %arrayidx73.3.i = getelementptr [9 x i64], ptr %98, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx73.3.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx73.3.i, align 8
  %and.3.i = and i64 %106, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.3.i)
  %cmp74.3.i = icmp ugt i64 %and.3.i, 4294967296
  br i1 %cmp74.3.i, label %for.inc77.2.i.cleanup_crit_edge, label %for.inc77.3.i

for.inc77.2.i.cleanup_crit_edge:                  ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.3.i:                                    ; preds = %for.inc77.2.i
  %arrayidx73.4.i = getelementptr [9 x i64], ptr %98, i32 0, i32 4
  %107 = ptrtoint ptr %arrayidx73.4.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx73.4.i, align 8
  %and.4.i = and i64 %108, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.4.i)
  %cmp74.4.i = icmp ugt i64 %and.4.i, 4294967296
  br i1 %cmp74.4.i, label %for.inc77.3.i.cleanup_crit_edge, label %for.inc77.4.i

for.inc77.3.i.cleanup_crit_edge:                  ; preds = %for.inc77.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.4.i:                                    ; preds = %for.inc77.3.i
  %arrayidx73.5.i = getelementptr [9 x i64], ptr %98, i32 0, i32 5
  %109 = ptrtoint ptr %arrayidx73.5.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx73.5.i, align 8
  %and.5.i = and i64 %110, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.5.i)
  %cmp74.5.i = icmp ugt i64 %and.5.i, 4294967296
  br i1 %cmp74.5.i, label %for.inc77.4.i.cleanup_crit_edge, label %for.inc77.5.i

for.inc77.4.i.cleanup_crit_edge:                  ; preds = %for.inc77.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.5.i:                                    ; preds = %for.inc77.4.i
  %arrayidx73.6.i = getelementptr [9 x i64], ptr %98, i32 0, i32 6
  %111 = ptrtoint ptr %arrayidx73.6.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx73.6.i, align 8
  %and.6.i = and i64 %112, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.6.i)
  %cmp74.6.i = icmp ugt i64 %and.6.i, 4294967296
  br i1 %cmp74.6.i, label %for.inc77.5.i.cleanup_crit_edge, label %for.inc77.6.i

for.inc77.5.i.cleanup_crit_edge:                  ; preds = %for.inc77.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.6.i:                                    ; preds = %for.inc77.5.i
  %arrayidx73.7.i = getelementptr [9 x i64], ptr %98, i32 0, i32 7
  %113 = ptrtoint ptr %arrayidx73.7.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx73.7.i, align 8
  %and.7.i = and i64 %114, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.7.i)
  %cmp74.7.i = icmp ugt i64 %and.7.i, 4294967296
  br i1 %cmp74.7.i, label %for.inc77.6.i.cleanup_crit_edge, label %for.inc77.7.i

for.inc77.6.i.cleanup_crit_edge:                  ; preds = %for.inc77.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.7.i:                                    ; preds = %for.inc77.6.i
  %arrayidx73.8.i = getelementptr [9 x i64], ptr %98, i32 0, i32 8
  %115 = ptrtoint ptr %arrayidx73.8.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx73.8.i, align 8
  %and.8.i = and i64 %116, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.8.i)
  %cmp74.8.i = icmp ugt i64 %and.8.i, 4294967296
  br i1 %cmp74.8.i, label %for.inc77.7.i.cleanup_crit_edge, label %for.inc77.8.i

for.inc77.7.i.cleanup_crit_edge:                  ; preds = %for.inc77.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc77.8.i:                                    ; preds = %for.inc77.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %fifo62.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.i, ptr %fifo62.i, align 4
  %ctm81.i = getelementptr inbounds %struct.vc4_ctm_state, ptr %ctm_state.3.i, i32 0, i32 1
  %118 = ptrtoint ptr %ctm81.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %98, ptr %ctm81.i, align 4
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.inc77.8.i, %if.end56.i.for.inc88.i_crit_edge, %land.lhs.true31.i.for.inc88.i_crit_edge, %for.body26.i.for.inc88.i_crit_edge
  %ctm_state.4.i = phi ptr [ %ctm_state.2173.i, %land.lhs.true31.i.for.inc88.i_crit_edge ], [ %ctm_state.3.i, %for.inc77.8.i ], [ %ctm_state.3.i, %if.end56.i.for.inc88.i_crit_edge ], [ %ctm_state.2173.i, %for.body26.i.for.inc88.i_crit_edge ]
  %i.4.i = phi i32 [ %i.1174.i, %land.lhs.true31.i.for.inc88.i_crit_edge ], [ 9, %for.inc77.8.i ], [ %i.1174.i, %if.end56.i.for.inc88.i_crit_edge ], [ %i.1174.i, %for.body26.i.for.inc88.i_crit_edge ]
  %inc89.i = add nsw i32 %i.4.i, 1
  %119 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i, align 4
  %num_crtc24.i = getelementptr inbounds %struct.drm_device, ptr %120, i32 0, i32 30, i32 19
  %121 = ptrtoint ptr %num_crtc24.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_crtc24.i, align 4
  %cmp25.i = icmp slt i32 %inc89.i, %122
  br i1 %cmp25.i, label %for.inc88.i.for.body26.i_crit_edge, label %for.inc88.i.if.end3_crit_edge

for.inc88.i.if.end3_crit_edge:                    ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc88.i.for.body26.i_crit_edge:               ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i

vc4_ctm_atomic_check.exit:                        ; preds = %vc4_get_ctm_state.exit157.i.vc4_ctm_atomic_check.exit_crit_edge, %vc4_get_ctm_state.exit.i.vc4_ctm_atomic_check.exit_crit_edge
  %retval.5.i.in = phi ptr [ %retval.0.i156.i, %vc4_get_ctm_state.exit157.i.vc4_ctm_atomic_check.exit_crit_edge ], [ %retval.0.i.i, %vc4_get_ctm_state.exit.i.vc4_ctm_atomic_check.exit_crit_edge ]
  %retval.5.i = ptrtoint ptr %retval.5.i.in to i32
  %cmp = icmp slt ptr %retval.5.i.in, null
  br i1 %cmp, label %vc4_ctm_atomic_check.exit.cleanup_crit_edge, label %vc4_ctm_atomic_check.exit.if.end3_crit_edge

vc4_ctm_atomic_check.exit.if.end3_crit_edge:      ; preds = %vc4_ctm_atomic_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

vc4_ctm_atomic_check.exit.cleanup_crit_edge:      ; preds = %vc4_ctm_atomic_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %vc4_ctm_atomic_check.exit.if.end3_crit_edge, %for.inc88.i.if.end3_crit_edge, %for.cond21.preheader.i.if.end3_crit_edge
  %call4 = tail call i32 @drm_atomic_helper_check(ptr noundef %dev, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 4
  %load_tracker.i = getelementptr inbounds %struct.vc4_dev, ptr %124, i32 0, i32 37
  %call1.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %load_tracker.i) #7
  %cmp.i.i37 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i37, label %vc4_load_tracker_atomic_check.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7
  %125 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i, align 4
  %num_total_plane80.i = getelementptr inbounds %struct.drm_device, ptr %126, i32 0, i32 30, i32 17
  %127 = ptrtoint ptr %num_total_plane80.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_total_plane80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp81.i = icmp sgt i32 %128, 0
  br i1 %cmp81.i, label %for.body.lr.ph.i38, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i38:                               ; preds = %for.cond.preheader.i
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %membus_load19.i = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %call1.i, i32 0, i32 2
  %hvs_load20.i = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %call1.i, i32 0, i32 1
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.inc.i50.for.body.i42_crit_edge, %for.body.lr.ph.i38
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i38 ], [ %inc.i48, %for.inc.i50.for.body.i42_crit_edge ]
  %129 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %planes.i, align 4
  %arrayidx.i40 = getelementptr %struct.__drm_planes_state, ptr %130, i32 %i.082.i
  %131 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i40, align 4
  %tobool.not.i41 = icmp eq ptr %132, null
  br i1 %tobool.not.i41, label %for.body.i42.for.inc.i50_crit_edge, label %land.lhs.true.i45

for.body.i42.for.inc.i50_crit_edge:               ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i50

land.lhs.true.i45:                                ; preds = %for.body.i42
  %old_state.i43 = getelementptr %struct.__drm_planes_state, ptr %130, i32 %i.082.i, i32 2
  %133 = ptrtoint ptr %old_state.i43 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %old_state.i43, align 4
  %new_state.i44 = getelementptr %struct.__drm_planes_state, ptr %130, i32 %i.082.i, i32 3
  %135 = ptrtoint ptr %new_state.i44 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %new_state.i44, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %134, i32 0, i32 2
  %137 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fb.i, align 4
  %tobool14.not.i = icmp eq ptr %138, null
  br i1 %tobool14.not.i, label %land.lhs.true.i45.if.end22.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i45.if.end22.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i45
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %134, i32 0, i32 1
  %139 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %crtc.i, align 4
  %tobool16.not.i = icmp eq ptr %140, null
  br i1 %tobool16.not.i, label %land.lhs.true15.i.if.end22.i_crit_edge, label %if.then17.i46

land.lhs.true15.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then17.i46:                                    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  %membus_load.i = getelementptr inbounds %struct.vc4_plane_state, ptr %134, i32 0, i32 26
  %141 = ptrtoint ptr %membus_load.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %membus_load.i, align 8
  %143 = ptrtoint ptr %membus_load19.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %membus_load19.i, align 8
  %sub.i = sub i64 %144, %142
  store i64 %sub.i, ptr %membus_load19.i, align 8
  %hvs_load.i = getelementptr inbounds %struct.vc4_plane_state, ptr %134, i32 0, i32 25
  %145 = ptrtoint ptr %hvs_load.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %hvs_load.i, align 8
  %147 = ptrtoint ptr %hvs_load20.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %hvs_load20.i, align 8
  %sub21.i = sub i64 %148, %146
  store i64 %sub21.i, ptr %hvs_load20.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i46, %land.lhs.true15.i.if.end22.i_crit_edge, %land.lhs.true.i45.if.end22.i_crit_edge
  %fb23.i = getelementptr inbounds %struct.drm_plane_state, ptr %136, i32 0, i32 2
  %149 = ptrtoint ptr %fb23.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %fb23.i, align 4
  %tobool24.not.i = icmp eq ptr %150, null
  br i1 %tobool24.not.i, label %if.end22.i.for.inc.i50_crit_edge, label %land.lhs.true25.i

if.end22.i.for.inc.i50_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i50

land.lhs.true25.i:                                ; preds = %if.end22.i
  %crtc26.i = getelementptr inbounds %struct.drm_plane_state, ptr %136, i32 0, i32 1
  %151 = ptrtoint ptr %crtc26.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %crtc26.i, align 4
  %tobool27.not.i = icmp eq ptr %152, null
  br i1 %tobool27.not.i, label %land.lhs.true25.i.for.inc.i50_crit_edge, label %if.then28.i

land.lhs.true25.i.for.inc.i50_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i50

if.then28.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  %membus_load30.i = getelementptr inbounds %struct.vc4_plane_state, ptr %136, i32 0, i32 26
  %153 = ptrtoint ptr %membus_load30.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %membus_load30.i, align 8
  %155 = ptrtoint ptr %membus_load19.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %membus_load19.i, align 8
  %add.i47 = add i64 %156, %154
  store i64 %add.i47, ptr %membus_load19.i, align 8
  %hvs_load32.i = getelementptr inbounds %struct.vc4_plane_state, ptr %136, i32 0, i32 25
  %157 = ptrtoint ptr %hvs_load32.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %hvs_load32.i, align 8
  %159 = ptrtoint ptr %hvs_load20.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %hvs_load20.i, align 8
  %add34.i = add i64 %160, %158
  store i64 %add34.i, ptr %hvs_load20.i, align 8
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.then28.i, %land.lhs.true25.i.for.inc.i50_crit_edge, %if.end22.i.for.inc.i50_crit_edge, %for.body.i42.for.inc.i50_crit_edge
  %inc.i48 = add nuw nsw i32 %i.082.i, 1
  %161 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i.i, align 4
  %num_total_plane.i = getelementptr inbounds %struct.drm_device, ptr %162, i32 0, i32 30, i32 17
  %163 = ptrtoint ptr %num_total_plane.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_total_plane.i, align 4
  %cmp.i49 = icmp slt i32 %inc.i48, %164
  br i1 %cmp.i49, label %for.inc.i50.for.body.i42_crit_edge, label %for.inc.i50.for.end.i_crit_edge

for.inc.i50.for.end.i_crit_edge:                  ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i50.for.body.i42_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i42

for.end.i:                                        ; preds = %for.inc.i50.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %load_tracker_enabled.i = getelementptr inbounds %struct.vc4_dev, ptr %124, i32 0, i32 31
  %165 = ptrtoint ptr %load_tracker_enabled.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %load_tracker_enabled.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool37.not.i = icmp eq i8 %166, 0
  br i1 %tobool37.not.i, label %for.end.i.if.end11_crit_edge, label %if.end39.i

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end39.i:                                       ; preds = %for.end.i
  %membus_load40.i = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %call1.i, i32 0, i32 2
  %167 = ptrtoint ptr %membus_load40.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %membus_load40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1610612736, i64 %168)
  %cmp41.i = icmp ugt i64 %168, 1610612736
  br i1 %cmp41.i, label %if.end39.i.cleanup_crit_edge, label %if.end43.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.i:                                       ; preds = %if.end39.i
  %hvs_load44.i = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %call1.i, i32 0, i32 1
  %169 = ptrtoint ptr %hvs_load44.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %hvs_load44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 240000000, i64 %170)
  %cmp45.i51 = icmp ugt i64 %170, 240000000
  br i1 %cmp45.i51, label %if.end43.i.cleanup_crit_edge, label %if.end43.i.if.end11_crit_edge

if.end43.i.if.end11_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vc4_load_tracker_atomic_check.exit:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %call1.i to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end43.i.if.end11_crit_edge, %for.end.i.if.end11_crit_edge
  %172 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i.i, align 4
  %load_tracker.i53 = getelementptr inbounds %struct.vc4_dev, ptr %173, i32 0, i32 37
  %call1.i54 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %load_tracker.i53) #7
  %cmp.i.i55 = icmp ugt ptr %call1.i54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i55, label %if.then.i56, label %if.end.i59

if.then.i56:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %call1.i54 to i32
  br label %cleanup

if.end.i59:                                       ; preds = %if.end11
  %175 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i.i, align 4
  %hvs_channels.i.i57 = getelementptr inbounds %struct.vc4_dev, ptr %176, i32 0, i32 36
  %call1.i.i58 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %hvs_channels.i.i57) #7
  %cmp.i105.i = icmp ugt ptr %call1.i.i58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105.i, label %if.then7.i, label %for.cond.preheader.i60

for.cond.preheader.i60:                           ; preds = %if.end.i59
  %177 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i, align 4
  %num_crtc106.i = getelementptr inbounds %struct.drm_device, ptr %178, i32 0, i32 30, i32 19
  %179 = ptrtoint ptr %num_crtc106.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_crtc106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp107.not.i = icmp eq i32 %180, 0
  br i1 %cmp107.not.i, label %for.cond.preheader.i60.for.cond35.preheader.i_crit_edge, label %for.body.lr.ph.i62

for.cond.preheader.i60.for.cond35.preheader.i_crit_edge: ; preds = %for.cond.preheader.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond35.preheader.i

for.body.lr.ph.i62:                               ; preds = %for.cond.preheader.i60
  %crtcs.i61 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body.i66

if.then7.i:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %call1.i.i58 to i32
  br label %cleanup

for.cond35.preheader.i:                           ; preds = %for.inc.i75.for.cond35.preheader.i_crit_edge, %for.cond.preheader.i60.for.cond35.preheader.i_crit_edge
  %arrayidx39.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 0
  %182 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load.i63 = load i8, ptr %arrayidx39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i63)
  %tobool40.not.i = icmp sgt i8 %bf.load.i63, -1
  br i1 %tobool40.not.i, label %for.cond35.preheader.i.for.inc47.i_crit_edge, label %if.end42.i

for.cond35.preheader.i.for.inc47.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47.i

for.body.i66:                                     ; preds = %for.inc.i75.for.body.i66_crit_edge, %for.body.lr.ph.i62
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i62 ], [ %inc.i72, %for.inc.i75.for.body.i66_crit_edge ]
  %183 = ptrtoint ptr %crtcs.i61 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %crtcs.i61, align 4
  %arrayidx.i64 = getelementptr %struct.__drm_crtcs_state, ptr %184, i32 %i.0108.i
  %185 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i64, align 8
  %tobool.not.i65 = icmp eq ptr %186, null
  br i1 %tobool.not.i65, label %for.body.i66.for.inc.i75_crit_edge, label %land.lhs.true.i69

for.body.i66.for.inc.i75_crit_edge:               ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i75

land.lhs.true.i69:                                ; preds = %for.body.i66
  %old_state.i67 = getelementptr %struct.__drm_crtcs_state, ptr %184, i32 %i.0108.i, i32 2
  %187 = ptrtoint ptr %old_state.i67 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %old_state.i67, align 8
  %new_state.i68 = getelementptr %struct.__drm_crtcs_state, ptr %184, i32 %i.0108.i, i32 3
  %189 = ptrtoint ptr %new_state.i68 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %new_state.i68, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %188, i32 0, i32 2
  %191 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %active.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool19.not.i = icmp eq i8 %192, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i69.if.end23.i_crit_edge, label %if.then20.i

land.lhs.true.i69.if.end23.i_crit_edge:           ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel.i70 = getelementptr inbounds %struct.vc4_crtc_state, ptr %188, i32 0, i32 3
  %193 = ptrtoint ptr %assigned_channel.i70 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %assigned_channel.i70, align 4
  %fifo_load.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 %194, i32 1
  %195 = ptrtoint ptr %fifo_load.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %fifo_load.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %land.lhs.true.i69.if.end23.i_crit_edge
  %active24.i = getelementptr inbounds %struct.drm_crtc_state, ptr %190, i32 0, i32 2
  %196 = ptrtoint ptr %active24.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %active24.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool25.not.i = icmp eq i8 %197, 0
  br i1 %tobool25.not.i, label %if.end23.i.for.inc.i75_crit_edge, label %if.then26.i

if.end23.i.for.inc.i75_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i75

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel29.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %190, i32 0, i32 3
  %198 = ptrtoint ptr %assigned_channel29.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %assigned_channel29.i, align 4
  %hvs_load.i71 = getelementptr inbounds %struct.vc4_crtc_state, ptr %190, i32 0, i32 5
  %200 = ptrtoint ptr %hvs_load.i71 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %hvs_load.i71, align 8
  %fifo_load32.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 %199, i32 1
  %202 = ptrtoint ptr %fifo_load32.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %fifo_load32.i, align 4
  br label %for.inc.i75

for.inc.i75:                                      ; preds = %if.then26.i, %if.end23.i.for.inc.i75_crit_edge, %for.body.i66.for.inc.i75_crit_edge
  %inc.i72 = add nuw i32 %i.0108.i, 1
  %203 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev.i.i, align 4
  %num_crtc.i73 = getelementptr inbounds %struct.drm_device, ptr %204, i32 0, i32 30, i32 19
  %205 = ptrtoint ptr %num_crtc.i73 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %num_crtc.i73, align 4
  %cmp.i74 = icmp ult i32 %inc.i72, %206
  br i1 %cmp.i74, label %for.inc.i75.for.body.i66_crit_edge, label %for.inc.i75.for.cond35.preheader.i_crit_edge

for.inc.i75.for.cond35.preheader.i_crit_edge:     ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond35.preheader.i

for.inc.i75.for.body.i66_crit_edge:               ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66

if.end42.i:                                       ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %fifo_load46.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 0, i32 1
  %207 = ptrtoint ptr %fifo_load46.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %fifo_load46.i, align 4
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.end42.i, %for.cond35.preheader.i.for.inc47.i_crit_edge
  %num_outputs.1.i = phi i32 [ 1, %if.end42.i ], [ 0, %for.cond35.preheader.i.for.inc47.i_crit_edge ]
  %cob_rate.1.i = phi i32 [ %208, %if.end42.i ], [ 0, %for.cond35.preheader.i.for.inc47.i_crit_edge ]
  %arrayidx39.1.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 1
  %209 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load.1.i76 = load i8, ptr %arrayidx39.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1.i76)
  %tobool40.not.1.i = icmp sgt i8 %bf.load.1.i76, -1
  br i1 %tobool40.not.1.i, label %for.inc47.i.for.inc47.1.i_crit_edge, label %if.end42.1.i

for.inc47.i.for.inc47.1.i_crit_edge:              ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47.1.i

if.end42.1.i:                                     ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc43.1.i = add nuw nsw i32 %num_outputs.1.i, 1
  %fifo_load46.1.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 1, i32 1
  %210 = ptrtoint ptr %fifo_load46.1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fifo_load46.1.i, align 4
  %add.1.i = add i32 %211, %cob_rate.1.i
  br label %for.inc47.1.i

for.inc47.1.i:                                    ; preds = %if.end42.1.i, %for.inc47.i.for.inc47.1.i_crit_edge
  %num_outputs.1.1.i = phi i32 [ %inc43.1.i, %if.end42.1.i ], [ %num_outputs.1.i, %for.inc47.i.for.inc47.1.i_crit_edge ]
  %cob_rate.1.1.i = phi i32 [ %add.1.i, %if.end42.1.i ], [ %cob_rate.1.i, %for.inc47.i.for.inc47.1.i_crit_edge ]
  %arrayidx39.2.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 2
  %212 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %bf.load.2.i77 = load i8, ptr %arrayidx39.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2.i77)
  %tobool40.not.2.i = icmp sgt i8 %bf.load.2.i77, -1
  br i1 %tobool40.not.2.i, label %for.inc47.1.i.for.inc47.2.i_crit_edge, label %if.end42.2.i

for.inc47.1.i.for.inc47.2.i_crit_edge:            ; preds = %for.inc47.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47.2.i

if.end42.2.i:                                     ; preds = %for.inc47.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc43.2.i = add nuw nsw i32 %num_outputs.1.1.i, 1
  %fifo_load46.2.i = getelementptr %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 2, i32 2, i32 1
  %213 = ptrtoint ptr %fifo_load46.2.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %fifo_load46.2.i, align 4
  %add.2.i = add i32 %214, %cob_rate.1.1.i
  br label %for.inc47.2.i

for.inc47.2.i:                                    ; preds = %if.end42.2.i, %for.inc47.1.i.for.inc47.2.i_crit_edge
  %num_outputs.1.2.i = phi i32 [ %inc43.2.i, %if.end42.2.i ], [ %num_outputs.1.1.i, %for.inc47.1.i.for.inc47.2.i_crit_edge ]
  %cob_rate.1.2.i = phi i32 [ %add.2.i, %if.end42.2.i ], [ %cob_rate.1.1.i, %for.inc47.1.i.for.inc47.2.i_crit_edge ]
  %hvs_load50.i = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %call1.i54, i32 0, i32 1
  %215 = ptrtoint ptr %hvs_load50.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %hvs_load50.i, align 8
  %conv.i = trunc i64 %216 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_outputs.1.2.i)
  %cmp51.i = icmp ugt i32 %num_outputs.1.2.i, 1
  %pixel_rate.0.in.v.i = select i1 %cmp51.i, i32 40, i32 60
  %pixel_rate.0.in.i = mul i32 %pixel_rate.0.in.v.i, %conv.i
  %pixel_rate.0.i = udiv i32 %pixel_rate.0.in.i, 100
  %217 = tail call i32 @llvm.umax.i32(i32 %cob_rate.1.2.i, i32 %pixel_rate.0.i) #7
  %core_clock_rate.i = getelementptr inbounds %struct.vc4_hvs_state, ptr %call1.i.i58, i32 0, i32 1
  %218 = ptrtoint ptr %core_clock_rate.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %core_clock_rate.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc47.2.i, %if.then7.i, %if.then.i56, %vc4_load_tracker_atomic_check.exit, %if.end43.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %vc4_ctm_atomic_check.exit.cleanup_crit_edge, %for.inc77.7.i.cleanup_crit_edge, %for.inc77.6.i.cleanup_crit_edge, %for.inc77.5.i.cleanup_crit_edge, %for.inc77.4.i.cleanup_crit_edge, %for.inc77.3.i.cleanup_crit_edge, %for.inc77.2.i.cleanup_crit_edge, %for.inc77.1.i.cleanup_crit_edge, %for.inc77.i.cleanup_crit_edge, %if.end68.i.cleanup_crit_edge, %if.then67.i, %vc4_pv_muxing_atomic_check.exit, %if.end37.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %vc4_pv_muxing_atomic_check.exit ], [ %retval.5.i, %vc4_ctm_atomic_check.exit.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %171, %vc4_load_tracker_atomic_check.exit ], [ %174, %if.then.i56 ], [ %181, %if.then7.i ], [ 0, %for.inc47.2.i ], [ -22, %if.then67.i ], [ -28, %if.end39.i.cleanup_crit_edge ], [ -28, %if.end43.i.cleanup_crit_edge ], [ -22, %if.end68.i.cleanup_crit_edge ], [ -22, %for.inc77.i.cleanup_crit_edge ], [ -22, %for.inc77.1.i.cleanup_crit_edge ], [ -22, %for.inc77.2.i.cleanup_crit_edge ], [ -22, %for.inc77.3.i.cleanup_crit_edge ], [ -22, %for.inc77.4.i.cleanup_crit_edge ], [ -22, %for.inc77.5.i.cleanup_crit_edge ], [ -22, %for.inc77.6.i.cleanup_crit_edge ], [ -22, %for.inc77.7.i.cleanup_crit_edge ], [ -22, %if.end37.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_atomic_commit_tail(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hvs2 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hvs2, align 8
  %hvs_channels.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 36
  %call1.i = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %state, ptr noundef %hvs_channels.i) #7
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end25, !prof !53

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 351, i32 noundef 9, ptr noundef null) #7
  br label %cleanup133

if.end25:                                         ; preds = %entry
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %hvs_channels.i201 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 36
  %call1.i202 = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %state, ptr noundef %hvs_channels.i201) #7
  %cmp.i203 = icmp ugt ptr %call1.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end44, label %for.cond.preheader, !prof !53

for.cond.preheader:                               ; preds = %if.end25
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %num_crtc232 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 19
  %8 = ptrtoint ptr %num_crtc232 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp233 = icmp sgt i32 %9, 0
  br i1 %cmp233, label %for.body.lr.ph, label %for.cond.preheader.for.cond74.preheader_crit_edge

for.cond.preheader.for.cond74.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

do.end44:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #7
  br label %cleanup133

for.cond74.preheader:                             ; preds = %for.inc.for.cond74.preheader_crit_edge, %for.cond.preheader.for.cond74.preheader_crit_edge
  %dev93 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %arrayidx78 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool79.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool79.not, label %for.cond74.preheader.cleanup98_crit_edge, label %if.end81

for.cond74.preheader.cleanup98_crit_edge:         ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %i.0234
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %tobool62.not = icmp eq ptr %14, null
  br i1 %tobool62.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %i.0234, i32 3
  %15 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_state, align 4
  %commit = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %commit, align 4
  %tobool69.not = icmp eq ptr %18, null
  br i1 %tobool69.not, label %land.lhs.true.for.inc_crit_edge, label %if.end71

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end71:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %assigned_channel, align 4
  tail call void @vc4_hvs_mask_underrun(ptr noundef %1, i32 noundef %20) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end71, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0234, 1
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 19
  %23 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond74.preheader_crit_edge

for.inc.for.cond74.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end81:                                         ; preds = %for.cond74.preheader
  %pending_commit = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %pending_commit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pending_commit, align 4
  %tobool84.not = icmp eq ptr %26, null
  br i1 %tobool84.not, label %if.end81.cleanup98_crit_edge, label %if.end86

if.end81.cleanup98_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98

if.end86:                                         ; preds = %if.end81
  %call87 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end86.if.end94_crit_edge, label %do.end92

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.8) #10
  br label %if.end94

if.end94:                                         ; preds = %do.end92, %if.end86.if.end94_crit_edge
  %ref.i = getelementptr inbounds %struct.drm_crtc_commit, ptr %26, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.drm_crtc_commit_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !49

if.end5.i.i.i.i.i.drm_crtc_commit_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_crtc_commit_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #7
  br label %drm_crtc_commit_put.exit

if.then.i.i:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i) #7, !callees !51
  br label %drm_crtc_commit_put.exit

drm_crtc_commit_put.exit:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.drm_crtc_commit_put.exit_crit_edge
  %30 = ptrtoint ptr %pending_commit to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pending_commit, align 4
  br label %cleanup98

cleanup98:                                        ; preds = %drm_crtc_commit_put.exit, %if.end81.cleanup98_crit_edge, %for.cond74.preheader.cleanup98_crit_edge
  %arrayidx78.1 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.1 = load i8, ptr %arrayidx78.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool79.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool79.not.1, label %cleanup98.cleanup98.1_crit_edge, label %if.end81.1

cleanup98.cleanup98.1_crit_edge:                  ; preds = %cleanup98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98.1

if.end81.1:                                       ; preds = %cleanup98
  %pending_commit.1 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 1, i32 2
  %32 = ptrtoint ptr %pending_commit.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pending_commit.1, align 4
  %tobool84.not.1 = icmp eq ptr %33, null
  br i1 %tobool84.not.1, label %if.end81.1.cleanup98.1_crit_edge, label %if.end86.1

if.end81.1.cleanup98.1_crit_edge:                 ; preds = %if.end81.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98.1

if.end86.1:                                       ; preds = %if.end81.1
  %call87.1 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.1)
  %tobool88.not.1 = icmp eq i32 %call87.1, 0
  br i1 %tobool88.not.1, label %if.end86.1.if.end94.1_crit_edge, label %do.end92.1

if.end86.1.if.end94.1_crit_edge:                  ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.1

do.end92.1:                                       ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8) #10
  br label %if.end94.1

if.end94.1:                                       ; preds = %do.end92.1, %if.end86.1.if.end94.1_crit_edge
  %ref.i.1 = getelementptr inbounds %struct.drm_crtc_commit, ptr %33, i32 0, i32 1
  %call.i.i.i.i.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i.1, i32 1, i32 3, i32 1) #7
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.1, ptr %ref.i.1, i32 1, ptr elementtype(i32) %ref.i.1) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.1 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.1)
  %cmp.i.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.1, 1
  br i1 %cmp.i.i.i.i.i.1, label %if.then.i.i.1, label %if.end5.i.i.i.i.i.1

if.end5.i.i.i.i.i.1:                              ; preds = %if.end94.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.1)
  %.not.i.i.i.i.i.1 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.1, label %if.end5.i.i.i.i.i.1.drm_crtc_commit_put.exit.1_crit_edge, label %if.then10.i.i.i.i.i.1, !prof !49

if.end5.i.i.i.i.i.1.drm_crtc_commit_put.exit.1_crit_edge: ; preds = %if.end5.i.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_crtc_commit_put.exit.1

if.then10.i.i.i.i.i.1:                            ; preds = %if.end5.i.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.1, i32 noundef 3) #7
  br label %drm_crtc_commit_put.exit.1

if.then.i.i.1:                                    ; preds = %if.end94.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i.1) #7, !callees !51
  br label %drm_crtc_commit_put.exit.1

drm_crtc_commit_put.exit.1:                       ; preds = %if.then.i.i.1, %if.then10.i.i.i.i.i.1, %if.end5.i.i.i.i.i.1.drm_crtc_commit_put.exit.1_crit_edge
  %37 = ptrtoint ptr %pending_commit.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pending_commit.1, align 4
  br label %cleanup98.1

cleanup98.1:                                      ; preds = %drm_crtc_commit_put.exit.1, %if.end81.1.cleanup98.1_crit_edge, %cleanup98.cleanup98.1_crit_edge
  %arrayidx78.2 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.2 = load i8, ptr %arrayidx78.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool79.not.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %tobool79.not.2, label %cleanup98.1.cleanup98.2_crit_edge, label %if.end81.2

cleanup98.1.cleanup98.2_crit_edge:                ; preds = %cleanup98.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98.2

if.end81.2:                                       ; preds = %cleanup98.1
  %pending_commit.2 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 2, i32 2
  %39 = ptrtoint ptr %pending_commit.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pending_commit.2, align 4
  %tobool84.not.2 = icmp eq ptr %40, null
  br i1 %tobool84.not.2, label %if.end81.2.cleanup98.2_crit_edge, label %if.end86.2

if.end81.2.cleanup98.2_crit_edge:                 ; preds = %if.end81.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup98.2

if.end86.2:                                       ; preds = %if.end81.2
  %call87.2 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.2)
  %tobool88.not.2 = icmp eq i32 %call87.2, 0
  br i1 %tobool88.not.2, label %if.end86.2.if.end94.2_crit_edge, label %do.end92.2

if.end86.2.if.end94.2_crit_edge:                  ; preds = %if.end86.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.2

do.end92.2:                                       ; preds = %if.end86.2
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.8) #10
  br label %if.end94.2

if.end94.2:                                       ; preds = %do.end92.2, %if.end86.2.if.end94.2_crit_edge
  %ref.i.2 = getelementptr inbounds %struct.drm_crtc_commit, ptr %40, i32 0, i32 1
  %call.i.i.i.i.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.2, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i.2, i32 1, i32 3, i32 1) #7
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.2, ptr %ref.i.2, i32 1, ptr elementtype(i32) %ref.i.2) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.2 = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.2)
  %cmp.i.i.i.i.i.2 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.2, 1
  br i1 %cmp.i.i.i.i.i.2, label %if.then.i.i.2, label %if.end5.i.i.i.i.i.2

if.end5.i.i.i.i.i.2:                              ; preds = %if.end94.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.2)
  %.not.i.i.i.i.i.2 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.2, label %if.end5.i.i.i.i.i.2.drm_crtc_commit_put.exit.2_crit_edge, label %if.then10.i.i.i.i.i.2, !prof !49

if.end5.i.i.i.i.i.2.drm_crtc_commit_put.exit.2_crit_edge: ; preds = %if.end5.i.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_crtc_commit_put.exit.2

if.then10.i.i.i.i.i.2:                            ; preds = %if.end5.i.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.2, i32 noundef 3) #7
  br label %drm_crtc_commit_put.exit.2

if.then.i.i.2:                                    ; preds = %if.end94.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i.2) #7, !callees !51
  br label %drm_crtc_commit_put.exit.2

drm_crtc_commit_put.exit.2:                       ; preds = %if.then.i.i.2, %if.then10.i.i.i.i.i.2, %if.end5.i.i.i.i.i.2.drm_crtc_commit_put.exit.2_crit_edge
  %44 = ptrtoint ptr %pending_commit.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %pending_commit.2, align 4
  br label %cleanup98.2

cleanup98.2:                                      ; preds = %drm_crtc_commit_put.exit.2, %if.end81.2.cleanup98.2_crit_edge, %cleanup98.1.cleanup98.2_crit_edge
  %45 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hvs2, align 8
  %hvs5 = getelementptr inbounds %struct.vc4_hvs, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %hvs5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hvs5, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool106.not = icmp eq i8 %48, 0
  br i1 %tobool106.not, label %cleanup98.2.if.end111_crit_edge, label %if.then107

cleanup98.2.if.end111_crit_edge:                  ; preds = %cleanup98.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then107:                                       ; preds = %cleanup98.2
  call void @__sanitizer_cov_trace_pc() #9
  %core_clock_rate = getelementptr inbounds %struct.vc4_hvs_state, ptr %call1.i202, i32 0, i32 1
  %49 = ptrtoint ptr %core_clock_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %core_clock_rate, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 500000000)
  %core_clk = getelementptr inbounds %struct.vc4_hvs, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core_clk, align 4
  %call110 = tail call i32 @clk_set_min_rate(ptr noundef %53, i32 noundef %51) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %cleanup98.2.if.end111_crit_edge
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %state) #7
  %state1.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 35, i32 2
  %54 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state1.i, align 4
  %ctm2.i = getelementptr inbounds %struct.vc4_ctm_state, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %ctm2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctm2.i, align 4
  %fifo.i = getelementptr inbounds %struct.vc4_ctm_state, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fifo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %if.end111.do.body739.i_crit_edge, label %do.body.i

if.end111.do.body739.i_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body739.i

do.body.i:                                        ; preds = %if.end111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %57, align 8
  %62 = lshr i64 %61, 54
  %and1.i1.i = and i64 %61, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i1.i)
  %cmp.not.i2.i = icmp eq i64 %and1.i1.i, 0
  %63 = trunc i64 %62 to i16
  br i1 %cmp.not.i2.i, label %if.else.i7.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i3.i = or i16 %63, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit9.i

if.else.i7.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = and i16 %63, 512
  %shr.i5.i = lshr i64 %61, 23
  %65 = trunc i64 %shr.i5.i to i16
  %66 = and i16 %65, 511
  %conv8.i6.i = or i16 %66, %64
  br label %vc4_ctm_s31_32_to_s0_9.exit9.i

vc4_ctm_s31_32_to_s0_9.exit9.i:                   ; preds = %if.else.i7.i, %if.then.i4.i
  %r.0.i8.i = phi i16 [ %or.i3.i, %if.then.i4.i ], [ %conv8.i6.i, %if.else.i7.i ]
  %conv70.i = zext i16 %r.0.i8.i to i32
  %shl71.i = shl i32 %conv70.i, 20
  %and72.i = and i32 %shl71.i, 1072693248
  %arrayidx91.i = getelementptr [9 x i64], ptr %57, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx91.i, align 8
  %69 = lshr i64 %68, 54
  %and1.i10.i = and i64 %68, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i10.i)
  %cmp.not.i11.i = icmp eq i64 %and1.i10.i, 0
  %70 = trunc i64 %69 to i16
  br i1 %cmp.not.i11.i, label %if.else.i16.i, label %if.then.i13.i

if.then.i13.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i12.i = or i16 %70, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit18.i

if.else.i16.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = and i16 %70, 512
  %shr.i14.i = lshr i64 %68, 23
  %72 = trunc i64 %shr.i14.i to i16
  %73 = and i16 %72, 511
  %conv8.i15.i = or i16 %73, %71
  br label %vc4_ctm_s31_32_to_s0_9.exit18.i

vc4_ctm_s31_32_to_s0_9.exit18.i:                  ; preds = %if.else.i16.i, %if.then.i13.i
  %r.0.i17.i = phi i16 [ %or.i12.i, %if.then.i13.i ], [ %conv8.i15.i, %if.else.i16.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i17.i)
  %tobool96.not.i = icmp ult i16 %r.0.i17.i, 1024
  br i1 %tobool96.not.i, label %vc4_ctm_s31_32_to_s0_9.exit18.i.if.end123.i_crit_edge, label %do.end117.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit18.i.if.end123.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

do.end117.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #7
  br label %if.end123.i

if.end123.i:                                      ; preds = %do.end117.i, %vc4_ctm_s31_32_to_s0_9.exit18.i.if.end123.i_crit_edge
  %74 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx91.i, align 8
  %76 = lshr i64 %75, 54
  %and1.i19.i = and i64 %75, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i19.i)
  %cmp.not.i20.i = icmp eq i64 %and1.i19.i, 0
  %77 = trunc i64 %76 to i16
  br i1 %cmp.not.i20.i, label %if.else.i25.i, label %if.then.i22.i

if.then.i22.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i21.i = or i16 %77, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit27.i

if.else.i25.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = and i16 %77, 512
  %shr.i23.i = lshr i64 %75, 23
  %79 = trunc i64 %shr.i23.i to i16
  %80 = and i16 %79, 511
  %conv8.i24.i = or i16 %80, %78
  br label %vc4_ctm_s31_32_to_s0_9.exit27.i

vc4_ctm_s31_32_to_s0_9.exit27.i:                  ; preds = %if.else.i25.i, %if.then.i22.i
  %r.0.i26.i = phi i16 [ %or.i21.i, %if.then.i22.i ], [ %conv8.i24.i, %if.else.i25.i ]
  %conv151.i = zext i16 %r.0.i26.i to i32
  %shl152.i = shl nuw nsw i32 %conv151.i, 10
  %and153.i = and i32 %shl152.i, 1047552
  %or.i = or i32 %and153.i, %and72.i
  %arrayidx172.i = getelementptr [9 x i64], ptr %57, i32 0, i32 6
  %81 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx172.i, align 8
  %83 = lshr i64 %82, 54
  %and1.i28.i = and i64 %82, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i28.i)
  %cmp.not.i29.i = icmp eq i64 %and1.i28.i, 0
  %84 = trunc i64 %83 to i16
  br i1 %cmp.not.i29.i, label %if.else.i34.i, label %if.then.i31.i

if.then.i31.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit27.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i30.i = or i16 %84, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit36.i

if.else.i34.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit27.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = and i16 %84, 512
  %shr.i32.i = lshr i64 %82, 23
  %86 = trunc i64 %shr.i32.i to i16
  %87 = and i16 %86, 511
  %conv8.i33.i = or i16 %87, %85
  br label %vc4_ctm_s31_32_to_s0_9.exit36.i

vc4_ctm_s31_32_to_s0_9.exit36.i:                  ; preds = %if.else.i34.i, %if.then.i31.i
  %r.0.i35.i = phi i16 [ %or.i30.i, %if.then.i31.i ], [ %conv8.i33.i, %if.else.i34.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i35.i)
  %tobool177.not.i = icmp ult i16 %r.0.i35.i, 1024
  br i1 %tobool177.not.i, label %vc4_ctm_s31_32_to_s0_9.exit36.i.if.end204.i_crit_edge, label %do.end198.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit36.i.if.end204.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204.i

do.end198.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %if.end204.i

if.end204.i:                                      ; preds = %do.end198.i, %vc4_ctm_s31_32_to_s0_9.exit36.i.if.end204.i_crit_edge
  %88 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx172.i, align 8
  %90 = lshr i64 %89, 54
  %and1.i37.i = and i64 %89, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i37.i)
  %cmp.not.i38.i = icmp eq i64 %and1.i37.i, 0
  %91 = trunc i64 %90 to i16
  br i1 %cmp.not.i38.i, label %if.else.i43.i, label %if.then.i40.i

if.then.i40.i:                                    ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i39.i = or i16 %91, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit45.i

if.else.i43.i:                                    ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = and i16 %91, 512
  %shr.i41.i = lshr i64 %89, 23
  %93 = trunc i64 %shr.i41.i to i16
  %94 = and i16 %93, 511
  %conv8.i42.i = or i16 %94, %92
  br label %vc4_ctm_s31_32_to_s0_9.exit45.i

vc4_ctm_s31_32_to_s0_9.exit45.i:                  ; preds = %if.else.i43.i, %if.then.i40.i
  %r.0.i44.i = phi i16 [ %or.i39.i, %if.then.i40.i ], [ %conv8.i42.i, %if.else.i43.i ]
  %95 = and i16 %r.0.i44.i, 1023
  %and234.i = zext i16 %95 to i32
  %or235.i = or i32 %or.i, %and234.i
  %96 = tail call i32 @llvm.bswap.i32(i32 %or235.i) #7
  %97 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hvs2, align 8
  %regs.i = getelementptr inbounds %struct.vc4_hvs, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %100, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %96) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %arrayidx257.i = getelementptr [9 x i64], ptr %57, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx257.i, align 8
  %103 = lshr i64 %102, 54
  %and1.i55.i = and i64 %102, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i55.i)
  %cmp.not.i56.i = icmp eq i64 %and1.i55.i, 0
  %104 = trunc i64 %103 to i16
  br i1 %cmp.not.i56.i, label %if.else.i61.i, label %if.then.i58.i

if.then.i58.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i57.i = or i16 %104, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit63.i

if.else.i61.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = and i16 %104, 512
  %shr.i59.i = lshr i64 %102, 23
  %106 = trunc i64 %shr.i59.i to i16
  %107 = and i16 %106, 511
  %conv8.i60.i = or i16 %107, %105
  br label %vc4_ctm_s31_32_to_s0_9.exit63.i

vc4_ctm_s31_32_to_s0_9.exit63.i:                  ; preds = %if.else.i61.i, %if.then.i58.i
  %r.0.i62.i = phi i16 [ %or.i57.i, %if.then.i58.i ], [ %conv8.i60.i, %if.else.i61.i ]
  %conv317.i = zext i16 %r.0.i62.i to i32
  %shl318.i = shl i32 %conv317.i, 20
  %and319.i = and i32 %shl318.i, 1072693248
  %arrayidx338.i = getelementptr [9 x i64], ptr %57, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx338.i, align 8
  %110 = lshr i64 %109, 54
  %and1.i64.i = and i64 %109, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i64.i)
  %cmp.not.i65.i = icmp eq i64 %and1.i64.i, 0
  %111 = trunc i64 %110 to i16
  br i1 %cmp.not.i65.i, label %if.else.i70.i, label %if.then.i67.i

if.then.i67.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i66.i = or i16 %111, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit72.i

if.else.i70.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = and i16 %111, 512
  %shr.i68.i = lshr i64 %109, 23
  %113 = trunc i64 %shr.i68.i to i16
  %114 = and i16 %113, 511
  %conv8.i69.i = or i16 %114, %112
  br label %vc4_ctm_s31_32_to_s0_9.exit72.i

vc4_ctm_s31_32_to_s0_9.exit72.i:                  ; preds = %if.else.i70.i, %if.then.i67.i
  %r.0.i71.i = phi i16 [ %or.i66.i, %if.then.i67.i ], [ %conv8.i69.i, %if.else.i70.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i71.i)
  %tobool343.not.i = icmp ult i16 %r.0.i71.i, 1024
  br i1 %tobool343.not.i, label %vc4_ctm_s31_32_to_s0_9.exit72.i.if.end370.i_crit_edge, label %do.end364.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit72.i.if.end370.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end370.i

do.end364.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit72.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %if.end370.i

if.end370.i:                                      ; preds = %do.end364.i, %vc4_ctm_s31_32_to_s0_9.exit72.i.if.end370.i_crit_edge
  %115 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx338.i, align 8
  %117 = lshr i64 %116, 54
  %and1.i73.i = and i64 %116, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i73.i)
  %cmp.not.i74.i = icmp eq i64 %and1.i73.i, 0
  %118 = trunc i64 %117 to i16
  br i1 %cmp.not.i74.i, label %if.else.i79.i, label %if.then.i76.i

if.then.i76.i:                                    ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i75.i = or i16 %118, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit81.i

if.else.i79.i:                                    ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = and i16 %118, 512
  %shr.i77.i = lshr i64 %116, 23
  %120 = trunc i64 %shr.i77.i to i16
  %121 = and i16 %120, 511
  %conv8.i78.i = or i16 %121, %119
  br label %vc4_ctm_s31_32_to_s0_9.exit81.i

vc4_ctm_s31_32_to_s0_9.exit81.i:                  ; preds = %if.else.i79.i, %if.then.i76.i
  %r.0.i80.i = phi i16 [ %or.i75.i, %if.then.i76.i ], [ %conv8.i78.i, %if.else.i79.i ]
  %conv398.i = zext i16 %r.0.i80.i to i32
  %shl399.i = shl nuw nsw i32 %conv398.i, 10
  %and400.i = and i32 %shl399.i, 1047552
  %or401.i = or i32 %and400.i, %and319.i
  %arrayidx420.i = getelementptr [9 x i64], ptr %57, i32 0, i32 7
  %122 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx420.i, align 8
  %124 = lshr i64 %123, 54
  %and1.i82.i = and i64 %123, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i82.i)
  %cmp.not.i83.i = icmp eq i64 %and1.i82.i, 0
  %125 = trunc i64 %124 to i16
  br i1 %cmp.not.i83.i, label %if.else.i88.i, label %if.then.i85.i

if.then.i85.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i84.i = or i16 %125, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit90.i

if.else.i88.i:                                    ; preds = %vc4_ctm_s31_32_to_s0_9.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = and i16 %125, 512
  %shr.i86.i = lshr i64 %123, 23
  %127 = trunc i64 %shr.i86.i to i16
  %128 = and i16 %127, 511
  %conv8.i87.i = or i16 %128, %126
  br label %vc4_ctm_s31_32_to_s0_9.exit90.i

vc4_ctm_s31_32_to_s0_9.exit90.i:                  ; preds = %if.else.i88.i, %if.then.i85.i
  %r.0.i89.i = phi i16 [ %or.i84.i, %if.then.i85.i ], [ %conv8.i87.i, %if.else.i88.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i89.i)
  %tobool425.not.i = icmp ult i16 %r.0.i89.i, 1024
  br i1 %tobool425.not.i, label %vc4_ctm_s31_32_to_s0_9.exit90.i.if.end452.i_crit_edge, label %do.end446.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit90.i.if.end452.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end452.i

do.end446.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit90.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 177, i32 noundef 9, ptr noundef null) #7
  br label %if.end452.i

if.end452.i:                                      ; preds = %do.end446.i, %vc4_ctm_s31_32_to_s0_9.exit90.i.if.end452.i_crit_edge
  %129 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx420.i, align 8
  %131 = lshr i64 %130, 54
  %and1.i91.i = and i64 %130, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i91.i)
  %cmp.not.i92.i = icmp eq i64 %and1.i91.i, 0
  %132 = trunc i64 %131 to i16
  br i1 %cmp.not.i92.i, label %if.else.i97.i, label %if.then.i94.i

if.then.i94.i:                                    ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i93.i = or i16 %132, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit99.i

if.else.i97.i:                                    ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = and i16 %132, 512
  %shr.i95.i = lshr i64 %130, 23
  %134 = trunc i64 %shr.i95.i to i16
  %135 = and i16 %134, 511
  %conv8.i96.i = or i16 %135, %133
  br label %vc4_ctm_s31_32_to_s0_9.exit99.i

vc4_ctm_s31_32_to_s0_9.exit99.i:                  ; preds = %if.else.i97.i, %if.then.i94.i
  %r.0.i98.i = phi i16 [ %or.i93.i, %if.then.i94.i ], [ %conv8.i96.i, %if.else.i97.i ]
  %136 = and i16 %r.0.i98.i, 1023
  %and482.i = zext i16 %136 to i32
  %or483.i = or i32 %or401.i, %and482.i
  %137 = tail call i32 @llvm.bswap.i32(i32 %or483.i) #7
  %138 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hvs2, align 8
  %regs485.i = getelementptr inbounds %struct.vc4_hvs, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %regs485.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs485.i, align 4
  %add.ptr486.i = getelementptr i8, ptr %141, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr486.i, i32 %137) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %arrayidx508.i = getelementptr [9 x i64], ptr %57, i32 0, i32 2
  %142 = ptrtoint ptr %arrayidx508.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx508.i, align 8
  %144 = lshr i64 %143, 54
  %and1.i109.i = and i64 %143, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i109.i)
  %cmp.not.i110.i = icmp eq i64 %and1.i109.i, 0
  %145 = trunc i64 %144 to i16
  br i1 %cmp.not.i110.i, label %if.else.i115.i, label %if.then.i112.i

if.then.i112.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit99.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i111.i = or i16 %145, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit117.i

if.else.i115.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit99.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = and i16 %145, 512
  %shr.i113.i = lshr i64 %143, 23
  %147 = trunc i64 %shr.i113.i to i16
  %148 = and i16 %147, 511
  %conv8.i114.i = or i16 %148, %146
  br label %vc4_ctm_s31_32_to_s0_9.exit117.i

vc4_ctm_s31_32_to_s0_9.exit117.i:                 ; preds = %if.else.i115.i, %if.then.i112.i
  %r.0.i116.i = phi i16 [ %or.i111.i, %if.then.i112.i ], [ %conv8.i114.i, %if.else.i115.i ]
  %conv568.i = zext i16 %r.0.i116.i to i32
  %shl569.i = shl i32 %conv568.i, 20
  %and570.i = and i32 %shl569.i, 1072693248
  %arrayidx589.i = getelementptr [9 x i64], ptr %57, i32 0, i32 5
  %149 = ptrtoint ptr %arrayidx589.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx589.i, align 8
  %151 = lshr i64 %150, 54
  %and1.i118.i = and i64 %150, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i118.i)
  %cmp.not.i119.i = icmp eq i64 %and1.i118.i, 0
  %152 = trunc i64 %151 to i16
  br i1 %cmp.not.i119.i, label %if.else.i124.i, label %if.then.i121.i

if.then.i121.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i120.i = or i16 %152, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit126.i

if.else.i124.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = and i16 %152, 512
  %shr.i122.i = lshr i64 %150, 23
  %154 = trunc i64 %shr.i122.i to i16
  %155 = and i16 %154, 511
  %conv8.i123.i = or i16 %155, %153
  br label %vc4_ctm_s31_32_to_s0_9.exit126.i

vc4_ctm_s31_32_to_s0_9.exit126.i:                 ; preds = %if.else.i124.i, %if.then.i121.i
  %r.0.i125.i = phi i16 [ %or.i120.i, %if.then.i121.i ], [ %conv8.i123.i, %if.else.i124.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i125.i)
  %tobool594.not.i = icmp ult i16 %r.0.i125.i, 1024
  br i1 %tobool594.not.i, label %vc4_ctm_s31_32_to_s0_9.exit126.i.if.end621.i_crit_edge, label %do.end615.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit126.i.if.end621.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end621.i

do.end615.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit126.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 182, i32 noundef 9, ptr noundef null) #7
  br label %if.end621.i

if.end621.i:                                      ; preds = %do.end615.i, %vc4_ctm_s31_32_to_s0_9.exit126.i.if.end621.i_crit_edge
  %156 = ptrtoint ptr %arrayidx589.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx589.i, align 8
  %158 = lshr i64 %157, 54
  %and1.i127.i = and i64 %157, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i127.i)
  %cmp.not.i128.i = icmp eq i64 %and1.i127.i, 0
  %159 = trunc i64 %158 to i16
  br i1 %cmp.not.i128.i, label %if.else.i133.i, label %if.then.i130.i

if.then.i130.i:                                   ; preds = %if.end621.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i129.i = or i16 %159, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit135.i

if.else.i133.i:                                   ; preds = %if.end621.i
  call void @__sanitizer_cov_trace_pc() #9
  %160 = and i16 %159, 512
  %shr.i131.i = lshr i64 %157, 23
  %161 = trunc i64 %shr.i131.i to i16
  %162 = and i16 %161, 511
  %conv8.i132.i = or i16 %162, %160
  br label %vc4_ctm_s31_32_to_s0_9.exit135.i

vc4_ctm_s31_32_to_s0_9.exit135.i:                 ; preds = %if.else.i133.i, %if.then.i130.i
  %r.0.i134.i = phi i16 [ %or.i129.i, %if.then.i130.i ], [ %conv8.i132.i, %if.else.i133.i ]
  %conv649.i = zext i16 %r.0.i134.i to i32
  %shl650.i = shl nuw nsw i32 %conv649.i, 10
  %and651.i = and i32 %shl650.i, 1047552
  %or652.i = or i32 %and651.i, %and570.i
  %arrayidx671.i = getelementptr [9 x i64], ptr %57, i32 0, i32 8
  %163 = ptrtoint ptr %arrayidx671.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx671.i, align 8
  %165 = lshr i64 %164, 54
  %and1.i136.i = and i64 %164, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i136.i)
  %cmp.not.i137.i = icmp eq i64 %and1.i136.i, 0
  %166 = trunc i64 %165 to i16
  br i1 %cmp.not.i137.i, label %if.else.i142.i, label %if.then.i139.i

if.then.i139.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i138.i = or i16 %166, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit144.i

if.else.i142.i:                                   ; preds = %vc4_ctm_s31_32_to_s0_9.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = and i16 %166, 512
  %shr.i140.i = lshr i64 %164, 23
  %168 = trunc i64 %shr.i140.i to i16
  %169 = and i16 %168, 511
  %conv8.i141.i = or i16 %169, %167
  br label %vc4_ctm_s31_32_to_s0_9.exit144.i

vc4_ctm_s31_32_to_s0_9.exit144.i:                 ; preds = %if.else.i142.i, %if.then.i139.i
  %r.0.i143.i = phi i16 [ %or.i138.i, %if.then.i139.i ], [ %conv8.i141.i, %if.else.i142.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %r.0.i143.i)
  %tobool676.not.i = icmp ult i16 %r.0.i143.i, 1024
  br i1 %tobool676.not.i, label %vc4_ctm_s31_32_to_s0_9.exit144.i.if.end703.i_crit_edge, label %do.end697.i, !prof !49

vc4_ctm_s31_32_to_s0_9.exit144.i.if.end703.i_crit_edge: ; preds = %vc4_ctm_s31_32_to_s0_9.exit144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end703.i

do.end697.i:                                      ; preds = %vc4_ctm_s31_32_to_s0_9.exit144.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 184, i32 noundef 9, ptr noundef null) #7
  br label %if.end703.i

if.end703.i:                                      ; preds = %do.end697.i, %vc4_ctm_s31_32_to_s0_9.exit144.i.if.end703.i_crit_edge
  %170 = ptrtoint ptr %arrayidx671.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx671.i, align 8
  %172 = lshr i64 %171, 54
  %and1.i145.i = and i64 %171, 9223372032559808512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i145.i)
  %cmp.not.i146.i = icmp eq i64 %and1.i145.i, 0
  %173 = trunc i64 %172 to i16
  br i1 %cmp.not.i146.i, label %if.else.i151.i, label %if.then.i148.i

if.then.i148.i:                                   ; preds = %if.end703.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i147.i = or i16 %173, 511
  br label %vc4_ctm_s31_32_to_s0_9.exit153.i

if.else.i151.i:                                   ; preds = %if.end703.i
  call void @__sanitizer_cov_trace_pc() #9
  %174 = and i16 %173, 512
  %shr.i149.i = lshr i64 %171, 23
  %175 = trunc i64 %shr.i149.i to i16
  %176 = and i16 %175, 511
  %conv8.i150.i = or i16 %176, %174
  br label %vc4_ctm_s31_32_to_s0_9.exit153.i

vc4_ctm_s31_32_to_s0_9.exit153.i:                 ; preds = %if.else.i151.i, %if.then.i148.i
  %r.0.i152.i = phi i16 [ %or.i147.i, %if.then.i148.i ], [ %conv8.i150.i, %if.else.i151.i ]
  %177 = and i16 %r.0.i152.i, 1023
  %and733.i = zext i16 %177 to i32
  %or734.i = or i32 %or652.i, %and733.i
  %178 = tail call i32 @llvm.bswap.i32(i32 %or734.i) #7
  %179 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hvs2, align 8
  %regs736.i = getelementptr inbounds %struct.vc4_hvs, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %regs736.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs736.i, align 4
  %add.ptr737.i = getelementptr i8, ptr %182, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr737.i, i32 %178) #7, !srcloc !55
  br label %do.body739.i

do.body739.i:                                     ; preds = %vc4_ctm_s31_32_to_s0_9.exit153.i, %if.end111.do.body739.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %183 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %fifo.i, align 4
  %185 = and i32 %184, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool762.not.i = icmp eq i32 %185, 0
  br i1 %tobool762.not.i, label %do.body739.i.vc4_ctm_commit.exit_crit_edge, label %do.end783.i, !prof !49

do.body739.i.vc4_ctm_commit.exit_crit_edge:       ; preds = %do.body739.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_ctm_commit.exit

do.end783.i:                                      ; preds = %do.body739.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 188, i32 noundef 9, ptr noundef null) #7
  br label %vc4_ctm_commit.exit

vc4_ctm_commit.exit:                              ; preds = %do.end783.i, %do.body739.i.vc4_ctm_commit.exit_crit_edge
  %186 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fifo.i, align 4
  %and822.i = and i32 %187, 3
  %188 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hvs2, align 8
  %regs824.i = getelementptr inbounds %struct.vc4_hvs, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %regs824.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs824.i, align 4
  %add.ptr825.i = getelementptr i8, ptr %191, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr825.i, i32 %and822.i) #7, !srcloc !55
  %192 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hvs2, align 8
  %hvs5113 = getelementptr inbounds %struct.vc4_hvs, ptr %193, i32 0, i32 9
  %194 = ptrtoint ptr %hvs5113 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %hvs5113, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool114.not = icmp eq i8 %195, 0
  %196 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev1, align 4
  %num_crtc164.i = getelementptr inbounds %struct.drm_device, ptr %197, i32 0, i32 30, i32 19
  %198 = ptrtoint ptr %num_crtc164.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_crtc164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp165.not.i = icmp eq i32 %199, 0
  br i1 %tobool114.not, label %if.else116, label %if.then115

if.then115:                                       ; preds = %vc4_ctm_commit.exit
  br i1 %cmp165.not.i, label %if.then115.if.end117_crit_edge, label %for.body.lr.ph.i

if.then115.if.end117_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

for.body.lr.ph.i:                                 ; preds = %if.then115
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0467.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %200 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %crtcs.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %201, i32 %i.0467.i
  %202 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i205 = icmp eq ptr %203, null
  br i1 %tobool.not.i205, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %201, i32 %i.0467.i, i32 3
  %204 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %new_state.i, align 4
  %update_muxing.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %205, i32 0, i32 6
  %206 = ptrtoint ptr %update_muxing.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %update_muxing.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool7.not.i = icmp eq i8 %207, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %data.i = getelementptr inbounds %struct.vc4_crtc, ptr %203, i32 0, i32 2
  %208 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i, align 4
  %hvs_output.i = getelementptr inbounds %struct.vc4_crtc_data, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %hvs_output.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %hvs_output.i, align 4
  %212 = zext i32 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values)
  switch i32 %211, label %if.end.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb90.i
    i32 4, label %sw.bb197.i
    i32 5, label %sw.bb304.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %205, i32 0, i32 3
  %213 = ptrtoint ptr %assigned_channel.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %assigned_channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %214)
  %cmp9.not.i = icmp eq i32 %214, 2
  %215 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hvs2, align 8
  %regs.i206 = getelementptr inbounds %struct.vc4_hvs, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %regs.i206 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs.i206, align 4
  %add.ptr.i207 = getelementptr i8, ptr %218, i32 12
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %220 = and i32 %219, -129
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #7
  %shl.i = select i1 %cmp9.not.i, i32 0, i32 -2147483648
  %or.i208 = or i32 %221, %shl.i
  %222 = tail call i32 @llvm.bswap.i32(i32 %or.i208) #7
  %223 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hvs2, align 8
  %regs88.i = getelementptr inbounds %struct.vc4_hvs, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %regs88.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs88.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %226, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 %222) #7, !srcloc !55
  br label %for.inc.i

sw.bb90.i:                                        ; preds = %if.end.i
  %assigned_channel91.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %205, i32 0, i32 3
  %227 = ptrtoint ptr %assigned_channel91.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %assigned_channel91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %228)
  %cmp92.i = icmp eq i32 %228, -1
  %229 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hvs2, align 8
  %regs102.i = getelementptr inbounds %struct.vc4_hvs, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %regs102.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs102.i, align 4
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %234 = and i32 %233, -3073
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #7
  %236 = and i32 %228, 255
  %conv128.i = select i1 %cmp92.i, i32 3, i32 %236
  %shl129.i = shl nuw nsw i32 %conv128.i, 18
  %237 = and i32 %conv128.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool131.not.i = icmp eq i32 %237, 0
  br i1 %tobool131.not.i, label %sw.bb90.i.do.end188.i_crit_edge, label %do.end152.i, !prof !49

sw.bb90.i.do.end188.i_crit_edge:                  ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end188.i

do.end152.i:                                      ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 304, i32 noundef 9, ptr noundef null) #7
  br label %do.end188.i

do.end188.i:                                      ; preds = %do.end152.i, %sw.bb90.i.do.end188.i_crit_edge
  %and192.i = and i32 %shl129.i, 786432
  %or193.i = or i32 %235, %and192.i
  %238 = tail call i32 @llvm.bswap.i32(i32 %or193.i) #7
  %239 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hvs2, align 8
  %regs195.i = getelementptr inbounds %struct.vc4_hvs, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %regs195.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs195.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %238) #7, !srcloc !55
  br label %for.inc.i

sw.bb197.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel198.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %205, i32 0, i32 3
  %243 = ptrtoint ptr %assigned_channel198.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %assigned_channel198.i, align 4
  %245 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hvs2, align 8
  %regs209.i = getelementptr inbounds %struct.vc4_hvs, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %regs209.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs209.i, align 4
  %add.ptr210.i = getelementptr i8, ptr %248, i32 24
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210.i) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %shl236.i = shl i32 %244, 30
  %250 = and i32 %249, -193
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #7
  %or300.i = or i32 %251, %shl236.i
  %252 = tail call i32 @llvm.bswap.i32(i32 %or300.i) #7
  %253 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hvs2, align 8
  %regs302.i = getelementptr inbounds %struct.vc4_hvs, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %regs302.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs302.i, align 4
  %add.ptr303.i = getelementptr i8, ptr %256, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303.i, i32 %252) #7, !srcloc !55
  br label %for.inc.i

sw.bb304.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %assigned_channel305.i = getelementptr inbounds %struct.vc4_crtc_state, ptr %205, i32 0, i32 3
  %257 = ptrtoint ptr %assigned_channel305.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %assigned_channel305.i, align 4
  %259 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hvs2, align 8
  %regs316.i = getelementptr inbounds %struct.vc4_hvs, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %regs316.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs316.i, align 4
  %add.ptr317.i = getelementptr i8, ptr %262, i32 20
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr317.i) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %shl343.i = shl i32 %258, 30
  %264 = and i32 %263, -193
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #7
  %or407.i = or i32 %265, %shl343.i
  %266 = tail call i32 @llvm.bswap.i32(i32 %or407.i) #7
  %267 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hvs2, align 8
  %regs409.i = getelementptr inbounds %struct.vc4_hvs, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %regs409.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs409.i, align 4
  %add.ptr410.i = getelementptr i8, ptr %270, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr410.i, i32 %266) #7, !srcloc !55
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb304.i, %sw.bb197.i, %do.end188.i, %sw.bb.i, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0467.i, 1
  %271 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev1, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %272, i32 0, i32 30, i32 19
  %273 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %num_crtc.i, align 4
  %cmp.i211 = icmp ult i32 %inc.i, %274
  br i1 %cmp.i211, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end117_crit_edge

for.inc.i.if.end117_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.else116:                                       ; preds = %vc4_ctm_commit.exit
  br i1 %cmp165.not.i, label %if.else116.if.end117_crit_edge, label %for.body.lr.ph.i215

if.else116.if.end117_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

for.body.lr.ph.i215:                              ; preds = %if.else116
  %crtcs.i213 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body.i218

for.body.i218:                                    ; preds = %for.inc.i230.for.body.i218_crit_edge, %for.body.lr.ph.i215
  %i.0166.i = phi i32 [ 0, %for.body.lr.ph.i215 ], [ %inc.i227, %for.inc.i230.for.body.i218_crit_edge ]
  %275 = ptrtoint ptr %crtcs.i213 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %crtcs.i213, align 4
  %arrayidx.i216 = getelementptr %struct.__drm_crtcs_state, ptr %276, i32 %i.0166.i
  %277 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx.i216, align 8
  %tobool.not.i217 = icmp eq ptr %278, null
  br i1 %tobool.not.i217, label %for.body.i218.for.inc.i230_crit_edge, label %land.lhs.true.i221

for.body.i218.for.inc.i230_crit_edge:             ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i230

land.lhs.true.i221:                               ; preds = %for.body.i218
  %new_state.i219 = getelementptr %struct.__drm_crtcs_state, ptr %276, i32 %i.0166.i, i32 3
  %279 = ptrtoint ptr %new_state.i219 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %new_state.i219, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %active.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool7.not.i220 = icmp eq i8 %282, 0
  br i1 %tobool7.not.i220, label %land.lhs.true.i221.for.inc.i230_crit_edge, label %if.end.i224

land.lhs.true.i221.for.inc.i230_crit_edge:        ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i230

if.end.i224:                                      ; preds = %land.lhs.true.i221
  %assigned_channel.i222 = getelementptr inbounds %struct.vc4_crtc_state, ptr %280, i32 0, i32 3
  %283 = ptrtoint ptr %assigned_channel.i222 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %assigned_channel.i222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %284)
  %cmp9.not.i223 = icmp eq i32 %284, 2
  br i1 %cmp9.not.i223, label %if.end11.i, label %if.end.i224.for.inc.i230_crit_edge

if.end.i224.for.inc.i230_crit_edge:               ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i230

if.end11.i:                                       ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #9
  %feeds_txp.i = getelementptr inbounds %struct.vc4_crtc, ptr %278, i32 0, i32 10
  %285 = ptrtoint ptr %feeds_txp.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %feeds_txp.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool12.not.i = icmp eq i8 %286, 0
  %dsp3_mux.0.i = select i1 %tobool12.not.i, i32 524288, i32 786432
  %287 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hvs2, align 8
  %regs.i225 = getelementptr inbounds %struct.vc4_hvs, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %regs.i225 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i225, align 4
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %292 = and i32 %291, -3073
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %or.i226 = or i32 %293, %dsp3_mux.0.i
  %294 = tail call i32 @llvm.bswap.i32(i32 %or.i226) #7
  %295 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %hvs2, align 8
  %regs145.i = getelementptr inbounds %struct.vc4_hvs, ptr %296, i32 0, i32 1
  %297 = ptrtoint ptr %regs145.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regs145.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %294) #7, !srcloc !55
  br label %for.inc.i230

for.inc.i230:                                     ; preds = %if.end11.i, %if.end.i224.for.inc.i230_crit_edge, %land.lhs.true.i221.for.inc.i230_crit_edge, %for.body.i218.for.inc.i230_crit_edge
  %inc.i227 = add nuw i32 %i.0166.i, 1
  %299 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev1, align 4
  %num_crtc.i228 = getelementptr inbounds %struct.drm_device, ptr %300, i32 0, i32 30, i32 19
  %301 = ptrtoint ptr %num_crtc.i228 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %num_crtc.i228, align 4
  %cmp.i229 = icmp ult i32 %inc.i227, %302
  br i1 %cmp.i229, label %for.inc.i230.for.body.i218_crit_edge, label %for.inc.i230.if.end117_crit_edge

for.inc.i230.if.end117_crit_edge:                 ; preds = %for.inc.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

for.inc.i230.for.body.i218_crit_edge:             ; preds = %for.inc.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i218

if.end117:                                        ; preds = %for.inc.i230.if.end117_crit_edge, %if.else116.if.end117_crit_edge, %for.inc.i.if.end117_crit_edge, %if.then115.if.end117_crit_edge
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %state, i32 noundef 0) #7
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %state) #7
  tail call void @drm_atomic_helper_fake_vblank(ptr noundef %state) #7
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %state) #7
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %state) #7
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %state) #7
  %303 = ptrtoint ptr %hvs2 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hvs2, align 8
  %hvs5119 = getelementptr inbounds %struct.vc4_hvs, ptr %304, i32 0, i32 9
  %305 = ptrtoint ptr %hvs5119 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %hvs5119, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool120.not = icmp eq i8 %306, 0
  br i1 %tobool120.not, label %if.end117.cleanup133_crit_edge, label %if.then121

if.end117.cleanup133_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup133

if.then121:                                       ; preds = %if.end117
  %tobool122.not = icmp eq ptr %1, null
  br i1 %tobool122.not, label %if.then121.cond.end126_crit_edge, label %cond.true123

if.then121.cond.end126_crit_edge:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end126

cond.true123:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %307 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev93, align 4
  br label %cond.end126

cond.end126:                                      ; preds = %cond.true123, %if.then121.cond.end126_crit_edge
  %cond127 = phi ptr [ %308, %cond.true123 ], [ null, %if.then121.cond.end126_crit_edge ]
  %core_clock_rate128 = getelementptr inbounds %struct.vc4_hvs_state, ptr %call1.i202, i32 0, i32 1
  %309 = ptrtoint ptr %core_clock_rate128 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %core_clock_rate128, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond127, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %310) #7
  %core_clk129 = getelementptr inbounds %struct.vc4_hvs, ptr %3, i32 0, i32 3
  %311 = ptrtoint ptr %core_clk129 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %core_clk129, align 4
  %313 = ptrtoint ptr %core_clock_rate128 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %core_clock_rate128, align 4
  %call131 = tail call i32 @clk_set_min_rate(ptr noundef %312, i32 noundef %314) #7
  br label %cleanup133

cleanup133:                                       ; preds = %cond.end126, %if.end117.cleanup133_crit_edge, %do.end44, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_atomic_commit_setup(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %hvs_channels.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 36
  %call1.i = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %state, ptr noundef %hvs_channels.i) #7
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader, !prof !53

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %num_crtc64 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp65.not = icmp eq i32 %5, 0
  br i1 %cmp65.not, label %for.cond.preheader.cleanup44_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup44_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 431, i32 noundef 9, ptr noundef null) #7
  %6 = ptrtoint ptr %call1.i to i32
  br label %cleanup44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %i.066
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %tobool24.not = icmp eq ptr %10, null
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %i.066, i32 3
  %11 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_state, align 4
  %assigned_channel = getelementptr inbounds %struct.vc4_crtc_state, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %assigned_channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %assigned_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp32 = icmp eq i32 %14, -1
  br i1 %cmp32, label %land.lhs.true.for.inc_crit_edge, label %if.end34

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34:                                         ; preds = %land.lhs.true
  %arrayidx35 = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 %14
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool36.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool36.not, label %if.end34.for.inc_crit_edge, label %if.end38

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end38:                                         ; preds = %if.end34
  %commit = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 19
  %16 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %commit, align 4
  %ref.i = getelementptr inbounds %struct.drm_crtc_commit, ptr %17, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end38.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !53

if.end38.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end38
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_crtc_commit_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !49

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_crtc_commit_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_crtc_commit_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end38.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end38.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %drm_crtc_commit_get.exit

drm_crtc_commit_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_crtc_commit_get.exit_crit_edge
  %pending_commit = getelementptr %struct.vc4_hvs_state, ptr %call1.i, i32 0, i32 2, i32 %14, i32 2
  %20 = ptrtoint ptr %pending_commit to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %pending_commit, align 4
  br label %for.inc

for.inc:                                          ; preds = %drm_crtc_commit_get.exit, %if.end34.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 19
  %23 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtc, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup44_crit_edge

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup44:                                        ; preds = %for.inc.cleanup44_crit_edge, %do.end, %for.cond.preheader.cleanup44_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %for.cond.preheader.cleanup44_crit_edge ], [ 0, %for.inc.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_mask_underrun(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_commit_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_fake_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_old_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_crtc_commit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_ctm_obj_fini(ptr noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctm_manager = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 35
  tail call void @drm_atomic_private_obj_fini(ptr noundef %ctm_manager) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_ctm_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 12, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_ctm_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_load_tracker_obj_fini(ptr noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %load_tracker = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 37
  tail call void @drm_atomic_private_obj_fini(ptr noundef %load_tracker) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_load_tracker_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 24, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_load_tracker_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hvs_channels_obj_fini(ptr noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hvs_channels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 36
  tail call void @drm_atomic_private_obj_fini(ptr noundef %hvs_channels) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_hvs_channels_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call7.i.i) #7
  %arrayidx = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.lshr = and i8 %bf.load, -128
  %arrayidx4 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %arrayidx4, align 8
  %bf.clear = and i8 %bf.load5, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %arrayidx4, align 8
  %fifo_load = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %fifo_load to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_load, align 4
  %fifo_load10 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %fifo_load10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fifo_load10, align 4
  %arrayidx.1 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.1 = load i8, ptr %arrayidx.1, align 4
  %bf.lshr.1 = and i8 %bf.load.1, -128
  %arrayidx4.1 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load5.1 = load i8, ptr %arrayidx4.1, align 4
  %bf.clear.1 = and i8 %bf.load5.1, 127
  %bf.set.1 = or i8 %bf.clear.1, %bf.lshr.1
  store i8 %bf.set.1, ptr %arrayidx4.1, align 4
  %fifo_load.1 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %fifo_load.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_load.1, align 4
  %fifo_load10.1 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %fifo_load10.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fifo_load10.1, align 8
  %arrayidx.2 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.2 = load i8, ptr %arrayidx.2, align 4
  %bf.lshr.2 = and i8 %bf.load.2, -128
  %arrayidx4.2 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load5.2 = load i8, ptr %arrayidx4.2, align 8
  %bf.clear.2 = and i8 %bf.load5.2, 127
  %bf.set.2 = or i8 %bf.clear.2, %bf.lshr.2
  store i8 %bf.set.2, ptr %arrayidx4.2, align 8
  %fifo_load.2 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 2, i32 1
  %15 = ptrtoint ptr %fifo_load.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_load.2, align 4
  %fifo_load10.2 = getelementptr %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 1
  %17 = ptrtoint ptr %fifo_load10.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fifo_load10.2, align 4
  %core_clock_rate = getelementptr inbounds %struct.vc4_hvs_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %core_clock_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_clock_rate, align 4
  %core_clock_rate11 = getelementptr inbounds %struct.vc4_hvs_state, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %core_clock_rate11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %core_clock_rate11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hvs_channels_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_commit = getelementptr %struct.vc4_hvs_state, ptr %state, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %pending_commit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_commit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %ref.i = getelementptr inbounds %struct.drm_crtc_commit, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !49

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #7
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i) #7, !callees !51
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %pending_commit.1 = getelementptr %struct.vc4_hvs_state, ptr %state, i32 0, i32 2, i32 1, i32 2
  %3 = ptrtoint ptr %pending_commit.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pending_commit.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %ref.i.1 = getelementptr inbounds %struct.drm_crtc_commit, ptr %4, i32 0, i32 1
  %call.i.i.i.i.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i.1, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.1, ptr %ref.i.1, i32 1, ptr elementtype(i32) %ref.i.1) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.1 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.1)
  %cmp.i.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.1, 1
  br i1 %cmp.i.i.i.i.i.1, label %if.then.i.i.1, label %if.end5.i.i.i.i.i.1

if.end5.i.i.i.i.i.1:                              ; preds = %if.end.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.1)
  %.not.i.i.i.i.i.1 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.1, label %if.end5.i.i.i.i.i.1.for.inc.1_crit_edge, label %if.then10.i.i.i.i.i.1, !prof !49

if.end5.i.i.i.i.i.1.for.inc.1_crit_edge:          ; preds = %if.end5.i.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then10.i.i.i.i.i.1:                            ; preds = %if.end5.i.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.1, i32 noundef 3) #7
  br label %for.inc.1

if.then.i.i.1:                                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i.1) #7, !callees !51
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.i.i.1, %if.then10.i.i.i.i.i.1, %if.end5.i.i.i.i.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %pending_commit.2 = getelementptr %struct.vc4_hvs_state, ptr %state, i32 0, i32 2, i32 2, i32 2
  %6 = ptrtoint ptr %pending_commit.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_commit.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %ref.i.2 = getelementptr inbounds %struct.drm_crtc_commit, ptr %7, i32 0, i32 1
  %call.i.i.i.i.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.2, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %ref.i.2, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.2, ptr %ref.i.2, i32 1, ptr elementtype(i32) %ref.i.2) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.2 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.2)
  %cmp.i.i.i.i.i.2 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.2, 1
  br i1 %cmp.i.i.i.i.i.2, label %if.then.i.i.2, label %if.end5.i.i.i.i.i.2

if.end5.i.i.i.i.i.2:                              ; preds = %if.end.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.2)
  %.not.i.i.i.i.i.2 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.2, label %if.end5.i.i.i.i.i.2.for.inc.2_crit_edge, label %if.then10.i.i.i.i.i.2, !prof !49

if.end5.i.i.i.i.i.2.for.inc.2_crit_edge:          ; preds = %if.end5.i.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then10.i.i.i.i.i.2:                            ; preds = %if.end5.i.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.2, i32 noundef 3) #7
  br label %for.inc.2

if.then.i.i.2:                                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @__drm_crtc_commit_free(ptr noundef %ref.i.2) #7, !callees !51
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.i.i.2, %if.then10.i.i.i.i.i.2, %if.end5.i.i.i.i.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 947, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 967, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vc4_kms_load._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vc4_kms_load._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @vc4_mode_funcs, !11, !"vc4_mode_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 937, i32 43}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 469, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 538, i32 5}
!16 = !{ptr @vc4_mode_config_helpers, !17, !"vc4_mode_config_helpers", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 932, i32 44}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 381, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vc4_atomic_commit_tail._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @vc4_atomic_commit_tail._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 416, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 135, i32 9}
!27 = !{ptr @vc4_ctm_state_funcs, !28, !"vc4_ctm_state_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 110, i32 45}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 661, i32 9}
!31 = !{ptr @vc4_load_tracker_state_funcs, !32, !"vc4_load_tracker_state_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 637, i32 45}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 727, i32 9}
!35 = !{ptr @vc4_hvs_state_funcs, !36, !"vc4_hvs_state_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_kms.c", i32 703, i32 45}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{i64 2148355048}
!48 = !{i64 2148269512, i64 2148269544, i64 2148269573, i64 2148269607, i64 2148269638, i64 2148269661}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2150450265}
!51 = !{ptr @__drm_crtc_commit_free, ptr @drm_gem_object_free}
!52 = !{i32 0, i32 33}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2157396661}
!55 = !{i64 6967333}
!56 = !{i64 2157918208}
!57 = !{i64 2158435694}
!58 = !{i64 2158704777}
!59 = !{i64 6967751}
!60 = !{i64 2158941047}
!61 = !{i64 2159068659}
!62 = !{i64 2159117616}
!63 = !{i64 2159245224}
!64 = !{i64 2159294181}
!65 = !{i64 2159421789}
!66 = !{i64 2159470746}
!67 = !{i64 2159598362}
!68 = !{i64 2158938473}
!69 = !{i64 2158939517}
!70 = !{i64 2148267047, i64 2148267079, i64 2148267108, i64 2148267142, i64 2148267173, i64 2148267196}
