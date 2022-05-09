; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_dispc.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_dispc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dispc_features = type { i32, [3 x i32], %struct.dispc_features_scaling, i32, ptr, ptr, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i32], %struct.tidss_vp_feat, i32, [4 x ptr], [4 x i8], [4 x i32] }
%struct.dispc_features_scaling = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tidss_vp_feat = type { %struct.tidss_vp_color_feat }
%struct.tidss_vp_color_feat = type { i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.90 = type { i32, i8 }
%struct.dispc_bus_format = type { i32, i32, i8, i32 }
%struct.anon.91 = type { i32, i32, ptr }
%struct.dispc_csc_coef = type { ptr, [9 x i32], [3 x i32], [3 x i32], i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dispc_device = type { ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], ptr, ptr, i8, [4 x %struct.dss_vp_data], ptr, i32, i32, %struct.dispc_errata }
%struct.dss_vp_data = type { ptr }
%struct.dispc_errata = type { i8 }
%struct.tidss_crtc_state = type { %struct.drm_crtc_state, i8, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dispc_scaling_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, i8 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.tidss_device = type { %struct.drm_device, ptr, ptr, ptr, i32, [4 x ptr], i32, [4 x ptr], i32, %struct.spinlock, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.tidss_scale_coefs = type { [16 x i16], [16 x i16], [9 x i16] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"common\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp1\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ovr1\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vid1\00", [27 x i8] zeroinitializer }, align 32
@dispc_k2g_feats = dso_local constant { %struct.dispc_features, [44 x i8] } { %struct.dispc_features { i32 4375, [3 x i32] [i32 150000, i32 0, i32 0], %struct.dispc_features_scaling { i32 1280, i32 1280, i32 2560, i32 2560, i32 16, i32 4, i32 2, i32 32 }, i32 0, ptr @.str, ptr @tidss_k2g_common_regs, i32 1, [4 x ptr] [ptr @.str.1, ptr null, ptr null, ptr null], [4 x ptr] [ptr @.str.2, ptr null, ptr null, ptr null], [4 x ptr] [ptr @.str.1, ptr null, ptr null, ptr null], [4 x i32] zeroinitializer, %struct.tidss_vp_feat { %struct.tidss_vp_color_feat { i32 256, i32 0, i8 1 } }, i32 1, [4 x ptr] [ptr @.str.3, ptr null, ptr null, ptr null], [4 x i8] zeroinitializer, [4 x i32] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp2\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ovr2\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vidl1\00", [26 x i8] zeroinitializer }, align 32
@dispc_am65x_feats = dso_local constant { %struct.dispc_features, [44 x i8] } { %struct.dispc_features { i32 0, [3 x i32] [i32 165000, i32 165000, i32 0], %struct.dispc_features_scaling { i32 1280, i32 2560, i32 2560, i32 4096, i32 16, i32 4, i32 2, i32 32 }, i32 1, ptr @.str, ptr @tidss_am65x_common_regs, i32 2, [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr null, ptr null], [4 x ptr] [ptr @.str.2, ptr @.str.5, ptr null, ptr null], [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr null, ptr null], [4 x i32] [i32 1, i32 0, i32 0, i32 0], %struct.tidss_vp_feat { %struct.tidss_vp_color_feat { i32 256, i32 0, i8 1 } }, i32 2, [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr null, ptr null], [4 x i8] c"\00\01\00\00", [4 x i32] [i32 1, i32 0, i32 0, i32 0] }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"common_m\00", [23 x i8] zeroinitializer }, align 32
@tidss_j721e_common_regs = internal constant { [35 x i16], [58 x i8] } { [35 x i16] [i16 0, i16 4, i16 8, i16 32, i16 128, i16 40, i16 44, i16 48, i16 52, i16 56, i16 72, i16 88, i16 104, i16 120, i16 124, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 176, i16 144, i16 184, i16 188, i16 192, i16 196, i16 200, i16 204, i16 208, i16 212, i16 216, i16 228, i16 232, i16 236], [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp3\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp4\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ovr3\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ovr4\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vid2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vidl2\00", [26 x i8] zeroinitializer }, align 32
@dispc_j721e_feats = dso_local constant { %struct.dispc_features, [44 x i8] } { %struct.dispc_features { i32 0, [3 x i32] [i32 170000, i32 0, i32 600000], %struct.dispc_features_scaling { i32 2048, i32 4096, i32 4096, i32 4096, i32 16, i32 4, i32 2, i32 32 }, i32 2, ptr @.str.8, ptr @tidss_j721e_common_regs, i32 4, [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.9, ptr @.str.10], [4 x ptr] [ptr @.str.2, ptr @.str.5, ptr @.str.11, ptr @.str.12], [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.9, ptr @.str.10], [4 x i32] [i32 2, i32 0, i32 2, i32 0], %struct.tidss_vp_feat { %struct.tidss_vp_color_feat { i32 1024, i32 1, i8 1 } }, i32 4, [4 x ptr] [ptr @.str.3, ptr @.str.7, ptr @.str.13, ptr @.str.14], [4 x i8] c"\00\01\00\01", [4 x i32] [i32 1, i32 3, i32 0, i32 2] }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/tidss/tidss_dispc.c\00", [60 x i8] zeroinitializer }, align 32
@dispc_vp_bus_check.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.15, ptr @.str.18, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tidss\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dispc_vp_bus_check\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unsupported bus format: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@dispc_vp_bus_check.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.15, ptr @.str.19, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s is not OLDI-port\0A\00", [39 x i8] zeroinitializer }, align 32
@dispc_vp_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.15, i32 1191, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: enabling clk failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dispc_vp_enable_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dispc_vp_enable_clk._entry_ptr = internal global ptr @dispc_vp_enable_clk._entry, section ".printk_index", align 4
@dispc_vp_set_clk_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.15, i32 1222, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vp%d: failed to set clk rate to %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dispc_vp_set_clk_rate\00", [42 x i8] zeroinitializer }, align 32
@dispc_vp_set_clk_rate._entry_ptr = internal global ptr @dispc_vp_set_clk_rate._entry, section ".printk_index", align 4
@dispc_vp_set_clk_rate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.15, i32 1231, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"vp%d: Clock rate %lu differs over 5%% from requested %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dispc_vp_set_clk_rate._entry_ptr.29 = internal global ptr @dispc_vp_set_clk_rate._entry.26, section ".printk_index", align 4
@dispc_vp_set_clk_rate.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.25, ptr @.str.15, ptr @.str.30, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"vp%d: new rate %lu Hz (requested %lu Hz)\0A\00", [54 x i8] zeroinitializer }, align 32
@dispc_plane_check.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.31, ptr @.str.15, ptr @.str.32, i8 1, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dispc_plane_check\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unsupported CSC (%u,%u) for HW plane %u\0A\00", [51 x i8] zeroinitializer }, align 32
@dispc_plane_check.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.31, ptr @.str.15, ptr @.str.33, i8 1, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Lite plane %u can't scale %ux%u!=%ux%u\0A\00", [52 x i8] zeroinitializer }, align 32
@dispc_runtime_suspend.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.15, ptr @.str.35, i8 2, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dispc_runtime_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@dispc_runtime_resume.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.15, ptr @.str.37, i8 2, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dispc_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@dispc_common_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dispc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.15, i32 2573, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DSS FUNC RESET not done!\0A\00", [38 x i8] zeroinitializer }, align 32
@dispc_runtime_resume._entry_ptr = internal global ptr @dispc_runtime_resume._entry, section ".printk_index", align 4
@dispc_runtime_resume.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.15, ptr @.str.39, i8 2, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OMAP DSS7 rev 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@dispc_runtime_resume.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.15, ptr @.str.40, i8 2, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VP RESETDONE %d,%d,%d\0A\00", [41 x i8] zeroinitializer }, align 32
@dispc_runtime_resume.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.15, ptr @.str.41, i8 2, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OLDI RESETDONE %d,%d,%d\0A\00", [39 x i8] zeroinitializer }, align 32
@dispc_runtime_resume.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.15, ptr @.str.42, i8 2, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DISPC IDLE %d\0A\00", [17 x i8] zeroinitializer }, align 32
@dispc_remove.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.43, ptr @.str.15, ptr @.str.44, i8 2, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dispc_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dispc_init.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.45, ptr @.str.15, ptr @.str.44, i8 2, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dispc_init\00", [21 x i8] zeroinitializer }, align 32
@dispc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.45, ptr @.str.15, i32 2669, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot set DMA masks to 48-bit\0A\00", [32 x i8] zeroinitializer }, align 32
@dispc_init._entry_ptr = internal global ptr @dispc_init._entry, section ".printk_index", align 4
@dispc_color_formats = internal constant { [29 x %struct.anon.90], [56 x i8] } { [29 x %struct.anon.90] [%struct.anon.90 { i32 842093121, i8 0 }, %struct.anon.90 { i32 842089025, i8 1 }, %struct.anon.90 { i32 842088786, i8 2 }, %struct.anon.90 { i32 909199186, i8 3 }, %struct.anon.90 { i32 909199170, i8 4 }, %struct.anon.90 { i32 892424769, i8 5 }, %struct.anon.90 { i32 892420673, i8 6 }, %struct.anon.90 { i32 875713089, i8 7 }, %struct.anon.90 { i32 875708993, i8 8 }, %struct.anon.90 { i32 875708754, i8 9 }, %struct.anon.90 { i32 875708738, i8 10 }, %struct.anon.90 { i32 875710290, i8 11 }, %struct.anon.90 { i32 875710274, i8 12 }, %struct.anon.90 { i32 808669761, i8 14 }, %struct.anon.90 { i32 808665665, i8 15 }, %struct.anon.90 { i32 842093144, i8 32 }, %struct.anon.90 { i32 842089048, i8 33 }, %struct.anon.90 { i32 842094674, i8 34 }, %struct.anon.90 { i32 892424769, i8 37 }, %struct.anon.90 { i32 892420673, i8 38 }, %struct.anon.90 { i32 875713112, i8 39 }, %struct.anon.90 { i32 875709016, i8 40 }, %struct.anon.90 { i32 875714642, i8 41 }, %struct.anon.90 { i32 875714626, i8 42 }, %struct.anon.90 { i32 808669784, i8 46 }, %struct.anon.90 { i32 808665688, i8 47 }, %struct.anon.90 { i32 1448695129, i8 62 }, %struct.anon.90 { i32 1498831189, i8 63 }, %struct.anon.90 { i32 842094158, i8 61 }], [56 x i8] zeroinitializer }, align 32
@dispc_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.15, i32 2730, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to get clk %s:%ld\0A\00", [34 x i8] zeroinitializer }, align 32
@dispc_init._entry_ptr.49 = internal global ptr @dispc_init._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@dispc_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.15, i32 2752, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to get fclk: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@dispc_init._entry_ptr.53 = internal global ptr @dispc_init._entry.51, section ".printk_index", align 4
@dispc_init.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.45, ptr @.str.15, ptr @.str.54, i8 2, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSS fclk %lu Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max-memory-bandwidth\00", [43 x i8] zeroinitializer }, align 32
@tidss_k2g_common_regs = internal constant { <{ [22 x i16], [13 x i16] }>, [58 x i8] } { <{ [22 x i16], [13 x i16] }> <{ [22 x i16] [i16 0, i16 0, i16 4, i16 8, i16 32, i16 36, i16 40, i16 44, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 0, i16 68, i16 0, i16 76, i16 80, i16 84], [13 x i16] zeroinitializer }>, [58 x i8] zeroinitializer }, align 32
@tidss_am65x_common_regs = internal constant { <{ [23 x i16], [12 x i16] }>, [58 x i8] } { <{ [23 x i16], [12 x i16] }> <{ [23 x i16] [i16 0, i16 4, i16 8, i16 32, i16 36, i16 40, i16 44, i16 48, i16 64, i16 68, i16 88, i16 112, i16 124, i16 136, i16 140, i16 144, i16 148, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172], [12 x i16] zeroinitializer }>, [58 x i8] zeroinitializer }, align 32
@dispc_bus_formats = internal constant { [9 x %struct.dispc_bus_format], [48 x i8] } { [9 x %struct.dispc_bus_format] [%struct.dispc_bus_format { i32 4118, i32 12, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4119, i32 16, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4105, i32 18, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4106, i32 24, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4120, i32 30, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4121, i32 36, i8 0, i32 0 }, %struct.dispc_bus_format { i32 4112, i32 18, i8 1, i32 0 }, %struct.dispc_bus_format { i32 4113, i32 24, i8 1, i32 2 }, %struct.dispc_bus_format { i32 4114, i32 24, i8 1, i32 1 }], [48 x i8] zeroinitializer }, align 32
@dispc_enable_oldi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.15, i32 922, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %d port width not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dispc_enable_oldi\00", [46 x i8] zeroinitializer }, align 32
@dispc_enable_oldi._entry_ptr = internal global ptr @dispc_enable_oldi._entry, section ".printk_index", align 4
@dispc_enable_oldi._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.15, i32 940, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: timeout waiting OLDI reset done\0A\00", [59 x i8] zeroinitializer }, align 32
@dispc_enable_oldi._entry_ptr.62 = internal global ptr @dispc_enable_oldi._entry.60, section ".printk_index", align 4
@dispc_csc_table = internal constant { [4 x %struct.anon.91], [48 x i8] } { [4 x %struct.anon.91] [%struct.anon.91 { i32 0, i32 1, ptr @csc_yuv2rgb_bt601_full }, %struct.anon.91 { i32 0, i32 0, ptr @csc_yuv2rgb_bt601_lim }, %struct.anon.91 { i32 1, i32 1, ptr @csc_yuv2rgb_bt709_full }, %struct.anon.91 { i32 1, i32 0, ptr @csc_yuv2rgb_bt709_lim }], [48 x i8] zeroinitializer }, align 32
@csc_yuv2rgb_bt601_full = internal constant { %struct.dispc_csc_coef, [56 x i8] } { %struct.dispc_csc_coef { ptr @dispc_csc_yuv2rgb_regval, [9 x i32] [i32 256, i32 0, i32 358, i32 256, i32 -88, i32 -182, i32 256, i32 452, i32 0], [3 x i32] [i32 0, i32 -2048, i32 -2048], [3 x i32] zeroinitializer, i32 1, ptr @.str.63 }, [56 x i8] zeroinitializer }, align 32
@csc_yuv2rgb_bt601_lim = internal constant { %struct.dispc_csc_coef, [56 x i8] } { %struct.dispc_csc_coef { ptr @dispc_csc_yuv2rgb_regval, [9 x i32] [i32 298, i32 0, i32 409, i32 298, i32 -100, i32 -208, i32 298, i32 516, i32 0], [3 x i32] [i32 -256, i32 -2048, i32 -2048], [3 x i32] zeroinitializer, i32 1, ptr @.str.64 }, [56 x i8] zeroinitializer }, align 32
@csc_yuv2rgb_bt709_full = internal constant { %struct.dispc_csc_coef, [56 x i8] } { %struct.dispc_csc_coef { ptr @dispc_csc_yuv2rgb_regval, [9 x i32] [i32 256, i32 0, i32 402, i32 256, i32 -48, i32 -120, i32 256, i32 475, i32 0], [3 x i32] [i32 0, i32 -2048, i32 -2048], [3 x i32] zeroinitializer, i32 1, ptr @.str.65 }, [56 x i8] zeroinitializer }, align 32
@csc_yuv2rgb_bt709_lim = internal constant { %struct.dispc_csc_coef, [56 x i8] } { %struct.dispc_csc_coef { ptr @dispc_csc_yuv2rgb_regval, [9 x i32] [i32 298, i32 0, i32 459, i32 298, i32 -55, i32 -136, i32 298, i32 541, i32 0], [3 x i32] [i32 -256, i32 -2048, i32 -2048], [3 x i32] zeroinitializer, i32 1, ptr @.str.66 }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT.601 Full\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BT.601 Limited\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT.709 Full\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BT.709 Limited\00", [17 x i8] zeroinitializer }, align 32
@dispc_vid_calc_scaling.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.15, ptr @.str.68, i8 1, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dispc_vid_calc_scaling\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: X-scaling factor %u/%u > %u\0A\00", [63 x i8] zeroinitializer }, align 32
@dispc_vid_calc_scaling.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.15, ptr @.str.69, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: X-scaling factor %u/%u < 1/%u\0A\00", [61 x i8] zeroinitializer }, align 32
@dispc_vid_calc_scaling.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.15, ptr @.str.70, i8 1, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Too wide input buffer %u > %u\0A\00", [61 x i8] zeroinitializer }, align 32
@dispc_vid_calc_scaling.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.15, ptr @.str.71, i8 1, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Y-scaling factor %u/%u > %u\0A\00", [63 x i8] zeroinitializer }, align 32
@dispc_vid_calc_scaling.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.67, ptr @.str.15, ptr @.str.72, i8 1, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: %ux%u decim %ux%u -> %ux%u firinc %u.%03ux%u.%03u taps %u -> %ux%u\0A\00", [56 x i8] zeroinitializer }, align 32
@dispc_vid_write_fir_coefs.c0_regs = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 108, i16 144, i16 308, i16 344], [24 x i8] zeroinitializer }, align 32
@dispc_vid_write_fir_coefs.c12_regs = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 180, i16 244, i16 380, i16 444], [24 x i8] zeroinitializer }, align 32
@dispc_vid_write_fir_coefs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.15, i32 1566, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No coefficients given.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dispc_vid_write_fir_coefs\00", [38 x i8] zeroinitializer }, align 32
@dispc_vid_write_fir_coefs._entry_ptr = internal global ptr @dispc_vid_write_fir_coefs._entry, section ".printk_index", align 4
@dispc_vid_csc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.15, i32 1512, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: CSC (%u,%u) not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dispc_vid_csc_setup\00", [44 x i8] zeroinitializer }, align 32
@dispc_vid_csc_setup._entry_ptr = internal global ptr @dispc_vid_csc_setup._entry, section ".printk_index", align 4
@dispc_k2g_vid_write_csc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.15, i32 1400, ptr @.str.28, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: No post offset support for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dispc_k2g_vid_write_csc\00", [40 x i8] zeroinitializer }, align 32
@dispc_k2g_vid_write_csc._entry_ptr = internal global ptr @dispc_k2g_vid_write_csc._entry, section ".printk_index", align 4
@dispc_vp_set_gamma.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.79, ptr @.str.15, ptr @.str.80, i8 2, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dispc_vp_set_gamma\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: hw_videoport %d, lut len %u, hw len %u\0A\00", [52 x i8] zeroinitializer }, align 32
@dispc_vp_gamma_default_lut = internal constant { [2 x %struct.drm_color_lut], [16 x i8] } { [2 x %struct.drm_color_lut] [%struct.drm_color_lut zeroinitializer, %struct.drm_color_lut { i16 -1, i16 -1, i16 -1, i16 0 }], [16 x i8] zeroinitializer }, align 32
@dispc_k2g_vp_write_gamma_table.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.81, ptr @.str.15, ptr @.str.82, i8 2, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dispc_k2g_vp_write_gamma_table\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: hw_videoport %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dispc_am65x_vp_write_gamma_table.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.83, ptr @.str.15, ptr @.str.82, i8 2, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dispc_am65x_vp_write_gamma_table\00", [63 x i8] zeroinitializer }, align 32
@dispc_j721e_vp_write_gamma_table.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.84, ptr @.str.15, ptr @.str.82, i8 2, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dispc_j721e_vp_write_gamma_table\00", [63 x i8] zeroinitializer }, align 32
@dispc_k2g_plane_init.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.85, ptr @.str.15, ptr @.str.86, i8 2, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dispc_k2g_plane_init\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@dispc_k2g_plane_init.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.85, ptr @.str.15, ptr @.str.87, i8 2, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: bufsize %u, buf_threshold %u/%u, mflag threshold %u/%u preload %u\0A\00", [57 x i8] zeroinitializer }, align 32
@dispc_k3_plane_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.88, ptr @.str.15, ptr @.str.86, i8 2, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dispc_k3_plane_init\00", [44 x i8] zeroinitializer }, align 32
@dispc_k3_plane_init.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.88, ptr @.str.15, ptr @.str.87, i8 2, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dispc_vp_init.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.89, ptr @.str.15, ptr @.str.86, i8 2, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dispc_vp_init\00", [18 x i8] zeroinitializer }, align 32
@dispc_init_errata.am65x_sr10_soc_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.90, ptr @.str.91, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM65X\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SR1.0\00", [26 x i8] zeroinitializer }, align 32
@dispc_init_errata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.15, i32 2649, ptr @.str.94, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"WA for erratum i2000: YUV formats disabled\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dispc_init_errata\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dispc_init_errata._entry_ptr = internal global ptr @dispc_init_errata._entry, section ".printk_index", align 4
@dispc_iomap_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.15, i32 2615, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot ioremap resource '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dispc_iomap_resource\00", [43 x i8] zeroinitializer }, align 32
@dispc_iomap_resource._entry_ptr = internal global ptr @dispc_iomap_resource._entry, section ".printk_index", align 4
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,am65x-oldi-io-ctrl\00", [42 x i8] zeroinitializer }, align 32
@dispc_init_am65x_oldi_io_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.15, i32 2634, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: syscon_regmap_lookup_by_phandle failed %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dispc_init_am65x_oldi_io_ctrl\00", [34 x i8] zeroinitializer }, align 32
@dispc_init_am65x_oldi_io_ctrl._entry_ptr = internal global ptr @dispc_init_am65x_oldi_io_ctrl._entry, section ".printk_index", align 4
@switch.table.dispc_vp_bus_check = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 2), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 3), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 6), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 7), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 8), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 1), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 4), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 5)], [60 x i8] zeroinitializer }, align 32
@switch.table.dispc_vp_prepare = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 2), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 3), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 6), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 7), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 8), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 1), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 4), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 5)], [60 x i8] zeroinitializer }, align 32
@switch.table.dispc_vp_enable = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 2), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 3), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 6), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 7), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 8), ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr @dispc_bus_formats, ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 1), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 4), ptr getelementptr inbounds ([9 x %struct.dispc_bus_format], ptr @dispc_bus_formats, i32 0, i32 5)], [60 x i8] zeroinitializer }, align 32
@switch.table.dispc_vp_enable.100 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 256, i32 512, i32 0, i32 0, i32 768, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 1280], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 24]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.109 = internal global [29 x i64] [i64 27, i64 32, i64 808665665, i64 808665688, i64 808669761, i64 808669784, i64 842088786, i64 842089025, i64 842089048, i64 842093121, i64 842093144, i64 842094158, i64 842094674, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 892420673, i64 892424769, i64 909199170, i64 909199186, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 88, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 93, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 94, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 106, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"dispc_k2g_feats\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 57, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 168, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 169, i32 24 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 182, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 182, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"dispc_am65x_feats\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 138, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 253, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"tidss_j721e_common_regs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 187, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 257, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 257, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 258, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 258, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 270, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 270, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"dispc_j721e_feats\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 227, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 780, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 846, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 853, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1190, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1221, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1229, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1233, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1928, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1938, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2557, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2568, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"dispc_common_regmap\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 275, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2573, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2575, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2578, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2584, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2589, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2603, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2662, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2669, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c"dispc_color_formats\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1832, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2729, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2749, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2751, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2755, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2757, i32 44 }
@___asan_gen_.308 = private unnamed_addr constant [22 x i8] c"tidss_k2g_common_regs\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 38, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant [24 x i8] c"tidss_am65x_common_regs\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 111, i32 18 }
@___asan_gen_.314 = private unnamed_addr constant [18 x i8] c"dispc_bus_formats\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 810, i32 38 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 921, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 939, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [16 x i8] c"dispc_csc_table\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1478, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"csc_yuv2rgb_bt601_full\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1427, i32 36 }
@___asan_gen_.338 = private unnamed_addr constant [22 x i8] c"csc_yuv2rgb_bt601_lim\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1439, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant [23 x i8] c"csc_yuv2rgb_bt709_full\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1451, i32 36 }
@___asan_gen_.344 = private unnamed_addr constant [22 x i8] c"csc_yuv2rgb_bt709_lim\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1463, i32 36 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1435, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1447, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1459, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1471, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1665, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1678, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1695, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1716, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1734, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [8 x i8] c"c0_regs\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1547, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant [9 x i8] c"c12_regs\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1554, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1566, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1511, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1399, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2336, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"dispc_vp_gamma_default_lut\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2321, i32 35 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2244, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2266, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2287, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2100, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2121, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2152, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2216, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [23 x i8] c"am65x_sr10_soc_devices\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2642, i32 43 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2643, i32 15 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2643, i32 36 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2649, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2615, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2629, i32 7 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [39 x i8] c"../drivers/gpu/drm/tidss/tidss_dispc.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 2633, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [32 x i8] c"switch.table.dispc_vp_bus_check\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [30 x i8] c"switch.table.dispc_vp_prepare\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [29 x i8] c"switch.table.dispc_vp_enable\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [33 x i8] c"switch.table.dispc_vp_enable.100\00", align 1
@llvm.compiler.used = appending global [142 x ptr] [ptr @dispc_enable_oldi._entry, ptr @dispc_enable_oldi._entry.60, ptr @dispc_enable_oldi._entry_ptr, ptr @dispc_enable_oldi._entry_ptr.62, ptr @dispc_init._entry, ptr @dispc_init._entry.47, ptr @dispc_init._entry.51, ptr @dispc_init._entry_ptr, ptr @dispc_init._entry_ptr.49, ptr @dispc_init._entry_ptr.53, ptr @dispc_init_am65x_oldi_io_ctrl._entry, ptr @dispc_init_am65x_oldi_io_ctrl._entry_ptr, ptr @dispc_init_errata._entry, ptr @dispc_init_errata._entry_ptr, ptr @dispc_iomap_resource._entry, ptr @dispc_iomap_resource._entry_ptr, ptr @dispc_k2g_vid_write_csc._entry, ptr @dispc_k2g_vid_write_csc._entry_ptr, ptr @dispc_runtime_resume._entry, ptr @dispc_runtime_resume._entry_ptr, ptr @dispc_vid_csc_setup._entry, ptr @dispc_vid_csc_setup._entry_ptr, ptr @dispc_vid_write_fir_coefs._entry, ptr @dispc_vid_write_fir_coefs._entry_ptr, ptr @dispc_vp_enable_clk._entry, ptr @dispc_vp_enable_clk._entry_ptr, ptr @dispc_vp_set_clk_rate._entry, ptr @dispc_vp_set_clk_rate._entry.26, ptr @dispc_vp_set_clk_rate._entry_ptr, ptr @dispc_vp_set_clk_rate._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dispc_k2g_feats, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dispc_am65x_feats, ptr @.str.8, ptr @tidss_j721e_common_regs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dispc_j721e_feats, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @dispc_common_regmap, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @dispc_color_formats, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @tidss_k2g_common_regs, ptr @tidss_am65x_common_regs, ptr @dispc_bus_formats, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @dispc_csc_table, ptr @csc_yuv2rgb_bt601_full, ptr @csc_yuv2rgb_bt601_lim, ptr @csc_yuv2rgb_bt709_full, ptr @csc_yuv2rgb_bt709_lim, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @dispc_vid_write_fir_coefs.c0_regs, ptr @dispc_vid_write_fir_coefs.c12_regs, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @dispc_vp_gamma_default_lut, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @dispc_init_errata.am65x_sr10_soc_devices, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @switch.table.dispc_vp_bus_check, ptr @switch.table.dispc_vp_prepare, ptr @switch.table.dispc_vp_enable, ptr @switch.table.dispc_vp_enable.100], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_k2g_feats to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_am65x_feats to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_j721e_common_regs to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_j721e_feats to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vp_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vp_set_clk_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vp_set_clk_rate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_common_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_color_formats to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_k2g_common_regs to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_am65x_common_regs to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_bus_formats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_enable_oldi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_enable_oldi._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_csc_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_yuv2rgb_bt601_full to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_yuv2rgb_bt601_lim to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_yuv2rgb_bt709_full to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_yuv2rgb_bt709_lim to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vid_write_fir_coefs.c0_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vid_write_fir_coefs.c12_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vid_write_fir_coefs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vid_csc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_k2g_vid_write_csc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_vp_gamma_default_lut to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init_errata.am65x_sr10_soc_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init_errata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_iomap_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_init_am65x_oldi_io_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dispc_vp_bus_check to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dispc_vp_prepare to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dispc_vp_enable to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dispc_vp_enable.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_read_and_clear_irqstatus(ptr nocapture noundef readonly %dispc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subrev, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge25
  ]

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %8 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_common.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %11 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %12, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %10) #6, !srcloc !272
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i.i = shl i32 %16, 4
  %vp_stat.2.i.i.i = and i32 %and.i.i.i, 112
  %and20.i.i.i = shl i32 %16, 3
  %17 = and i32 %and20.i.i.i, 128
  %vp_stat.3.i.i.i = or i32 %vp_stat.2.i.i.i, %17
  %arrayidx.i.i15.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i15.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %19, i32 516
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 1048576
  %or4.i = or i32 %vp_stat.3.i.i.i, %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %25 = shl i32 %16, 24
  %26 = and i32 %25, 385875968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %26) #6, !srcloc !272
  %27 = ptrtoint ptr %arrayidx.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i15.i, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %28, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %29 = shl nuw nsw i32 %22, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i.i, i32 %29) #6, !srcloc !272
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25
  %num_vps30.i = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %num_vps30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_vps30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31.not.i = icmp eq i32 %31, 0
  br i1 %cmp31.not.i, label %sw.bb1.for.cond1.preheader.i_crit_edge, label %for.body.lr.ph.i

sw.bb1.for.cond1.preheader.i_crit_edge:           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

for.body.lr.ph.i:                                 ; preds = %sw.bb1
  %base_common.i.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %sw.bb1.for.cond1.preheader.i_crit_edge
  %status.0.lcssa.i = phi i32 [ 0, %sw.bb1.for.cond1.preheader.i_crit_edge ], [ %or.i, %for.body.i.for.cond1.preheader.i_crit_edge ]
  %32 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %feat, align 4
  %num_planes34.i = getelementptr inbounds %struct.dispc_features, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %num_planes34.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_planes34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp335.not.i = icmp eq i32 %35, 0
  br i1 %cmp335.not.i, label %for.cond1.preheader.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge, label %for.body4.lr.ph.i

for.cond1.preheader.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_read_and_clear_irqstatus.exit

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %base_common.i.i24.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body4.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %status.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %36 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i.i = getelementptr i16, ptr %36, i32 12
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i, align 2
  %hw_videoport.tr.i.i = trunc i32 %i.033.i to i16
  %39 = shl i16 %hw_videoport.tr.i.i, 2
  %conv1.i.i = add i16 %38, %39
  %40 = ptrtoint ptr %base_common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_common.i.i.i, align 4
  %conv.i.i.i = zext i16 %conv1.i.i to i32
  %add.ptr.i.i.i20 = getelementptr i8, ptr %41, i32 %conv.i.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i20) #6, !srcloc !269
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i.i21 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i21)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i21, 0
  %mul.i.i.i = shl i32 %i.033.i, 2
  %add.i.i.i = add i32 %mul.i.i.i, 4
  %shl.i.i.i = shl nuw i32 1, %add.i.i.i
  %vp_stat.0.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %shl.i.i.i
  %and2.i.i.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %add7.i.i.i = add i32 %mul.i.i.i, 5
  %shl8.i.i.i = shl nuw i32 1, %add7.i.i.i
  %or9.i.i.i = select i1 %tobool3.not.i.i.i, i32 0, i32 %shl8.i.i.i
  %and11.i.i.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  %add16.i.i.i = add i32 %mul.i.i.i, 6
  %shl17.i.i.i = shl nuw i32 1, %add16.i.i.i
  %or18.i.i.i = select i1 %tobool12.not.i.i.i, i32 0, i32 %shl17.i.i.i
  %and20.i.i.i22 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i22)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i22, 0
  %add25.i.i.i = add i32 %mul.i.i.i, 7
  %shl26.i.i.i = shl nuw i32 1, %add25.i.i.i
  %or27.i.i.i = select i1 %tobool21.not.i.i.i, i32 0, i32 %shl26.i.i.i
  %vp_stat.1.i.i.i = or i32 %or9.i.i.i, %status.032.i
  %vp_stat.2.i.i.i23 = or i32 %vp_stat.1.i.i.i, %vp_stat.0.i.i.i
  %vp_stat.3.i.i.i24 = or i32 %vp_stat.2.i.i.i23, %or18.i.i.i
  %or.i = or i32 %vp_stat.3.i.i.i24, %or27.i.i.i
  %inc.i = add nuw i32 %i.033.i, 1
  %44 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %feat, align 4
  %num_vps.i = getelementptr inbounds %struct.dispc_features, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %num_vps.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_vps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %47
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.137.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc8.i, %for.body4.i.for.body4.i_crit_edge ]
  %status.136.i = phi i32 [ %status.0.lcssa.i, %for.body4.lr.ph.i ], [ %or6.i, %for.body4.i.for.body4.i_crit_edge ]
  %48 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i22.i = getelementptr i16, ptr %48, i32 10
  %49 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i22.i, align 2
  %hw_plane.tr.i.i = trunc i32 %i.137.i to i16
  %51 = shl i16 %hw_plane.tr.i.i, 2
  %conv1.i23.i = add i16 %50, %51
  %52 = ptrtoint ptr %base_common.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_common.i.i24.i, align 4
  %conv.i.i25.i = zext i16 %conv1.i23.i to i32
  %add.ptr.i.i26.i = getelementptr i8, ptr %53, i32 %conv.i.i25.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i27.i = icmp eq i32 %55, 0
  %add.i.i28.i = add i32 %i.137.i, 20
  %shl.i.i29.i = shl nuw i32 1, %add.i.i28.i
  %vid_stat.0.i.i.i = select i1 %tobool.not.i.i27.i, i32 0, i32 %shl.i.i29.i
  %or6.i = or i32 %vid_stat.0.i.i.i, %status.136.i
  %inc8.i = add nuw i32 %i.137.i, 1
  %56 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %feat, align 4
  %num_planes.i = getelementptr inbounds %struct.dispc_features, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_planes.i, align 4
  %cmp3.i = icmp ult i32 %inc8.i, %59
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge

for.body4.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_read_and_clear_irqstatus.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

dispc_k3_read_and_clear_irqstatus.exit:           ; preds = %for.body4.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge, %for.cond1.preheader.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge
  %status.1.lcssa.i = phi i32 [ %status.0.lcssa.i, %for.cond1.preheader.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge ], [ %or6.i, %for.body4.i.dispc_k3_read_and_clear_irqstatus.exit_crit_edge ]
  tail call fastcc void @dispc_k3_clear_irqstatus(ptr noundef %dispc, i32 noundef %status.1.lcssa.i) #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 780, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %dispc_k3_read_and_clear_irqstatus.exit, %sw.bb
  %retval.0 = phi i32 [ 0, %do.end ], [ %status.1.lcssa.i, %dispc_k3_read_and_clear_irqstatus.exit ], [ %or4.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_set_irqenable(ptr nocapture noundef readonly %dispc, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subrev, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge32
  ]

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !269
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i.i.i = shl i32 %8, 4
  %vp_stat.2.i.i.i.i = and i32 %and.i.i.i.i, 112
  %and20.i.i.i.i = shl i32 %8, 3
  %9 = and i32 %and20.i.i.i.i, 128
  %vp_stat.3.i.i.i.i = or i32 %vp_stat.2.i.i.i.i, %9
  %arrayidx.i.i6.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i6.i.i, align 4
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %11, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 1048576
  %or2.i.i = or i32 %vp_stat.3.i.i.i.i, %14
  %15 = xor i32 %or2.i.i, -1
  %and.i = and i32 %15, %mask
  %16 = lshr i32 %and.i, 4
  %and24.i.i.i.i = lshr i32 %and.i, 3
  %17 = and i32 %and24.i.i.i.i, 16
  %18 = and i32 %16, 7
  %19 = or i32 %18, %17
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %22 = shl nuw nsw i32 %19, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i11.i, i32 %22) #6, !srcloc !272
  %23 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i6.i.i, align 4
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %24, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %25 = shl i32 %and.i, 4
  %26 = and i32 %25, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i.i, i32 %26) #6, !srcloc !272
  %27 = lshr i32 %mask, 4
  %and24.i.i.i = lshr i32 %mask, 3
  %28 = and i32 %and24.i.i.i, 16
  %29 = and i32 %27, 7
  %30 = or i32 %29, %28
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %33 = shl nuw nsw i32 %30, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #6, !srcloc !272
  %34 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i6.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %35, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %36 = shl i32 %mask, 4
  %37 = and i32 %36, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 %37) #6, !srcloc !272
  %38 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i = getelementptr i16, ptr %38, i32 7
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i, align 2
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %41 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_common.i.i, align 4
  %conv.i.i = zext i16 %40 to i32
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2130706432) #6, !srcloc !272
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %44, i32 60
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %46 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i6.i.i, align 4
  %add.ptr.i.i7.i21.i = getelementptr i8, ptr %47, i32 512
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i21.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge32
  %num_vps28.i.i = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %num_vps28.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_vps28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp29.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp29.not.i.i, label %sw.bb1.for.cond1.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb1.for.cond1.preheader.i.i_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb1
  %base_common.i.i.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i.for.cond1.preheader.i.i_crit_edge, %sw.bb1.for.cond1.preheader.i.i_crit_edge
  %enable.0.lcssa.i.i = phi i32 [ 0, %sw.bb1.for.cond1.preheader.i.i_crit_edge ], [ %or.i.i, %for.body.i.i.for.cond1.preheader.i.i_crit_edge ]
  %51 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %feat, align 4
  %num_planes32.i.i = getelementptr inbounds %struct.dispc_features, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %num_planes32.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_planes32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp333.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp333.not.i.i, label %for.cond1.preheader.i.i.dispc_k3_read_irqenable.exit.i_crit_edge, label %for.body4.lr.ph.i.i

for.cond1.preheader.i.i.dispc_k3_read_irqenable.exit.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_read_irqenable.exit.i

for.body4.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %base_common.i.i22.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body4.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.031.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %enable.030.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %55 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %55, i32 11
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i.i.i, align 2
  %hw_videoport.tr.i.i.i = trunc i32 %i.031.i.i to i16
  %58 = shl i16 %hw_videoport.tr.i.i.i, 2
  %conv1.i.i.i = add i16 %57, %58
  %59 = ptrtoint ptr %base_common.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_common.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %conv1.i.i.i to i32
  %add.ptr.i.i.i.i20 = getelementptr i8, ptr %60, i32 %conv.i.i.i.i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i20) #6, !srcloc !269
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i.i.i21 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i21)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i21, 0
  %mul.i.i.i.i = shl i32 %i.031.i.i, 2
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 4
  %shl.i.i.i.i = shl nuw i32 1, %add.i.i.i.i
  %vp_stat.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %shl.i.i.i.i
  %and2.i.i.i.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %add7.i.i.i.i = add i32 %mul.i.i.i.i, 5
  %shl8.i.i.i.i = shl nuw i32 1, %add7.i.i.i.i
  %or9.i.i.i.i = select i1 %tobool3.not.i.i.i.i, i32 0, i32 %shl8.i.i.i.i
  %and11.i.i.i.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %and11.i.i.i.i, 0
  %add16.i.i.i.i = add i32 %mul.i.i.i.i, 6
  %shl17.i.i.i.i = shl nuw i32 1, %add16.i.i.i.i
  %or18.i.i.i.i = select i1 %tobool12.not.i.i.i.i, i32 0, i32 %shl17.i.i.i.i
  %and20.i.i.i.i22 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i.i22)
  %tobool21.not.i.i.i.i = icmp eq i32 %and20.i.i.i.i22, 0
  %add25.i.i.i.i = add i32 %mul.i.i.i.i, 7
  %shl26.i.i.i.i = shl nuw i32 1, %add25.i.i.i.i
  %or27.i.i.i.i = select i1 %tobool21.not.i.i.i.i, i32 0, i32 %shl26.i.i.i.i
  %vp_stat.1.i.i.i.i = or i32 %or9.i.i.i.i, %enable.030.i.i
  %vp_stat.2.i.i.i.i23 = or i32 %vp_stat.1.i.i.i.i, %vp_stat.0.i.i.i.i
  %vp_stat.3.i.i.i.i24 = or i32 %vp_stat.2.i.i.i.i23, %or18.i.i.i.i
  %or.i.i = or i32 %vp_stat.3.i.i.i.i24, %or27.i.i.i.i
  %inc.i.i = add nuw i32 %i.031.i.i, 1
  %63 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %feat, align 4
  %num_vps.i.i = getelementptr inbounds %struct.dispc_features, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %num_vps.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_vps.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %66
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond1.preheader.i.i_crit_edge

for.body.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %i.135.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc8.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %enable.134.i.i = phi i32 [ %enable.0.lcssa.i.i, %for.body4.lr.ph.i.i ], [ %or6.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %67 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i20.i.i = getelementptr i16, ptr %67, i32 9
  %68 = ptrtoint ptr %arrayidx.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.i20.i.i, align 2
  %hw_plane.tr.i.i.i = trunc i32 %i.135.i.i to i16
  %70 = shl i16 %hw_plane.tr.i.i.i, 2
  %conv1.i21.i.i = add i16 %69, %70
  %71 = ptrtoint ptr %base_common.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_common.i.i22.i.i, align 4
  %conv.i.i23.i.i = zext i16 %conv1.i21.i.i to i32
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %72, i32 %conv.i.i23.i.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i25.i.i = icmp eq i32 %74, 0
  %add.i.i26.i.i = add i32 %i.135.i.i, 20
  %shl.i.i27.i.i = shl nuw i32 1, %add.i.i26.i.i
  %vid_stat.0.i.i.i.i = select i1 %tobool.not.i.i25.i.i, i32 0, i32 %shl.i.i27.i.i
  %or6.i.i = or i32 %vid_stat.0.i.i.i.i, %enable.134.i.i
  %inc8.i.i = add nuw i32 %i.135.i.i, 1
  %75 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %feat, align 4
  %num_planes.i.i = getelementptr inbounds %struct.dispc_features, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_planes.i.i, align 4
  %cmp3.i.i = icmp ult i32 %inc8.i.i, %78
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.dispc_k3_read_irqenable.exit.i_crit_edge

for.body4.i.i.dispc_k3_read_irqenable.exit.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_read_irqenable.exit.i

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i.i

dispc_k3_read_irqenable.exit.i:                   ; preds = %for.body4.i.i.dispc_k3_read_irqenable.exit.i_crit_edge, %for.cond1.preheader.i.i.dispc_k3_read_irqenable.exit.i_crit_edge
  %enable.1.lcssa.i.i = phi i32 [ %enable.0.lcssa.i.i, %for.cond1.preheader.i.i.dispc_k3_read_irqenable.exit.i_crit_edge ], [ %or6.i.i, %for.body4.i.i.dispc_k3_read_irqenable.exit.i_crit_edge ]
  %79 = xor i32 %enable.1.lcssa.i.i, -1
  %and.i25 = and i32 %79, %mask
  tail call fastcc void @dispc_k3_clear_irqstatus(ptr noundef %dispc, i32 noundef %and.i25) #6
  %80 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %feat, align 4
  %num_vps79.i = getelementptr inbounds %struct.dispc_features, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %num_vps79.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_vps79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp80.not.i = icmp eq i32 %83, 0
  br i1 %cmp80.not.i, label %dispc_k3_read_irqenable.exit.i.for.cond5.preheader.i_crit_edge, label %for.body.lr.ph.i

dispc_k3_read_irqenable.exit.i.for.cond5.preheader.i_crit_edge: ; preds = %dispc_k3_read_irqenable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.body.lr.ph.i:                                 ; preds = %dispc_k3_read_irqenable.exit.i
  %base_common.i.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.body.i.for.cond5.preheader.i_crit_edge, %dispc_k3_read_irqenable.exit.i.for.cond5.preheader.i_crit_edge
  %main_enable.0.lcssa.i = phi i32 [ 0, %dispc_k3_read_irqenable.exit.i.for.cond5.preheader.i_crit_edge ], [ %main_enable.1.i, %for.body.i.for.cond5.preheader.i_crit_edge ]
  %main_disable.0.lcssa.i = phi i32 [ 0, %dispc_k3_read_irqenable.exit.i.for.cond5.preheader.i_crit_edge ], [ %main_disable.1.i, %for.body.i.for.cond5.preheader.i_crit_edge ]
  %84 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %feat, align 4
  %num_planes85.i = getelementptr inbounds %struct.dispc_features, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %num_planes85.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_planes85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp786.not.i = icmp eq i32 %87, 0
  br i1 %cmp786.not.i, label %for.cond5.preheader.i.for.end22.i_crit_edge, label %for.body8.lr.ph.i

for.cond5.preheader.i.for.end22.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %base_common.i.i65.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body8.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %main_disable.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %main_disable.1.i, %for.body.i.for.body.i_crit_edge ]
  %main_enable.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %main_enable.1.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.083.i, 2
  %add.i.i.i = add i32 %mul.i.i.i, 4
  %88 = lshr i32 %mask, %add.i.i.i
  %89 = and i32 %88, 1
  %add4.i.i.i = add i32 %mul.i.i.i, 5
  %shl5.i.i.i = shl nuw i32 1, %add4.i.i.i
  %and6.i.i.i = and i32 %shl5.i.i.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %or9.i.i.i = or i32 %89, 2
  %stat.1.i.i.i = select i1 %tobool7.not.i.i.i, i32 %89, i32 %or9.i.i.i
  %add13.i.i.i = add i32 %mul.i.i.i, 6
  %shl14.i.i.i = shl nuw i32 1, %add13.i.i.i
  %and15.i.i.i = and i32 %shl14.i.i.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  %or18.i.i.i = or i32 %stat.1.i.i.i, 4
  %stat.2.i.i.i = select i1 %tobool16.not.i.i.i, i32 %stat.1.i.i.i, i32 %or18.i.i.i
  %add22.i.i.i = add i32 %mul.i.i.i, 7
  %shl23.i.i.i = shl nuw i32 1, %add22.i.i.i
  %and24.i.i.i26 = and i32 %shl23.i.i.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i26)
  %tobool25.not.i.i.i = icmp eq i32 %and24.i.i.i26, 0
  %or27.i.i.i = or i32 %stat.2.i.i.i, 16
  %stat.3.i.i.i = select i1 %tobool25.not.i.i.i, i32 %stat.2.i.i.i, i32 %or27.i.i.i
  %90 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i.i = getelementptr i16, ptr %90, i32 11
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx.i.i, align 2
  %hw_videoport.tr.i.i = trunc i32 %i.083.i to i16
  %93 = shl i16 %hw_videoport.tr.i.i, 2
  %conv1.i.i = add i16 %92, %93
  %94 = ptrtoint ptr %base_common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base_common.i.i.i, align 4
  %conv.i.i.i = zext i16 %conv1.i.i to i32
  %add.ptr.i.i.i27 = getelementptr i8, ptr %95, i32 %conv.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %stat.3.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i27, i32 %96) #6, !srcloc !272
  %shl.neg.i.i = shl nsw i32 -1, %add.i.i.i
  %sub6.i.i = sub i32 24, %mul.i.i.i
  %shr.i.i = lshr i32 -1, %sub6.i.i
  %and.i.i = and i32 %shr.i.i, %mask
  %and2.i = and i32 %and.i.i, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %shl.i = shl nuw i32 1, %i.083.i
  %or.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %main_enable.1.i = or i32 %or.i, %main_enable.081.i
  %or4.i = select i1 %tobool.not.i, i32 %shl.i, i32 0
  %main_disable.1.i = or i32 %or4.i, %main_disable.082.i
  %inc.i = add nuw i32 %i.083.i, 1
  %97 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %feat, align 4
  %num_vps.i = getelementptr inbounds %struct.dispc_features, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %num_vps.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_vps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %100
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond5.preheader.i_crit_edge

for.body.i.for.cond5.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.189.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc21.i, %for.body8.i.for.body8.i_crit_edge ]
  %main_disable.288.i = phi i32 [ %main_disable.0.lcssa.i, %for.body8.lr.ph.i ], [ %main_disable.3.i, %for.body8.i.for.body8.i_crit_edge ]
  %main_enable.287.i = phi i32 [ %main_enable.0.lcssa.i, %for.body8.lr.ph.i ], [ %main_enable.3.i, %for.body8.i.for.body8.i_crit_edge ]
  %add.i.i62.i = add i32 %i.189.i, 20
  %101 = lshr i32 %mask, %add.i.i62.i
  %102 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i63.i = getelementptr i16, ptr %102, i32 9
  %103 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i63.i, align 2
  %hw_plane.tr.i.i = trunc i32 %i.189.i to i16
  %105 = shl i16 %hw_plane.tr.i.i, 2
  %conv1.i64.i = add i16 %104, %105
  %106 = ptrtoint ptr %base_common.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base_common.i.i65.i, align 4
  %conv.i.i66.i = zext i16 %conv1.i64.i to i32
  %add.ptr.i.i67.i = getelementptr i8, ptr %107, i32 %conv.i.i66.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %108 = shl i32 %101, 24
  %109 = and i32 %108, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i, i32 %109) #6, !srcloc !272
  %shl.neg.i69.i = shl nsw i32 -1, %add.i.i62.i
  %sub6.i70.i = sub i32 11, %i.189.i
  %shr.i71.i = lshr i32 -1, %sub6.i70.i
  %and.i72.i = and i32 %shr.i71.i, %mask
  %and10.i = and i32 %and.i72.i, %shl.neg.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add16.i = add i32 %i.189.i, 4
  %shl17.i = shl nuw i32 1, %add16.i
  %or14.i = select i1 %tobool11.not.i, i32 0, i32 %shl17.i
  %main_enable.3.i = or i32 %or14.i, %main_enable.287.i
  %or18.i = select i1 %tobool11.not.i, i32 %shl17.i, i32 0
  %main_disable.3.i = or i32 %or18.i, %main_disable.288.i
  %inc21.i = add nuw i32 %i.189.i, 1
  %110 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %feat, align 4
  %num_planes.i = getelementptr inbounds %struct.dispc_features, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_planes.i, align 4
  %cmp7.i = icmp ult i32 %inc21.i, %113
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.end22.i_crit_edge

for.body8.i.for.end22.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

for.end22.i:                                      ; preds = %for.body8.i.for.end22.i_crit_edge, %for.cond5.preheader.i.for.end22.i_crit_edge
  %main_enable.2.lcssa.i = phi i32 [ %main_enable.0.lcssa.i, %for.cond5.preheader.i.for.end22.i_crit_edge ], [ %main_enable.3.i, %for.body8.i.for.end22.i_crit_edge ]
  %main_disable.2.lcssa.i = phi i32 [ %main_disable.0.lcssa.i, %for.cond5.preheader.i.for.end22.i_crit_edge ], [ %main_disable.3.i, %for.body8.i.for.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %main_enable.2.lcssa.i)
  %tobool23.not.i = icmp eq i32 %main_enable.2.lcssa.i, 0
  br i1 %tobool23.not.i, label %for.end22.i.if.end25.i_crit_edge, label %if.then24.i

for.end22.i.if.end25.i_crit_edge:                 ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then24.i:                                      ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i28 = getelementptr i16, ptr %114, i32 7
  %115 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.i28, align 2
  %base_common.i.i29 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %117 = ptrtoint ptr %base_common.i.i29 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base_common.i.i29, align 4
  %conv.i.i30 = zext i16 %116 to i32
  %add.ptr.i.i31 = getelementptr i8, ptr %118, i32 %conv.i.i30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %119 = tail call i32 @llvm.bswap.i32(i32 %main_enable.2.lcssa.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 %119) #6, !srcloc !272
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.end22.i.if.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %main_disable.2.lcssa.i)
  %tobool26.not.i = icmp eq i32 %main_disable.2.lcssa.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.dispc_k3_set_irqenable.exit_crit_edge, label %if.then27.i

if.end25.i.dispc_k3_set_irqenable.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_set_irqenable.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx28.i = getelementptr i16, ptr %120, i32 8
  %121 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx28.i, align 2
  %base_common.i73.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %123 = ptrtoint ptr %base_common.i73.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base_common.i73.i, align 4
  %conv.i74.i = zext i16 %122 to i32
  %add.ptr.i75.i = getelementptr i8, ptr %124, i32 %conv.i74.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %125 = tail call i32 @llvm.bswap.i32(i32 %main_disable.2.lcssa.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %125) #6, !srcloc !272
  br label %dispc_k3_set_irqenable.exit

dispc_k3_set_irqenable.exit:                      ; preds = %if.then27.i, %if.end25.i.dispc_k3_set_irqenable.exit_crit_edge
  %126 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx30.i = getelementptr i16, ptr %126, i32 7
  %127 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx30.i, align 2
  %base_common.i76.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %129 = ptrtoint ptr %base_common.i76.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base_common.i76.i, align 4
  %conv.i77.i = zext i16 %128 to i32
  %add.ptr.i78.i = getelementptr i8, ptr %130, i32 %conv.i77.i
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 796, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %dispc_k3_set_irqenable.exit, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_vp_bus_check(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_format = getelementptr inbounds %struct.tidss_crtc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_format, align 4
  %switch.tableidx = add i32 %1, -4105
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 17
  br i1 %2, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vp_bus_check.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vp_bus_check, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !273

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_format, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vp_bus_check.__UNIQUE_ID_ddebug319, ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %6) #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 123779, %switch.tableidx
  %7 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.lobit.not = icmp eq i32 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %9, i32 0, i32 10, i32 %hw_videoport
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %switch.lookup.cleanup_crit_edge, label %land.lhs.true

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %switch.lookup
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.dispc_vp_bus_check, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %is_oldi_fmt = getelementptr inbounds %struct.dispc_bus_format, ptr %switch.load, i32 0, i32 2
  %13 = ptrtoint ptr %is_oldi_fmt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_oldi_fmt, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %do.body11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vp_bus_check.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vp_bus_check, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !273

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %15 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24, align 4
  %17 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feat, align 4
  %arrayidx26 = getelementptr %struct.dispc_features, ptr %18, i32 0, i32 7, i32 %hw_videoport
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vp_bus_check.__UNIQUE_ID_ddebug320, ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body11, %land.lhs.true.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then23 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_prepare(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_format = getelementptr inbounds %struct.tidss_crtc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_format, align 4
  %switch.tableidx = add i32 %1, -4105
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 17
  br i1 %2, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 952, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 123779, %switch.tableidx
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.dispc_vp_prepare, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %5 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %6, i32 0, i32 10, i32 %hw_videoport
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then25, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %switch.lookup
  tail call fastcc void @dispc_oldi_tx_power(ptr noundef %dispc, i1 noundef zeroext true)
  %add.i = add i32 %hw_videoport, 5
  %shl.i = shl nuw i32 1, %add.i
  %data_width.i = getelementptr inbounds %struct.dispc_bus_format, ptr %switch.load, i32 0, i32 1
  %9 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_width.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %10, label %do.end.i [
    i32 24, label %if.then25.if.end5.i_crit_edge
    i32 18, label %if.end5.fold.split.i
  ]

if.then25.if.end5.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %10) #9
  br label %if.end5.i

if.end5.fold.split.i:                             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.fold.split.i, %do.end.i, %if.then25.if.end5.i_crit_edge
  %oldi_cfg.0.i = phi i32 [ 4225, %do.end.i ], [ 4481, %if.then25.if.end5.i_crit_edge ], [ 4225, %if.end5.fold.split.i ]
  %oldi_mode_reg_val.i = getelementptr inbounds %struct.dispc_bus_format, ptr %switch.load, i32 0, i32 3
  %14 = ptrtoint ptr %oldi_mode_reg_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oldi_mode_reg_val.i, align 4
  %shl2.i4.i.i = shl i32 %15, 1
  %and.i.i.i = and i32 %shl2.i4.i.i, 14
  %or8.i = or i32 %and.i.i.i, %oldi_cfg.0.i
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #6, !srcloc !272
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end5.i
  %count.0.i = phi i32 [ 0, %if.end5.i ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %19 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i = getelementptr i16, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %22 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_common.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i36.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #6, !srcloc !269
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i = and i32 %25, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %count.0.i)
  %cmp10.i = icmp ult i32 %count.0.i, 10000
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp10.i, i1 false
  %inc.i = add nuw nsw i32 %count.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %26 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx11.i = getelementptr i16, ptr %26, i32 3
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx11.i, align 2
  %29 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_common.i.i, align 4
  %conv.i38.i = zext i16 %28 to i32
  %add.ptr.i39.i = getelementptr i8, ptr %30, i32 %conv.i38.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #6, !srcloc !269
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and13.i = and i32 %32, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.end18.i, label %while.end.i.cleanup_crit_edge

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev19.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %33 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18.i, %while.end.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_oldi_tx_power(ptr nocapture noundef readonly %dispc, i1 noundef zeroext %power) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oldi_io_ctrl = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 6
  %0 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oldi_io_ctrl, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.end24, !prof !275

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 865, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %power, i32 0, i32 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 256, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oldi_io_ctrl, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 256, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oldi_io_ctrl, align 4
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 256, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oldi_io_ctrl, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 256, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oldi_io_ctrl, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 256, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_enable(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_format = getelementptr inbounds %struct.tidss_crtc_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_format, align 4
  %bus_flags = getelementptr inbounds %struct.tidss_crtc_state, ptr %state, i32 0, i32 3
  %switch.tableidx = add i32 %1, -4105
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 17
  br i1 %2, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 974, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 123779, %switch.tableidx
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.dispc_vp_enable, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %data_width = getelementptr inbounds %struct.dispc_bus_format, ptr %switch.load, i32 0, i32 1
  %5 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_width, align 4
  %7 = add i32 %6, -12
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %9 = icmp ult i32 %8, 13
  br i1 %9, label %switch.hole_check212, label %switch.lookup.do.end.i_crit_edge

switch.lookup.do.end.i_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check212.do.end.i_crit_edge, %switch.lookup.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 899, i32 noundef 9, ptr noundef null) #6
  br label %dispc_set_num_datalines.exit

switch.hole_check212:                             ; preds = %switch.lookup
  %switch.maskindex = trunc i32 %8 to i16
  %switch.shifted214 = lshr i16 4685, %switch.maskindex
  %10 = and i16 %switch.shifted214, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit215.not = icmp eq i16 %10, 0
  br i1 %switch.lobit215.not, label %switch.hole_check212.do.end.i_crit_edge, label %switch.lookup213

switch.hole_check212.do.end.i_crit_edge:          ; preds = %switch.hole_check212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

switch.lookup213:                                 ; preds = %switch.hole_check212
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep216 = getelementptr inbounds [13 x i32], ptr @switch.table.dispc_vp_enable.100, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep216 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load217 = load i32, ptr %switch.gep216, align 4
  br label %dispc_set_num_datalines.exit

dispc_set_num_datalines.exit:                     ; preds = %switch.lookup213, %do.end.i
  %v.0.i = phi i32 [ 768, %do.end.i ], [ %switch.load217, %switch.lookup213 ]
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %15 = and i32 %14, -458753
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %or.i.i.i = or i32 %16, %v.0.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %19) #6, !srcloc !272
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hsync_start, align 2
  %conv = zext i16 %21 to i32
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay, align 4
  %conv25 = zext i16 %23 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hsync_end, align 4
  %conv26 = zext i16 %25 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %htotal, align 2
  %conv30 = zext i16 %27 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 7
  %28 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsync_start, align 4
  %conv34 = zext i16 %29 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 6
  %30 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vdisplay, align 2
  %conv35 = zext i16 %31 to i32
  %sub36 = sub nsw i32 %conv34, %conv35
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 8
  %32 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vsync_end, align 2
  %conv37 = zext i16 %33 to i32
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 9
  %34 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vtotal, align 4
  %conv41 = zext i16 %35 to i32
  %sub44 = sub nsw i32 %conv41, %conv37
  %36 = xor i32 %conv, -1
  %sub45 = add nsw i32 %conv26, %36
  %shl2.i = and i32 %sub45, 255
  %37 = xor i32 %conv25, -1
  %sub47 = add nsw i32 %37, %conv
  %shl2.i185 = shl nsw i32 %sub47, 8
  %and.i = and i32 %shl2.i185, 1048320
  %or = or i32 %shl2.i, %and.i
  %38 = xor i32 %conv26, -1
  %sub49 = add nsw i32 %conv30, %38
  %shl2.i186 = shl i32 %sub49, 20
  %or51 = or i32 %or, %shl2.i186
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or51) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #6, !srcloc !272
  %42 = xor i32 %conv34, -1
  %sub52 = add nsw i32 %conv37, %42
  %shl2.i188 = and i32 %sub52, 255
  %shl2.i189 = shl nsw i32 %sub36, 8
  %and.i190 = and i32 %shl2.i189, 1048320
  %or55 = or i32 %shl2.i188, %and.i190
  %shl2.i191 = shl i32 %sub44, 20
  %or57 = or i32 %or55, %shl2.i191
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %44, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %or57) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %45) #6, !srcloc !272
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 11
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %48 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bus_flags, align 4
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp ne i32 %50, 0
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %52 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %53, i32 0, i32 10, i32 %hw_videoport
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp = icmp ne i32 %55, 1
  %spec.select = select i1 %cmp, i1 %51, i1 false
  %56 = shl i32 %49, 10
  %and.i195 = and i32 %56, 65536
  %and.i197 = select i1 %spec.select, i32 32768, i32 0
  %57 = shl i32 %49, 11
  %and.i198 = and i32 %57, 16384
  %58 = shl i32 %47, 12
  %and.i199 = and i32 %58, 8192
  %59 = shl i32 %47, 9
  %and.i200 = and i32 %59, 4096
  %or108 = or i32 %and.i199, %and.i200
  %or112 = or i32 %or108, %and.i195
  %or116 = or i32 %or112, %and.i198
  %or120 = or i32 %or116, %and.i197
  %or124 = or i32 %or120, 393216
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %61, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %or124) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %62) #6, !srcloc !272
  %63 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hdisplay, align 4
  %65 = add i16 %64, 4095
  %66 = and i16 %65, 4095
  %shl2.i203 = zext i16 %66 to i32
  %67 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vdisplay, align 2
  %69 = add i16 %68, 4095
  %70 = and i16 %69, 4095
  %shl2.i204 = zext i16 %70 to i32
  %and.i205 = shl nuw nsw i32 %shl2.i204, 16
  %or133 = or i32 %and.i205, %shl2.i203
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %72, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %or133) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %73) #6, !srcloc !272
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %77 = or i32 %76, 16777216
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %77) #6, !srcloc !272
  br label %cleanup

cleanup:                                          ; preds = %dispc_set_num_datalines.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_disable(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %3) #6, !srcloc !272
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_unprepare(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %1, i32 0, i32 10, i32 %hw_videoport
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !272
  tail call fastcc void @dispc_oldi_tx_power(ptr noundef %dispc, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dispc_vp_go_busy(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_go(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !276

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1054, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %7 = or i32 %6, 536870912
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #6, !srcloc !272
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_vp_mode_valid(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %1, i32 0, i32 10, i32 %hw_videoport
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.dispc_features, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end23, !prof !275

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1123, i32 noundef 9, ptr noundef null) #6
  br label %cleanup128

if.end23:                                         ; preds = %entry
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp25 = icmp slt i32 %7, %9
  br i1 %cmp25, label %if.end23.cleanup128_crit_edge, label %if.end27

if.end23.cleanup128_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp29 = icmp sgt i32 %7, %5
  br i1 %cmp29, label %if.end27.cleanup128_crit_edge, label %if.end31

if.end27.cleanup128_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end31:                                         ; preds = %if.end27
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %11)
  %cmp32 = icmp ugt i16 %11, 4096
  br i1 %cmp32, label %if.end31.cleanup128_crit_edge, label %if.end35

if.end31.cleanup128_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end35:                                         ; preds = %if.end31
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %conv36 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %13)
  %cmp37 = icmp ugt i16 %13, 4096
  br i1 %cmp37, label %if.end35.cleanup128_crit_edge, label %if.end40

if.end35.cleanup128_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end40:                                         ; preds = %if.end35
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end43, label %if.end40.cleanup128_crit_edge

if.end40.cleanup128_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end43:                                         ; preds = %if.end40
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp46.not = icmp eq i32 %rem, 0
  br i1 %cmp46.not, label %if.end49, label %if.end43.cleanup128_crit_edge

if.end43.cleanup128_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end49:                                         ; preds = %if.end43
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %16 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_start, align 2
  %conv50 = zext i16 %17 to i32
  %sub = sub nsw i32 %conv50, %conv
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %18 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hsync_end, align 4
  %conv53 = zext i16 %19 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %20 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %htotal, align 2
  %conv57 = zext i16 %21 to i32
  %sub60 = sub nsw i32 %conv57, %conv53
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %22 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vtotal, align 4
  %conv69 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %17)
  %cmp73 = icmp eq i16 %19, %17
  %sub56 = sub nsw i32 %conv53, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub56)
  %cmp75 = icmp ugt i32 %sub56, 256
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp75
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %11)
  %cmp78 = icmp eq i16 %17, %11
  %or.cond171 = select i1 %or.cond, i1 true, i1 %cmp78
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp81 = icmp ugt i32 %sub, 4096
  %or.cond172 = select i1 %or.cond171, i1 true, i1 %cmp81
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %19)
  %cmp84 = icmp eq i16 %21, %19
  %or.cond173 = select i1 %or.cond172, i1 true, i1 %cmp84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub60)
  %cmp87 = icmp ugt i32 %sub60, 4096
  %or.cond174 = select i1 %or.cond173, i1 true, i1 %cmp87
  br i1 %or.cond174, label %if.end49.cleanup128_crit_edge, label %if.end90

if.end49.cleanup128_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end90:                                         ; preds = %if.end49
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %24 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_end, align 2
  %conv65 = zext i16 %25 to i32
  %sub72 = sub nsw i32 %conv69, %conv65
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %26 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vsync_start, align 4
  %conv61 = zext i16 %27 to i32
  %sub68 = sub nsw i32 %conv65, %conv61
  %sub64 = sub nsw i32 %conv61, %conv36
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp91 = icmp eq i16 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub68)
  %cmp94 = icmp ugt i32 %sub68, 256
  %or.cond175 = select i1 %cmp91, i1 true, i1 %cmp94
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub64)
  %cmp97 = icmp ugt i32 %sub64, 4095
  %or.cond176 = select i1 %or.cond175, i1 true, i1 %cmp97
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub72)
  %cmp100 = icmp ugt i32 %sub72, 4095
  %or.cond177 = select i1 %or.cond176, i1 true, i1 %cmp100
  br i1 %or.cond177, label %if.end90.cleanup128_crit_edge, label %if.end103

if.end90.cleanup128_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end103:                                        ; preds = %if.end90
  %memory_bandwidth_limit = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 14
  %28 = ptrtoint ptr %memory_bandwidth_limit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %memory_bandwidth_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool104.not = icmp eq i32 %29, 0
  br i1 %tobool104.not, label %if.end103.if.end127_crit_edge, label %if.then105

if.end103.if.end127_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then105:                                       ; preds = %if.end103
  %mul = mul i32 %7, 1000
  %conv107 = sext i32 %mul to i64
  %conv109 = zext i16 %11 to i64
  %conv112 = zext i16 %13 to i64
  %mul110 = shl nsw i64 %conv107, 2
  %mul113 = mul nsw i64 %mul110, %conv109
  %mul114 = mul i64 %mul113, %conv112
  %mul119 = mul nuw i32 %conv69, %conv57
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul114)
  %cmp164.i.i = icmp ult i64 %mul114, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !276

if.then168.i.i:                                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul114 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul119
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul119, i64 %mul114) #10, !srcloc !277
  %asmresult1.i.i.i = extractvalue { i64, i64 } %30, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv121 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i, i64 %conv121)
  %cmp122 = icmp ugt i64 %dividend.addr.0.i.i, %conv121
  br i1 %cmp122, label %div_u64.exit.cleanup128_crit_edge, label %div_u64.exit.if.end127_crit_edge

div_u64.exit.if.end127_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

div_u64.exit.cleanup128_crit_edge:                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup128

if.end127:                                        ; preds = %div_u64.exit.if.end127_crit_edge, %if.end103.if.end127_crit_edge
  br label %cleanup128

cleanup128:                                       ; preds = %if.end127, %div_u64.exit.cleanup128_crit_edge, %if.end90.cleanup128_crit_edge, %if.end49.cleanup128_crit_edge, %if.end43.cleanup128_crit_edge, %if.end40.cleanup128_crit_edge, %if.end35.cleanup128_crit_edge, %if.end31.cleanup128_crit_edge, %if.end27.cleanup128_crit_edge, %if.end23.cleanup128_crit_edge, %do.end
  %retval.1 = phi i32 [ -2, %do.end ], [ 0, %if.end127 ], [ -2, %div_u64.exit.cleanup128_crit_edge ], [ 16, %if.end23.cleanup128_crit_edge ], [ 15, %if.end27.cleanup128_crit_edge ], [ -2, %if.end31.cleanup128_crit_edge ], [ -2, %if.end35.cleanup128_crit_edge ], [ 7, %if.end40.cleanup128_crit_edge ], [ 18, %if.end43.cleanup128_crit_edge ], [ 18, %if.end49.cleanup128_crit_edge ], [ 19, %if.end90.cleanup128_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_vp_enable_clk(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 7, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i.ph) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_disable_clk(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 7, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_vp_set_clk_rate(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 7, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %hw_videoport, i32 noundef %rate) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %div.i = udiv i32 %rate, 100
  %div1.i = udiv i32 %call3, 100
  %sub.i = sub nsw i32 %div1.i, %div.i
  %mul.i = mul i32 %sub.i, 100
  %div2.i = sdiv i32 %mul.i, %div.i
  %6 = tail call i32 @llvm.abs.i32(i32 %div2.i, i1 false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp = icmp ugt i32 %6, 5
  br i1 %cmp, label %do.end8, label %if.end.do.body11_crit_edge

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %hw_videoport, i32 noundef %call3, i32 noundef %rate) #9
  br label %do.body11

do.body11:                                        ; preds = %do.end8, %if.end.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vp_set_clk_rate.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vp_set_clk_rate, %if.then16)) #6
          to label %cleanup [label %if.then16], !srcloc !273

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %9 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev17, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vp_set_clk_rate.__UNIQUE_ID_ddebug321, ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %hw_videoport, i32 noundef %call20, i32 noundef %rate) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body11, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_ovr_set_plane(ptr nocapture noundef readonly %dispc, i32 noundef %hw_plane, i32 noundef %hw_videoport, i32 noundef %x, i32 noundef %y, i32 noundef %layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subrev, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 %y, 16
  %or.i = or i32 %shl.i, %x
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !272
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %layer, 2
  %add.i = add i32 %mul.i, 32
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 4, i32 %hw_videoport
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i = and i32 %add.i, 65532
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %11 = and i32 %10, -503316481
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %shl2.i4.i.i.i = shl i32 %hw_plane, 1
  %and.i.i.i.i = and i32 %shl2.i4.i.i.i, 30
  %or.i.i.i = or i32 %12, %and.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %15) #6, !srcloc !272
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %19 = and i32 %18, 1057029375
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %shl2.i4.i.i15.i = shl i32 %x, 6
  %and.i.i.i16.i = and i32 %shl2.i4.i.i15.i, 262080
  %or.i.i17.i = or i32 %20, %and.i.i.i16.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i8.i18.i = getelementptr i8, ptr %22, i32 %conv.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i.i17.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i18.i, i32 %23) #6, !srcloc !272
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %25, i32 %conv.i.i.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %27 = and i32 %26, -63616
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %shl2.i4.i.i23.i = shl i32 %y, 19
  %and.i.i.i24.i = and i32 %shl2.i4.i.i23.i, 2146959360
  %or.i.i25.i = or i32 %28, %and.i.i.i24.i
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i8.i26.i = getelementptr i8, ptr %30, i32 %conv.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i25.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i26.i, i32 %31) #6, !srcloc !272
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i31 = shl i32 %layer, 2
  %add.i32 = add i32 %mul.i31, 32
  %arrayidx.i.i.i33 = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 4, i32 %hw_videoport
  %32 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %conv.i.i.i34 = and i32 %add.i32, 65532
  %add.ptr.i.i.i35 = getelementptr i8, ptr %33, i32 %conv.i.i.i34
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i35) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %35 = and i32 %34, -503316481
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %shl2.i4.i.i.i36 = shl i32 %hw_plane, 1
  %and.i.i.i.i37 = and i32 %shl2.i4.i.i.i36, 30
  %or.i.i.i38 = or i32 %36, %and.i.i.i.i37
  %37 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %add.ptr.i8.i.i39 = getelementptr i8, ptr %38, i32 %conv.i.i.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i38) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i39, i32 %39) #6, !srcloc !272
  %add2.i = add i32 %mul.i31, 52
  %40 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %conv.i.i12.i = and i32 %add2.i, 65532
  %add.ptr.i.i13.i40 = getelementptr i8, ptr %41, i32 %conv.i.i12.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i40) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %43 = and i32 %42, 12648447
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %shl2.i4.i.i15.i41 = and i32 %x, 16383
  %or.i.i16.i = or i32 %44, %shl2.i4.i.i15.i41
  %45 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %add.ptr.i8.i17.i = getelementptr i8, ptr %46, i32 %conv.i.i12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.i16.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i17.i, i32 %47) #6, !srcloc !272
  %48 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %49, i32 %conv.i.i12.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %51 = and i32 %50, -65344
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %shl2.i4.i.i22.i = shl i32 %y, 16
  %and.i.i.i23.i = and i32 %shl2.i4.i.i22.i, 1073676288
  %or.i.i24.i = or i32 %52, %and.i.i.i23.i
  %53 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i.i33, align 4
  %add.ptr.i8.i25.i = getelementptr i8, ptr %54, i32 %conv.i.i12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i24.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i25.i, i32 %55) #6, !srcloc !272
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1290, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_ovr_enable_layer(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, i32 noundef %layer, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 32
  %lnot.ext = zext i1 %enable to i32
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 4, i32 %hw_videoport
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i.i = and i32 %add, 65532
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or.i.i = or i32 %8, %lnot.ext
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %11) #6, !srcloc !272
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dispc_plane_formats(ptr nocapture noundef readonly %dispc, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fourccs = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 12
  %0 = ptrtoint ptr %fourccs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fourccs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1894, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %num_fourccs = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 13
  %2 = ptrtoint ptr %num_fourccs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fourccs, align 4
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  %5 = ptrtoint ptr %fourccs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fourccs, align 4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_plane_check(ptr nocapture noundef readonly %dispc, i32 noundef %hw_plane, ptr nocapture noundef readonly %state, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  %scaling = alloca %struct.dispc_scaling_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %1, i32 0, i32 14, i32 %hw_plane
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 11
  %10 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %11, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %13)
  %cmp.not = icmp eq i32 %shr, %13
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %14 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_h, align 4
  %shr2 = lshr i32 %15, 16
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %16 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2, i32 %17)
  %cmp3 = icmp ne i32 %shr2, %17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %18 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp3, %lor.rhs ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %scaling) #6
  %19 = call ptr @memset(ptr %scaling, i32 255, i32 64)
  %20 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %9, label %lor.end.if.end17_crit_edge [
    i32 1448695129, label %lor.end.if.then_crit_edge
    i32 1498831189, label %lor.end.if.then_crit_edge85
    i32 842094158, label %lor.end.if.then_crit_edge86
  ]

lor.end.if.then_crit_edge86:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.end.if.then_crit_edge85:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.end.if.then_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.end.if.end17_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %lor.end.if.then_crit_edge, %lor.end.if.then_crit_edge85, %lor.end.if.then_crit_edge86
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 17
  %21 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %color_encoding, align 4
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 18
  %23 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %color_range, align 4
  %25 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %22, label %if.then.do.body_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.2.i
  ]

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch84 = icmp ult i32 %24, 2
  br i1 %switch84, label %land.lhs.true.i.if.end17_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.2.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch = icmp ult i32 %24, 2
  br i1 %switch, label %land.lhs.true.2.i.if.end17_crit_edge, label %land.lhs.true.2.i.do.body_crit_edge

land.lhs.true.2.i.do.body_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.2.i.if.end17_crit_edge:             ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true.2.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_plane_check.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_plane_check, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !273

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %color_encoding, align 4
  %30 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %color_range, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_plane_check.__UNIQUE_ID_ddebug327, ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %29, i32 noundef %31, i32 noundef %hw_plane) #6
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.2.i.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge, %lor.end.if.end17_crit_edge
  br i1 %18, label %if.then19, label %if.end17.if.end50_crit_edge

if.end17.if.end50_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then19:                                        ; preds = %if.end17
  br i1 %tobool.not, label %if.end45, label %do.body22

do.body22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_plane_check.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_plane_check, %if.then34)) #6
          to label %cleanup [label %if.then34], !srcloc !273

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %32 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev35, align 4
  %34 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_w, align 4
  %shr37 = lshr i32 %35, 16
  %src_h38 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %36 = ptrtoint ptr %src_h38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_h38, align 4
  %shr39 = lshr i32 %37, 16
  %38 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crtc_w, align 4
  %crtc_h41 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %40 = ptrtoint ptr %crtc_h41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_h41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_plane_check.__UNIQUE_ID_ddebug328, ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %hw_plane, i32 noundef %shr37, i32 noundef %shr39, i32 noundef %39, i32 noundef %41) #6
  br label %cleanup

if.end45:                                         ; preds = %if.then19
  %call46 = call fastcc i32 @dispc_vid_calc_scaling(ptr noundef %dispc, ptr noundef %state, ptr noundef nonnull %scaling, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end50_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %if.end45.if.end50_crit_edge, %if.end17.if.end50_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %if.then34, %do.body22, %if.then13, %do.body
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %if.then13 ], [ -22, %if.then34 ], [ %call46, %if.end45.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %scaling) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dispc_vid_calc_scaling(ptr nocapture noundef readonly %dispc, ptr nocapture noundef readonly %state, ptr noundef %sp, i1 noundef zeroext %lite_plane) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %scaling = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %scaling to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scaling, align 4
  %in_width_max_3tap_rgb = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %in_width_max_3tap_rgb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_width_max_3tap_rgb, align 4
  %12 = getelementptr inbounds i8, ptr %sp, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 56)
  %14 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %sp, align 4
  %yinc = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 1
  %15 = ptrtoint ptr %yinc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %yinc, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 11
  %16 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %17, 16
  %in_w = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 2
  %18 = ptrtoint ptr %in_w to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %in_w, align 4
  %in_w_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 4
  %19 = ptrtoint ptr %in_w_uv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %in_w_uv, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %20 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_h, align 4
  %shr3 = lshr i32 %21, 16
  %in_h = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 3
  %22 = ptrtoint ptr %in_h to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr3, ptr %in_h, align 4
  %in_h_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 5
  %23 = ptrtoint ptr %in_h_uv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr3, ptr %in_h_uv, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %24 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %25)
  %cmp = icmp ne i32 %shr, %25
  %scale_x = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 10
  %frombool6 = zext i1 %cmp to i8
  %26 = ptrtoint ptr %scale_x to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool6, ptr %scale_x, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %27 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %28)
  %cmp8 = icmp ne i32 %shr3, %28
  %scale_y = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 11
  %frombool9 = zext i1 %cmp8 to i8
  %29 = ptrtoint ptr %scale_y to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool9, ptr %scale_y, align 1
  %30 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %7, label %entry.if.end18_crit_edge [
    i32 1448695129, label %entry.if.then_crit_edge
    i32 1498831189, label %entry.if.then_crit_edge1293
    i32 842094158, label %entry.if.then_crit_edge1294
  ]

entry.if.then_crit_edge1294:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge1293:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1293, %entry.if.then_crit_edge1294
  %in_width_max_5tap_yuv = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %in_width_max_5tap_yuv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_width_max_5tap_yuv, align 4
  %in_width_max_3tap_yuv = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %in_width_max_3tap_yuv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_width_max_3tap_yuv, align 4
  %shr11 = lshr i32 %17, 17
  %35 = ptrtoint ptr %in_w_uv to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr11, ptr %in_w_uv, align 4
  %36 = ptrtoint ptr %scale_x to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %scale_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %7)
  %cmp13 = icmp eq i32 %7, 842094158
  br i1 %cmp13, label %if.then14, label %if.then.lor.lhs.false_crit_edge

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shr16 = lshr i32 %21, 17
  %37 = ptrtoint ptr %in_h_uv to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr16, ptr %in_h_uv, align 4
  %38 = ptrtoint ptr %scale_y to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %scale_y, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %entry.if.end18_crit_edge
  %in_width_max_3tap.0.ph = phi i32 [ %11, %entry.if.end18_crit_edge ], [ %34, %if.then14 ]
  %in_width_max_5tap.0.ph = phi i32 [ %9, %entry.if.end18_crit_edge ], [ %32, %if.then14 ]
  %39 = ptrtoint ptr %scale_x to i32
  call void @__asan_load1_noabort(i32 %39)
  %.pr = load i8, ptr %scale_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end18.lor.lhs.false_crit_edge

if.end18.lor.lhs.false_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end18
  %40 = ptrtoint ptr %scale_y to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scale_y, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.not = icmp eq i8 %41, 0
  %brmerge = or i1 %tobool21.not, %lite_plane
  br i1 %brmerge, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %in_width_max_5tap.01279 = phi i32 [ %in_width_max_5tap.0.ph, %if.end18.lor.lhs.false_crit_edge ], [ %32, %if.then.lor.lhs.false_crit_edge ]
  %in_width_max_3tap.01277 = phi i32 [ %in_width_max_3tap.0.ph, %if.end18.lor.lhs.false_crit_edge ], [ %34, %if.then.lor.lhs.false_crit_edge ]
  br i1 %lite_plane, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %tobool.not1280 = phi i1 [ true, %land.lhs.true.if.end24_crit_edge ], [ false, %lor.lhs.false.if.end24_crit_edge ]
  %in_width_max_5tap.01278 = phi i32 [ %in_width_max_5tap.0.ph, %land.lhs.true.if.end24_crit_edge ], [ %in_width_max_5tap.01279, %lor.lhs.false.if.end24_crit_edge ]
  %in_width_max_3tap.01276 = phi i32 [ %in_width_max_3tap.0.ph, %land.lhs.true.if.end24_crit_edge ], [ %in_width_max_3tap.01277, %lor.lhs.false.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %in_width_max_5tap.01278)
  %cmp26 = icmp ugt i32 %shr, %in_width_max_5tap.01278
  %downscale_limit_3tap = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 6
  %downscale_limit_5tap = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 5
  %not.cmp26 = xor i1 %cmp26, true
  %.sink = zext i1 %not.cmp26 to i8
  %in_width_max.0 = select i1 %cmp26, i32 %in_width_max_3tap.01276, i32 %in_width_max_5tap.01278
  %downscale_limit.0.in = select i1 %cmp26, ptr %downscale_limit_3tap, ptr %downscale_limit_5tap
  %42 = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 16
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %42, align 4
  %44 = ptrtoint ptr %downscale_limit.0.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %downscale_limit.0 = load i32, ptr %downscale_limit.0.in, align 4
  br i1 %tobool.not1280, label %if.end24.if.end136_crit_edge, label %if.then32

if.end24.if.end136_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then32:                                        ; preds = %if.end24
  %45 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_w, align 4
  %conv.i = zext i32 %shr to i64
  %mul.i = shl nuw nsw i64 %conv.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %17)
  %cmp164.i.i.i = icmp ult i32 %17, 134217728
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !276

if.then168.i.i.i:                                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %46
  br label %dispc_calc_fir_inc.exit

if.else174.i.i.i:                                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %mul.i) #10, !srcloc !277
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %47, 1
  %extract.t3.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %dispc_calc_fir_inc.exit

dispc_calc_fir_inc.exit:                          ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t3.i, %if.else174.i.i.i ]
  %fir_xinc = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 6
  %48 = ptrtoint ptr %fir_xinc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %fir_xinc, align 4
  %upscale_limit = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %upscale_limit to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %upscale_limit, align 4
  %div172.i.i.i549 = udiv i32 2097152, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i, i32 %div172.i.i.i549)
  %cmp38 = icmp ult i32 %dividend.addr.0.i.i.off0.i, %div172.i.i.i549
  br i1 %cmp38, label %do.body, label %if.end51

do.body:                                          ; preds = %dispc_calc_fir_inc.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vid_calc_scaling, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !273

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_w, align 4
  %55 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_w, align 4
  %shr48 = lshr i32 %56, 16
  %57 = ptrtoint ptr %upscale_limit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %upscale_limit, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug322, ptr noundef %52, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %54, i32 noundef %shr48, i32 noundef %58) #6
  br label %cleanup

if.end51:                                         ; preds = %dispc_calc_fir_inc.exit
  %mul.i554 = shl i32 %downscale_limit.0, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i, i32 %mul.i554)
  %cmp54.not = icmp ult i32 %dividend.addr.0.i.i.off0.i, %mul.i554
  br i1 %cmp54.not, label %if.end51.if.end93_crit_edge, label %if.then55

if.end51.if.end93_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then55:                                        ; preds = %if.end51
  %59 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc_w, align 4
  %add = add nsw i32 %shr, -1
  %sub = add i32 %add, %60
  %div = udiv i32 %sub, %60
  %add59 = add i32 %downscale_limit.0, -1
  %sub60 = add i32 %add59, %div
  %div61 = udiv i32 %sub60, %downscale_limit.0
  %61 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div61, ptr %sp, align 4
  %xinc_max = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 7
  %62 = ptrtoint ptr %xinc_max to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xinc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div61, i32 %63)
  %cmp64 = icmp ugt i32 %div61, %63
  br i1 %cmp64, label %do.body66, label %if.end87

do.body66:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vid_calc_scaling, %if.then78)) #6
          to label %cleanup [label %if.then78], !srcloc !273

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  %dev79 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %64 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev79, align 4
  %66 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crtc_w, align 4
  %68 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_w, align 4
  %shr82 = lshr i32 %69, 16
  %70 = ptrtoint ptr %xinc_max to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xinc_max, align 4
  %mul = mul i32 %71, %downscale_limit.0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug323, ptr noundef %65, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %67, i32 noundef %shr82, i32 noundef %mul) #6
  br label %cleanup

if.end87:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_w, align 4
  %shr89 = lshr i32 %73, 16
  %div91 = udiv i32 %shr89, %div61
  %74 = ptrtoint ptr %in_w to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div91, ptr %in_w, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end87, %if.end51.if.end93_crit_edge
  %75 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %in_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %in_width_max.0)
  %cmp951292 = icmp ugt i32 %76, %in_width_max.0
  br i1 %cmp951292, label %if.end93.while.body_crit_edge, label %if.end93.while.end_crit_edge

if.end93.while.end_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end93.while.body_crit_edge:                    ; preds = %if.end93
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end93.while.body_crit_edge
  %77 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sp, align 4
  %inc = add i32 %78, 1
  store i32 %inc, ptr %sp, align 4
  %79 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src_w, align 4
  %shr98 = lshr i32 %80, 16
  %div100 = udiv i32 %shr98, %inc
  %81 = ptrtoint ptr %in_w to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div100, ptr %in_w, align 4
  %cmp95 = icmp ugt i32 %div100, %in_width_max.0
  br i1 %cmp95, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end93.while.end_crit_edge
  %.lcssa = phi i32 [ %76, %if.end93.while.end_crit_edge ], [ %div100, %while.body.while.end_crit_edge ]
  %82 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sp, align 4
  %xinc_max103 = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 7
  %84 = ptrtoint ptr %xinc_max103 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xinc_max103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp104 = icmp ugt i32 %83, %85
  br i1 %cmp104, label %do.body106, label %if.end127

do.body106:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vid_calc_scaling, %if.then118)) #6
          to label %cleanup [label %if.then118], !srcloc !273

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  %dev119 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %86 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev119, align 4
  %88 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %src_w, align 4
  %shr121 = lshr i32 %89, 16
  %90 = ptrtoint ptr %xinc_max103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %xinc_max103, align 4
  %mul123 = mul i32 %91, %in_width_max.0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug324, ptr noundef %87, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.67, i32 noundef %shr121, i32 noundef %mul123) #6
  br label %cleanup

if.end127:                                        ; preds = %while.end
  %92 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %7, label %if.end131thread-pre-split [
    i32 1448695129, label %if.end127.if.then129_crit_edge
    i32 1498831189, label %if.end127.if.then129_crit_edge1295
    i32 842094158, label %if.end127.if.then129_crit_edge1296
  ]

if.end127.if.then129_crit_edge1296:               ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

if.end127.if.then129_crit_edge1295:               ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

if.end127.if.then129_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

if.then129:                                       ; preds = %if.end127.if.then129_crit_edge, %if.end127.if.then129_crit_edge1295, %if.end127.if.then129_crit_edge1296
  %and = and i32 %.lcssa, -2
  %93 = ptrtoint ptr %in_w to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and, ptr %in_w, align 4
  br label %if.end131

if.end131thread-pre-split:                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr1286 = load i32, ptr %in_w, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end131thread-pre-split, %if.then129
  %95 = phi i32 [ %.pr1286, %if.end131thread-pre-split ], [ %and, %if.then129 ]
  %96 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crtc_w, align 4
  %conv.i562 = zext i32 %95 to i64
  %mul.i563 = shl nuw nsw i64 %conv.i562, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %95)
  %cmp164.i.i.i670 = icmp ult i32 %95, 2048
  br i1 %cmp164.i.i.i670, label %if.then168.i.i.i674, label %if.else174.i.i.i677, !prof !276

if.then168.i.i.i674:                              ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i672 = trunc i64 %mul.i563 to i32
  %div172.i.i.i673 = udiv i32 %conv169.i.i.i672, %97
  br label %dispc_calc_fir_inc.exit679

if.else174.i.i.i677:                              ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %98 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %97, i64 %mul.i563) #10, !srcloc !277
  %asmresult1.i.i.i.i675 = extractvalue { i64, i64 } %98, 1
  %extract.t3.i676 = trunc i64 %asmresult1.i.i.i.i675 to i32
  br label %dispc_calc_fir_inc.exit679

dispc_calc_fir_inc.exit679:                       ; preds = %if.else174.i.i.i677, %if.then168.i.i.i674
  %dividend.addr.0.i.i.off0.i678 = phi i32 [ %div172.i.i.i673, %if.then168.i.i.i674 ], [ %extract.t3.i676, %if.else174.i.i.i677 ]
  %99 = ptrtoint ptr %fir_xinc to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %dividend.addr.0.i.i.off0.i678, ptr %fir_xinc, align 4
  br label %if.end136

if.end136:                                        ; preds = %dispc_calc_fir_inc.exit679, %if.end24.if.end136_crit_edge
  %100 = ptrtoint ptr %scale_y to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %scale_y, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool138.not = icmp eq i8 %101, 0
  br i1 %tobool138.not, label %if.end136.do.body193_crit_edge, label %if.then139

if.end136.do.body193_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

if.then139:                                       ; preds = %if.end136
  %102 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crtc_h, align 4
  %conv.i680 = zext i32 %shr3 to i64
  %mul.i681 = shl nuw nsw i64 %conv.i680, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %21)
  %cmp164.i.i.i788 = icmp ult i32 %21, 134217728
  br i1 %cmp164.i.i.i788, label %if.then168.i.i.i792, label %if.else174.i.i.i795, !prof !276

if.then168.i.i.i792:                              ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i790 = trunc i64 %mul.i681 to i32
  %div172.i.i.i791 = udiv i32 %conv169.i.i.i790, %103
  br label %dispc_calc_fir_inc.exit797

if.else174.i.i.i795:                              ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  %104 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %103, i64 %mul.i681) #10, !srcloc !277
  %asmresult1.i.i.i.i793 = extractvalue { i64, i64 } %104, 1
  %extract.t3.i794 = trunc i64 %asmresult1.i.i.i.i793 to i32
  br label %dispc_calc_fir_inc.exit797

dispc_calc_fir_inc.exit797:                       ; preds = %if.else174.i.i.i795, %if.then168.i.i.i792
  %dividend.addr.0.i.i.off0.i796 = phi i32 [ %div172.i.i.i791, %if.then168.i.i.i792 ], [ %extract.t3.i794, %if.else174.i.i.i795 ]
  %fir_yinc = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 7
  %105 = ptrtoint ptr %fir_yinc to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %dividend.addr.0.i.i.off0.i796, ptr %fir_yinc, align 4
  %upscale_limit144 = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 2, i32 4
  %106 = ptrtoint ptr %upscale_limit144 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %upscale_limit144, align 4
  %div172.i.i.i905 = udiv i32 2097152, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i796, i32 %div172.i.i.i905)
  %cmp146 = icmp ult i32 %dividend.addr.0.i.i.off0.i796, %div172.i.i.i905
  br i1 %cmp146, label %do.body148, label %if.end169

do.body148:                                       ; preds = %dispc_calc_fir_inc.exit797
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vid_calc_scaling, %if.then160)) #6
          to label %cleanup [label %if.then160], !srcloc !273

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #8
  %dev161 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %108 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev161, align 4
  %110 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %crtc_h, align 4
  %112 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src_h, align 4
  %shr164 = lshr i32 %113, 16
  %114 = ptrtoint ptr %upscale_limit144 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %upscale_limit144, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug325, ptr noundef %109, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67, i32 noundef %111, i32 noundef %shr164, i32 noundef %115) #6
  br label %cleanup

if.end169:                                        ; preds = %dispc_calc_fir_inc.exit797
  %mul.i910 = shl i32 %downscale_limit.0, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i796, i32 %mul.i910)
  %cmp172.not = icmp ult i32 %dividend.addr.0.i.i.off0.i796, %mul.i910
  br i1 %cmp172.not, label %if.end169.do.body193_crit_edge, label %if.then173

if.end169.do.body193_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

if.then173:                                       ; preds = %if.end169
  %116 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %crtc_h, align 4
  %add176 = add nsw i32 %shr3, -1
  %sub177 = add i32 %add176, %117
  %div179 = udiv i32 %sub177, %117
  %add180 = add i32 %downscale_limit.0, -1
  %sub181 = add i32 %add180, %div179
  %div182 = udiv i32 %sub181, %downscale_limit.0
  %118 = ptrtoint ptr %yinc to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %div182, ptr %yinc, align 4
  %div186 = udiv i32 %shr3, %div182
  %119 = ptrtoint ptr %in_h to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div186, ptr %in_h, align 4
  %120 = load i32, ptr %crtc_h, align 4
  %conv.i915 = zext i32 %div186 to i64
  %mul.i916 = shl nuw nsw i64 %conv.i915, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div186)
  %cmp164.i.i.i1023 = icmp ult i32 %div186, 2048
  br i1 %cmp164.i.i.i1023, label %if.then168.i.i.i1027, label %if.else174.i.i.i1030, !prof !276

if.then168.i.i.i1027:                             ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i1025 = trunc i64 %mul.i916 to i32
  %div172.i.i.i1026 = udiv i32 %conv169.i.i.i1025, %120
  br label %dispc_calc_fir_inc.exit1032

if.else174.i.i.i1030:                             ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  %121 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %120, i64 %mul.i916) #10, !srcloc !277
  %asmresult1.i.i.i.i1028 = extractvalue { i64, i64 } %121, 1
  %extract.t3.i1029 = trunc i64 %asmresult1.i.i.i.i1028 to i32
  br label %dispc_calc_fir_inc.exit1032

dispc_calc_fir_inc.exit1032:                      ; preds = %if.else174.i.i.i1030, %if.then168.i.i.i1027
  %dividend.addr.0.i.i.off0.i1031 = phi i32 [ %div172.i.i.i1026, %if.then168.i.i.i1027 ], [ %extract.t3.i1029, %if.else174.i.i.i1030 ]
  %122 = ptrtoint ptr %fir_yinc to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %dividend.addr.0.i.i.off0.i1031, ptr %fir_yinc, align 4
  br label %do.body193

do.body193:                                       ; preds = %dispc_calc_fir_inc.exit1032, %if.end169.do.body193_crit_edge, %if.end136.do.body193_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vid_calc_scaling, %if.then205)) #6
          to label %do.end233 [label %if.then205], !srcloc !273

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  %dev206 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %123 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev206, align 4
  %125 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %src_w, align 4
  %shr208 = lshr i32 %126, 16
  %127 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %src_h, align 4
  %shr210 = lshr i32 %128, 16
  %129 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sp, align 4
  %131 = ptrtoint ptr %yinc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %yinc, align 4
  %133 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %in_w, align 4
  %135 = ptrtoint ptr %in_h to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %in_h, align 4
  %fir_xinc215 = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 6
  %137 = ptrtoint ptr %fir_xinc215 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fir_xinc215, align 4
  %div216427 = lshr i32 %138, 21
  %and218 = and i32 %138, 2097151
  %mul219 = mul nuw nsw i32 %and218, 999
  %div220 = udiv i32 %mul219, 2097151
  %fir_yinc221 = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 7
  %139 = ptrtoint ptr %fir_yinc221 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fir_yinc221, align 4
  %div222428 = lshr i32 %140, 21
  %and224 = and i32 %140, 2097151
  %mul225 = mul nuw nsw i32 %and224, 999
  %div226 = udiv i32 %mul225, 2097151
  %141 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %42, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool228.not = icmp eq i8 %142, 0
  %cond = select i1 %tobool228.not, i32 3, i32 5
  %143 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %crtc_w, align 4
  %145 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %crtc_h, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug326, ptr noundef %124, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %shr208, i32 noundef %shr210, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %div216427, i32 noundef %div220, i32 noundef %div222428, i32 noundef %div226, i32 noundef %cond, i32 noundef %144, i32 noundef %146) #6
  br label %do.end233

do.end233:                                        ; preds = %if.then205, %do.body193
  %147 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %7, label %do.end233.if.end264_crit_edge [
    i32 1448695129, label %do.end233.if.then235_crit_edge
    i32 1498831189, label %do.end233.if.then235_crit_edge1297
    i32 842094158, label %do.end233.if.then235_crit_edge1298
  ]

do.end233.if.then235_crit_edge1298:               ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then235

do.end233.if.then235_crit_edge1297:               ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then235

do.end233.if.then235_crit_edge:                   ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then235

do.end233.if.end264_crit_edge:                    ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

if.then235:                                       ; preds = %do.end233.if.then235_crit_edge, %do.end233.if.then235_crit_edge1297, %do.end233.if.then235_crit_edge1298
  %148 = ptrtoint ptr %scale_x to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %scale_x, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool237.not = icmp eq i8 %149, 0
  br i1 %tobool237.not, label %if.then235.if.end248_crit_edge, label %if.then238

if.then235.if.end248_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end248

if.then238:                                       ; preds = %if.then235
  %150 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sp, align 4
  %152 = ptrtoint ptr %in_w_uv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %in_w_uv, align 4
  %div241 = udiv i32 %153, %151
  store i32 %div241, ptr %in_w_uv, align 4
  %154 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %crtc_w, align 4
  %conv.i1036 = zext i32 %div241 to i64
  %mul.i1037 = shl nuw nsw i64 %conv.i1036, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div241)
  %cmp164.i.i.i1144 = icmp ult i32 %div241, 2048
  br i1 %cmp164.i.i.i1144, label %if.then168.i.i.i1148, label %if.else174.i.i.i1151, !prof !276

if.then168.i.i.i1148:                             ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i1146 = trunc i64 %mul.i1037 to i32
  %div172.i.i.i1147 = udiv i32 %conv169.i.i.i1146, %155
  br label %dispc_calc_fir_inc.exit1153

if.else174.i.i.i1151:                             ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #8
  %156 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %155, i64 %mul.i1037) #10, !srcloc !277
  %asmresult1.i.i.i.i1149 = extractvalue { i64, i64 } %156, 1
  %extract.t3.i1150 = trunc i64 %asmresult1.i.i.i.i1149 to i32
  br label %dispc_calc_fir_inc.exit1153

dispc_calc_fir_inc.exit1153:                      ; preds = %if.else174.i.i.i1151, %if.then168.i.i.i1148
  %dividend.addr.0.i.i.off0.i1152 = phi i32 [ %div172.i.i.i1147, %if.then168.i.i.i1148 ], [ %extract.t3.i1150, %if.else174.i.i.i1151 ]
  %fir_xinc_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 8
  %157 = ptrtoint ptr %fir_xinc_uv to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %dividend.addr.0.i.i.off0.i1152, ptr %fir_xinc_uv, align 4
  %dev245 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %158 = ptrtoint ptr %dev245 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev245, align 4
  %call247 = tail call ptr @tidss_get_scale_coefs(ptr noundef %159, i32 noundef %dividend.addr.0.i.i.off0.i1152, i1 noundef zeroext true) #6
  %xcoef_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 14
  %160 = ptrtoint ptr %xcoef_uv to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call247, ptr %xcoef_uv, align 4
  br label %if.end248

if.end248:                                        ; preds = %dispc_calc_fir_inc.exit1153, %if.then235.if.end248_crit_edge
  %161 = ptrtoint ptr %scale_y to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %scale_y, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool250.not = icmp eq i8 %162, 0
  br i1 %tobool250.not, label %if.end248.if.end264_crit_edge, label %if.then251

if.end248.if.end264_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

if.then251:                                       ; preds = %if.end248
  %163 = ptrtoint ptr %yinc to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %yinc, align 4
  %165 = ptrtoint ptr %in_h_uv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %in_h_uv, align 4
  %div254 = udiv i32 %166, %164
  store i32 %div254, ptr %in_h_uv, align 4
  %167 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %crtc_h, align 4
  %conv.i1154 = zext i32 %div254 to i64
  %mul.i1155 = shl nuw nsw i64 %conv.i1154, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div254)
  %cmp164.i.i.i1262 = icmp ult i32 %div254, 2048
  br i1 %cmp164.i.i.i1262, label %if.then168.i.i.i1266, label %if.else174.i.i.i1269, !prof !276

if.then168.i.i.i1266:                             ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i1264 = trunc i64 %mul.i1155 to i32
  %div172.i.i.i1265 = udiv i32 %conv169.i.i.i1264, %168
  br label %dispc_calc_fir_inc.exit1271

if.else174.i.i.i1269:                             ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #8
  %169 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %168, i64 %mul.i1155) #10, !srcloc !277
  %asmresult1.i.i.i.i1267 = extractvalue { i64, i64 } %169, 1
  %extract.t3.i1268 = trunc i64 %asmresult1.i.i.i.i1267 to i32
  br label %dispc_calc_fir_inc.exit1271

dispc_calc_fir_inc.exit1271:                      ; preds = %if.else174.i.i.i1269, %if.then168.i.i.i1266
  %dividend.addr.0.i.i.off0.i1270 = phi i32 [ %div172.i.i.i1265, %if.then168.i.i.i1266 ], [ %extract.t3.i1268, %if.else174.i.i.i1269 ]
  %fir_yinc_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 9
  %170 = ptrtoint ptr %fir_yinc_uv to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %dividend.addr.0.i.i.off0.i1270, ptr %fir_yinc_uv, align 4
  %dev258 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %171 = ptrtoint ptr %dev258 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev258, align 4
  %173 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %42, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool261 = icmp ne i8 %174, 0
  %call262 = tail call ptr @tidss_get_scale_coefs(ptr noundef %172, i32 noundef %dividend.addr.0.i.i.off0.i1270, i1 noundef zeroext %tobool261) #6
  %ycoef_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 15
  %175 = ptrtoint ptr %ycoef_uv to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call262, ptr %ycoef_uv, align 4
  br label %if.end264

if.end264:                                        ; preds = %dispc_calc_fir_inc.exit1271, %if.end248.if.end264_crit_edge, %do.end233.if.end264_crit_edge
  %176 = ptrtoint ptr %scale_x to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %scale_x, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool266.not = icmp eq i8 %177, 0
  br i1 %tobool266.not, label %if.end264.if.end271_crit_edge, label %if.then267

if.end264.if.end271_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end271

if.then267:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  %dev268 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %178 = ptrtoint ptr %dev268 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev268, align 4
  %fir_xinc269 = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 6
  %180 = ptrtoint ptr %fir_xinc269 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fir_xinc269, align 4
  %call270 = tail call ptr @tidss_get_scale_coefs(ptr noundef %179, i32 noundef %181, i1 noundef zeroext true) #6
  %xcoef = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 12
  %182 = ptrtoint ptr %xcoef to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call270, ptr %xcoef, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %if.end264.if.end271_crit_edge
  %183 = ptrtoint ptr %scale_y to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %scale_y, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool273.not = icmp eq i8 %184, 0
  br i1 %tobool273.not, label %if.end271.cleanup_crit_edge, label %if.then274

if.end271.cleanup_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then274:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  %dev275 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %185 = ptrtoint ptr %dev275 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev275, align 4
  %fir_yinc276 = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 7
  %187 = ptrtoint ptr %fir_yinc276 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %fir_yinc276, align 4
  %189 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %42, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool278 = icmp ne i8 %190, 0
  %call279 = tail call ptr @tidss_get_scale_coefs(ptr noundef %186, i32 noundef %188, i1 noundef zeroext %tobool278) #6
  %ycoef = getelementptr inbounds %struct.dispc_scaling_params, ptr %sp, i32 0, i32 13
  %191 = ptrtoint ptr %ycoef to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call279, ptr %ycoef, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then274, %if.end271.cleanup_crit_edge, %if.then160, %do.body148, %if.then118, %do.body106, %if.then78, %do.body66, %if.then45, %do.body, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then45 ], [ -22, %if.then78 ], [ -22, %if.then118 ], [ -22, %if.then160 ], [ 0, %if.then274 ], [ 0, %if.end271.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body66 ], [ -22, %do.body106 ], [ -22, %do.body148 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_plane_setup(ptr noundef readonly %dispc, i32 noundef %hw_plane, ptr nocapture noundef readonly %state, i32 noundef %hw_videoport) local_unnamed_addr #0 align 64 {
entry:
  %regval.i14.i = alloca [8 x i32], align 4
  %regval.i.i = alloca [8 x i32], align 4
  %scale = alloca %struct.dispc_scaling_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %arrayidx = getelementptr %struct.dispc_features, ptr %1, i32 0, i32 14, i32 %hw_plane
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 2
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pitches, align 8
  %conv7 = zext i8 %12 to i32
  %div = udiv i32 %14, %conv7
  %src_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 8
  %15 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_x.i, align 4
  %shr.i = lshr i32 %16, 16
  %src_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 9
  %17 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_y.i, align 4
  %shr2.i = lshr i32 %18, 16
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %5, i32 noundef 0) #6
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offsets.i, align 8
  %add.i = add i32 %22, %20
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format, align 8
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 2
  %conv.i = zext i8 %27 to i32
  %mul.i = mul nuw nsw i32 %shr.i, %conv.i
  %add5.i = add i32 %add.i, %mul.i
  %28 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pitches, align 8
  %mul7.i = mul i32 %29, %shr2.i
  %add8.i = add i32 %add5.i, %mul7.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %scale) #6
  %30 = call ptr @memset(ptr %scale, i32 255, i32 64)
  %call9 = call fastcc i32 @dispc_vid_calc_scaling(ptr noundef %dispc, ptr noundef %state, ptr noundef nonnull %scale, i1 noundef zeroext %tobool)
  %31 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %9, label %for.inc.28.i [
    i32 842093121, label %entry.if.then.i_crit_edge
    i32 842089025, label %if.then.fold.split.i
    i32 842088786, label %if.then.fold.split27.i
    i32 909199186, label %if.then.fold.split28.i
    i32 909199170, label %if.then.fold.split29.i
    i32 892424769, label %if.then.fold.split30.i
    i32 892420673, label %if.then.fold.split31.i
    i32 875713089, label %if.then.fold.split32.i
    i32 875708993, label %if.then.fold.split33.i
    i32 875708754, label %if.then.fold.split34.i
    i32 875708738, label %if.then.fold.split35.i
    i32 875710290, label %if.then.fold.split36.i
    i32 875710274, label %if.then.fold.split37.i
    i32 808669761, label %if.then.fold.split38.i
    i32 808665665, label %if.then.fold.split39.i
    i32 842093144, label %if.then.fold.split40.i
    i32 842089048, label %if.then.fold.split41.i
    i32 842094674, label %if.then.fold.split42.i
    i32 875713112, label %if.then.fold.split43.i
    i32 875709016, label %if.then.fold.split44.i
    i32 875714642, label %if.then.fold.split45.i
    i32 875714626, label %if.then.fold.split46.i
    i32 808669784, label %if.then.fold.split47.i
    i32 808665688, label %if.then.fold.split48.i
    i32 1448695129, label %if.then.fold.split49.i
    i32 1498831189, label %if.then.fold.split50.i
    i32 842094158, label %if.then.fold.split51.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split27.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split28.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split29.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split30.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split31.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split32.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split33.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split34.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split35.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split36.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split37.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split38.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split39.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split40.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split41.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split42.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split43.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split44.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split45.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split46.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split47.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split48.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split49.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split50.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split51.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split51.i, %if.then.fold.split50.i, %if.then.fold.split49.i, %if.then.fold.split48.i, %if.then.fold.split47.i, %if.then.fold.split46.i, %if.then.fold.split45.i, %if.then.fold.split44.i, %if.then.fold.split43.i, %if.then.fold.split42.i, %if.then.fold.split41.i, %if.then.fold.split40.i, %if.then.fold.split39.i, %if.then.fold.split38.i, %if.then.fold.split37.i, %if.then.fold.split36.i, %if.then.fold.split35.i, %if.then.fold.split34.i, %if.then.fold.split33.i, %if.then.fold.split32.i, %if.then.fold.split31.i, %if.then.fold.split30.i, %if.then.fold.split29.i, %if.then.fold.split28.i, %if.then.fold.split27.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.025.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split27.i ], [ 3, %if.then.fold.split28.i ], [ 4, %if.then.fold.split29.i ], [ 5, %if.then.fold.split30.i ], [ 6, %if.then.fold.split31.i ], [ 7, %if.then.fold.split32.i ], [ 8, %if.then.fold.split33.i ], [ 9, %if.then.fold.split34.i ], [ 10, %if.then.fold.split35.i ], [ 11, %if.then.fold.split36.i ], [ 12, %if.then.fold.split37.i ], [ 13, %if.then.fold.split38.i ], [ 14, %if.then.fold.split39.i ], [ 15, %if.then.fold.split40.i ], [ 16, %if.then.fold.split41.i ], [ 17, %if.then.fold.split42.i ], [ 20, %if.then.fold.split43.i ], [ 21, %if.then.fold.split44.i ], [ 22, %if.then.fold.split45.i ], [ 23, %if.then.fold.split46.i ], [ 24, %if.then.fold.split47.i ], [ 25, %if.then.fold.split48.i ], [ 26, %if.then.fold.split49.i ], [ 27, %if.then.fold.split50.i ], [ 28, %if.then.fold.split51.i ]
  %dss_code.i = getelementptr [29 x %struct.anon.90], ptr @dispc_color_formats, i32 0, i32 %i.025.lcssa.i, i32 1
  %32 = ptrtoint ptr %dss_code.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dss_code.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 32
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %37 = and i32 %36, -2113929217
  %38 = call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = shl i8 %33, 1
  %40 = and i8 %39, 126
  %and.i.i.i.i = zext i8 %40 to i32
  %or.i.i.i = or i32 %38, %and.i.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %42, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %43 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %43) #6, !srcloc !272
  br label %dispc_plane_set_pixel_format.exit

for.inc.28.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1889, i32 noundef 9, ptr noundef null) #6
  br label %dispc_plane_set_pixel_format.exit

dispc_plane_set_pixel_format.exit:                ; preds = %for.inc.28.i, %if.then.i
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %46 = call i32 @llvm.bswap.i32(i32 %add8.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #6, !srcloc !272
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %48, i32 556
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 0) #6, !srcloc !272
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %50, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %46) #6, !srcloc !272
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %52, i32 560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 0) #6, !srcloc !272
  %in_w = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 2
  %53 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %in_w, align 4
  %sub = add i32 %54, -1
  %in_h = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 3
  %55 = ptrtoint ptr %in_h to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in_h, align 4
  %sub16 = shl i32 %56, 16
  %shl = add i32 %sub16, -65536
  %or = or i32 %shl, %sub
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %58, i32 524
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %59 = call i32 @llvm.bswap.i32(i32 %or) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %59) #6, !srcloc !272
  %60 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %9, label %if.else [
    i32 1448695129, label %dispc_plane_set_pixel_format.exit.if.then_crit_edge
    i32 1498831189, label %dispc_plane_set_pixel_format.exit.if.then_crit_edge277
  ]

dispc_plane_set_pixel_format.exit.if.then_crit_edge277: ; preds = %dispc_plane_set_pixel_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

dispc_plane_set_pixel_format.exit.if.then_crit_edge: ; preds = %dispc_plane_set_pixel_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %dispc_plane_set_pixel_format.exit.if.then_crit_edge, %dispc_plane_set_pixel_format.exit.if.then_crit_edge277
  %61 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %scale, align 4
  %mul = shl i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i = icmp eq i32 %62, 1
  br i1 %cmp.i, label %if.then.pixinc.exit_crit_edge, label %if.else.i

if.then.pixinc.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixinc.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp1.i = icmp sgt i32 %62, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %62, -1
  %conv.i167 = zext i8 %mul to i32
  %mul.i168 = mul i32 %sub.i, %conv.i167
  %add.i169 = or i32 %mul.i168, 1
  br label %pixinc.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp4.i = icmp slt i32 %62, 0
  br i1 %cmp4.i, label %if.then6.i, label %do.end.i

if.then6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %add8.neg.i = add i32 %62, -1
  %conv9.i = zext i8 %mul to i32
  %mul10.neg.i = mul i32 %add8.neg.i, %conv9.i
  %sub11.i = or i32 %mul10.neg.i, 1
  br label %pixinc.exit

do.end.i:                                         ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1910, i32 noundef 9, ptr noundef null) #6
  br label %pixinc.exit

pixinc.exit:                                      ; preds = %do.end.i, %if.then6.i, %if.then2.i, %if.then.pixinc.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i169, %if.then2.i ], [ %sub11.i, %if.then6.i ], [ 0, %do.end.i ], [ 1, %if.then.pixinc.exit_crit_edge ]
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %64, i32 528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %65 = call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %65) #6, !srcloc !272
  br label %if.end

if.else:                                          ; preds = %dispc_plane_set_pixel_format.exit
  %66 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i172 = icmp eq i32 %67, 1
  br i1 %cmp.i172, label %if.else.pixinc.exit189_crit_edge, label %if.else.i174

if.else.pixinc.exit189_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixinc.exit189

if.else.i174:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp1.i173 = icmp sgt i32 %67, 1
  br i1 %cmp1.i173, label %if.then2.i179, label %if.else3.i181

if.then2.i179:                                    ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i175 = add nsw i32 %67, -1
  %mul.i177 = mul i32 %sub.i175, %conv7
  %add.i178 = add i32 %mul.i177, 1
  br label %pixinc.exit189

if.else3.i181:                                    ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp4.i180 = icmp slt i32 %67, 0
  br i1 %cmp4.i180, label %if.then6.i186, label %do.end.i187

if.then6.i186:                                    ; preds = %if.else3.i181
  call void @__sanitizer_cov_trace_pc() #8
  %add8.neg.i182 = add i32 %67, -1
  %mul10.neg.i184 = mul i32 %add8.neg.i182, %conv7
  %sub11.i185 = add i32 %mul10.neg.i184, 1
  br label %pixinc.exit189

do.end.i187:                                      ; preds = %if.else3.i181
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1910, i32 noundef 9, ptr noundef null) #6
  br label %pixinc.exit189

pixinc.exit189:                                   ; preds = %do.end.i187, %if.then6.i186, %if.then2.i179, %if.else.pixinc.exit189_crit_edge
  %retval.0.i188 = phi i32 [ %add.i178, %if.then2.i179 ], [ %sub11.i185, %if.then6.i186 ], [ 0, %do.end.i187 ], [ 1, %if.else.pixinc.exit189_crit_edge ]
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %69, i32 528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %70 = call i32 @llvm.bswap.i32(i32 %retval.0.i188) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %70) #6, !srcloc !272
  br label %if.end

if.end:                                           ; preds = %pixinc.exit189, %pixinc.exit
  %yinc = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 1
  %71 = ptrtoint ptr %yinc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yinc, align 4
  %mul26 = mul i32 %72, %div
  %73 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scale, align 4
  %75 = ptrtoint ptr %in_w to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %in_w, align 4
  %mul29 = mul i32 %76, %74
  %sub30 = sub i32 %mul26, %mul29
  %add = add i32 %sub30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26, i32 %mul29)
  %cmp.i192 = icmp eq i32 %mul26, %mul29
  br i1 %cmp.i192, label %if.end.pixinc.exit207_crit_edge, label %if.else.i194

if.end.pixinc.exit207_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixinc.exit207

if.else.i194:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp1.i193 = icmp sgt i32 %add, 1
  br i1 %cmp1.i193, label %if.then2.i198, label %if.else3.i200

if.then2.i198:                                    ; preds = %if.else.i194
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i196 = mul i32 %sub30, %conv7
  %add.i197 = add i32 %mul.i196, 1
  br label %pixinc.exit207

if.else3.i200:                                    ; preds = %if.else.i194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp4.i199 = icmp slt i32 %add, 0
  br i1 %cmp4.i199, label %if.then6.i204, label %do.end.i205

if.then6.i204:                                    ; preds = %if.else3.i200
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.neg.i202 = mul i32 %sub30, %conv7
  %sub11.i203 = add i32 %mul10.neg.i202, 1
  br label %pixinc.exit207

do.end.i205:                                      ; preds = %if.else3.i200
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1910, i32 noundef 9, ptr noundef null) #6
  br label %pixinc.exit207

pixinc.exit207:                                   ; preds = %do.end.i205, %if.then6.i204, %if.then2.i198, %if.end.pixinc.exit207_crit_edge
  %retval.0.i206 = phi i32 [ %add.i197, %if.then2.i198 ], [ %sub11.i203, %if.then6.i204 ], [ 0, %do.end.i205 ], [ 1, %if.end.pixinc.exit207_crit_edge ]
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %78, i32 540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %79 = call i32 @llvm.bswap.i32(i32 %retval.0.i206) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %79) #6, !srcloc !272
  %80 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fb, align 4
  %format34 = getelementptr inbounds %struct.drm_framebuffer, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %format34 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %format34, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp36 = icmp eq i8 %85, 2
  br i1 %cmp36, label %dispc_plane_state_p_uv_addr.exit, label %pixinc.exit207.if.end65_crit_edge

pixinc.exit207.if.end65_crit_edge:                ; preds = %pixinc.exit207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

dispc_plane_state_p_uv_addr.exit:                 ; preds = %pixinc.exit207
  %arrayidx41 = getelementptr %struct.drm_format_info, ptr %83, i32 0, i32 3, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx41, align 1
  %arrayidx45 = getelementptr %struct.drm_framebuffer, ptr %81, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx45, align 4
  %conv46 = zext i8 %87 to i32
  %div47 = udiv i32 %89, %conv46
  %90 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src_y.i, align 4
  %shr2.i214 = lshr i32 %91, 16
  %92 = ptrtoint ptr %src_x.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_x.i, align 4
  %shr.i216 = lshr i32 %93, 16
  %call.i217 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %81, i32 noundef 1) #6
  %paddr.i218 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i217, i32 0, i32 1
  %94 = ptrtoint ptr %paddr.i218 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %paddr.i218, align 8
  %arrayidx.i219 = getelementptr %struct.drm_framebuffer, ptr %81, i32 0, i32 7, i32 1
  %96 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i219, align 4
  %add.i220 = add i32 %97, %95
  %98 = ptrtoint ptr %format34 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %format34, align 8
  %arrayidx27.i = getelementptr %struct.drm_format_info, ptr %99, i32 0, i32 3, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %101 to i32
  %mul.i221 = mul nuw nsw i32 %shr.i216, %conv28.i
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %99, i32 0, i32 6
  %102 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %hsub.i, align 2
  %conv30.i = zext i8 %103 to i32
  %div.i = udiv i32 %mul.i221, %conv30.i
  %add31.i = add i32 %add.i220, %div.i
  %104 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx45, align 4
  %mul33.i = mul i32 %105, %shr2.i214
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %99, i32 0, i32 7
  %106 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %vsub.i, align 1
  %conv35.i = zext i8 %107 to i32
  %div36.i = udiv i32 %mul33.i, %conv35.i
  %add37.i = add i32 %add31.i, %div36.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %109, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %110 = call i32 @llvm.bswap.i32(i32 %add37.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %110) #6, !srcloc !272
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i226 = getelementptr i8, ptr %112, i32 564
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 0) #6, !srcloc !272
  %113 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i228 = getelementptr i8, ptr %114, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %110) #6, !srcloc !272
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i230 = getelementptr i8, ptr %116, i32 568
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 0) #6, !srcloc !272
  %117 = ptrtoint ptr %yinc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %yinc, align 4
  %mul58 = mul i32 %118, %div47
  %119 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %scale, align 4
  %in_w_uv = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 4
  %121 = ptrtoint ptr %in_w_uv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %in_w_uv, align 4
  %mul60 = mul i32 %122, %120
  %sub61 = sub i32 %mul58, %mul60
  %add62 = add i32 %sub61, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul58, i32 %mul60)
  %cmp.i231 = icmp eq i32 %mul58, %mul60
  br i1 %cmp.i231, label %dispc_plane_state_p_uv_addr.exit.pixinc.exit246_crit_edge, label %if.else.i233

dispc_plane_state_p_uv_addr.exit.pixinc.exit246_crit_edge: ; preds = %dispc_plane_state_p_uv_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixinc.exit246

if.else.i233:                                     ; preds = %dispc_plane_state_p_uv_addr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add62)
  %cmp1.i232 = icmp sgt i32 %add62, 1
  br i1 %cmp1.i232, label %if.then2.i237, label %if.else3.i239

if.then2.i237:                                    ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i235 = mul i32 %sub61, %conv46
  %add.i236 = add i32 %mul.i235, 1
  br label %pixinc.exit246

if.else3.i239:                                    ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add62)
  %cmp4.i238 = icmp slt i32 %add62, 0
  br i1 %cmp4.i238, label %if.then6.i243, label %do.end.i244

if.then6.i243:                                    ; preds = %if.else3.i239
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.neg.i241 = mul i32 %sub61, %conv46
  %sub11.i242 = add i32 %mul10.neg.i241, 1
  br label %pixinc.exit246

do.end.i244:                                      ; preds = %if.else3.i239
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1910, i32 noundef 9, ptr noundef null) #6
  br label %pixinc.exit246

pixinc.exit246:                                   ; preds = %do.end.i244, %if.then6.i243, %if.then2.i237, %dispc_plane_state_p_uv_addr.exit.pixinc.exit246_crit_edge
  %retval.0.i245 = phi i32 [ %add.i236, %if.then2.i237 ], [ %sub11.i242, %if.then6.i243 ], [ 0, %do.end.i244 ], [ 1, %dispc_plane_state_p_uv_addr.exit.pixinc.exit246_crit_edge ]
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i248 = getelementptr i8, ptr %124, i32 584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %125 = call i32 @llvm.bswap.i32(i32 %retval.0.i245) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %125) #6, !srcloc !272
  br label %if.end65

if.end65:                                         ; preds = %pixinc.exit246, %pixinc.exit207.if.end65_crit_edge
  br i1 %tobool, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %126 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %crtc_w, align 4
  %sub68 = add i32 %127, -1
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %128 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %crtc_h, align 4
  %sub69 = shl i32 %129, 16
  %shl70 = add i32 %sub69, -65536
  %or71 = or i32 %shl70, %sub68
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i250 = getelementptr i8, ptr %131, i32 544
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %132 = call i32 @llvm.bswap.i32(i32 %or71) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250, i32 %132) #6, !srcloc !272
  %scale_x.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 10
  %133 = ptrtoint ptr %scale_x.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %scale_x.i, align 4, !range !274
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i252 = getelementptr i8, ptr %136, i32 32
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i252) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %138 = and i32 %137, 2147483647
  %139 = call i32 @llvm.bswap.i32(i32 %138) #6
  %140 = shl nuw i8 %134, 7
  %and.i.i.i.i253 = zext i8 %140 to i32
  %or.i.i.i254 = or i32 %139, %and.i.i.i.i253
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i.i255 = getelementptr i8, ptr %142, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %143 = call i32 @llvm.bswap.i32(i32 %or.i.i.i254) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i255, i32 %143) #6, !srcloc !272
  %scale_y.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 11
  %144 = ptrtoint ptr %scale_y.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %scale_y.i, align 1, !range !274
  %146 = zext i8 %145 to i32
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %148, i32 32
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %150 = and i32 %149, -65537
  %151 = call i32 @llvm.bswap.i32(i32 %150) #6
  %and.i.i.i67.i = shl nuw nsw i32 %146, 8
  %or.i.i68.i = or i32 %151, %and.i.i.i67.i
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i69.i = getelementptr i8, ptr %153, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %154 = call i32 @llvm.bswap.i32(i32 %or.i.i68.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i69.i, i32 %154) #6, !srcloc !272
  %155 = ptrtoint ptr %scale_x.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %scale_x.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool4.not.i = icmp eq i8 %156, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.then67.if.end.i_crit_edge

if.then67.if.end.i_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then67
  %157 = ptrtoint ptr %scale_y.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %scale_y.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool6.not.i = icmp eq i8 %158, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end72_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.if.end72_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then67.if.end.i_crit_edge
  %five_taps.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 16
  %159 = ptrtoint ptr %five_taps.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %five_taps.i, align 4, !range !274
  %161 = zext i8 %160 to i32
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i71.i = getelementptr i8, ptr %163, i32 32
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71.i) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %165 = and i32 %164, -8193
  %166 = call i32 @llvm.bswap.i32(i32 %165) #6
  %and.i.i.i74.i = shl nuw nsw i32 %161, 21
  %or.i.i75.i = or i32 %166, %and.i.i.i74.i
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i76.i = getelementptr i8, ptr %168, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %169 = call i32 @llvm.bswap.i32(i32 %or.i.i75.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i76.i, i32 %169) #6, !srcloc !272
  %170 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %9, label %if.end.i.if.end18.i_crit_edge [
    i32 1448695129, label %if.end.i.if.then9.i_crit_edge
    i32 1498831189, label %if.end.i.if.then9.i_crit_edge278
    i32 842094158, label %if.end.i.if.then9.i_crit_edge279
  ]

if.end.i.if.then9.i_crit_edge279:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge278:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge278, %if.end.i.if.then9.i_crit_edge279
  %171 = ptrtoint ptr %scale_x.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %scale_x.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool11.not.i = icmp eq i8 %172, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end13.i_crit_edge, label %if.then12.i

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %fir_xinc_uv.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 8
  %173 = ptrtoint ptr %fir_xinc_uv.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %fir_xinc_uv.i, align 4
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %176, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %177 = call i32 @llvm.bswap.i32(i32 %174) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %177) #6, !srcloc !272
  %xcoef_uv.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 14
  %178 = ptrtoint ptr %xcoef_uv.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %xcoef_uv.i, align 4
  call fastcc void @dispc_vid_write_fir_coefs(ptr noundef %dispc, i32 noundef %hw_plane, i32 noundef 1, ptr noundef %179) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.then9.i.if.end13.i_crit_edge
  %180 = ptrtoint ptr %scale_y.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %scale_y.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool15.not.i = icmp eq i8 %181, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then16.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %fir_yinc_uv.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 9
  %182 = ptrtoint ptr %fir_yinc_uv.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fir_yinc_uv.i, align 4
  %184 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %185, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %186 = call i32 @llvm.bswap.i32(i32 %183) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %186) #6, !srcloc !272
  %ycoef_uv.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 15
  %187 = ptrtoint ptr %ycoef_uv.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ycoef_uv.i, align 4
  call fastcc void @dispc_vid_write_fir_coefs(ptr noundef %dispc, i32 noundef %hw_plane, i32 noundef 3, ptr noundef %188) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %189 = ptrtoint ptr %scale_x.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %scale_x.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool20.not.i = icmp eq i8 %190, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end22.i_crit_edge, label %if.then21.i

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %fir_xinc.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 6
  %191 = ptrtoint ptr %fir_xinc.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %fir_xinc.i, align 4
  %193 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %194, i32 92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %195 = call i32 @llvm.bswap.i32(i32 %192) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %195) #6, !srcloc !272
  %xcoef.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 12
  %196 = ptrtoint ptr %xcoef.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %xcoef.i, align 4
  call fastcc void @dispc_vid_write_fir_coefs(ptr noundef %dispc, i32 noundef %hw_plane, i32 noundef 0, ptr noundef %197) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end22.i_crit_edge
  %198 = ptrtoint ptr %scale_y.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %scale_y.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool24.not.i = icmp eq i8 %199, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end72_crit_edge, label %if.then25.i

if.end22.i.if.end72_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %fir_yinc.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 7
  %200 = ptrtoint ptr %fir_yinc.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fir_yinc.i, align 4
  %202 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %203, i32 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %204 = call i32 @llvm.bswap.i32(i32 %201) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %204) #6, !srcloc !272
  %ycoef.i = getelementptr inbounds %struct.dispc_scaling_params, ptr %scale, i32 0, i32 13
  %205 = ptrtoint ptr %ycoef.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ycoef.i, align 4
  call fastcc void @dispc_vid_write_fir_coefs(ptr noundef %dispc, i32 noundef %hw_plane, i32 noundef 2, ptr noundef %206) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then25.i, %if.end22.i.if.end72_crit_edge, %land.lhs.true.i.if.end72_crit_edge, %if.end65.if.end72_crit_edge
  %207 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %9, label %if.else75 [
    i32 1448695129, label %if.end72.if.then74_crit_edge
    i32 1498831189, label %if.end72.if.then74_crit_edge280
    i32 842094158, label %if.end72.if.then74_crit_edge281
  ]

if.end72.if.then74_crit_edge281:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

if.end72.if.then74_crit_edge280:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

if.end72.if.then74_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

if.then74:                                        ; preds = %if.end72.if.then74_crit_edge, %if.end72.if.then74_crit_edge280, %if.end72.if.then74_crit_edge281
  %color_encoding.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 17
  %208 = ptrtoint ptr %color_encoding.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %color_encoding.i, align 4
  %color_range.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 18
  %210 = ptrtoint ptr %color_range.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %color_range.i, align 4
  %212 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %209, label %if.then74.do.end.i258_crit_edge [
    i32 0, label %land.lhs.true.i.i
    i32 1, label %land.lhs.true.2.i.i
  ]

if.then74.do.end.i258_crit_edge:                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i258

land.lhs.true.i.i:                                ; preds = %if.then74
  %213 = zext i32 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %211, label %land.lhs.true.i.i.do.end.i258_crit_edge [
    i32 1, label %land.lhs.true.i.i.dispc_find_csc.exit.i_crit_edge
    i32 0, label %if.then.fold.split.i.i
  ]

land.lhs.true.i.i.dispc_find_csc.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_find_csc.exit.i

land.lhs.true.i.i.do.end.i258_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i258

if.then.fold.split.i.i:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_find_csc.exit.i

if.then.fold.split20.i.i:                         ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_find_csc.exit.i

land.lhs.true.2.i.i:                              ; preds = %if.then74
  %214 = zext i32 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %211, label %land.lhs.true.2.i.i.do.end.i258_crit_edge [
    i32 1, label %land.lhs.true.2.i.i.dispc_find_csc.exit.i_crit_edge
    i32 0, label %if.then.fold.split20.i.i
  ]

land.lhs.true.2.i.i.dispc_find_csc.exit.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_find_csc.exit.i

land.lhs.true.2.i.i.do.end.i258_crit_edge:        ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i258

dispc_find_csc.exit.i:                            ; preds = %land.lhs.true.2.i.i.dispc_find_csc.exit.i_crit_edge, %if.then.fold.split20.i.i, %if.then.fold.split.i.i, %land.lhs.true.i.i.dispc_find_csc.exit.i_crit_edge
  %i.012.lcssa.i.i = phi i32 [ 0, %land.lhs.true.i.i.dispc_find_csc.exit.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.dispc_find_csc.exit.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 3, %if.then.fold.split20.i.i ]
  %csc.i.i = getelementptr [4 x %struct.anon.91], ptr @dispc_csc_table, i32 0, i32 %i.012.lcssa.i.i, i32 2
  %215 = ptrtoint ptr %csc.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %csc.i.i, align 4
  %217 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %feat, align 4
  %subrev.i = getelementptr inbounds %struct.dispc_features, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %subrev.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %subrev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp.i257 = icmp eq i32 %220, 0
  br i1 %cmp.i257, label %if.then3.i, label %if.else.i261

do.end.i258:                                      ; preds = %land.lhs.true.2.i.i.do.end.i258_crit_edge, %land.lhs.true.i.i.do.end.i258_crit_edge, %if.then74.do.end.i258_crit_edge
  %dev.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %221 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %209, i32 noundef %211) #9
  br label %dispc_vid_csc_setup.exit

if.then3.i:                                       ; preds = %dispc_find_csc.exit.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regval.i.i) #6
  %223 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 7
  %224 = call ptr @memset(ptr %regval.i.i, i32 255, i32 32)
  %225 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %216, align 4
  call void %226(ptr noundef nonnull %216, ptr noundef nonnull %regval.i.i) #6
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp.not.i.i = icmp eq i32 %228, 0
  br i1 %cmp.not.i.i, label %if.then3.i.dispc_k2g_vid_write_csc.exit.i_crit_edge, label %do.end.i.i

if.then3.i.dispc_k2g_vid_write_csc.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k2g_vid_write_csc.exit.i

do.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %229 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.dispc_csc_coef, ptr %216, i32 0, i32 5
  %231 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef %232) #9
  br label %dispc_k2g_vid_write_csc.exit.i

dispc_k2g_vid_write_csc.exit.i:                   ; preds = %do.end.i.i, %if.then3.i.dispc_k2g_vid_write_csc.exit.i_crit_edge
  %233 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 6
  %234 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 5
  %235 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 4
  %236 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 3
  %237 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 2
  %238 = getelementptr inbounds [8 x i32], ptr %regval.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %regval.i.i, align 4
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i260 = getelementptr i8, ptr %242, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %243 = call i32 @llvm.bswap.i32(i32 %240) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i260, i32 %243) #6, !srcloc !272
  %244 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %238, align 4
  %246 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %247, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %248 = call i32 @llvm.bswap.i32(i32 %245) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %248) #6, !srcloc !272
  %249 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %237, align 4
  %251 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %252, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %253 = call i32 @llvm.bswap.i32(i32 %250) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 %253) #6, !srcloc !272
  %254 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %236, align 4
  %256 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %257, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %258 = call i32 @llvm.bswap.i32(i32 %255) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i, i32 %258) #6, !srcloc !272
  %259 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %235, align 4
  %261 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.4.i.i = getelementptr i8, ptr %262, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %263 = call i32 @llvm.bswap.i32(i32 %260) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i.i, i32 %263) #6, !srcloc !272
  %264 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %234, align 4
  %266 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.5.i.i = getelementptr i8, ptr %267, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %268 = call i32 @llvm.bswap.i32(i32 %265) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i.i, i32 %268) #6, !srcloc !272
  %269 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %233, align 4
  %271 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.6.i.i = getelementptr i8, ptr %272, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %273 = call i32 @llvm.bswap.i32(i32 %270) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i.i, i32 %273) #6, !srcloc !272
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regval.i.i) #6
  br label %dispc_vid_csc_setup.exit

if.else.i261:                                     ; preds = %dispc_find_csc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regval.i14.i) #6
  %274 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 1
  %275 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 2
  %276 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 3
  %277 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 4
  %278 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 5
  %279 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 6
  %280 = getelementptr inbounds [8 x i32], ptr %regval.i14.i, i32 0, i32 7
  %281 = call ptr @memset(ptr %regval.i14.i, i32 255, i32 32)
  %282 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %216, align 4
  call void %283(ptr noundef nonnull %216, ptr noundef nonnull %regval.i14.i) #6
  %284 = ptrtoint ptr %regval.i14.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %regval.i14.i, align 4
  %286 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %287, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %288 = call i32 @llvm.bswap.i32(i32 %285) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 %288) #6, !srcloc !272
  %289 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %274, align 4
  %291 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.1.i17.i = getelementptr i8, ptr %292, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %293 = call i32 @llvm.bswap.i32(i32 %290) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i17.i, i32 %293) #6, !srcloc !272
  %294 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %275, align 4
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.2.i18.i = getelementptr i8, ptr %297, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %298 = call i32 @llvm.bswap.i32(i32 %295) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i18.i, i32 %298) #6, !srcloc !272
  %299 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %276, align 4
  %301 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.3.i19.i = getelementptr i8, ptr %302, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %303 = call i32 @llvm.bswap.i32(i32 %300) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i19.i, i32 %303) #6, !srcloc !272
  %304 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %277, align 4
  %306 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.4.i20.i = getelementptr i8, ptr %307, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %308 = call i32 @llvm.bswap.i32(i32 %305) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i20.i, i32 %308) #6, !srcloc !272
  %309 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %278, align 4
  %311 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.5.i21.i = getelementptr i8, ptr %312, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %313 = call i32 @llvm.bswap.i32(i32 %310) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i21.i, i32 %313) #6, !srcloc !272
  %314 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %279, align 4
  %316 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.6.i22.i = getelementptr i8, ptr %317, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %318 = call i32 @llvm.bswap.i32(i32 %315) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i22.i, i32 %318) #6, !srcloc !272
  %319 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %280, align 4
  %321 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.7.i.i = getelementptr i8, ptr %322, i32 572
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %323 = call i32 @llvm.bswap.i32(i32 %320) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7.i.i, i32 %323) #6, !srcloc !272
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regval.i14.i) #6
  br label %dispc_vid_csc_setup.exit

dispc_vid_csc_setup.exit:                         ; preds = %if.else.i261, %dispc_k2g_vid_write_csc.exit.i, %do.end.i258
  %324 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i263 = getelementptr i8, ptr %325, i32 32
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i263) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %327 = or i32 %326, 131072
  %328 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i.i265 = getelementptr i8, ptr %329, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i265, i32 %327) #6, !srcloc !272
  br label %if.end76

if.else75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %330 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i267 = getelementptr i8, ptr %331, i32 32
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i267) #6, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %333 = and i32 %332, -131073
  %334 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i.i268 = getelementptr i8, ptr %335, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i268, i32 %333) #6, !srcloc !272
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %dispc_vid_csc_setup.exit
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 12
  %336 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %alpha, align 4
  %338 = lshr i16 %337, 8
  %339 = zext i16 %338 to i32
  %340 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %341, i32 508
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  %342 = shl nuw i32 %339, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %342) #6, !srcloc !272
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 13
  %343 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %pixel_blend_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %344)
  %cmp81 = icmp eq i16 %344, 0
  %345 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i271 = getelementptr i8, ptr %346, i32 32
  %347 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i271) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %348 = or i32 %347, 16
  %349 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %350, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %348) #6, !srcloc !272
  br label %if.end85

if.else84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %351 = and i32 %347, -17
  %352 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2.i275 = getelementptr i8, ptr %353, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i275, i32 %351) #6, !srcloc !272
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %scale) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_plane_enable(ptr nocapture noundef readonly %dispc, i32 noundef %hw_plane, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot.ext = zext i1 %enable to i32
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i.i = or i32 %4, %lnot.ext
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #6, !srcloc !272
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_vp_setup(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr nocapture noundef readonly %state, i1 noundef zeroext %newmodeset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 4, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !272
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #6, !srcloc !272
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %5 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not.i = icmp ne i8 %5, 0
  %brmerge.i = or i1 %bf.cast.not.i, %newmodeset
  br i1 %brmerge.i, label %if.end.i, label %entry.dispc_vp_set_color_mgmt.exit_crit_edge

entry.dispc_vp_set_color_mgmt.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_vp_set_color_mgmt.exit

if.end.i:                                         ; preds = %entry
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 12
  %6 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gamma_lut.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %length5.i = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %length5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length5.i, align 4
  %div29.i = lshr i32 %11, 3
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %lut.0.i = phi ptr [ %9, %if.then2.i ], [ null, %if.end.i.if.end6.i_crit_edge ]
  %length.0.i = phi i32 [ %div29.i, %if.then2.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  tail call fastcc void @dispc_vp_set_gamma(ptr noundef %dispc, i32 noundef %hw_videoport, ptr noundef %lut.0.i, i32 noundef %length.0.i) #6
  %ctm7.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 11
  %12 = ptrtoint ptr %ctm7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctm7.i, align 4
  %tobool8.not.i = icmp eq ptr %13, null
  br i1 %tobool8.not.i, label %if.end12.thread.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i
  %data11.i = getelementptr inbounds %struct.drm_property_blob, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data11.i, align 4
  %feat.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %16 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %feat.i, align 4
  %subrev.i = getelementptr inbounds %struct.dispc_features, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %subrev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subrev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.end12.thread.i:                                ; preds = %if.end6.i
  %feat154.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %20 = ptrtoint ptr %feat154.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %feat154.i, align 4
  %subrev155.i = getelementptr inbounds %struct.dispc_features, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %subrev155.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subrev155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp156.i = icmp eq i32 %23, 0
  br i1 %cmp156.i, label %if.end12.thread.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge, label %if.end12.thread.i.dispc_k3_vp_set_ctm.exit.i_crit_edge

if.end12.thread.i.dispc_k3_vp_set_ctm.exit.i_crit_edge: ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_vp_set_ctm.exit.i

if.end12.thread.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge: ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k2g_vp_set_ctm.exit.i

if.then13.i:                                      ; preds = %if.end12.i
  br i1 %tobool.not.i.i, label %if.then13.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge, label %if.then.i.i

if.then13.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k2g_vp_set_ctm.exit.i

if.then.i.i:                                      ; preds = %if.then13.i
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %tobool.not.i.i.i.i = icmp sgt i64 %25, -1
  %and9.i.i.i.i = lshr i64 %25, 24
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i64 %25, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp3.i.i.i.i = icmp eq i64 %26, 0
  %extract.t38.i.i.i.i = trunc i64 %and9.i.i.i.i to i32
  %cond7.off0.i.i.i.i = select i1 %cmp3.i.i.i.i, i32 %extract.t38.i.i.i.i, i32 512
  %conv.i.i.i.i = sub i32 0, %cond7.off0.i.i.i.i
  br label %dispc_S31_32_to_s2_8.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %25)
  %cmp19.i.i.i.i = icmp ult i64 %25, 8573157376
  %extract.t.i.i.i.i = trunc i64 %and9.i.i.i.i to i32
  %cond24.off0.i.i.i.i = select i1 %cmp19.i.i.i.i, i32 %extract.t.i.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit.i.i.i

dispc_S31_32_to_s2_8.exit.i.i.i:                  ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %ret.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.then.i.i.i.i ], [ %cond24.off0.i.i.i.i, %if.else.i.i.i.i ]
  %arrayidx3.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx3.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %tobool.not.i68.i.i.i = icmp sgt i64 %28, -1
  %and9.i69.i.i.i = lshr i64 %28, 24
  br i1 %tobool.not.i68.i.i.i, label %if.else.i78.i.i.i, label %if.then.i74.i.i.i

if.then.i74.i.i.i:                                ; preds = %dispc_S31_32_to_s2_8.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = and i64 %28, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp3.i70.i.i.i = icmp eq i64 %29, 0
  %extract.t38.i71.i.i.i = trunc i64 %and9.i69.i.i.i to i32
  %cond7.off0.i72.i.i.i = select i1 %cmp3.i70.i.i.i, i32 %extract.t38.i71.i.i.i, i32 512
  %conv.i73.i.i.i = sub i32 0, %cond7.off0.i72.i.i.i
  br label %dispc_S31_32_to_s2_8.exit80.i.i.i

if.else.i78.i.i.i:                                ; preds = %dispc_S31_32_to_s2_8.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %28)
  %cmp19.i75.i.i.i = icmp ult i64 %28, 8573157376
  %extract.t.i76.i.i.i = trunc i64 %and9.i69.i.i.i to i32
  %cond24.off0.i77.i.i.i = select i1 %cmp19.i75.i.i.i, i32 %extract.t.i76.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit80.i.i.i

dispc_S31_32_to_s2_8.exit80.i.i.i:                ; preds = %if.else.i78.i.i.i, %if.then.i74.i.i.i
  %ret.0.i79.i.i.i = phi i32 [ %conv.i73.i.i.i, %if.then.i74.i.i.i ], [ %cond24.off0.i77.i.i.i, %if.else.i78.i.i.i ]
  %arrayidx9.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx9.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %tobool.not.i81.i.i.i = icmp sgt i64 %31, -1
  %and9.i82.i.i.i = lshr i64 %31, 24
  br i1 %tobool.not.i81.i.i.i, label %if.else.i91.i.i.i, label %if.then.i87.i.i.i

if.then.i87.i.i.i:                                ; preds = %dispc_S31_32_to_s2_8.exit80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = and i64 %31, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp3.i83.i.i.i = icmp eq i64 %32, 0
  %extract.t38.i84.i.i.i = trunc i64 %and9.i82.i.i.i to i32
  %cond7.off0.i85.i.i.i = select i1 %cmp3.i83.i.i.i, i32 %extract.t38.i84.i.i.i, i32 512
  %conv.i86.i.i.i = sub i32 0, %cond7.off0.i85.i.i.i
  br label %dispc_S31_32_to_s2_8.exit93.i.i.i

if.else.i91.i.i.i:                                ; preds = %dispc_S31_32_to_s2_8.exit80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %31)
  %cmp19.i88.i.i.i = icmp ult i64 %31, 8573157376
  %extract.t.i89.i.i.i = trunc i64 %and9.i82.i.i.i to i32
  %cond24.off0.i90.i.i.i = select i1 %cmp19.i88.i.i.i, i32 %extract.t.i89.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit93.i.i.i

dispc_S31_32_to_s2_8.exit93.i.i.i:                ; preds = %if.else.i91.i.i.i, %if.then.i87.i.i.i
  %ret.0.i92.i.i.i = phi i32 [ %conv.i86.i.i.i, %if.then.i87.i.i.i ], [ %cond24.off0.i90.i.i.i, %if.else.i91.i.i.i ]
  %arrayidx15.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx15.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %tobool.not.i94.i.i.i = icmp sgt i64 %34, -1
  %and9.i95.i.i.i = lshr i64 %34, 24
  br i1 %tobool.not.i94.i.i.i, label %if.else.i104.i.i.i, label %if.then.i100.i.i.i

if.then.i100.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = and i64 %34, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp3.i96.i.i.i = icmp eq i64 %35, 0
  %extract.t38.i97.i.i.i = trunc i64 %and9.i95.i.i.i to i32
  %cond7.off0.i98.i.i.i = select i1 %cmp3.i96.i.i.i, i32 %extract.t38.i97.i.i.i, i32 512
  %conv.i99.i.i.i = sub i32 0, %cond7.off0.i98.i.i.i
  br label %dispc_S31_32_to_s2_8.exit106.i.i.i

if.else.i104.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %34)
  %cmp19.i101.i.i.i = icmp ult i64 %34, 8573157376
  %extract.t.i102.i.i.i = trunc i64 %and9.i95.i.i.i to i32
  %cond24.off0.i103.i.i.i = select i1 %cmp19.i101.i.i.i, i32 %extract.t.i102.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit106.i.i.i

dispc_S31_32_to_s2_8.exit106.i.i.i:               ; preds = %if.else.i104.i.i.i, %if.then.i100.i.i.i
  %ret.0.i105.i.i.i = phi i32 [ %conv.i99.i.i.i, %if.then.i100.i.i.i ], [ %cond24.off0.i103.i.i.i, %if.else.i104.i.i.i ]
  %arrayidx21.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx21.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %tobool.not.i107.i.i.i = icmp sgt i64 %37, -1
  %and9.i108.i.i.i = lshr i64 %37, 24
  br i1 %tobool.not.i107.i.i.i, label %if.else.i117.i.i.i, label %if.then.i113.i.i.i

if.then.i113.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = and i64 %37, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp3.i109.i.i.i = icmp eq i64 %38, 0
  %extract.t38.i110.i.i.i = trunc i64 %and9.i108.i.i.i to i32
  %cond7.off0.i111.i.i.i = select i1 %cmp3.i109.i.i.i, i32 %extract.t38.i110.i.i.i, i32 512
  %conv.i112.i.i.i = sub i32 0, %cond7.off0.i111.i.i.i
  br label %dispc_S31_32_to_s2_8.exit119.i.i.i

if.else.i117.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %37)
  %cmp19.i114.i.i.i = icmp ult i64 %37, 8573157376
  %extract.t.i115.i.i.i = trunc i64 %and9.i108.i.i.i to i32
  %cond24.off0.i116.i.i.i = select i1 %cmp19.i114.i.i.i, i32 %extract.t.i115.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit119.i.i.i

dispc_S31_32_to_s2_8.exit119.i.i.i:               ; preds = %if.else.i117.i.i.i, %if.then.i113.i.i.i
  %ret.0.i118.i.i.i = phi i32 [ %conv.i112.i.i.i, %if.then.i113.i.i.i ], [ %cond24.off0.i116.i.i.i, %if.else.i117.i.i.i ]
  %arrayidx27.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx27.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %tobool.not.i120.i.i.i = icmp sgt i64 %40, -1
  %and9.i121.i.i.i = lshr i64 %40, 24
  br i1 %tobool.not.i120.i.i.i, label %if.else.i130.i.i.i, label %if.then.i126.i.i.i

if.then.i126.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit119.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = and i64 %40, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp3.i122.i.i.i = icmp eq i64 %41, 0
  %extract.t38.i123.i.i.i = trunc i64 %and9.i121.i.i.i to i32
  %cond7.off0.i124.i.i.i = select i1 %cmp3.i122.i.i.i, i32 %extract.t38.i123.i.i.i, i32 512
  %conv.i125.i.i.i = sub i32 0, %cond7.off0.i124.i.i.i
  br label %dispc_S31_32_to_s2_8.exit132.i.i.i

if.else.i130.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit119.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %40)
  %cmp19.i127.i.i.i = icmp ult i64 %40, 8573157376
  %extract.t.i128.i.i.i = trunc i64 %and9.i121.i.i.i to i32
  %cond24.off0.i129.i.i.i = select i1 %cmp19.i127.i.i.i, i32 %extract.t.i128.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit132.i.i.i

dispc_S31_32_to_s2_8.exit132.i.i.i:               ; preds = %if.else.i130.i.i.i, %if.then.i126.i.i.i
  %ret.0.i131.i.i.i = phi i32 [ %conv.i125.i.i.i, %if.then.i126.i.i.i ], [ %cond24.off0.i129.i.i.i, %if.else.i130.i.i.i ]
  %arrayidx33.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 6
  %42 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx33.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %tobool.not.i133.i.i.i = icmp sgt i64 %43, -1
  %and9.i134.i.i.i = lshr i64 %43, 24
  br i1 %tobool.not.i133.i.i.i, label %if.else.i143.i.i.i, label %if.then.i139.i.i.i

if.then.i139.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit132.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = and i64 %43, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %cmp3.i135.i.i.i = icmp eq i64 %44, 0
  %extract.t38.i136.i.i.i = trunc i64 %and9.i134.i.i.i to i32
  %cond7.off0.i137.i.i.i = select i1 %cmp3.i135.i.i.i, i32 %extract.t38.i136.i.i.i, i32 512
  %conv.i138.i.i.i = sub i32 0, %cond7.off0.i137.i.i.i
  br label %dispc_S31_32_to_s2_8.exit145.i.i.i

if.else.i143.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit132.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %43)
  %cmp19.i140.i.i.i = icmp ult i64 %43, 8573157376
  %extract.t.i141.i.i.i = trunc i64 %and9.i134.i.i.i to i32
  %cond24.off0.i142.i.i.i = select i1 %cmp19.i140.i.i.i, i32 %extract.t.i141.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit145.i.i.i

dispc_S31_32_to_s2_8.exit145.i.i.i:               ; preds = %if.else.i143.i.i.i, %if.then.i139.i.i.i
  %ret.0.i144.i.i.i = phi i32 [ %conv.i138.i.i.i, %if.then.i139.i.i.i ], [ %cond24.off0.i142.i.i.i, %if.else.i143.i.i.i ]
  %arrayidx39.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx39.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %tobool.not.i146.i.i.i = icmp sgt i64 %46, -1
  %and9.i147.i.i.i = lshr i64 %46, 24
  br i1 %tobool.not.i146.i.i.i, label %if.else.i156.i.i.i, label %if.then.i152.i.i.i

if.then.i152.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit145.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = and i64 %46, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp3.i148.i.i.i = icmp eq i64 %47, 0
  %extract.t38.i149.i.i.i = trunc i64 %and9.i147.i.i.i to i32
  %cond7.off0.i150.i.i.i = select i1 %cmp3.i148.i.i.i, i32 %extract.t38.i149.i.i.i, i32 512
  %conv.i151.i.i.i = sub i32 0, %cond7.off0.i150.i.i.i
  br label %dispc_S31_32_to_s2_8.exit158.i.i.i

if.else.i156.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit145.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %46)
  %cmp19.i153.i.i.i = icmp ult i64 %46, 8573157376
  %extract.t.i154.i.i.i = trunc i64 %and9.i147.i.i.i to i32
  %cond24.off0.i155.i.i.i = select i1 %cmp19.i153.i.i.i, i32 %extract.t.i154.i.i.i, i32 511
  br label %dispc_S31_32_to_s2_8.exit158.i.i.i

dispc_S31_32_to_s2_8.exit158.i.i.i:               ; preds = %if.else.i156.i.i.i, %if.then.i152.i.i.i
  %ret.0.i157.i.i.i = phi i32 [ %conv.i151.i.i.i, %if.then.i152.i.i.i ], [ %cond24.off0.i155.i.i.i, %if.else.i156.i.i.i ]
  %arrayidx45.i.i.i = getelementptr [9 x i64], ptr %15, i32 0, i32 8
  %48 = ptrtoint ptr %arrayidx45.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx45.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %49)
  %tobool.not.i159.i.i.i = icmp sgt i64 %49, -1
  %and9.i160.i.i.i = lshr i64 %49, 24
  br i1 %tobool.not.i159.i.i.i, label %if.else.i169.i.i.i, label %if.then.i165.i.i.i

if.then.i165.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit158.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = and i64 %49, 9223372028264841216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp3.i161.i.i.i = icmp eq i64 %50, 0
  %extract.t38.i162.i.i.i = trunc i64 %and9.i160.i.i.i to i32
  %cond7.off0.i163.i.i.i = select i1 %cmp3.i161.i.i.i, i32 %extract.t38.i162.i.i.i, i32 512
  %conv.i164.i.i.i = sub i32 0, %cond7.off0.i163.i.i.i
  br label %dispc_k2g_cpr_from_ctm.exit.i.i

if.else.i169.i.i.i:                               ; preds = %dispc_S31_32_to_s2_8.exit158.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8573157376, i64 %49)
  %cmp19.i166.i.i.i = icmp ult i64 %49, 8573157376
  %extract.t.i167.i.i.i = trunc i64 %and9.i160.i.i.i to i32
  %cond24.off0.i168.i.i.i = select i1 %cmp19.i166.i.i.i, i32 %extract.t.i167.i.i.i, i32 511
  br label %dispc_k2g_cpr_from_ctm.exit.i.i

dispc_k2g_cpr_from_ctm.exit.i.i:                  ; preds = %if.else.i169.i.i.i, %if.then.i165.i.i.i
  %ret.0.i170.i.i.i = phi i32 [ %conv.i164.i.i.i, %if.then.i165.i.i.i ], [ %cond24.off0.i168.i.i.i, %if.else.i169.i.i.i ]
  %shl2.i.i.i.i.i = and i32 %ret.0.i170.i.i.i, 1023
  %51 = shl i32 %ret.0.i157.i.i.i, 11
  %and.i.i.i.i.i = and i32 %51, 2095104
  %or.i.i.i.i = or i32 %and.i.i.i.i.i, %shl2.i.i.i.i.i
  %shl2.i44.i.i.i.i = shl i32 %ret.0.i144.i.i.i, 22
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl2.i44.i.i.i.i
  %shl2.i46.i.i.i.i = and i32 %ret.0.i131.i.i.i, 1023
  %52 = shl i32 %ret.0.i118.i.i.i, 11
  %and.i48.i.i.i.i = and i32 %52, 2095104
  %or15.i.i.i.i = or i32 %and.i48.i.i.i.i, %shl2.i46.i.i.i.i
  %shl2.i49.i.i.i.i = shl i32 %ret.0.i105.i.i.i, 22
  %or19.i.i.i.i = or i32 %or15.i.i.i.i, %shl2.i49.i.i.i.i
  %shl2.i51.i.i.i.i = and i32 %ret.0.i92.i.i.i, 1023
  %53 = shl i32 %ret.0.i79.i.i.i, 11
  %and.i53.i.i.i.i = and i32 %53, 2095104
  %or27.i.i.i.i = or i32 %and.i53.i.i.i.i, %shl2.i51.i.i.i.i
  %shl2.i54.i.i.i.i = shl i32 %ret.0.i.i.i.i, 22
  %or31.i.i.i.i = or i32 %or27.i.i.i.i, %shl2.i54.i.i.i.i
  %arrayidx.i5.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %54 = ptrtoint ptr %arrayidx.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i5.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %56) #6, !srcloc !272
  %57 = ptrtoint ptr %arrayidx.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i5.i.i.i, align 4
  %add.ptr.i.1.i.i.i = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i.i, i32 %59) #6, !srcloc !272
  %60 = ptrtoint ptr %arrayidx.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i5.i.i.i, align 4
  %add.ptr.i.2.i.i.i = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %or31.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i.i, i32 %62) #6, !srcloc !272
  br label %dispc_k2g_vp_set_ctm.exit.i

dispc_k2g_vp_set_ctm.exit.i:                      ; preds = %dispc_k2g_cpr_from_ctm.exit.i.i, %if.then13.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge, %if.end12.thread.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge
  %cprenable.0.i.i = phi i32 [ 32768, %dispc_k2g_cpr_from_ctm.exit.i.i ], [ 0, %if.then13.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge ], [ 0, %if.end12.thread.i.dispc_k2g_vp_set_ctm.exit.i_crit_edge ]
  %arrayidx.i.i4.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %63 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i4.i.i, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %66 = and i32 %65, -8388609
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %or.i.i6.i.i = or i32 %67, %cprenable.0.i.i
  %68 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i.i6.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %70) #6, !srcloc !272
  br label %dispc_vp_set_color_mgmt.exit

if.else.i:                                        ; preds = %if.end12.i
  br i1 %tobool.not.i.i, label %if.else.i.dispc_k3_vp_set_ctm.exit.i_crit_edge, label %if.then.i33.i

if.else.i.dispc_k3_vp_set_ctm.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_k3_vp_set_ctm.exit.i

if.then.i33.i:                                    ; preds = %if.else.i
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %72)
  %tobool.not.i.i.i31.i = icmp sgt i64 %72, -1
  %and9.i.i.i32.i = lshr i64 %72, 24
  br i1 %tobool.not.i.i.i31.i, label %if.else.i.i.i42.i, label %if.then.i.i.i38.i

if.then.i.i.i38.i:                                ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = and i64 %72, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %cmp3.i.i.i34.i = icmp eq i64 %73, 0
  %extract.t38.i.i.i35.i = trunc i64 %and9.i.i.i32.i to i32
  %cond7.off0.i.i.i36.i = select i1 %cmp3.i.i.i34.i, i32 %extract.t38.i.i.i35.i, i32 1024
  %conv.i.i.i37.i = sub i32 0, %cond7.off0.i.i.i36.i
  br label %dispc_S31_32_to_s3_8.exit.i.i.i

if.else.i.i.i42.i:                                ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %72)
  %cmp19.i.i.i39.i = icmp ult i64 %72, 17163091968
  %extract.t.i.i.i40.i = trunc i64 %and9.i.i.i32.i to i32
  %cond24.off0.i.i.i41.i = select i1 %cmp19.i.i.i39.i, i32 %extract.t.i.i.i40.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit.i.i.i

dispc_S31_32_to_s3_8.exit.i.i.i:                  ; preds = %if.else.i.i.i42.i, %if.then.i.i.i38.i
  %ret.0.i.i.i43.i = phi i32 [ %conv.i.i.i37.i, %if.then.i.i.i38.i ], [ %cond24.off0.i.i.i41.i, %if.else.i.i.i42.i ]
  %arrayidx3.i.i44.i = getelementptr [9 x i64], ptr %15, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx3.i.i44.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx3.i.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %75)
  %tobool.not.i68.i.i45.i = icmp sgt i64 %75, -1
  %and9.i69.i.i46.i = lshr i64 %75, 24
  br i1 %tobool.not.i68.i.i45.i, label %if.else.i78.i.i55.i, label %if.then.i74.i.i51.i

if.then.i74.i.i51.i:                              ; preds = %dispc_S31_32_to_s3_8.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = and i64 %75, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %cmp3.i70.i.i47.i = icmp eq i64 %76, 0
  %extract.t38.i71.i.i48.i = trunc i64 %and9.i69.i.i46.i to i32
  %cond7.off0.i72.i.i49.i = select i1 %cmp3.i70.i.i47.i, i32 %extract.t38.i71.i.i48.i, i32 1024
  %conv.i73.i.i50.i = sub i32 0, %cond7.off0.i72.i.i49.i
  br label %dispc_S31_32_to_s3_8.exit80.i.i.i

if.else.i78.i.i55.i:                              ; preds = %dispc_S31_32_to_s3_8.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %75)
  %cmp19.i75.i.i52.i = icmp ult i64 %75, 17163091968
  %extract.t.i76.i.i53.i = trunc i64 %and9.i69.i.i46.i to i32
  %cond24.off0.i77.i.i54.i = select i1 %cmp19.i75.i.i52.i, i32 %extract.t.i76.i.i53.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit80.i.i.i

dispc_S31_32_to_s3_8.exit80.i.i.i:                ; preds = %if.else.i78.i.i55.i, %if.then.i74.i.i51.i
  %ret.0.i79.i.i56.i = phi i32 [ %conv.i73.i.i50.i, %if.then.i74.i.i51.i ], [ %cond24.off0.i77.i.i54.i, %if.else.i78.i.i55.i ]
  %sext172.i.i.i = shl i32 %ret.0.i79.i.i56.i, 16
  %arrayidx9.i.i57.i = getelementptr [9 x i64], ptr %15, i32 0, i32 2
  %77 = ptrtoint ptr %arrayidx9.i.i57.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx9.i.i57.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %78)
  %tobool.not.i81.i.i58.i = icmp sgt i64 %78, -1
  %and9.i82.i.i59.i = lshr i64 %78, 24
  br i1 %tobool.not.i81.i.i58.i, label %if.else.i91.i.i68.i, label %if.then.i87.i.i64.i

if.then.i87.i.i64.i:                              ; preds = %dispc_S31_32_to_s3_8.exit80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = and i64 %78, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %cmp3.i83.i.i60.i = icmp eq i64 %79, 0
  %extract.t38.i84.i.i61.i = trunc i64 %and9.i82.i.i59.i to i32
  %cond7.off0.i85.i.i62.i = select i1 %cmp3.i83.i.i60.i, i32 %extract.t38.i84.i.i61.i, i32 1024
  %conv.i86.i.i63.i = sub i32 0, %cond7.off0.i85.i.i62.i
  br label %dispc_S31_32_to_s3_8.exit93.i.i.i

if.else.i91.i.i68.i:                              ; preds = %dispc_S31_32_to_s3_8.exit80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %78)
  %cmp19.i88.i.i65.i = icmp ult i64 %78, 17163091968
  %extract.t.i89.i.i66.i = trunc i64 %and9.i82.i.i59.i to i32
  %cond24.off0.i90.i.i67.i = select i1 %cmp19.i88.i.i65.i, i32 %extract.t.i89.i.i66.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit93.i.i.i

dispc_S31_32_to_s3_8.exit93.i.i.i:                ; preds = %if.else.i91.i.i68.i, %if.then.i87.i.i64.i
  %ret.0.i92.i.i69.i = phi i32 [ %conv.i86.i.i63.i, %if.then.i87.i.i64.i ], [ %cond24.off0.i90.i.i67.i, %if.else.i91.i.i68.i ]
  %arrayidx15.i.i70.i = getelementptr [9 x i64], ptr %15, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx15.i.i70.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx15.i.i70.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %81)
  %tobool.not.i94.i.i71.i = icmp sgt i64 %81, -1
  %and9.i95.i.i72.i = lshr i64 %81, 24
  br i1 %tobool.not.i94.i.i71.i, label %if.else.i104.i.i81.i, label %if.then.i100.i.i77.i

if.then.i100.i.i77.i:                             ; preds = %dispc_S31_32_to_s3_8.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = and i64 %81, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp3.i96.i.i73.i = icmp eq i64 %82, 0
  %extract.t38.i97.i.i74.i = trunc i64 %and9.i95.i.i72.i to i32
  %cond7.off0.i98.i.i75.i = select i1 %cmp3.i96.i.i73.i, i32 %extract.t38.i97.i.i74.i, i32 1024
  %conv.i99.i.i76.i = sub i32 0, %cond7.off0.i98.i.i75.i
  br label %dispc_S31_32_to_s3_8.exit106.i.i.i

if.else.i104.i.i81.i:                             ; preds = %dispc_S31_32_to_s3_8.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %81)
  %cmp19.i101.i.i78.i = icmp ult i64 %81, 17163091968
  %extract.t.i102.i.i79.i = trunc i64 %and9.i95.i.i72.i to i32
  %cond24.off0.i103.i.i80.i = select i1 %cmp19.i101.i.i78.i, i32 %extract.t.i102.i.i79.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit106.i.i.i

dispc_S31_32_to_s3_8.exit106.i.i.i:               ; preds = %if.else.i104.i.i81.i, %if.then.i100.i.i77.i
  %ret.0.i105.i.i82.i = phi i32 [ %conv.i99.i.i76.i, %if.then.i100.i.i77.i ], [ %cond24.off0.i103.i.i80.i, %if.else.i104.i.i81.i ]
  %sext174.i.i.i = shl i32 %ret.0.i105.i.i82.i, 16
  %arrayidx21.i.i83.i = getelementptr [9 x i64], ptr %15, i32 0, i32 4
  %83 = ptrtoint ptr %arrayidx21.i.i83.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx21.i.i83.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %84)
  %tobool.not.i107.i.i84.i = icmp sgt i64 %84, -1
  %and9.i108.i.i85.i = lshr i64 %84, 24
  br i1 %tobool.not.i107.i.i84.i, label %if.else.i117.i.i94.i, label %if.then.i113.i.i90.i

if.then.i113.i.i90.i:                             ; preds = %dispc_S31_32_to_s3_8.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = and i64 %84, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %85)
  %cmp3.i109.i.i86.i = icmp eq i64 %85, 0
  %extract.t38.i110.i.i87.i = trunc i64 %and9.i108.i.i85.i to i32
  %cond7.off0.i111.i.i88.i = select i1 %cmp3.i109.i.i86.i, i32 %extract.t38.i110.i.i87.i, i32 1024
  %conv.i112.i.i89.i = sub i32 0, %cond7.off0.i111.i.i88.i
  br label %dispc_S31_32_to_s3_8.exit119.i.i.i

if.else.i117.i.i94.i:                             ; preds = %dispc_S31_32_to_s3_8.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %84)
  %cmp19.i114.i.i91.i = icmp ult i64 %84, 17163091968
  %extract.t.i115.i.i92.i = trunc i64 %and9.i108.i.i85.i to i32
  %cond24.off0.i116.i.i93.i = select i1 %cmp19.i114.i.i91.i, i32 %extract.t.i115.i.i92.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit119.i.i.i

dispc_S31_32_to_s3_8.exit119.i.i.i:               ; preds = %if.else.i117.i.i94.i, %if.then.i113.i.i90.i
  %ret.0.i118.i.i95.i = phi i32 [ %conv.i112.i.i89.i, %if.then.i113.i.i90.i ], [ %cond24.off0.i116.i.i93.i, %if.else.i117.i.i94.i ]
  %arrayidx27.i.i96.i = getelementptr [9 x i64], ptr %15, i32 0, i32 5
  %86 = ptrtoint ptr %arrayidx27.i.i96.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx27.i.i96.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %87)
  %tobool.not.i120.i.i97.i = icmp sgt i64 %87, -1
  %and9.i121.i.i98.i = lshr i64 %87, 24
  br i1 %tobool.not.i120.i.i97.i, label %if.else.i130.i.i107.i, label %if.then.i126.i.i103.i

if.then.i126.i.i103.i:                            ; preds = %dispc_S31_32_to_s3_8.exit119.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = and i64 %87, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %cmp3.i122.i.i99.i = icmp eq i64 %88, 0
  %extract.t38.i123.i.i100.i = trunc i64 %and9.i121.i.i98.i to i32
  %cond7.off0.i124.i.i101.i = select i1 %cmp3.i122.i.i99.i, i32 %extract.t38.i123.i.i100.i, i32 1024
  %conv.i125.i.i102.i = sub i32 0, %cond7.off0.i124.i.i101.i
  br label %dispc_S31_32_to_s3_8.exit132.i.i.i

if.else.i130.i.i107.i:                            ; preds = %dispc_S31_32_to_s3_8.exit119.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %87)
  %cmp19.i127.i.i104.i = icmp ult i64 %87, 17163091968
  %extract.t.i128.i.i105.i = trunc i64 %and9.i121.i.i98.i to i32
  %cond24.off0.i129.i.i106.i = select i1 %cmp19.i127.i.i104.i, i32 %extract.t.i128.i.i105.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit132.i.i.i

dispc_S31_32_to_s3_8.exit132.i.i.i:               ; preds = %if.else.i130.i.i107.i, %if.then.i126.i.i103.i
  %ret.0.i131.i.i108.i = phi i32 [ %conv.i125.i.i102.i, %if.then.i126.i.i103.i ], [ %cond24.off0.i129.i.i106.i, %if.else.i130.i.i107.i ]
  %sext176.i.i.i = shl i32 %ret.0.i131.i.i108.i, 16
  %arrayidx33.i.i109.i = getelementptr [9 x i64], ptr %15, i32 0, i32 6
  %89 = ptrtoint ptr %arrayidx33.i.i109.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx33.i.i109.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %90)
  %tobool.not.i133.i.i110.i = icmp sgt i64 %90, -1
  %and9.i134.i.i111.i = lshr i64 %90, 24
  br i1 %tobool.not.i133.i.i110.i, label %if.else.i143.i.i120.i, label %if.then.i139.i.i116.i

if.then.i139.i.i116.i:                            ; preds = %dispc_S31_32_to_s3_8.exit132.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = and i64 %90, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %cmp3.i135.i.i112.i = icmp eq i64 %91, 0
  %extract.t38.i136.i.i113.i = trunc i64 %and9.i134.i.i111.i to i32
  %cond7.off0.i137.i.i114.i = select i1 %cmp3.i135.i.i112.i, i32 %extract.t38.i136.i.i113.i, i32 1024
  %conv.i138.i.i115.i = sub i32 0, %cond7.off0.i137.i.i114.i
  br label %dispc_S31_32_to_s3_8.exit145.i.i.i

if.else.i143.i.i120.i:                            ; preds = %dispc_S31_32_to_s3_8.exit132.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %90)
  %cmp19.i140.i.i117.i = icmp ult i64 %90, 17163091968
  %extract.t.i141.i.i118.i = trunc i64 %and9.i134.i.i111.i to i32
  %cond24.off0.i142.i.i119.i = select i1 %cmp19.i140.i.i117.i, i32 %extract.t.i141.i.i118.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit145.i.i.i

dispc_S31_32_to_s3_8.exit145.i.i.i:               ; preds = %if.else.i143.i.i120.i, %if.then.i139.i.i116.i
  %ret.0.i144.i.i121.i = phi i32 [ %conv.i138.i.i115.i, %if.then.i139.i.i116.i ], [ %cond24.off0.i142.i.i119.i, %if.else.i143.i.i120.i ]
  %arrayidx39.i.i122.i = getelementptr [9 x i64], ptr %15, i32 0, i32 7
  %92 = ptrtoint ptr %arrayidx39.i.i122.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx39.i.i122.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %tobool.not.i146.i.i123.i = icmp sgt i64 %93, -1
  %and9.i147.i.i124.i = lshr i64 %93, 24
  br i1 %tobool.not.i146.i.i123.i, label %if.else.i156.i.i133.i, label %if.then.i152.i.i129.i

if.then.i152.i.i129.i:                            ; preds = %dispc_S31_32_to_s3_8.exit145.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = and i64 %93, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %cmp3.i148.i.i125.i = icmp eq i64 %94, 0
  %extract.t38.i149.i.i126.i = trunc i64 %and9.i147.i.i124.i to i32
  %cond7.off0.i150.i.i127.i = select i1 %cmp3.i148.i.i125.i, i32 %extract.t38.i149.i.i126.i, i32 1024
  %conv.i151.i.i128.i = sub i32 0, %cond7.off0.i150.i.i127.i
  br label %dispc_S31_32_to_s3_8.exit158.i.i.i

if.else.i156.i.i133.i:                            ; preds = %dispc_S31_32_to_s3_8.exit145.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %93)
  %cmp19.i153.i.i130.i = icmp ult i64 %93, 17163091968
  %extract.t.i154.i.i131.i = trunc i64 %and9.i147.i.i124.i to i32
  %cond24.off0.i155.i.i132.i = select i1 %cmp19.i153.i.i130.i, i32 %extract.t.i154.i.i131.i, i32 1023
  br label %dispc_S31_32_to_s3_8.exit158.i.i.i

dispc_S31_32_to_s3_8.exit158.i.i.i:               ; preds = %if.else.i156.i.i133.i, %if.then.i152.i.i129.i
  %ret.0.i157.i.i134.i = phi i32 [ %conv.i151.i.i128.i, %if.then.i152.i.i129.i ], [ %cond24.off0.i155.i.i132.i, %if.else.i156.i.i133.i ]
  %sext178.i.i.i = shl i32 %ret.0.i157.i.i134.i, 16
  %arrayidx45.i.i135.i = getelementptr [9 x i64], ptr %15, i32 0, i32 8
  %95 = ptrtoint ptr %arrayidx45.i.i135.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx45.i.i135.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %96)
  %tobool.not.i159.i.i136.i = icmp sgt i64 %96, -1
  %and9.i160.i.i137.i = lshr i64 %96, 24
  br i1 %tobool.not.i159.i.i136.i, label %if.else.i169.i.i146.i, label %if.then.i165.i.i142.i

if.then.i165.i.i142.i:                            ; preds = %dispc_S31_32_to_s3_8.exit158.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = and i64 %96, 9223372019674906624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp3.i161.i.i138.i = icmp eq i64 %97, 0
  %extract.t38.i162.i.i139.i = trunc i64 %and9.i160.i.i137.i to i32
  %cond7.off0.i163.i.i140.i = select i1 %cmp3.i161.i.i138.i, i32 %extract.t38.i162.i.i139.i, i32 1024
  %conv.i164.i.i141.i = sub i32 0, %cond7.off0.i163.i.i140.i
  br label %dispc_csc_from_ctm.exit.i.i

if.else.i169.i.i146.i:                            ; preds = %dispc_S31_32_to_s3_8.exit158.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17163091968, i64 %96)
  %cmp19.i166.i.i143.i = icmp ult i64 %96, 17163091968
  %extract.t.i167.i.i144.i = trunc i64 %and9.i160.i.i137.i to i32
  %cond24.off0.i168.i.i145.i = select i1 %cmp19.i166.i.i143.i, i32 %extract.t.i167.i.i144.i, i32 1023
  br label %dispc_csc_from_ctm.exit.i.i

dispc_csc_from_ctm.exit.i.i:                      ; preds = %if.else.i169.i.i146.i, %if.then.i165.i.i142.i
  %ret.0.i170.i.i147.i = phi i32 [ %conv.i164.i.i141.i, %if.then.i165.i.i142.i ], [ %cond24.off0.i168.i.i145.i, %if.else.i169.i.i146.i ]
  %shl2.i.i.i.i = and i32 %ret.0.i.i.i43.i, 2047
  %and.i.i.i.i = and i32 %sext172.i.i.i, 134152192
  %or.i.i.i = or i32 %and.i.i.i.i, %shl2.i.i.i.i
  %shl2.i50.i.i.i = and i32 %ret.0.i92.i.i69.i, 2047
  %and.i52.i.i.i = and i32 %sext174.i.i.i, 134152192
  %or11.i.i.i = or i32 %and.i52.i.i.i, %shl2.i50.i.i.i
  %shl2.i53.i.i.i = and i32 %ret.0.i118.i.i95.i, 2047
  %and.i55.i.i.i = and i32 %sext176.i.i.i, 134152192
  %or19.i.i.i = or i32 %and.i55.i.i.i, %shl2.i53.i.i.i
  %shl2.i56.i.i.i = and i32 %ret.0.i144.i.i121.i, 2047
  %and.i58.i.i.i = and i32 %sext178.i.i.i, 134152192
  %or27.i.i.i = or i32 %and.i58.i.i.i, %shl2.i56.i.i.i
  %shl2.i59.i.i.i = and i32 %ret.0.i170.i.i147.i, 2047
  %arrayidx.i.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %98 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i148.i = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %100 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i148.i, i32 %100) #6, !srcloc !272
  %101 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.1.i.i149.i = getelementptr i8, ptr %102, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %103 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i149.i, i32 %103) #6, !srcloc !272
  %104 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.2.i.i150.i = getelementptr i8, ptr %105, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %106 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i150.i, i32 %106) #6, !srcloc !272
  %107 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.3.i.i.i = getelementptr i8, ptr %108, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %109 = tail call i32 @llvm.bswap.i32(i32 %or27.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i.i, i32 %109) #6, !srcloc !272
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.4.i.i.i = getelementptr i8, ptr %111, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %112 = tail call i32 @llvm.bswap.i32(i32 %shl2.i59.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i.i.i, i32 %112) #6, !srcloc !272
  %113 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.5.i.i.i = getelementptr i8, ptr %114, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i.i.i, i32 0) #6, !srcloc !272
  %115 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.6.i.i.i = getelementptr i8, ptr %116, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i.i.i, i32 0) #6, !srcloc !272
  %117 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.7.i.i.i = getelementptr i8, ptr %118, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7.i.i.i, i32 0) #6, !srcloc !272
  br label %dispc_k3_vp_set_ctm.exit.i

dispc_k3_vp_set_ctm.exit.i:                       ; preds = %dispc_csc_from_ctm.exit.i.i, %if.else.i.dispc_k3_vp_set_ctm.exit.i_crit_edge, %if.end12.thread.i.dispc_k3_vp_set_ctm.exit.i_crit_edge
  %colorconvenable.0.i.i = phi i32 [ 16777216, %dispc_csc_from_ctm.exit.i.i ], [ 0, %if.else.i.dispc_k3_vp_set_ctm.exit.i_crit_edge ], [ 0, %if.end12.thread.i.dispc_k3_vp_set_ctm.exit.i_crit_edge ]
  %arrayidx.i.i4.i151.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  %119 = ptrtoint ptr %arrayidx.i.i4.i151.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i4.i151.i, align 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %122 = and i32 %121, -2
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #6
  %or.i.i.i152.i = or i32 %123, %colorconvenable.0.i.i
  %124 = ptrtoint ptr %arrayidx.i.i4.i151.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i4.i151.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %126 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i152.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %126) #6, !srcloc !272
  br label %dispc_vp_set_color_mgmt.exit

dispc_vp_set_color_mgmt.exit:                     ; preds = %dispc_k3_vp_set_ctm.exit.i, %dispc_k2g_vp_set_ctm.exit.i, %entry.dispc_vp_set_color_mgmt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_runtime_suspend(ptr nocapture noundef %dispc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_suspend.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_suspend.__UNIQUE_ID_ddebug354, ptr noundef %1, ptr noundef nonnull @.str.35) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_enabled = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 10
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_enabled, align 4
  %fclk = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 9
  %3 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fclk, align 4
  tail call void @clk_disable(ptr noundef %4) #6
  tail call void @clk_unprepare(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_runtime_resume(ptr nocapture noundef %dispc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_resume.__UNIQUE_ID_ddebug355, ptr noundef %1, ptr noundef nonnull @.str.37) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fclk = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 9
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.clk_prepare_enable.exit_crit_edge

do.end.clk_prepare_enable.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end.clk_prepare_enable.exit_crit_edge
  %4 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %7 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %do.end8, label %clk_prepare_enable.exit.do.body11_crit_edge

clk_prepare_enable.exit.do.body11_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.end8:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.38) #9
  br label %do.body11

do.body11:                                        ; preds = %do.end8, %clk_prepare_enable.exit.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_resume, %if.then23)) #6
          to label %do.body29 [label %if.then23], !srcloc !273

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %13 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev24, align 4
  %15 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx25 = getelementptr i16, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx25, align 2
  %18 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_common.i.i, align 4
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !269
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_resume.__UNIQUE_ID_ddebug356, ptr noundef %14, ptr noundef nonnull @.str.39, i32 noundef %21) #6
  br label %do.body29

do.body29:                                        ; preds = %if.then23, %do.body11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_resume, %if.then41)) #6
          to label %do.end53 [label %if.then41], !srcloc !273

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %dev42 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  %24 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx43 = getelementptr i16, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %26 to i32
  %27 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %28, i32 %conv44
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i136) #6, !srcloc !269
  %30 = lshr i32 %29, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i137 = and i32 %30, 1
  %31 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx46 = getelementptr i16, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx46, align 2
  %conv47 = zext i16 %33 to i32
  %34 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %35, i32 %conv47
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i140) #6, !srcloc !269
  %37 = lshr i32 %36, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i141 = and i32 %37, 1
  %38 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx49 = getelementptr i16, ptr %38, i32 3
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %40 to i32
  %41 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %42, i32 %conv50
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145) #6, !srcloc !269
  %44 = lshr i32 %43, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i146 = and i32 %44, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_resume.__UNIQUE_ID_ddebug357, ptr noundef %23, ptr noundef nonnull @.str.40, i32 noundef %and.i.i137, i32 noundef %and.i.i141, i32 noundef %and.i.i146) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then41, %do.body29
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %45 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %feat, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp54 = icmp eq i32 %48, 1
  br i1 %cmp54, label %do.body57, label %do.end53.do.body83_crit_edge

do.end53.do.body83_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83

do.body57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_resume, %if.then69)) #6
          to label %do.body83 [label %if.then69], !srcloc !273

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %dev70 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %49 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev70, align 4
  %51 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx71 = getelementptr i16, ptr %51, i32 3
  %52 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx71, align 2
  %conv72 = zext i16 %53 to i32
  %54 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i150 = getelementptr i8, ptr %55, i32 %conv72
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i150) #6, !srcloc !269
  %57 = lshr i32 %56, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i151 = and i32 %57, 1
  %58 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx74 = getelementptr i16, ptr %58, i32 3
  %59 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %60 to i32
  %61 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %62, i32 %conv75
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i155) #6, !srcloc !269
  %64 = lshr i32 %63, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i156 = and i32 %64, 1
  %65 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx77 = getelementptr i16, ptr %65, i32 3
  %66 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %67 to i32
  %68 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %69, i32 %conv78
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i160) #6, !srcloc !269
  %71 = lshr i32 %70, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_resume.__UNIQUE_ID_ddebug358, ptr noundef %50, ptr noundef nonnull @.str.41, i32 noundef %and.i.i151, i32 noundef %and.i.i156, i32 noundef %71) #6
  br label %do.body83

do.body83:                                        ; preds = %if.then69, %do.body57, %do.end53.do.body83_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_runtime_resume, %if.then95)) #6
          to label %do.end101 [label %if.then95], !srcloc !273

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  %dev96 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %72 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev96, align 4
  %74 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx97 = getelementptr i16, ptr %74, i32 3
  %75 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx97, align 2
  %conv98 = zext i16 %76 to i32
  %77 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %78, i32 %conv98
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #6, !srcloc !269
  %80 = lshr i32 %79, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %and.i.i166 = and i32 %80, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_runtime_resume.__UNIQUE_ID_ddebug359, ptr noundef %73, ptr noundef nonnull @.str.42, i32 noundef %and.i.i166) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then95, %do.body83
  tail call fastcc void @dispc_initial_config(ptr noundef %dispc)
  %is_enabled = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 10
  %81 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %is_enabled, align 4
  %82 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dispc, align 4
  tail call void @tidss_irq_resume(ptr noundef %83) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_initial_config(ptr nocapture noundef readonly %dispc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat.i, align 4
  %subrev.i = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %subrev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subrev.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %3, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %entry.sw.bb1.i_crit_edge
    i32 2, label %entry.sw.bb1.i_crit_edge7
  ]

entry.sw.bb1.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dispc_k2g_plane_init(ptr noundef %dispc) #6
  br label %dispc_plane_init.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge7
  tail call fastcc void @dispc_k3_plane_init(ptr noundef %dispc) #6
  br label %dispc_plane_init.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2208, i32 noundef 9, ptr noundef null) #6
  br label %dispc_plane_init.exit

dispc_plane_init.exit:                            ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vp_init.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_initial_config, %if.then.i)) #6
          to label %do.end.i6 [label %if.then.i], !srcloc !273

if.then.i:                                        ; preds = %dispc_plane_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vp_init.__UNIQUE_ID_ddebug333, ptr noundef %6, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.89) #6
  br label %do.end.i6

do.end.i6:                                        ; preds = %if.then.i, %dispc_plane_init.exit
  %7 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %feat.i, align 4
  %num_vps8.i = getelementptr inbounds %struct.dispc_features, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %num_vps8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_vps8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not.i = icmp eq i32 %10, 0
  br i1 %cmp9.not.i, label %do.end.i6.dispc_vp_init.exit_crit_edge, label %do.end.i6.for.body.i_crit_edge

do.end.i6.for.body.i_crit_edge:                   ; preds = %do.end.i6
  br label %for.body.i

do.end.i6.dispc_vp_init.exit_crit_edge:           ; preds = %do.end.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_vp_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i6.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.i6.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %i.010.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %14 = or i32 %13, 67108864
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !272
  %inc.i = add nuw i32 %i.010.i, 1
  %17 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feat.i, align 4
  %num_vps.i = getelementptr inbounds %struct.dispc_features, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %num_vps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dispc_vp_init.exit_crit_edge

for.body.i.dispc_vp_init.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_vp_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dispc_vp_init.exit:                               ; preds = %for.body.i.dispc_vp_init.exit_crit_edge, %do.end.i6.dispc_vp_init.exit_crit_edge
  %21 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %feat.i, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %if.then, label %dispc_vp_init.exit.if.end_crit_edge

dispc_vp_init.exit.if.end_crit_edge:              ; preds = %dispc_vp_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %dispc_vp_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx = getelementptr i16, ptr %25, i32 32
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 2
  %base_common.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %28 = ptrtoint ptr %base_common.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_common.i, align 4
  %conv.i = zext i16 %27 to i32
  %add.ptr.i = getelementptr i8, ptr %29, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2113929216) #6, !srcloc !272
  br label %if.end

if.end:                                           ; preds = %if.then, %dispc_vp_init.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_irq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dispc_remove(ptr nocapture noundef %tidss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_remove.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_remove, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_remove.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 3
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dispc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dispc_init(ptr noundef %tidss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_init.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_init.__UNIQUE_ID_ddebug361, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %feat5 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 2
  %2 = ptrtoint ptr %feat5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat5, align 4
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.end.if.end14_crit_edge, label %if.then6

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6:                                         ; preds = %do.end
  %call.i = tail call i32 @dma_set_mask(ptr noundef %1, i64 noundef 281474976710655) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %do.end12

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 281474976710655) #6
  br label %if.end14

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %dma_set_mask_and_coherent.exit.thread, %do.end.if.end14_crit_edge
  %call.i242 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 124, i32 noundef 3520) #6
  %tobool16.not = icmp eq ptr %call.i242, null
  br i1 %tobool16.not, label %if.end14.cleanup145_crit_edge, label %if.end18

if.end14.cleanup145_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup145

if.end18:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %call.i242 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tidss, ptr %call.i242, align 4
  %dev20 = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 1
  %7 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %dev20, align 4
  %feat21 = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 8
  %8 = ptrtoint ptr %feat21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %feat21, align 4
  %call.i243 = tail call ptr @soc_device_match(ptr noundef nonnull @dispc_init_errata.am65x_sr10_soc_devices) #6
  %tobool.not.i = icmp eq ptr %call.i243, null
  br i1 %tobool.not.i, label %if.end18.dispc_init_errata.exit_crit_edge, label %if.then.i244

if.end18.dispc_init_errata.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dispc_init_errata.exit

if.then.i244:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %errata.i = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 15
  %9 = ptrtoint ptr %errata.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %errata.i, align 4
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.92) #9
  br label %dispc_init_errata.exit

dispc_init_errata.exit:                           ; preds = %if.then.i244, %if.end18.dispc_init_errata.exit_crit_edge
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 116, i32 noundef 3520) #6
  %fourccs = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 12
  %12 = ptrtoint ptr %fourccs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %fourccs, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool24.not, label %dispc_init_errata.exit.cleanup145_crit_edge, label %for.cond.preheader

dispc_init_errata.exit.cleanup145_crit_edge:      ; preds = %dispc_init_errata.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup145

for.cond.preheader:                               ; preds = %dispc_init_errata.exit
  %errata = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %num_fourccs.0307 = phi i32 [ 0, %for.cond.preheader ], [ %num_fourccs.1, %for.inc.for.body_crit_edge ]
  %i.0304 = phi i32 [ 0, %for.cond.preheader ], [ %inc36, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %errata to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %errata, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not = icmp eq i8 %14, 0
  br i1 %tobool28.not, label %for.body.if.end31_crit_edge, label %land.lhs.true

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [29 x %struct.anon.90], ptr @dispc_color_formats, i32 0, i32 %i.0304
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %16, label %land.lhs.true.if.end31_crit_edge [
    i32 1448695129, label %land.lhs.true.for.inc_crit_edge
    i32 1498831189, label %land.lhs.true.for.inc_crit_edge437
    i32 842094158, label %land.lhs.true.for.inc_crit_edge438
  ]

land.lhs.true.for.inc_crit_edge438:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.for.inc_crit_edge437:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %arrayidx32 = getelementptr [29 x %struct.anon.90], ptr @dispc_color_formats, i32 0, i32 %i.0304
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %20 = ptrtoint ptr %fourccs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fourccs, align 4
  %inc = add i32 %num_fourccs.0307, 1
  %arrayidx35 = getelementptr i32, ptr %21, i32 %num_fourccs.0307
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %land.lhs.true.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge437, %land.lhs.true.for.inc_crit_edge438
  %num_fourccs.1 = phi i32 [ %inc, %if.end31 ], [ %num_fourccs.0307, %land.lhs.true.for.inc_crit_edge ], [ %num_fourccs.0307, %land.lhs.true.for.inc_crit_edge437 ], [ %num_fourccs.0307, %land.lhs.true.for.inc_crit_edge438 ]
  %inc36 = add nuw nsw i32 %i.0304, 1
  %exitcond.not = icmp eq i32 %inc36, 29
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %num_fourccs37 = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 13
  %23 = ptrtoint ptr %num_fourccs37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %num_fourccs.1, ptr %num_fourccs37, align 4
  %24 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %feat21, align 4
  %common_regs = getelementptr inbounds %struct.dispc_features, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %common_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common_regs, align 4
  store ptr %27, ptr @dispc_common_regmap, align 4
  %common = getelementptr inbounds %struct.dispc_features, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common, align 4
  %call.i246 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %29) #6
  %cmp.i.i = icmp ugt ptr %call.i246, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dispc_iomap_resource.exit, label %dispc_iomap_resource.exit.thread

dispc_iomap_resource.exit.thread:                 ; preds = %for.end
  %base_common = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 2
  %30 = ptrtoint ptr %base_common to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i246, ptr %base_common, align 4
  %31 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %feat21, align 4
  %num_planes309 = getelementptr inbounds %struct.dispc_features, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %num_planes309 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_planes309, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp46310.not = icmp eq i32 %34, 0
  br i1 %cmp46310.not, label %dispc_iomap_resource.exit.thread.for.cond58.preheader_crit_edge, label %dispc_iomap_resource.exit.thread.for.body47_crit_edge

dispc_iomap_resource.exit.thread.for.body47_crit_edge: ; preds = %dispc_iomap_resource.exit.thread
  br label %for.body47

dispc_iomap_resource.exit.thread.for.cond58.preheader_crit_edge: ; preds = %dispc_iomap_resource.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond58.preheader

dispc_iomap_resource.exit:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %29) #9
  %35 = ptrtoint ptr %call.i246 to i32
  br label %cleanup145

for.cond58.preheader:                             ; preds = %dispc_iomap_resource.exit255.thread.for.cond58.preheader_crit_edge, %dispc_iomap_resource.exit.thread.for.cond58.preheader_crit_edge
  %36 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %feat21, align 4
  %num_vps312 = getelementptr inbounds %struct.dispc_features, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %num_vps312 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_vps312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60313.not = icmp eq i32 %39, 0
  br i1 %cmp60313.not, label %for.cond58.preheader.for.end103_crit_edge, label %for.cond58.preheader.for.body61_crit_edge

for.cond58.preheader.for.body61_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body61

for.cond58.preheader.for.end103_crit_edge:        ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.body47:                                       ; preds = %dispc_iomap_resource.exit255.thread.for.body47_crit_edge, %dispc_iomap_resource.exit.thread.for.body47_crit_edge
  %40 = phi ptr [ %45, %dispc_iomap_resource.exit255.thread.for.body47_crit_edge ], [ %32, %dispc_iomap_resource.exit.thread.for.body47_crit_edge ]
  %i.1311 = phi i32 [ %inc56, %dispc_iomap_resource.exit255.thread.for.body47_crit_edge ], [ 0, %dispc_iomap_resource.exit.thread.for.body47_crit_edge ]
  %arrayidx49 = getelementptr %struct.dispc_features, ptr %40, i32 0, i32 13, i32 %i.1311
  %41 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx49, align 4
  %call.i249 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %42) #6
  %cmp.i.i250 = icmp ugt ptr %call.i249, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i250, label %dispc_iomap_resource.exit255, label %dispc_iomap_resource.exit255.thread

dispc_iomap_resource.exit255.thread:              ; preds = %for.body47
  %arrayidx50 = getelementptr %struct.dispc_device, ptr %call.i242, i32 0, i32 3, i32 %i.1311
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i249, ptr %arrayidx50, align 4
  %inc56 = add nuw i32 %i.1311, 1
  %44 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %feat21, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_planes, align 4
  %cmp46 = icmp ult i32 %inc56, %47
  br i1 %cmp46, label %dispc_iomap_resource.exit255.thread.for.body47_crit_edge, label %dispc_iomap_resource.exit255.thread.for.cond58.preheader_crit_edge

dispc_iomap_resource.exit255.thread.for.cond58.preheader_crit_edge: ; preds = %dispc_iomap_resource.exit255.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond58.preheader

dispc_iomap_resource.exit255.thread.for.body47_crit_edge: ; preds = %dispc_iomap_resource.exit255.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

dispc_iomap_resource.exit255:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %42) #9
  %48 = ptrtoint ptr %call.i249 to i32
  br label %cleanup145

for.body61:                                       ; preds = %for.inc101.for.body61_crit_edge, %for.cond58.preheader.for.body61_crit_edge
  %49 = phi ptr [ %77, %for.inc101.for.body61_crit_edge ], [ %37, %for.cond58.preheader.for.body61_crit_edge ]
  %i.2314 = phi i32 [ %inc102, %for.inc101.for.body61_crit_edge ], [ 0, %for.cond58.preheader.for.body61_crit_edge ]
  %vp_feat = getelementptr inbounds %struct.dispc_features, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %vp_feat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vp_feat, align 4
  %arrayidx65 = getelementptr %struct.dispc_features, ptr %49, i32 0, i32 8, i32 %i.2314
  %52 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx65, align 4
  %call.i256 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %53) #6
  %cmp.i.i257 = icmp ugt ptr %call.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i257, label %dispc_iomap_resource.exit262, label %dispc_iomap_resource.exit262.thread

dispc_iomap_resource.exit262.thread:              ; preds = %for.body61
  %arrayidx66 = getelementptr %struct.dispc_device, ptr %call.i242, i32 0, i32 4, i32 %i.2314
  %54 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i256, ptr %arrayidx66, align 4
  %55 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %feat21, align 4
  %arrayidx72 = getelementptr %struct.dispc_features, ptr %56, i32 0, i32 7, i32 %i.2314
  %57 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx72, align 4
  %call.i263 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %58) #6
  %cmp.i.i264 = icmp ugt ptr %call.i263, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i264, label %dispc_iomap_resource.exit269, label %dispc_iomap_resource.exit269.thread

dispc_iomap_resource.exit262:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %53) #9
  %59 = ptrtoint ptr %call.i256 to i32
  br label %cleanup145

dispc_iomap_resource.exit269.thread:              ; preds = %dispc_iomap_resource.exit262.thread
  %arrayidx73 = getelementptr %struct.dispc_device, ptr %call.i242, i32 0, i32 5, i32 %i.2314
  %60 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i263, ptr %arrayidx73, align 4
  %61 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %feat21, align 4
  %arrayidx79 = getelementptr %struct.dispc_features, ptr %62, i32 0, i32 9, i32 %i.2314
  %63 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx79, align 4
  %call80 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %64) #6
  %cmp.i270 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %do.end85, label %if.end91

dispc_iomap_resource.exit269:                     ; preds = %dispc_iomap_resource.exit262.thread
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %58) #9
  %65 = ptrtoint ptr %call.i263 to i32
  br label %cleanup145

do.end85:                                         ; preds = %dispc_iomap_resource.exit269.thread
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %feat21, align 4
  %arrayidx88 = getelementptr %struct.dispc_features, ptr %67, i32 0, i32 9, i32 %i.2314
  %68 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx88, align 4
  %70 = ptrtoint ptr %call80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, ptr noundef %69, i32 noundef %70) #9
  br label %cleanup145

if.end91:                                         ; preds = %dispc_iomap_resource.exit269.thread
  %arrayidx92 = getelementptr %struct.dispc_device, ptr %call.i242, i32 0, i32 7, i32 %i.2314
  %71 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call80, ptr %arrayidx92, align 4
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #6
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %if.end91.cleanup145_crit_edge, label %devm_kmalloc_array.exit, !prof !275

if.end91.cleanup145_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup145

devm_kmalloc_array.exit:                          ; preds = %if.end91
  %74 = extractvalue { i32, i1 } %72, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %74, i32 noundef 3264) #6
  %tobool94.not = icmp eq ptr %call5.i, null
  br i1 %tobool94.not, label %devm_kmalloc_array.exit.cleanup145_crit_edge, label %for.inc101

devm_kmalloc_array.exit.cleanup145_crit_edge:     ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup145

for.inc101:                                       ; preds = %devm_kmalloc_array.exit
  %arrayidx97 = getelementptr %struct.dispc_device, ptr %call.i242, i32 0, i32 11, i32 %i.2314
  %75 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call5.i, ptr %arrayidx97, align 4
  %inc102 = add nuw i32 %i.2314, 1
  %76 = ptrtoint ptr %feat21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %feat21, align 4
  %num_vps = getelementptr inbounds %struct.dispc_features, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %num_vps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_vps, align 4
  %cmp60 = icmp ult i32 %inc102, %79
  br i1 %cmp60, label %for.inc101.for.body61_crit_edge, label %for.inc101.for.end103_crit_edge

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.inc101.for.body61_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body61

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %for.cond58.preheader.for.end103_crit_edge
  %80 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp105 = icmp eq i32 %81, 1
  br i1 %cmp105, label %if.then106, label %for.end103.if.end111_crit_edge

for.end103.if.end111_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then106:                                       ; preds = %for.end103
  %call107 = tail call fastcc i32 @dispc_init_am65x_oldi_io_ctrl(ptr noundef %1, ptr noundef nonnull %call.i242)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then106.if.end111_crit_edge, label %if.then106.cleanup145_crit_edge

if.then106.cleanup145_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup145

if.then106.if.end111_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end111:                                        ; preds = %if.then106.if.end111_crit_edge, %for.end103.if.end111_crit_edge
  %call112 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.50) #6
  %fclk = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 9
  %82 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call112, ptr %fclk, align 4
  %cmp.i273 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %do.end118, label %do.body124

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %call112 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.45, i32 noundef %83) #9
  %84 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fclk, align 4
  %86 = ptrtoint ptr %85 to i32
  br label %cleanup145

do.body124:                                       ; preds = %if.end111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_init.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_init, %if.then136)) #6
          to label %do.end141 [label %if.then136], !srcloc !273

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fclk, align 4
  %call138 = tail call i32 @clk_get_rate(ptr noundef %88) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_init.__UNIQUE_ID_ddebug362, ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %call138) #6
  br label %do.end141

do.end141:                                        ; preds = %if.then136, %do.body124
  %89 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev20, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 27
  %91 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %of_node, align 8
  %memory_bandwidth_limit = getelementptr inbounds %struct.dispc_device, ptr %call.i242, i32 0, i32 14
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %92, ptr noundef nonnull @.str.55, ptr noundef %memory_bandwidth_limit, i32 noundef 1, i32 noundef 0) #6
  %dispc144 = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 3
  %93 = ptrtoint ptr %dispc144 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i242, ptr %dispc144, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %do.end141, %do.end118, %if.then106.cleanup145_crit_edge, %devm_kmalloc_array.exit.cleanup145_crit_edge, %if.end91.cleanup145_crit_edge, %do.end85, %dispc_iomap_resource.exit269, %dispc_iomap_resource.exit262, %dispc_iomap_resource.exit255, %dispc_iomap_resource.exit, %dispc_init_errata.exit.cleanup145_crit_edge, %if.end14.cleanup145_crit_edge
  %retval.2 = phi i32 [ %86, %do.end118 ], [ 0, %do.end141 ], [ -12, %if.end14.cleanup145_crit_edge ], [ -12, %dispc_init_errata.exit.cleanup145_crit_edge ], [ %35, %dispc_iomap_resource.exit ], [ %48, %dispc_iomap_resource.exit255 ], [ %call107, %if.then106.cleanup145_crit_edge ], [ %65, %dispc_iomap_resource.exit269 ], [ %59, %dispc_iomap_resource.exit262 ], [ %70, %do.end85 ], [ -12, %devm_kmalloc_array.exit.cleanup145_crit_edge ], [ -12, %if.end91.cleanup145_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dispc_init_am65x_oldi_io_ctrl(ptr noundef %dev, ptr nocapture noundef %dispc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.97) #6
  %oldi_io_ctrl = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 6
  %2 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %oldi_io_ctrl, align 4
  %3 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %oldi_io_ctrl, align 4
  br label %return

if.else:                                          ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %3) #9
  %5 = ptrtoint ptr %oldi_io_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oldi_io_ctrl, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %return

return:                                           ; preds = %do.end, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.else.return_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_k3_clear_irqstatus(ptr nocapture noundef readonly %dispc, i32 noundef %clearmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %num_vps56 = getelementptr inbounds %struct.dispc_features, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_vps56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vps56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57.not = icmp eq i32 %3, 0
  br i1 %cmp57.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body

for.cond1.preheader:                              ; preds = %for.inc.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %top_clear.0.lcssa = phi i32 [ 0, %entry.for.cond1.preheader_crit_edge ], [ %top_clear.1, %for.inc.for.cond1.preheader_crit_edge ]
  %4 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat, align 4
  %num_planes61 = getelementptr inbounds %struct.dispc_features, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %num_planes61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp362.not = icmp eq i32 %7, 0
  br i1 %cmp362.not, label %for.cond1.preheader.for.end14_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.end14_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %base_common.i.i50 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  br label %for.body4

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %top_clear.060 = phi i32 [ 0, %for.body.lr.ph ], [ %top_clear.1, %for.inc.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul.i = shl i32 %i.058, 2
  %add.i = add i32 %mul.i, 4
  %shl.neg.i = shl nsw i32 -1, %add.i
  %sub6.i = sub i32 24, %mul.i
  %shr.i = lshr i32 -1, %sub6.i
  %and.i = and i32 %shr.i, %clearmask
  %and = and i32 %and.i, %shl.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = lshr i32 %clearmask, %add.i
  %9 = and i32 %8, 1
  %add4.i.i = add i32 %mul.i, 5
  %shl5.i.i = shl nuw i32 1, %add4.i.i
  %and6.i.i = and i32 %shl5.i.i, %clearmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %or9.i.i = or i32 %9, 2
  %stat.1.i.i = select i1 %tobool7.not.i.i, i32 %9, i32 %or9.i.i
  %add13.i.i = add i32 %mul.i, 6
  %shl14.i.i = shl nuw i32 1, %add13.i.i
  %and15.i.i = and i32 %shl14.i.i, %clearmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %or18.i.i = or i32 %stat.1.i.i, 4
  %stat.2.i.i = select i1 %tobool16.not.i.i, i32 %stat.1.i.i, i32 %or18.i.i
  %add22.i.i = add i32 %mul.i, 7
  %shl23.i.i = shl nuw i32 1, %add22.i.i
  %and24.i.i = and i32 %shl23.i.i, %clearmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  %or27.i.i = or i32 %stat.2.i.i, 16
  %stat.3.i.i = select i1 %tobool25.not.i.i, i32 %stat.2.i.i, i32 %or27.i.i
  %10 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i = getelementptr i16, ptr %10, i32 12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %hw_videoport.tr.i = trunc i32 %i.058 to i16
  %13 = shl i16 %hw_videoport.tr.i, 2
  %conv1.i = add i16 %12, %13
  %14 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_common.i.i, align 4
  %conv.i.i = zext i16 %conv1.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %stat.3.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #6, !srcloc !272
  %shl = shl nuw i32 1, %i.058
  %or = or i32 %top_clear.060, %shl
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %top_clear.1 = phi i32 [ %or, %if.then ], [ %top_clear.060, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.058, 1
  %17 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feat, align 4
  %num_vps = getelementptr inbounds %struct.dispc_features, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %num_vps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vps, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond1.preheader_crit_edge

for.inc.for.cond1.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body4:                                        ; preds = %for.inc12.for.body4_crit_edge, %for.body4.lr.ph
  %top_clear.265 = phi i32 [ %top_clear.0.lcssa, %for.body4.lr.ph ], [ %top_clear.3, %for.inc12.for.body4_crit_edge ]
  %i.163 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc13, %for.inc12.for.body4_crit_edge ]
  %add.i42 = add i32 %i.163, 20
  %shl.neg.i43 = shl nsw i32 -1, %add.i42
  %sub6.i44 = sub i32 11, %i.163
  %shr.i45 = lshr i32 -1, %sub6.i44
  %and.i46 = and i32 %shr.i45, %clearmask
  %and6 = and i32 %and.i46, %shl.neg.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body4.for.inc12_crit_edge, label %if.then8

for.body4.for.inc12_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

if.then8:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  %21 = lshr i32 %clearmask, %add.i42
  %22 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx.i48 = getelementptr i16, ptr %22, i32 10
  %23 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i48, align 2
  %hw_plane.tr.i = trunc i32 %i.163 to i16
  %25 = shl i16 %hw_plane.tr.i, 2
  %conv1.i49 = add i16 %24, %25
  %26 = ptrtoint ptr %base_common.i.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_common.i.i50, align 4
  %conv.i.i51 = zext i16 %conv1.i49 to i32
  %add.ptr.i.i52 = getelementptr i8, ptr %27, i32 %conv.i.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %28 = shl i32 %21, 24
  %29 = and i32 %28, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %29) #6, !srcloc !272
  %add = add i32 %i.163, 4
  %shl9 = shl nuw i32 1, %add
  %or10 = or i32 %shl9, %top_clear.265
  br label %for.inc12

for.inc12:                                        ; preds = %if.then8, %for.body4.for.inc12_crit_edge
  %top_clear.3 = phi i32 [ %or10, %if.then8 ], [ %top_clear.265, %for.body4.for.inc12_crit_edge ]
  %inc13 = add nuw i32 %i.163, 1
  %30 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %feat, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_planes, align 4
  %cmp3 = icmp ult i32 %inc13, %33
  br i1 %cmp3, label %for.inc12.for.body4_crit_edge, label %for.inc12.for.end14_crit_edge

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14

for.inc12.for.body4_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %for.cond1.preheader.for.end14_crit_edge
  %top_clear.2.lcssa = phi i32 [ %top_clear.0.lcssa, %for.cond1.preheader.for.end14_crit_edge ], [ %top_clear.3, %for.inc12.for.end14_crit_edge ]
  %.lcssa = phi ptr [ %5, %for.cond1.preheader.for.end14_crit_edge ], [ %31, %for.inc12.for.end14_crit_edge ]
  %subrev = getelementptr inbounds %struct.dispc_features, ptr %.lcssa, i32 0, i32 3
  %34 = ptrtoint ptr %subrev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subrev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16 = icmp eq i32 %35, 0
  br i1 %cmp16, label %for.end14.cleanup_crit_edge, label %if.end18

for.end14.cleanup_crit_edge:                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #8
  %36 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx = getelementptr i16, ptr %36, i32 6
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx, align 2
  %base_common.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %39 = ptrtoint ptr %base_common.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_common.i, align 4
  %conv.i = zext i16 %38 to i32
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %top_clear.2.lcssa) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #6, !srcloc !272
  %42 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx19 = getelementptr i16, ptr %42, i32 6
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx19, align 2
  %45 = ptrtoint ptr %base_common.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_common.i, align 4
  %conv.i54 = zext i16 %44 to i32
  %add.ptr.i55 = getelementptr i8, ptr %46, i32 %conv.i54
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dispc_csc_yuv2rgb_regval(ptr nocapture noundef readonly %csc, ptr nocapture noundef writeonly %regval) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m = getelementptr inbounds %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  %shl2.i = and i32 %1, 2047
  %arrayidx2 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %shl2.i49 = shl i32 %3, 16
  %and.i = and i32 %shl2.i49, 134152192
  %or = or i32 %and.i, %shl2.i
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %regval, align 4
  %arrayidx6 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  %shl2.i50 = and i32 %6, 2047
  %arrayidx9 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %shl2.i51 = shl i32 %8, 16
  %and.i52 = and i32 %shl2.i51, 134152192
  %or11 = or i32 %and.i52, %shl2.i50
  %arrayidx12 = getelementptr i32, ptr %regval, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or11, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %shl2.i53 = and i32 %11, 2047
  %arrayidx17 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %shl2.i54 = shl i32 %13, 16
  %and.i55 = and i32 %shl2.i54, 134152192
  %or19 = or i32 %and.i55, %shl2.i53
  %arrayidx20 = getelementptr i32, ptr %regval, i32 2
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or19, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %shl2.i56 = and i32 %16, 2047
  %arrayidx25 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  %shl2.i57 = shl i32 %18, 16
  %and.i58 = and i32 %shl2.i57, 134152192
  %or27 = or i32 %and.i58, %shl2.i56
  %arrayidx28 = getelementptr i32, ptr %regval, i32 3
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or27, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %shl2.i59 = and i32 %21, 2047
  %arrayidx34 = getelementptr i32, ptr %regval, i32 4
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl2.i59, ptr %arrayidx34, align 4
  %preoffset.i = getelementptr inbounds %struct.dispc_csc_coef, ptr %csc, i32 0, i32 2
  %23 = ptrtoint ptr %preoffset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %preoffset.i, align 4
  %shl2.i.i = shl i32 %24, 3
  %and.i.i = and i32 %shl2.i.i, 65528
  %arrayidx2.i = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  %shl2.i27.i = shl i32 %26, 19
  %or.i = or i32 %and.i.i, %shl2.i27.i
  %arrayidx4.i = getelementptr i32, ptr %regval, i32 5
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %shl2.i29.i = shl i32 %29, 3
  %and.i30.i = and i32 %shl2.i29.i, 65528
  %postoffset.i = getelementptr inbounds %struct.dispc_csc_coef, ptr %csc, i32 0, i32 3
  %30 = ptrtoint ptr %postoffset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %postoffset.i, align 4
  %shl2.i31.i = shl i32 %31, 19
  %or10.i = or i32 %and.i30.i, %shl2.i31.i
  %arrayidx11.i = getelementptr i32, ptr %regval, i32 6
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or10.i, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx13.i, align 4
  %shl2.i33.i = shl i32 %34, 3
  %and.i34.i = and i32 %shl2.i33.i, 65528
  %arrayidx16.i = getelementptr %struct.dispc_csc_coef, ptr %csc, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx16.i, align 4
  %shl2.i35.i = shl i32 %36, 19
  %or18.i = or i32 %and.i34.i, %shl2.i35.i
  %arrayidx19.i = getelementptr i32, ptr %regval, i32 7
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or18.i, ptr %arrayidx19.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tidss_get_scale_coefs(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_vid_write_fir_coefs(ptr nocapture noundef readonly %dispc, i32 noundef %hw_plane, i32 noundef %coef_set, ptr noundef readonly %coefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr [4 x i16], ptr @dispc_vid_write_fir_coefs.c12_regs, i32 0, i32 %coef_set
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx1, align 2
  %tobool.not = icmp eq ptr %coefs, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr [4 x i16], ptr @dispc_vid_write_fir_coefs.c0_regs, i32 0, i32 %coef_set
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane
  %arrayidx4 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  %conv5 = zext i16 %5 to i32
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !272
  %conv2.1 = add i16 %3, 4
  %arrayidx4.1 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4.1, align 2
  %conv5.1 = zext i16 %10 to i32
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.1 = zext i16 %conv2.1 to i32
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 %conv.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv5.1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %13) #6, !srcloc !272
  %conv2.2 = add i16 %3, 8
  %arrayidx4.2 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx4.2, align 2
  %conv5.2 = zext i16 %15 to i32
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.2 = zext i16 %conv2.2 to i32
  %add.ptr.i.2 = getelementptr i8, ptr %17, i32 %conv.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv5.2) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %18) #6, !srcloc !272
  %conv2.3 = add i16 %3, 12
  %arrayidx4.3 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx4.3, align 2
  %conv5.3 = zext i16 %20 to i32
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.3 = zext i16 %conv2.3 to i32
  %add.ptr.i.3 = getelementptr i8, ptr %22, i32 %conv.i.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv5.3) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %23) #6, !srcloc !272
  %conv2.4 = add i16 %3, 16
  %arrayidx4.4 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx4.4, align 2
  %conv5.4 = zext i16 %25 to i32
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.4 = zext i16 %conv2.4 to i32
  %add.ptr.i.4 = getelementptr i8, ptr %27, i32 %conv.i.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv5.4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %28) #6, !srcloc !272
  %conv2.5 = add i16 %3, 20
  %arrayidx4.5 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx4.5, align 2
  %conv5.5 = zext i16 %30 to i32
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.5 = zext i16 %conv2.5 to i32
  %add.ptr.i.5 = getelementptr i8, ptr %32, i32 %conv.i.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv5.5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %33) #6, !srcloc !272
  %conv2.6 = add i16 %3, 24
  %arrayidx4.6 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx4.6, align 2
  %conv5.6 = zext i16 %35 to i32
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.6 = zext i16 %conv2.6 to i32
  %add.ptr.i.6 = getelementptr i8, ptr %37, i32 %conv.i.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv5.6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %38) #6, !srcloc !272
  %conv2.7 = add i16 %3, 28
  %arrayidx4.7 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 7
  %39 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx4.7, align 2
  %conv5.7 = zext i16 %40 to i32
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.7 = zext i16 %conv2.7 to i32
  %add.ptr.i.7 = getelementptr i8, ptr %42, i32 %conv.i.7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %conv5.7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %43) #6, !srcloc !272
  %conv2.8 = add i16 %3, 32
  %arrayidx4.8 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx4.8, align 2
  %conv5.8 = zext i16 %45 to i32
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %conv.i.8 = zext i16 %conv2.8 to i32
  %add.ptr.i.8 = getelementptr i8, ptr %47, i32 %conv.i.8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv5.8) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8, i32 %48) #6, !srcloc !272
  br label %for.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond.preheader
  %phase.150 = phi i32 [ 0, %for.cond.preheader ], [ %inc23, %for.body9.for.body9_crit_edge ]
  %phase.1.tr = trunc i32 %phase.150 to i16
  %51 = shl i16 %phase.1.tr, 2
  %conv14 = add i16 %51, %1
  %arrayidx16 = getelementptr %struct.tidss_scale_coefs, ptr %coefs, i32 0, i32 1, i32 %phase.150
  %52 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx16, align 2
  %arrayidx18 = getelementptr [16 x i16], ptr %coefs, i32 0, i32 %phase.150
  %54 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx18, align 2
  %56 = and i16 %53, 1023
  %shl2.i = zext i16 %56 to i32
  %and.i = shl nuw nsw i32 %shl2.i, 10
  %57 = and i16 %55, 1023
  %shl2.i42 = zext i16 %57 to i32
  %and.i43 = shl nuw nsw i32 %shl2.i42, 20
  %or = or i32 %and.i43, %and.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %conv.i45 = zext i16 %conv14 to i32
  %add.ptr.i46 = getelementptr i8, ptr %59, i32 %conv.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %60) #6, !srcloc !272
  %inc23 = add nuw nsw i32 %phase.150, 1
  %exitcond.not = icmp eq i32 %inc23, 16
  br i1 %exitcond.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_vp_set_gamma(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport, ptr noundef readonly %lut, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 11, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %2 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat, align 4
  %vp_feat = getelementptr inbounds %struct.dispc_features, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vp_feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vp_feat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_vp_set_gamma.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_vp_set_gamma, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_vp_set_gamma.__UNIQUE_ID_ddebug337, ptr noundef %7, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %hw_videoport, i32 noundef %length, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %gamma_type = getelementptr inbounds %struct.dispc_features, ptr %9, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %gamma_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %. = select i1 %cmp, i32 10, i32 8
  %tobool8.not = icmp eq ptr %lut, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp9 = icmp ult i32 %length, 2
  %or.cond = or i1 %tobool8.not, %cmp9
  %lut.addr.0 = select i1 %or.cond, ptr @dispc_vp_gamma_default_lut, ptr %lut
  %length.op = add i32 %length, -1
  %sub = select i1 %or.cond, i32 1, i32 %length.op
  %sub13 = add i32 %5, -1
  %sub61 = sub nuw nsw i32 16, %.
  %mul73 = shl nuw nsw i32 %., 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end
  %i.0142 = phi i32 [ 0, %do.end ], [ %add, %cleanup.for.body_crit_edge ]
  %mul = mul i32 %i.0142, %sub13
  %div = udiv i32 %mul, %sub
  %add = add nuw i32 %i.0142, 1
  %mul16 = mul i32 %add, %sub13
  %div18 = udiv i32 %mul16, %sub
  %sub19 = sub i32 %div18, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %div)
  %cmp20 = icmp eq i32 %div18, %div
  br i1 %cmp20, label %for.body.cleanup_crit_edge, label %for.cond23.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond23.preheader:                             ; preds = %for.body
  %arrayidx26 = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %i.0142
  %arrayidx30 = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %add
  %green = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %i.0142, i32 1
  %green43 = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %add, i32 1
  %blue = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %i.0142, i32 2
  %blue55 = getelementptr %struct.drm_color_lut, ptr %lut.addr.0, i32 %add, i32 2
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.cond23.preheader
  %j.0140 = phi i32 [ 0, %for.cond23.preheader ], [ %inc, %for.body25.for.body25_crit_edge ]
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx26, align 2
  %conv = zext i16 %13 to i32
  %sub27 = sub i32 %sub19, %j.0140
  %mul28 = mul i32 %sub27, %conv
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx30, align 2
  %conv32 = zext i16 %15 to i32
  %mul33 = mul i32 %j.0140, %conv32
  %add34 = add i32 %mul33, %mul28
  %div35 = udiv i32 %add34, %sub19
  %16 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %green, align 2
  %conv38 = zext i16 %17 to i32
  %mul40 = mul i32 %sub27, %conv38
  %18 = ptrtoint ptr %green43 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %green43, align 2
  %conv44 = zext i16 %19 to i32
  %mul45 = mul i32 %j.0140, %conv44
  %add46 = add i32 %mul45, %mul40
  %div47 = udiv i32 %add46, %sub19
  %20 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %blue, align 2
  %conv50 = zext i16 %21 to i32
  %mul52 = mul i32 %sub27, %conv50
  %22 = ptrtoint ptr %blue55 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %blue55, align 2
  %conv56 = zext i16 %23 to i32
  %mul57 = mul i32 %j.0140, %conv56
  %add58 = add i32 %mul57, %mul52
  %div59 = udiv i32 %add58, %sub19
  %conv62 = and i32 %div35, 65535
  %shr = lshr i32 %conv62, %sub61
  %conv65 = and i32 %div47, 65535
  %shr66 = lshr i32 %conv65, %sub61
  %conv69 = and i32 %div59, 65535
  %shr70 = lshr i32 %conv69, %sub61
  %shl = shl i32 %shr, %mul73
  %shl75 = shl i32 %shr66, %.
  %or = or i32 %shl75, %shl
  %or77 = or i32 %or, %shr70
  %add78 = add i32 %j.0140, %div
  %arrayidx79 = getelementptr i32, ptr %1, i32 %add78
  %24 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or77, ptr %arrayidx79, align 4
  %inc = add i32 %j.0140, 1
  %cmp24.not = icmp ult i32 %sub19, %inc
  br i1 %cmp24.not, label %for.body25.cleanup_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body25.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %for.end88, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end88:                                        ; preds = %cleanup
  %25 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %feat, align 4
  %subrev.i = getelementptr inbounds %struct.dispc_features, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %subrev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subrev.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %28, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dispc_k2g_vp_write_gamma_table(ptr noundef %dispc, i32 noundef %hw_videoport) #6
  br label %dispc_vp_write_gamma_table.exit

sw.bb1.i:                                         ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dispc_am65x_vp_write_gamma_table(ptr noundef %dispc, i32 noundef %hw_videoport) #6
  br label %dispc_vp_write_gamma_table.exit

sw.bb2.i:                                         ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dispc_j721e_vp_write_gamma_table(ptr noundef %dispc, i32 noundef %hw_videoport) #6
  br label %dispc_vp_write_gamma_table.exit

do.end.i:                                         ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2316, i32 noundef 9, ptr noundef null) #6
  br label %dispc_vp_write_gamma_table.exit

dispc_vp_write_gamma_table.exit:                  ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_k2g_vp_write_gamma_table(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 11, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %2 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat, align 4
  %vp_feat = getelementptr inbounds %struct.dispc_features, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vp_feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vp_feat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_k2g_vp_write_gamma_table.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_k2g_vp_write_gamma_table, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_k2g_vp_write_gamma_table.__UNIQUE_ID_ddebug334, ptr noundef %7, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %hw_videoport) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %gamma_type = getelementptr inbounds %struct.dispc_features, ptr %9, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %gamma_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end21, !prof !276

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3854.not = icmp eq i32 %5, 0
  br i1 %cmp3854.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  br label %for.body

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2246, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx39 = getelementptr i32, ptr %1, i32 %i.055
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  %shl = shl i32 %i.055, 24
  %or = or i32 %13, %shl
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !272
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end21, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_am65x_vp_write_gamma_table(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 11, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %2 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat, align 4
  %vp_feat = getelementptr inbounds %struct.dispc_features, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vp_feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vp_feat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_am65x_vp_write_gamma_table.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_am65x_vp_write_gamma_table, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_am65x_vp_write_gamma_table.__UNIQUE_ID_ddebug335, ptr noundef %7, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %hw_videoport) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %gamma_type = getelementptr inbounds %struct.dispc_features, ptr %9, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %gamma_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end21, !prof !276

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3854.not = icmp eq i32 %5, 0
  br i1 %cmp3854.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  br label %for.body

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2268, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx39 = getelementptr i32, ptr %1, i32 %i.055
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  %shl = shl i32 %i.055, 24
  %or = or i32 %13, %shl
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !272
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end21, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_j721e_vp_write_gamma_table(ptr nocapture noundef readonly %dispc, i32 noundef %hw_videoport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 11, i32 %hw_videoport
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %2 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feat, align 4
  %vp_feat = getelementptr inbounds %struct.dispc_features, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vp_feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vp_feat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_j721e_vp_write_gamma_table.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_j721e_vp_write_gamma_table, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_j721e_vp_write_gamma_table.__UNIQUE_ID_ddebug336, ptr noundef %7, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.84, i32 noundef %hw_videoport) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %gamma_type = getelementptr inbounds %struct.dispc_features, ptr %9, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %gamma_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %for.cond.preheader, label %do.end21, !prof !276

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3857.not = icmp eq i32 %5, 0
  br i1 %cmp3857.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 5, i32 %hw_videoport
  br label %for.body

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 2289, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx39 = getelementptr i32, ptr %1, i32 %i.058
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %cmp40 = icmp eq i32 %i.058, 0
  %or = or i32 %13, -2147483648
  %spec.select = select i1 %cmp40, i32 %or, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !272
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end21, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_k2g_plane_init(ptr nocapture noundef readonly %dispc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_k2g_plane_init.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_k2g_plane_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_k2g_plane_init.__UNIQUE_ID_ddebug329, ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx = getelementptr i16, ptr %2, i32 15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %5 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %8 = and i32 %7, -50331649
  %9 = or i32 %8, 33554432
  %10 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %9) #6, !srcloc !272
  %12 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx3 = getelementptr i16, ptr %12, i32 15
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %14 to i32
  %15 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %16, i32 %conv4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %18 = and i32 %17, -1073741825
  %19 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i63 = getelementptr i8, ptr %20, i32 %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i63, i32 %18) #6, !srcloc !272
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %21 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %feat, align 4
  %num_planes76 = getelementptr inbounds %struct.dispc_features, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %num_planes76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_planes76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp77.not = icmp eq i32 %24, 0
  br i1 %cmp77.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %dev22 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end27.for.body_crit_edge, %for.body.lr.ph
  %hw_plane.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end27.for.body_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane.078
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %28 = and i32 %27, -65536
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %sub = add nsw i32 %29, -1
  %div55 = lshr i32 %29, 1
  %mul = shl nuw nsw i32 %29, 1
  %div7 = udiv i32 %mul, 3
  %div8 = udiv i32 %29, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_k2g_plane_init.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_k2g_plane_init, %if.then21)) #6
          to label %do.end27 [label %if.then21], !srcloc !273

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev22, align 4
  %32 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %feat, align 4
  %arrayidx24 = getelementptr %struct.dispc_features, ptr %33, i32 0, i32 13, i32 %hw_plane.078
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_k2g_plane_init.__UNIQUE_ID_ddebug330, ptr noundef %31, ptr noundef nonnull @.str.87, ptr noundef %35, i32 noundef %29, i32 noundef %sub, i32 noundef %div55, i32 noundef %div7, i32 noundef %div8, i32 noundef %div55) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %for.body
  %shl2.i.i = shl i32 %sub, 16
  %or.i = or i32 %shl2.i.i, %div55
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %37, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 %38) #6, !srcloc !272
  %shl2.i.i65 = shl nuw i32 %div7, 16
  %or.i67 = or i32 %shl2.i.i65, %div8
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %40, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i67) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69, i32 %41) #6, !srcloc !272
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %div55) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #6, !srcloc !272
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %46, i32 32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %48 = or i32 %47, 2048
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %48) #6, !srcloc !272
  %inc = add nuw i32 %hw_plane.078, 1
  %51 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %feat, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_planes, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %do.end27.for.body_crit_edge, label %do.end27.for.end_crit_edge

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.end27.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispc_k3_plane_init(ptr nocapture noundef readonly %dispc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_k3_plane_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_k3_plane_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_k3_plane_init.__UNIQUE_ID_ddebug331, ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.88) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx = getelementptr i16, ptr %2, i32 18
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %base_common.i.i = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 2
  %5 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %8 = and i32 %7, -117440513
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %9) #6, !srcloc !272
  %12 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx3 = getelementptr i16, ptr %12, i32 18
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %14 to i32
  %15 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %16, i32 %conv4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %18 = and i32 %17, -939524097
  %19 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i69 = getelementptr i8, ptr %20, i32 %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i69, i32 %18) #6, !srcloc !272
  %21 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx5 = getelementptr i16, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %23 to i32
  %24 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %25, i32 %conv6
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %27 = and i32 %26, -50331649
  %28 = or i32 %27, 33554432
  %29 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i75 = getelementptr i8, ptr %30, i32 %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i75, i32 %28) #6, !srcloc !272
  %31 = load ptr, ptr @dispc_common_regmap, align 4
  %arrayidx7 = getelementptr i16, ptr %31, i32 15
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %33 to i32
  %34 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %35, i32 %conv8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %37 = and i32 %36, -1073741825
  %38 = ptrtoint ptr %base_common.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_common.i.i, align 4
  %add.ptr.i7.i80 = getelementptr i8, ptr %39, i32 %conv8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i80, i32 %37) #6, !srcloc !272
  %feat = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 8
  %40 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %feat, align 4
  %num_planes92 = getelementptr inbounds %struct.dispc_features, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %num_planes92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_planes92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp93.not = icmp eq i32 %43, 0
  br i1 %cmp93.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %dev26 = getelementptr inbounds %struct.dispc_device, ptr %dispc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end31.for.body_crit_edge, %for.body.lr.ph
  %hw_plane.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end31.for.body_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dispc_device, ptr %dispc, i32 0, i32 3, i32 %hw_plane.094
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 56
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %47 = and i32 %46, -65536
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %sub = add nsw i32 %48, -1
  %div61 = lshr i32 %48, 1
  %mul = shl nuw nsw i32 %48, 1
  %div11 = udiv i32 %mul, 3
  %div12 = udiv i32 %48, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dispc_k3_plane_init.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dispc_k3_plane_init, %if.then25)) #6
          to label %do.end31 [label %if.then25], !srcloc !273

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev26, align 4
  %51 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %feat, align 4
  %arrayidx28 = getelementptr %struct.dispc_features, ptr %52, i32 0, i32 13, i32 %hw_plane.094
  %53 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dispc_k3_plane_init.__UNIQUE_ID_ddebug332, ptr noundef %50, ptr noundef nonnull @.str.87, ptr noundef %54, i32 noundef %48, i32 noundef %sub, i32 noundef %div61, i32 noundef %div11, i32 noundef %div12, i32 noundef %div61) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %for.body
  %shl2.i.i = shl i32 %sub, 16
  %or.i = or i32 %shl2.i.i, %div61
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %56, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 %57) #6, !srcloc !272
  %shl2.i.i82 = shl nuw i32 %div11, 16
  %or.i84 = or i32 %shl2.i.i82, %div12
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %59, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i84) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 %60) #6, !srcloc !272
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %div61) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %63) #6, !srcloc !272
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %65, i32 32
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  %67 = and i32 %66, -2049
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %67) #6, !srcloc !272
  %inc = add nuw i32 %hw_plane.094, 1
  %70 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %feat, align 4
  %num_planes = getelementptr inbounds %struct.dispc_features, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_planes, align 4
  %cmp = icmp ult i32 %inc, %73
  br i1 %cmp, label %do.end31.for.body_crit_edge, label %do.end31.for.end_crit_edge

do.end31.for.end_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end31.for.body_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.end31.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !194, !195, !196, !197, !199, !201, !202, !203, !205, !207, !208, !209, !211, !212, !214, !215, !217, !219, !221, !222, !223, !225, !226, !228, !229, !231, !233, !234, !236, !238, !240, !242, !243, !244, !245, !246, !248, !250, !251, !252, !253, !255, !257, !258, !259}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 88, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 93, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 94, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 106, i32 16}
!8 = !{ptr @dispc_k2g_feats, !9, !"dispc_k2g_feats", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 57, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 168, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 169, i32 24}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 182, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 182, i32 23}
!18 = !{ptr @dispc_am65x_feats, !19, !"dispc_am65x_feats", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 138, i32 29}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 253, i32 12}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 257, i32 29}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 257, i32 36}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 258, i32 32}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 258, i32 40}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 270, i32 33}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 270, i32 41}
!34 = !{ptr @dispc_j721e_feats, !35, !"dispc_j721e_feats", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 227, i32 29}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 780, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 846, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dispc_vp_bus_check.__UNIQUE_ID_ddebug319, !39, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 853, i32 3}
!45 = !{ptr @dispc_vp_bus_check.__UNIQUE_ID_ddebug320, !44, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1190, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dispc_vp_enable_clk._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @dispc_vp_enable_clk._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1221, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dispc_vp_set_clk_rate._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dispc_vp_set_clk_rate._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1229, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dispc_vp_set_clk_rate._entry.26, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dispc_vp_set_clk_rate._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1233, i32 2}
!65 = !{ptr @dispc_vp_set_clk_rate.__UNIQUE_ID_ddebug321, !64, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1928, i32 4}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dispc_plane_check.__UNIQUE_ID_ddebug327, !67, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1938, i32 4}
!72 = !{ptr @dispc_plane_check.__UNIQUE_ID_ddebug328, !71, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2557, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dispc_runtime_suspend.__UNIQUE_ID_ddebug354, !74, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2568, i32 2}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug355, !78, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2573, i32 3}
!83 = !{ptr @dispc_runtime_resume._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dispc_runtime_resume._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2575, i32 2}
!87 = !{ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug356, !86, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2578, i32 2}
!90 = !{ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug357, !89, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2584, i32 3}
!93 = !{ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug358, !92, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2589, i32 2}
!96 = !{ptr @dispc_runtime_resume.__UNIQUE_ID_ddebug359, !95, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2603, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dispc_remove.__UNIQUE_ID_ddebug360, !98, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2662, i32 2}
!103 = !{ptr @dispc_init.__UNIQUE_ID_ddebug361, !102, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2669, i32 4}
!106 = !{ptr @dispc_init._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dispc_init._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2729, i32 4}
!110 = !{ptr @dispc_init._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @dispc_init._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2749, i32 34}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2751, i32 3}
!116 = !{ptr @dispc_init._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dispc_init._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2755, i32 2}
!120 = !{ptr @dispc_init.__UNIQUE_ID_ddebug362, !119, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2757, i32 44}
!123 = !{ptr @dispc_common_regmap, !124, !"dispc_common_regmap", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 275, i32 19}
!125 = !{ptr @tidss_k2g_common_regs, !126, !"tidss_k2g_common_regs", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 38, i32 18}
!127 = !{ptr @tidss_am65x_common_regs, !128, !"tidss_am65x_common_regs", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 111, i32 18}
!129 = !{ptr @tidss_j721e_common_regs, !130, !"tidss_j721e_common_regs", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 187, i32 18}
!131 = !{ptr @dispc_bus_formats, !132, !"dispc_bus_formats", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 810, i32 38}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 921, i32 3}
!135 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @dispc_enable_oldi._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @dispc_enable_oldi._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 939, i32 3}
!140 = !{ptr @dispc_enable_oldi._entry.60, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @dispc_enable_oldi._entry_ptr.62, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @dispc_csc_table, !143, !"dispc_csc_table", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1478, i32 3}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1435, i32 2}
!146 = !{ptr @csc_yuv2rgb_bt601_full, !147, !"csc_yuv2rgb_bt601_full", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1427, i32 36}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1447, i32 2}
!150 = !{ptr @csc_yuv2rgb_bt601_lim, !151, !"csc_yuv2rgb_bt601_lim", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1439, i32 36}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1459, i32 2}
!154 = !{ptr @csc_yuv2rgb_bt709_full, !155, !"csc_yuv2rgb_bt709_full", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1451, i32 36}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1471, i32 2}
!158 = !{ptr @csc_yuv2rgb_bt709_lim, !159, !"csc_yuv2rgb_bt709_lim", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1463, i32 36}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1665, i32 4}
!162 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug322, !161, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1678, i32 5}
!166 = !{ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug323, !165, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1695, i32 4}
!169 = !{ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug324, !168, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1716, i32 4}
!172 = !{ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug325, !171, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1734, i32 2}
!175 = !{ptr @dispc_vid_calc_scaling.__UNIQUE_ID_ddebug326, !174, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!176 = !{ptr @dispc_vid_write_fir_coefs.c0_regs, !177, !"c0_regs", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1547, i32 19}
!178 = !{ptr @dispc_vid_write_fir_coefs.c12_regs, !179, !"c12_regs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1554, i32 19}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1566, i32 3}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @dispc_vid_write_fir_coefs._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @dispc_vid_write_fir_coefs._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1511, i32 3}
!187 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @dispc_vid_csc_setup._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @dispc_vid_csc_setup._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = distinct !{null, !191, !"dispc_vid_csc_coef_reg", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1387, i32 19}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1399, i32 3}
!194 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @dispc_k2g_vid_write_csc._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @dispc_k2g_vid_write_csc._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"dispc_vid_csc_coef_reg", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1410, i32 19}
!199 = !{ptr @.str.79, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2336, i32 2}
!201 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @dispc_vp_set_gamma.__UNIQUE_ID_ddebug337, !200, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!203 = !{ptr @dispc_vp_gamma_default_lut, !204, !"dispc_vp_gamma_default_lut", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2321, i32 35}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2244, i32 2}
!207 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @dispc_k2g_vp_write_gamma_table.__UNIQUE_ID_ddebug334, !206, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2266, i32 2}
!211 = !{ptr @dispc_am65x_vp_write_gamma_table.__UNIQUE_ID_ddebug335, !210, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2287, i32 2}
!214 = !{ptr @dispc_j721e_vp_write_gamma_table.__UNIQUE_ID_ddebug336, !213, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!215 = distinct !{null, !216, !"dispc_vp_cpr_coef_reg", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2423, i32 19}
!217 = distinct !{null, !218, !"dispc_vp_csc_coef_reg", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2488, i32 19}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2100, i32 2}
!221 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @dispc_k2g_plane_init.__UNIQUE_ID_ddebug329, !220, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2121, i32 3}
!225 = !{ptr @dispc_k2g_plane_init.__UNIQUE_ID_ddebug330, !224, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2152, i32 2}
!228 = !{ptr @dispc_k3_plane_init.__UNIQUE_ID_ddebug331, !227, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!229 = !{ptr @dispc_k3_plane_init.__UNIQUE_ID_ddebug332, !230, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2176, i32 3}
!231 = !{ptr @.str.89, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2216, i32 2}
!233 = !{ptr @dispc_vp_init.__UNIQUE_ID_ddebug333, !232, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!234 = !{ptr @.str.90, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2643, i32 15}
!236 = !{ptr @.str.91, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2643, i32 36}
!238 = !{ptr @dispc_init_errata.am65x_sr10_soc_devices, !239, !"am65x_sr10_soc_devices", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2642, i32 43}
!240 = !{ptr @.str.92, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2649, i32 3}
!242 = !{ptr @.str.93, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @dispc_init_errata._entry, !241, !"_entry", i1 false, i1 false}
!245 = !{ptr @dispc_init_errata._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @dispc_color_formats, !247, !"dispc_color_formats", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 1832, i32 3}
!248 = !{ptr @.str.95, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2615, i32 3}
!250 = !{ptr @.str.96, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @dispc_iomap_resource._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @dispc_iomap_resource._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.97, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2629, i32 7}
!255 = !{ptr @.str.98, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/tidss/tidss_dispc.c", i32 2633, i32 3}
!257 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @dispc_init_am65x_oldi_io_ctrl._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @dispc_init_am65x_oldi_io_ctrl._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{i64 6326649}
!270 = !{i64 2153866998}
!271 = !{i64 2153868353}
!272 = !{i64 6326231}
!273 = !{i64 2148792083, i64 2148792088, i64 2148792101, i64 2148792145, i64 2148792179, i64 2148792200}
!274 = !{i8 0, i8 2}
!275 = !{!"branch_weights", i32 1, i32 2000}
!276 = !{!"branch_weights", i32 2000, i32 1}
!277 = !{i64 2148700802, i64 2148701082, i64 2148701416, i64 2148701750}
