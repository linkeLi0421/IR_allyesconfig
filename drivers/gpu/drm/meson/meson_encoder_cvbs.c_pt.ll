; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_encoder_cvbs.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_encoder_cvbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.meson_cvbs_enci_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.meson_cvbs_mode = type { ptr, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89 }
%struct.anon.86 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.87 = type { i32, i8, i8, i8 }
%struct.anon.88 = type { i32, ptr, i32 }
%struct.anon.89 = type { ptr, i64, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.meson_encoder_cvbs = type { %struct.drm_encoder, %struct.drm_bridge, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@meson_cvbs_enci_pal = external dso_local global %struct.meson_cvbs_enci_mode, align 4
@meson_cvbs_enci_ntsc = external dso_local global %struct.meson_cvbs_enci_mode, align 4
@meson_cvbs_modes = dso_local global { [2 x %struct.meson_cvbs_mode], [56 x i8] } { [2 x %struct.meson_cvbs_mode] [%struct.meson_cvbs_mode { ptr @meson_cvbs_enci_pal, %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 795, i16 864, i16 0, i16 576, i16 580, i16 586, i16 625, i16 0, i32 16, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 } }, %struct.meson_cvbs_mode { ptr @meson_cvbs_enci_ntsc, %struct.drm_display_mode { i32 13500, i16 720, i16 739, i16 801, i16 858, i16 0, i16 480, i16 488, i16 494, i16 525, i16 0, i32 16, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1 } }], [56 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CVBS Output connector not available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_encoder_cvbs_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/meson/meson_encoder_cvbs.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry_ptr = internal global ptr @meson_encoder_cvbs_init._entry, section ".printk_index", align 4
@meson_encoder_cvbs_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 242, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to find CVBS Connector bridge\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry_ptr.8 = internal global ptr @meson_encoder_cvbs_init._entry.5, section ".printk_index", align 4
@meson_encoder_cvbs_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @meson_encoder_cvbs_attach, ptr null, ptr @meson_encoder_cvbs_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_encoder_cvbs_atomic_enable, ptr @meson_encoder_cvbs_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr @meson_encoder_cvbs_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr @meson_encoder_cvbs_get_modes, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 261, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init CVBS encoder: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry_ptr.11 = internal global ptr @meson_encoder_cvbs_init._entry.9, section ".printk_index", align 4
@meson_encoder_cvbs_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 271, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to attach bridge: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry_ptr.14 = internal global ptr @meson_encoder_cvbs_init._entry.12, section ".printk_index", align 4
@meson_encoder_cvbs_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 278, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to create CVBS bridge connector\0A\00", [56 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_init._entry_ptr.17 = internal global ptr @meson_encoder_cvbs_init._entry.15, section ".printk_index", align 4
@meson_encoder_cvbs_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 109, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"meson_encoder_cvbs_get_modes\00", [35 x i8] zeroinitializer }, align 32
@meson_encoder_cvbs_get_modes._entry_ptr = internal global ptr @meson_encoder_cvbs_get_modes._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"meson_cvbs_modes\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 45, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 236, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 242, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [32 x i8] c"meson_encoder_cvbs_bridge_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 209, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 261, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 271, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 278, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [46 x i8] c"../drivers/gpu/drm/meson/meson_encoder_cvbs.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 109, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @meson_encoder_cvbs_get_modes._entry, ptr @meson_encoder_cvbs_get_modes._entry_ptr, ptr @meson_encoder_cvbs_init._entry, ptr @meson_encoder_cvbs_init._entry.12, ptr @meson_encoder_cvbs_init._entry.15, ptr @meson_encoder_cvbs_init._entry.5, ptr @meson_encoder_cvbs_init._entry.9, ptr @meson_encoder_cvbs_init._entry_ptr, ptr @meson_encoder_cvbs_init._entry_ptr.11, ptr @meson_encoder_cvbs_init._entry_ptr.14, ptr @meson_encoder_cvbs_init._entry_ptr.17, ptr @meson_encoder_cvbs_init._entry_ptr.8, ptr @meson_cvbs_modes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @meson_encoder_cvbs_bridge_funcs, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cvbs_modes to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_cvbs_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_encoder_cvbs_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drm1 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 360, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_graph_get_remote_node(ptr noundef %7, i32 noundef 0, i32 noundef 0) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call3) #3
  %next_bridge = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %next_bridge, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %bridge = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @meson_encoder_cvbs_bridge_funcs, ptr %funcs, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %of_node18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node18, align 8
  %of_node20 = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %of_node20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node20, align 4
  %type = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %type, align 4
  %ops = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %ops, align 4
  %interlace_allowed = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 1, i32 11
  %21 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %interlace_allowed, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #3
  %priv25 = getelementptr inbounds %struct.meson_encoder_cvbs, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %priv25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %priv, ptr %priv25, align 4
  %23 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drm1, align 4
  %call27 = tail call i32 @drm_simple_encoder_init(ptr noundef %24, ptr noundef nonnull %call.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %call27) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end16
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %possible_crtcs, align 4
  %call38 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %call.i, ptr noundef %bridge, ptr noundef null, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %call38) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %30 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drm1, align 4
  %call48 = tail call ptr @drm_bridge_connector_init(ptr noundef %31, ptr noundef nonnull %call.i) #3
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16) #6
  %34 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %call58 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call48, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end53, %do.end43, %do.end32, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ %call38, %do.end43 ], [ %34, %do.end53 ], [ 0, %if.end56 ], [ -517, %do.end14 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_cvbs_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_cvbs_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %display_info, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @drm_mode_match(ptr noundef %mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 0, i32 1), i32 noundef 15) #3
  br i1 %call.i, label %entry.cleanup1.split.loop.exit5.i_crit_edge, label %for.inc.i

entry.cleanup1.split.loop.exit5.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1.split.loop.exit5.i

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call zeroext i1 @drm_mode_match(ptr noundef %mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 1, i32 1), i32 noundef 15) #3
  br i1 %call.1.i, label %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge, label %for.inc.i.meson_cvbs_get_mode.exit_crit_edge

for.inc.i.meson_cvbs_get_mode.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %meson_cvbs_get_mode.exit

for.inc.i.cleanup1.split.loop.exit5.i_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1.split.loop.exit5.i

cleanup1.split.loop.exit5.i:                      ; preds = %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge, %entry.cleanup1.split.loop.exit5.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.cleanup1.split.loop.exit5.i_crit_edge ], [ 1, %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge ]
  %arrayidx.le.i = getelementptr [2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 %i.07.lcssa.i
  %phi.cmp = icmp eq ptr %arrayidx.le.i, null
  %phi.sel = select i1 %phi.cmp, i32 -2, i32 0
  br label %meson_cvbs_get_mode.exit

meson_cvbs_get_mode.exit:                         ; preds = %cleanup1.split.loop.exit5.i, %for.inc.i.meson_cvbs_get_mode.exit_crit_edge
  %retval.2.i = phi i32 [ %phi.sel, %cleanup1.split.loop.exit5.i ], [ -2, %for.inc.i.meson_cvbs_get_mode.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_cvbs_atomic_enable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_state, align 4
  %priv2 = getelementptr i8, ptr %bridge, i32 284
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %5) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 152, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end26:                                         ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp slt i32 %7, %9
  br i1 %cmp.not.i, label %drm_atomic_get_new_connector_state.exit, label %if.end26.do.end47_crit_edge

if.end26.do.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end26
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %11, i32 %7, i32 3
  %12 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state.i, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %drm_atomic_get_new_connector_state.exit.do.end47_crit_edge, label %if.end63, !prof !43

drm_atomic_get_new_connector_state.exit.do.end47_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

do.end47:                                         ; preds = %drm_atomic_get_new_connector_state.exit.do.end47_crit_edge, %if.end26.do.end47_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end63:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i199 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i199 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i199, align 4
  %new_state.i200 = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 3
  %20 = ptrtoint ptr %new_state.i200 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state.i200, align 4
  %tobool66.not = icmp eq ptr %21, null
  br i1 %tobool66.not, label %do.end84, label %if.end100, !prof !43

do.end84:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end100:                                        ; preds = %if.end63
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 7
  %call.i = tail call zeroext i1 @drm_mode_match(ptr noundef %adjusted_mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 0, i32 1), i32 noundef 15) #3
  br i1 %call.i, label %if.end100.meson_cvbs_get_mode.exit_crit_edge, label %for.inc.i

if.end100.meson_cvbs_get_mode.exit_crit_edge:     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %meson_cvbs_get_mode.exit

for.inc.i:                                        ; preds = %if.end100
  %call.1.i = tail call zeroext i1 @drm_mode_match(ptr noundef %adjusted_mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 1, i32 1), i32 noundef 15) #3
  br i1 %call.1.i, label %for.inc.i.meson_cvbs_get_mode.exit_crit_edge, label %for.inc.i.do.end121_crit_edge

for.inc.i.do.end121_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end121

for.inc.i.meson_cvbs_get_mode.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %meson_cvbs_get_mode.exit

meson_cvbs_get_mode.exit:                         ; preds = %for.inc.i.meson_cvbs_get_mode.exit_crit_edge, %if.end100.meson_cvbs_get_mode.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end100.meson_cvbs_get_mode.exit_crit_edge ], [ 1, %for.inc.i.meson_cvbs_get_mode.exit_crit_edge ]
  %arrayidx.le.i = getelementptr [2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 %i.07.lcssa.i
  %tobool103.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool103.not, label %meson_cvbs_get_mode.exit.do.end121_crit_edge, label %if.end137, !prof !43

meson_cvbs_get_mode.exit.do.end121_crit_edge:     ; preds = %meson_cvbs_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end121

do.end121:                                        ; preds = %meson_cvbs_get_mode.exit.do.end121_crit_edge, %for.inc.i.do.end121_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end137:                                        ; preds = %meson_cvbs_get_mode.exit
  %22 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.le.i, align 4
  tail call void @meson_venci_cvbs_mode_set(ptr noundef %3, ptr noundef %23) #3
  tail call void @meson_vclk_setup(ptr noundef %3, i32 noundef 0, i32 noundef 27000, i32 noundef 27000, i32 noundef 27000, i32 noundef 27000, i1 noundef zeroext true) #3
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 8
  %add.ptr138 = getelementptr i8, ptr %25, i32 28128
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #3, !srcloc !44
  %27 = and i32 %26, -536870913
  %28 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base, align 8
  %add.ptr142 = getelementptr i8, ptr %29, i32 28128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %27) #3, !srcloc !45
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %compat.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end137.cleanup_crit_edge [
    i32 0, label %if.then145
    i32 2, label %if.end137.if.then153_crit_edge
    i32 1, label %if.end137.if.then153_crit_edge214
    i32 3, label %if.then161
  ]

if.end137.if.then153_crit_edge214:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then153

if.end137.if.then153_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then153

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then145:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hhi, align 4
  %call146 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 756, i32 noundef 1) #3
  %35 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hhi, align 4
  %call148 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 760, i32 noundef 0) #3
  br label %cleanup

if.then153:                                       ; preds = %if.end137.if.then153_crit_edge, %if.end137.if.then153_crit_edge214
  %hhi154 = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %hhi154 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hhi154, align 4
  %call155 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 756, i32 noundef 983041) #3
  %39 = ptrtoint ptr %hhi154 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hhi154, align 4
  %call157 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 760, i32 noundef 0) #3
  br label %cleanup

if.then161:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #5
  %hhi162 = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %hhi162 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hhi162, align 4
  %call163 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 748, i32 noundef 9461761) #3
  %43 = ptrtoint ptr %hhi162 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hhi162, align 4
  %call165 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 752, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %if.then153, %if.then145, %if.end137.cleanup_crit_edge, %do.end121, %do.end84, %do.end47, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_cvbs_atomic_disable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %bridge, i32 284
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 3
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hhi, align 4
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 748, i32 noundef 0) #3
  %6 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hhi, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 752, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 756, i32 noundef 0) #3
  %8 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hhi, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 760, i32 noundef 8) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_cvbs_atomic_check(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr noundef %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %call.i = tail call zeroext i1 @drm_mode_match(ptr noundef %mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 0, i32 1), i32 noundef 15) #3
  br i1 %call.i, label %entry.cleanup1.split.loop.exit5.i_crit_edge, label %for.inc.i

entry.cleanup1.split.loop.exit5.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1.split.loop.exit5.i

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call zeroext i1 @drm_mode_match(ptr noundef %mode, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 1, i32 1), i32 noundef 15) #3
  br i1 %call.1.i, label %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge, label %for.inc.i.meson_cvbs_get_mode.exit_crit_edge

for.inc.i.meson_cvbs_get_mode.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %meson_cvbs_get_mode.exit

for.inc.i.cleanup1.split.loop.exit5.i_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1.split.loop.exit5.i

cleanup1.split.loop.exit5.i:                      ; preds = %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge, %entry.cleanup1.split.loop.exit5.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.cleanup1.split.loop.exit5.i_crit_edge ], [ 1, %for.inc.i.cleanup1.split.loop.exit5.i_crit_edge ]
  %arrayidx.le.i = getelementptr [2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 %i.07.lcssa.i
  %phi.cmp = icmp eq ptr %arrayidx.le.i, null
  %phi.sel = select i1 %phi.cmp, i32 -22, i32 0
  br label %meson_cvbs_get_mode.exit

meson_cvbs_get_mode.exit:                         ; preds = %cleanup1.split.loop.exit5.i, %for.inc.i.meson_cvbs_get_mode.exit_crit_edge
  %retval.2.i = phi i32 [ %phi.sel, %cleanup1.split.loop.exit5.i ], [ -22, %for.inc.i.meson_cvbs_get_mode.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_cvbs_get_modes(ptr nocapture noundef readonly %bridge, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %bridge, i32 284
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %drm = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 0, i32 1)) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18) #6
  br label %cleanup3

if.end:                                           ; preds = %entry
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #3
  %6 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm, align 4
  %call.1 = tail call ptr @drm_mode_duplicate(ptr noundef %7, ptr noundef getelementptr inbounds ([2 x %struct.meson_cvbs_mode], ptr @meson_cvbs_modes, i32 0, i32 1, i32 1)) #3
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.1) #3
  br label %cleanup3

cleanup3:                                         ; preds = %if.end.1, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ 2, %if.end.1 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_venci_cvbs_mode_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_vclk_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @meson_cvbs_modes, !1, !"meson_cvbs_modes", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 45, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 236, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @meson_encoder_cvbs_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @meson_encoder_cvbs_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 242, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @meson_encoder_cvbs_init._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @meson_encoder_cvbs_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 261, i32 3}
!17 = !{ptr @meson_encoder_cvbs_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @meson_encoder_cvbs_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 271, i32 3}
!21 = !{ptr @meson_encoder_cvbs_init._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @meson_encoder_cvbs_init._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 278, i32 3}
!25 = !{ptr @meson_encoder_cvbs_init._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @meson_encoder_cvbs_init._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @meson_encoder_cvbs_bridge_funcs, !28, !"meson_encoder_cvbs_bridge_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 209, i32 38}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/meson/meson_encoder_cvbs.c", i32 109, i32 4}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @meson_encoder_cvbs_get_modes._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_encoder_cvbs_get_modes._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 6888859}
!45 = !{i64 6888441}
