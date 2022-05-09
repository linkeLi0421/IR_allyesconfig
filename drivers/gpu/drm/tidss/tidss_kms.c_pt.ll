; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tidss_device = type { %struct.drm_device, ptr, ptr, ptr, i32, [4 x ptr], i32, [4 x ptr], i32, %struct.spinlock, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pipe = type { i32, ptr, i32 }
%struct.dispc_features = type { i32, [3 x i32], %struct.dispc_features_scaling, i32, ptr, ptr, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i32], %struct.tidss_vp_feat, i32, [4 x ptr], [4 x i8], [4 x i32] }
%struct.dispc_features_scaling = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tidss_vp_feat = type { %struct.tidss_vp_color_feat }
%struct.tidss_vp_color_feat = type { i32, i32, i8 }
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
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tidss_crtc_state = type { %struct.drm_crtc_state, i8, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@tidss_modeset_init.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tidss\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tidss_modeset_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/tidss/tidss_kms.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @tidss_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mode_config_helper_funcs = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @tidss_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@tidss_modeset_init.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s done\0A\00", [23 x i8] zeroinitializer }, align 32
@tidss_atomic_commit_tail.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tidss_atomic_commit_tail\00", [39 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tidss_dispc_modeset_init\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no panel/bridge for port %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %d probe returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting up panel for port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 172, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Panel %s has incompatible connector type for vp%d (%d != %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr = internal global ptr @tidss_dispc_modeset_init._entry, section ".printk_index", align 4
@tidss_dispc_modeset_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 180, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set up panel bridge for port %d\0A\00", [53 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr.15 = internal global ptr @tidss_dispc_modeset_init._entry.13, section ".printk_index", align 4
@tidss_dispc_modeset_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 207, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"plane create failed\0A\00", [43 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr.18 = internal global ptr @tidss_dispc_modeset_init._entry.16, section ".printk_index", align 4
@tidss_dispc_modeset_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 216, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crtc create failed\0A\00", [44 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr.21 = internal global ptr @tidss_dispc_modeset_init._entry.19, section ".printk_index", align 4
@tidss_dispc_modeset_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 225, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"encoder create failed\0A\00", [41 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr.24 = internal global ptr @tidss_dispc_modeset_init._entry.22, section ".printk_index", align 4
@tidss_dispc_modeset_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 245, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@tidss_dispc_modeset_init._entry_ptr.26 = internal global ptr @tidss_dispc_modeset_init._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 260, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"mode_config_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 104, i32 43 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"mode_config_helper_funcs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 50, i32 50 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 284, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 33, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 142, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 145, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 152, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 169, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 207, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 216, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 225, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private constant [37 x i8] c"../drivers/gpu/drm/tidss/tidss_kms.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 245, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @tidss_dispc_modeset_init._entry, ptr @tidss_dispc_modeset_init._entry.13, ptr @tidss_dispc_modeset_init._entry.16, ptr @tidss_dispc_modeset_init._entry.19, ptr @tidss_dispc_modeset_init._entry.22, ptr @tidss_dispc_modeset_init._entry.25, ptr @tidss_dispc_modeset_init._entry_ptr, ptr @tidss_dispc_modeset_init._entry_ptr.15, ptr @tidss_dispc_modeset_init._entry_ptr.18, ptr @tidss_dispc_modeset_init._entry_ptr.21, ptr @tidss_dispc_modeset_init._entry_ptr.24, ptr @tidss_dispc_modeset_init._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mode_config_funcs, ptr @mode_config_helper_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_helper_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_dispc_modeset_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tidss_modeset_init(ptr noundef %tidss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_modeset_init.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_modeset_init, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_modeset_init.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @drmm_mode_config_init(ptr noundef %tidss) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %min_width = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 23
  %2 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 24
  %3 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 25
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 26
  %5 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8096, ptr %max_height, align 4
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 98
  %6 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %normalize_zpos, align 1
  %funcs = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 27
  %7 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %tidss, i32 0, i32 30, i32 103
  %8 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mode_config_helper_funcs, ptr %helper_private, align 4
  %call14 = tail call fastcc i32 @tidss_dispc_modeset_init(ptr noundef %tidss)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %num_crtcs = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 4
  %9 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtcs, align 4
  %call18 = tail call i32 @drm_vblank_init(ptr noundef %tidss, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_config_reset(ptr noundef %tidss) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_modeset_init.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_modeset_init, %if.then34)) #4
          to label %cleanup [label %if.then34], !srcloc !60

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %dev35 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 1
  %11 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_modeset_init.__UNIQUE_ID_ddebug318, ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end21, %if.end17.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %call14, %if.end7.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tidss_dispc_modeset_init(ptr noundef %tidss) unnamed_addr #0 align 64 {
entry:
  %fourccs_len = alloca i32, align 4
  %pipes = alloca [4 x %struct.pipe], align 4
  %panel = alloca ptr, align 4
  %bridge = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourccs_len) #4
  %2 = ptrtoint ptr %fourccs_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fourccs_len, align 4, !annotation !61
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 3
  %3 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dispc, align 4
  %call = call ptr @dispc_plane_formats(ptr noundef %4, ptr noundef nonnull %fourccs_len) #4
  %feat2 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 2
  %5 = ptrtoint ptr %feat2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %feat2, align 4
  %num_vps = getelementptr inbounds %struct.dispc_features, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %num_vps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_vps, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %6, i32 0, i32 12
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pipes) #4
  %11 = call ptr @memset(ptr %pipes, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp327.not = icmp eq i32 %8, 0
  br i1 %cmp327.not, label %entry.while.cond.preheader_crit_edge, label %for.body.lr.ph

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %retval.0334 = phi i32 [ undef, %for.body.lr.ph ], [ %retval.3297, %for.inc.for.body_crit_edge ]
  %i.0329 = phi i32 [ 0, %for.body.lr.ph ], [ %inc102, %for.inc.for.body_crit_edge ]
  %num_pipes.0328 = phi i32 [ 0, %for.body.lr.ph ], [ %num_pipes.1296, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #4
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #4
  %13 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !61
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %15, i32 noundef %i.0329, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #4
  %16 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %do.body11 [
    i32 -19, label %do.body
    i32 0, label %if.end28
  ]

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_dispc_modeset_init, %if.then8)) #4
          to label %cleanup96 [label %if.then8], !srcloc !60

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %i.0329) #4
  br label %cleanup96.thread292

do.body11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_dispc_modeset_init, %if.then23)) #4
          to label %cleanup96 [label %if.then23], !srcloc !60

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %i.0329, i32 noundef %call3) #4
  br label %cleanup96.thread

if.end28:                                         ; preds = %for.body
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end28.if.end90_crit_edge, label %if.then30

if.end28.if.end90_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then30:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_dispc_modeset_init, %if.then43)) #4
          to label %do.end46 [label %if.then43], !srcloc !60

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %i.0329) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %if.then30
  %arrayidx = getelementptr %struct.dispc_features, ptr %6, i32 0, i32 10, i32 %i.0329
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %20, label %do.end59 [
    i32 1, label %do.end46.sw.epilog_crit_edge
    i32 0, label %sw.bb47
  ]

do.end46.sw.epilog_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end59:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef null) #4
  br label %cleanup96.thread

sw.epilog:                                        ; preds = %sw.bb47, %do.end46.sw.epilog_crit_edge
  %enc_type.0 = phi i32 [ 8, %sw.bb47 ], [ 3, %do.end46.sw.epilog_crit_edge ]
  %conn_type.0 = phi i32 [ 17, %sw.bb47 ], [ 7, %do.end46.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %panel, align 4
  %connector_type = getelementptr inbounds %struct.drm_panel, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conn_type.0)
  %cmp73.not = icmp eq i32 %25, %conn_type.0
  br i1 %cmp73.not, label %if.end81, label %do.end77

do.end77:                                         ; preds = %sw.epilog
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end77.dev_name.exit_crit_edge

do.end77.dev_name.exit_crit_edge:                 ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end77.dev_name.exit_crit_edge
  %retval.0.i276 = phi ptr [ %31, %if.end.i ], [ %29, %do.end77.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i276, i32 noundef %i.0329, i32 noundef %25, i32 noundef %conn_type.0) #7
  br label %cleanup96.thread

if.end81:                                         ; preds = %sw.epilog
  %call82 = call ptr @devm_drm_panel_bridge_add(ptr noundef %1, ptr noundef %23) #4
  %32 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call82, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end87, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.0329) #7
  %33 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bridge, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup96.thread

if.end90:                                         ; preds = %if.end81.if.end90_crit_edge, %if.end28.if.end90_crit_edge
  %enc_type.2 = phi i32 [ 0, %if.end28.if.end90_crit_edge ], [ %enc_type.0, %if.end81.if.end90_crit_edge ]
  %arrayidx91 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %num_pipes.0328
  %36 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.0329, ptr %arrayidx91, align 4
  %37 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bridge, align 4
  %bridge93 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %num_pipes.0328, i32 1
  %39 = ptrtoint ptr %bridge93 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %bridge93, align 4
  %enc_type95 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %num_pipes.0328, i32 2
  %40 = ptrtoint ptr %enc_type95 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %enc_type.2, ptr %enc_type95, align 4
  %inc = add i32 %num_pipes.0328, 1
  br label %cleanup96.thread292

cleanup96.thread:                                 ; preds = %do.end87, %dev_name.exit, %do.end59, %if.then23
  %retval.3.ph = phi i32 [ %call3, %if.then23 ], [ %35, %do.end87 ], [ -22, %dev_name.exit ], [ -22, %do.end59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #4
  br label %cleanup189

cleanup96.thread292:                              ; preds = %if.end90, %if.then8
  %num_pipes.1.ph = phi i32 [ %num_pipes.0328, %if.then8 ], [ %inc, %if.end90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #4
  br label %for.inc

cleanup96:                                        ; preds = %do.body11, %do.body
  %cond = phi i1 [ false, %do.body11 ], [ true, %do.body ]
  %retval.3 = phi i32 [ %call3, %do.body11 ], [ %retval.0334, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #4
  br i1 %cond, label %cleanup96.for.inc_crit_edge, label %cleanup96.cleanup189_crit_edge

cleanup96.cleanup189_crit_edge:                   ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

cleanup96.for.inc_crit_edge:                      ; preds = %cleanup96
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %cleanup96.for.inc_crit_edge, %cleanup96.thread292
  %retval.3297 = phi i32 [ %retval.0334, %cleanup96.thread292 ], [ %retval.3, %cleanup96.for.inc_crit_edge ]
  %num_pipes.1296 = phi i32 [ %num_pipes.1.ph, %cleanup96.thread292 ], [ %num_pipes.0328, %cleanup96.for.inc_crit_edge ]
  %inc102 = add nuw i32 %i.0329, 1
  %exitcond.not = icmp eq i32 %inc102, %8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %notmask = shl nsw i32 -1, %num_pipes.1296
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pipes.1296)
  %cmp104336.not = icmp eq i32 %num_pipes.1296, 0
  br i1 %cmp104336.not, label %for.end.while.cond.preheader_crit_edge, label %for.body105.lr.ph

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

for.body105.lr.ph:                                ; preds = %for.end
  %num_planes106 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 6
  %num_crtcs = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 4
  br label %for.body105

for.cond103:                                      ; preds = %cleanup154
  %inc162 = add nuw i32 %i.1337, 1
  %exitcond366.not = icmp eq i32 %inc162, %num_pipes.1296
  br i1 %exitcond366.not, label %for.cond103.while.cond.preheader_crit_edge, label %for.cond103.for.body105_crit_edge

for.cond103.for.body105_crit_edge:                ; preds = %for.cond103
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body105

for.cond103.while.cond.preheader_crit_edge:       ; preds = %for.cond103
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond103.while.cond.preheader_crit_edge, %for.end.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %sub371 = phi i32 [ %sub, %for.end.while.cond.preheader_crit_edge ], [ 0, %entry.while.cond.preheader_crit_edge ], [ %sub, %for.cond103.while.cond.preheader_crit_edge ]
  %num_planes164 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 6
  %41 = ptrtoint ptr %num_planes164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_planes164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %10)
  %cmp165338 = icmp ult i32 %42, %10
  br i1 %cmp165338, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup189_crit_edge

while.cond.preheader.cleanup189_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body105:                                      ; preds = %for.cond103.for.body105_crit_edge, %for.body105.lr.ph
  %i.1337 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc162, %for.cond103.for.body105_crit_edge ]
  %43 = ptrtoint ptr %num_planes106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_planes106, align 4
  %arrayidx107 = getelementptr %struct.dispc_features, ptr %6, i32 0, i32 15, i32 %44
  %45 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx107, align 4
  %47 = ptrtoint ptr %fourccs_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fourccs_len, align 4
  %call109 = call ptr @tidss_plane_create(ptr noundef %tidss, i32 noundef %46, i32 noundef 1, i32 noundef %sub, ptr noundef %call, i32 noundef %48) #4
  %cmp.i277 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i277, label %do.end114, label %if.end117

do.end114:                                        ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.17) #7
  %51 = ptrtoint ptr %call109 to i32
  br label %cleanup189

if.end117:                                        ; preds = %for.body105
  %52 = ptrtoint ptr %num_planes106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_planes106, align 4
  %inc119 = add i32 %53, 1
  store i32 %inc119, ptr %num_planes106, align 4
  %arrayidx120 = getelementptr %struct.tidss_device, ptr %tidss, i32 0, i32 7, i32 %53
  %54 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call109, ptr %arrayidx120, align 4
  %arrayidx121 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %i.1337
  %55 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx121, align 4
  %call124 = call ptr @tidss_crtc_create(ptr noundef %tidss, i32 noundef %56, ptr noundef %call109) #4
  %cmp.i278 = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %do.end129, label %if.end132

do.end129:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.20) #7
  %59 = ptrtoint ptr %call124 to i32
  br label %cleanup189

if.end132:                                        ; preds = %if.end117
  %60 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_crtcs, align 4
  %inc133 = add i32 %61, 1
  store i32 %inc133, ptr %num_crtcs, align 4
  %arrayidx134 = getelementptr %struct.tidss_device, ptr %tidss, i32 0, i32 5, i32 %61
  %62 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call124, ptr %arrayidx134, align 4
  %enc_type136 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %i.1337, i32 2
  %63 = ptrtoint ptr %enc_type136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %enc_type136, align 4
  %index = getelementptr inbounds %struct.drm_crtc, ptr %call124, i32 0, i32 8
  %65 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index, align 4
  %shl138 = shl nuw i32 1, %66
  %call139 = call ptr @tidss_encoder_create(ptr noundef %tidss, i32 noundef %64, i32 noundef %shl138) #4
  %cmp.i279 = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %do.end144, label %cleanup154

do.end144:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.23) #7
  %69 = ptrtoint ptr %call139 to i32
  br label %cleanup189

cleanup154:                                       ; preds = %if.end132
  %bridge149 = getelementptr [4 x %struct.pipe], ptr %pipes, i32 0, i32 %i.1337, i32 1
  %70 = ptrtoint ptr %bridge149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bridge149, align 4
  %call150 = call i32 @drm_bridge_attach(ptr noundef %call139, ptr noundef %71, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %for.cond103, label %cleanup154.cleanup189_crit_edge

cleanup154.cleanup189_crit_edge:                  ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

while.body:                                       ; preds = %cleanup185.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %72 = phi i32 [ %83, %cleanup185.while.body_crit_edge ], [ %42, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx170 = getelementptr %struct.dispc_features, ptr %6, i32 0, i32 15, i32 %72
  %73 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx170, align 4
  %75 = ptrtoint ptr %fourccs_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fourccs_len, align 4
  %call171 = call ptr @tidss_plane_create(ptr noundef %tidss, i32 noundef %74, i32 noundef 0, i32 noundef %sub371, ptr noundef %call, i32 noundef %76) #4
  %cmp.i280 = icmp ugt ptr %call171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %cleanup185.thread, label %cleanup185

cleanup185.thread:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.17) #7
  %79 = ptrtoint ptr %call171 to i32
  br label %cleanup189

cleanup185:                                       ; preds = %while.body
  %80 = ptrtoint ptr %num_planes164 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_planes164, align 4
  %inc183 = add i32 %81, 1
  store i32 %inc183, ptr %num_planes164, align 4
  %arrayidx184 = getelementptr %struct.tidss_device, ptr %tidss, i32 0, i32 7, i32 %81
  %82 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call171, ptr %arrayidx184, align 4
  %83 = load i32, ptr %num_planes164, align 4
  %cmp165 = icmp ult i32 %83, %10
  br i1 %cmp165, label %cleanup185.while.body_crit_edge, label %cleanup185.cleanup189_crit_edge

cleanup185.cleanup189_crit_edge:                  ; preds = %cleanup185
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

cleanup185.while.body_crit_edge:                  ; preds = %cleanup185
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup189:                                       ; preds = %cleanup185.cleanup189_crit_edge, %cleanup185.thread, %cleanup154.cleanup189_crit_edge, %do.end144, %do.end129, %do.end114, %while.cond.preheader.cleanup189_crit_edge, %cleanup96.cleanup189_crit_edge, %cleanup96.thread
  %retval.8 = phi i32 [ %retval.3.ph, %cleanup96.thread ], [ %79, %cleanup185.thread ], [ %51, %do.end114 ], [ %59, %do.end129 ], [ %69, %do.end144 ], [ 0, %while.cond.preheader.cleanup189_crit_edge ], [ 0, %cleanup185.cleanup189_crit_edge ], [ %call150, %cleanup154.cleanup189_crit_edge ], [ %retval.3, %cleanup96.cleanup189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pipes) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourccs_len) #4
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_atomic_check(ptr noundef %ddev, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check(ptr noundef %ddev, ptr noundef %state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_total_plane108 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 17
  %2 = ptrtoint ptr %num_total_plane108 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_total_plane108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp109 = icmp sgt i32 %3, 0
  br i1 %cmp109, label %for.body.lr.ph, label %for.cond.preheader.for.cond32.preheader_crit_edge

for.cond.preheader.for.cond32.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body

for.cond32.preheader:                             ; preds = %for.inc.for.cond32.preheader_crit_edge, %for.cond.preheader.for.cond32.preheader_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %num_crtc112 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 19
  %6 = ptrtoint ptr %num_crtc112 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp35113 = icmp sgt i32 %7, 0
  br i1 %cmp35113, label %for.body36.lr.ph, label %for.cond32.preheader.cleanup_crit_edge

for.cond32.preheader.cleanup_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body36.lr.ph:                                 ; preds = %for.cond32.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %9, i32 %i.0110
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_planes_state, ptr %9, i32 %i.0110, i32 2
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %old_state, align 4
  %new_state = getelementptr %struct.__drm_planes_state, ptr %9, i32 %i.0110, i32 3
  %14 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_state, align 4
  %crtc10 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %crtc10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc10, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 22
  %18 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %visible, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end14

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  %crtc15 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %crtc15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc15, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end14.if.then23_crit_edge, label %lor.lhs.false17

if.end14.if.then23_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false17:                                  ; preds = %if.end14
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_x, align 4
  %crtc_x18 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 4
  %24 = ptrtoint ptr %crtc_x18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_x18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp19.not = icmp eq i32 %23, %25
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false17.if.then23_crit_edge

lor.lhs.false17.if.then23_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 5
  %26 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_y, align 4
  %crtc_y21 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 5
  %28 = ptrtoint ptr %crtc_y21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_y21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp22.not = icmp eq i32 %27, %29
  br i1 %cmp22.not, label %lor.lhs.false20.for.inc_crit_edge, label %lor.lhs.false20.if.then23_crit_edge

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %lor.lhs.false17.if.then23_crit_edge, %if.end14.if.then23_crit_edge
  %call25 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %17) #4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %plane_pos_changed = getelementptr inbounds %struct.tidss_crtc_state, ptr %call25, i32 0, i32 1
  %31 = ptrtoint ptr %plane_pos_changed to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %plane_pos_changed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %lor.lhs.false20.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0110, 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 17
  %34 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_total_plane, align 4
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond32.preheader_crit_edge

for.inc.for.cond32.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body36:                                       ; preds = %for.inc62.for.body36_crit_edge, %for.body36.lr.ph
  %i.1114 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc63, %for.inc62.for.body36_crit_edge ]
  %36 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crtcs, align 4
  %arrayidx37 = getelementptr %struct.__drm_crtcs_state, ptr %37, i32 %i.1114
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx37, align 8
  %tobool39.not = icmp eq ptr %39, null
  br i1 %tobool39.not, label %for.body36.for.inc62_crit_edge, label %land.lhs.true40

for.body36.for.inc62_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc62

land.lhs.true40:                                  ; preds = %for.body36
  %new_state46 = getelementptr %struct.__drm_crtcs_state, ptr %37, i32 %i.1114, i32 3
  %40 = ptrtoint ptr %new_state46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %new_state46, align 4
  %plane_pos_changed52 = getelementptr inbounds %struct.tidss_crtc_state, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %plane_pos_changed52 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %plane_pos_changed52, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool53.not = icmp eq i8 %43, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %land.lhs.true40.if.then55_crit_edge

land.lhs.true40.if.then55_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

lor.lhs.false54:                                  ; preds = %land.lhs.true40
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %zpos_changed to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %zpos_changed, align 2
  %45 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %bf.cast.not = icmp eq i8 %45, 0
  br i1 %bf.cast.not, label %lor.lhs.false54.for.inc62_crit_edge, label %lor.lhs.false54.if.then55_crit_edge

lor.lhs.false54.if.then55_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

lor.lhs.false54.for.inc62_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc62

if.then55:                                        ; preds = %lor.lhs.false54.if.then55_crit_edge, %land.lhs.true40.if.then55_crit_edge
  %call56 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef nonnull %39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.for.inc62_crit_edge, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55.for.inc62_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc62

for.inc62:                                        ; preds = %if.then55.for.inc62_crit_edge, %lor.lhs.false54.for.inc62_crit_edge, %for.body36.for.inc62_crit_edge
  %inc63 = add nuw nsw i32 %i.1114, 1
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 30, i32 19
  %48 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_crtc, align 4
  %cmp35 = icmp slt i32 %inc63, %49
  br i1 %cmp35, label %for.inc62.for.body36_crit_edge, label %for.inc62.cleanup_crit_edge

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc62.for.body36_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then27, %for.cond32.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then27 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond32.preheader.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ], [ 0, %for.inc62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tidss_atomic_commit_tail(ptr noundef %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tidss_atomic_commit_tail.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tidss_atomic_commit_tail, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tidss_atomic_commit_tail.__UNIQUE_ID_ddebug313, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call i32 @tidss_runtime_get(ptr noundef %1) #4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 0) #4
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #4
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #4
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #4
  tail call void @tidss_runtime_put(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tidss_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dispc_plane_formats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tidss_plane_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tidss_crtc_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tidss_encoder_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 260, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tidss_modeset_init.__UNIQUE_ID_ddebug317, !1, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 284, i32 2}
!8 = !{ptr @tidss_modeset_init.__UNIQUE_ID_ddebug318, !7, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!9 = !{ptr @mode_config_funcs, !10, !"mode_config_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 104, i32 43}
!11 = !{ptr @mode_config_helper_funcs, !12, !"mode_config_helper_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 50, i32 50}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 33, i32 2}
!15 = !{ptr @tidss_atomic_commit_tail.__UNIQUE_ID_ddebug313, !14, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 142, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug314, !17, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 145, i32 4}
!22 = !{ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug315, !21, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 152, i32 4}
!25 = !{ptr @tidss_dispc_modeset_init.__UNIQUE_ID_ddebug316, !24, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 169, i32 5}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tidss_dispc_modeset_init._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @tidss_dispc_modeset_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 178, i32 5}
!34 = !{ptr @tidss_dispc_modeset_init._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tidss_dispc_modeset_init._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 207, i32 4}
!38 = !{ptr @tidss_dispc_modeset_init._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tidss_dispc_modeset_init._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 216, i32 4}
!42 = !{ptr @tidss_dispc_modeset_init._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tidss_dispc_modeset_init._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 225, i32 4}
!46 = !{ptr @tidss_dispc_modeset_init._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tidss_dispc_modeset_init._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @tidss_dispc_modeset_init._entry.25, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tidss/tidss_kms.c", i32 245, i32 4}
!50 = !{ptr @tidss_dispc_modeset_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148370352, i64 2148370357, i64 2148370370, i64 2148370414, i64 2148370448, i64 2148370469}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
