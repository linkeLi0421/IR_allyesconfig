; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mgag200/mgag200_mode.c_pt.bc'
source_filename = "../drivers/gpu/drm/mgag200/mgag200_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mga_device = type { %struct.drm_device, i32, i32, i32, ptr, %struct.mga_mc, ptr, i32, i32, %union.anon.89, %struct.mga_connector, %struct.mgag200_pll, %struct.drm_simple_display_pipe }
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
%struct.mga_mc = type { i32, i32, i32 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32, i32 }
%struct.mga_connector = type { %struct.drm_connector, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mgag200_pll = type { ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mgag200_pll_funcs = type { ptr, ptr }
%struct.mgag200_crtc_state = type { %struct.drm_crtc_state, %struct.mgag200_pll_values }
%struct.mgag200_pll_values = type { i32, i32, i32, i32 }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }

@mgag200_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1069, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[drm] *ERROR* drmm_mode_config_init() failed, error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mgag200_modeset_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/mgag200/mgag200_mode.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mgag200_modeset_init._entry_ptr = internal global ptr @mgag200_modeset_init._entry, section ".printk_index", align 4
@mgag200_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mgag200_modeset_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1086, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[drm] *ERROR* mgag200_vga_connector_init() failed, error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mgag200_modeset_init._entry_ptr.7 = internal global ptr @mgag200_modeset_init._entry.5, section ".printk_index", align 4
@mgag200_simple_display_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr @mgag200_simple_display_pipe_mode_valid, ptr @mgag200_simple_display_pipe_enable, ptr @mgag200_simple_display_pipe_disable, ptr @mgag200_simple_display_pipe_check, ptr @mgag200_simple_display_pipe_update, ptr @drm_gem_simple_kms_prepare_shadow_fb, ptr @drm_gem_simple_kms_cleanup_shadow_fb, ptr null, ptr null, ptr @mgag200_simple_display_pipe_reset_crtc, ptr @mgag200_simple_display_pipe_duplicate_crtc_state, ptr @mgag200_simple_display_pipe_destroy_crtc_state, ptr @drm_gem_simple_kms_reset_shadow_plane, ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, ptr @drm_gem_simple_kms_destroy_shadow_plane_state }, [36 x i8] zeroinitializer }, align 32
@mgag200_simple_display_pipe_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 875713112, i32 909199186, i32 875710290], [20 x i8] zeroinitializer }, align 32
@mgag200_simple_display_pipe_fmtmods = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@mgag200_modeset_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[drm] *ERROR* drm_simple_display_pipe_init() failed, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mgag200_modeset_init._entry_ptr.10 = internal global ptr @mgag200_modeset_init._entry.8, section ".printk_index", align 4
@__const.mgag200_set_dac_regs.dacvalue = private unnamed_addr constant <{ [64 x i8], [16 x i8] }> <{ [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C9\FF\BF \1F \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\B0\00\C24\14\02\83\00\93\00w\00\00\00:", [16 x i8] zeroinitializer }>, align 1
@mgag200_vga_connector_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 816, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[drm] failed to add DDC bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mgag200_vga_connector_init\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mgag200_vga_connector_init._entry_ptr = internal global ptr @mgag200_vga_connector_init._entry, section ".printk_index", align 4
@mga_vga_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @mga_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mga_vga_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @mga_vga_get_modes, ptr null, ptr @mga_vga_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s: %s\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drm_WARN_ON(\22invalid format depth\\n\22)\00", [58 x i8] zeroinitializer }, align 32
@mgag200_get_bpp_shift.bpp_shift = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\00\02", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1068, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"mgag200_mode_config_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1042, i32 43 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1084, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [34 x i8] c"mgag200_simple_display_pipe_funcs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1015, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"mgag200_simple_display_pipe_formats\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1027, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant [36 x i8] c"mgag200_simple_display_pipe_fmtmods\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1033, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1101, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 816, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"mga_vga_connector_funcs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 798, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"mga_vga_connector_helper_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 793, i32 48 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 517, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"bpp_shift\00", align 1
@___asan_gen_.93 = private constant [42 x i8] c"../drivers/gpu/drm/mgag200/mgag200_mode.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 436, i32 18 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mgag200_modeset_init._entry, ptr @mgag200_modeset_init._entry.5, ptr @mgag200_modeset_init._entry.8, ptr @mgag200_modeset_init._entry_ptr, ptr @mgag200_modeset_init._entry_ptr.10, ptr @mgag200_modeset_init._entry_ptr.7, ptr @mgag200_vga_connector_init._entry, ptr @mgag200_vga_connector_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mgag200_mode_config_funcs, ptr @.str.6, ptr @mgag200_simple_display_pipe_funcs, ptr @mgag200_simple_display_pipe_formats, ptr @mgag200_simple_display_pipe_fmtmods, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mga_vga_connector_funcs, ptr @mga_vga_connector_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @mgag200_get_bpp_shift.bpp_shift], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_modeset_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_simple_display_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_simple_display_pipe_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_simple_display_pipe_fmtmods to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_modeset_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_vga_connector_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_vga_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_vga_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_get_bpp_shift.bpp_shift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgag200_modeset_init(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %dacvalue.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %connector1 = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 10
  %display_pipe = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dacvalue.i.i) #7
  %0 = call ptr @memcpy(ptr %dacvalue.i.i, ptr @__const.mgag200_set_dac_regs.dacvalue, i32 80)
  %type.i.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i.i, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.sw.epilog.i.i_crit_edge [
    i32 0, label %entry.sw.bb.i.i_crit_edge
    i32 1, label %entry.sw.bb.i.i_crit_edge64
    i32 2, label %entry.sw.bb3.i.i_crit_edge
    i32 3, label %entry.sw.bb3.i.i_crit_edge65
    i32 4, label %entry.sw.epilog.sink.split.i.i_crit_edge
    i32 9, label %entry.sw.epilog.sink.split.i.i_crit_edge66
    i32 5, label %sw.bb9.i.i
    i32 6, label %entry.sw.bb12.i.i_crit_edge
    i32 7, label %entry.sw.bb12.i.i_crit_edge67
  ]

entry.sw.bb12.i.i_crit_edge67:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

entry.sw.bb12.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

entry.sw.epilog.sink.split.i.i_crit_edge66:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

entry.sw.epilog.sink.split.i.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

entry.sw.bb3.i.i_crit_edge65:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

entry.sw.bb3.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

entry.sw.bb.i.i_crit_edge64:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

entry.sw.epilog.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge64
  %arrayidx.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 44
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 45
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 45, ptr %arrayidx1.i.i, align 1
  br label %sw.epilog.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %entry.sw.bb3.i.i_crit_edge, %entry.sw.bb3.i.i_crit_edge65
  %arrayidx4.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 24
  %6 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 26
  %7 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx5.i.i, align 1
  br label %sw.epilog.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 26
  %8 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx10.i.i, align 1
  br label %sw.epilog.sink.split.i.i

sw.bb12.i.i:                                      ; preds = %entry.sw.bb12.i.i_crit_edge, %entry.sw.bb12.i.i_crit_edge67
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb12.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i, %entry.sw.epilog.sink.split.i.i_crit_edge, %entry.sw.epilog.sink.split.i.i_crit_edge66
  %.sink114.i.i = phi i32 [ 30, %sw.bb12.i.i ], [ 30, %sw.bb9.i.i ], [ 30, %sw.bb3.i.i ], [ 46, %sw.bb.i.i ], [ 24, %entry.sw.epilog.sink.split.i.i_crit_edge ], [ 24, %entry.sw.epilog.sink.split.i.i_crit_edge66 ]
  %.sink.i.i = phi i8 [ 24, %sw.bb12.i.i ], [ 24, %sw.bb9.i.i ], [ 25, %sw.bb3.i.i ], [ 25, %sw.bb.i.i ], [ 7, %entry.sw.epilog.sink.split.i.i_crit_edge ], [ 7, %entry.sw.epilog.sink.split.i.i_crit_edge66 ]
  %arrayidx13.i.i = getelementptr inbounds [80 x i8], ptr %dacvalue.i.i, i32 0, i32 %.sink114.i.i
  %9 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink.i.i, ptr %arrayidx13.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %entry.sw.epilog.i.i_crit_edge
  %rmmio.i.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i
  %i.0113.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0.fr.i.i = freeze i32 %i.0113.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.0.fr.i.i)
  %cmp14.i.i = icmp ult i32 %i.0.fr.i.i, 24
  %i.0.off106.i.i = add nsw i32 %i.0.fr.i.i, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.off106.i.i)
  %switch107.i.i = icmp ult i32 %i.0.off106.i.i, 2
  %or.cond108.i.i = select i1 %cmp14.i.i, i1 true, i1 %switch107.i.i
  %10 = add nsw i32 %i.0.fr.i.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %11 = icmp ult i32 %10, 11
  %or.cond110.i.i = select i1 %or.cond108.i.i, i1 true, i1 %11
  %12 = and i32 %i.0.fr.i.i, 2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %12)
  %13 = icmp eq i32 %12, 48
  %or.cond112.i.i = or i1 %13, %or.cond110.i.i
  br i1 %or.cond112.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i.i, align 8
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i.i = icmp eq i32 %16, 2
  %i.0.off.i.i = add nsw i32 %i.0.fr.i.i, -44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.off.i.i)
  %switch105.i.i = icmp ult i32 %i.0.off.i.i, 3
  %or.cond.i.i = select i1 %switch.i.i, i1 %switch105.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end37.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end37.i.i:                                     ; preds = %if.end.i.i
  %17 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %15, label %if.end37.i.i.do.body.i.i_crit_edge [
    i32 5, label %if.end37.i.i.land.lhs.true52.i.i_crit_edge
    i32 4, label %if.end37.i.i.land.lhs.true52.i.i_crit_edge68
    i32 6, label %if.end37.i.i.land.lhs.true52.i.i_crit_edge69
    i32 9, label %if.end37.i.i.land.lhs.true52.i.i_crit_edge70
    i32 7, label %if.end37.i.i.land.lhs.true52.i.i_crit_edge71
  ]

if.end37.i.i.land.lhs.true52.i.i_crit_edge71:     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i.i

if.end37.i.i.land.lhs.true52.i.i_crit_edge70:     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i.i

if.end37.i.i.land.lhs.true52.i.i_crit_edge69:     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i.i

if.end37.i.i.land.lhs.true52.i.i_crit_edge68:     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i.i

if.end37.i.i.land.lhs.true52.i.i_crit_edge:       ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i.i

if.end37.i.i.do.body.i.i_crit_edge:               ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

land.lhs.true52.i.i:                              ; preds = %if.end37.i.i.land.lhs.true52.i.i_crit_edge, %if.end37.i.i.land.lhs.true52.i.i_crit_edge68, %if.end37.i.i.land.lhs.true52.i.i_crit_edge69, %if.end37.i.i.land.lhs.true52.i.i_crit_edge70, %if.end37.i.i.land.lhs.true52.i.i_crit_edge71
  %18 = add nsw i32 %i.0.fr.i.i, -68
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %19 = icmp ult i32 %18, 11
  br i1 %19, label %land.lhs.true52.i.i.for.inc.i.i_crit_edge, label %land.lhs.true52.i.i.do.body.i.i_crit_edge

land.lhs.true52.i.i.do.body.i.i_crit_edge:        ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

land.lhs.true52.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %land.lhs.true52.i.i.do.body.i.i_crit_edge, %if.end37.i.i.do.body.i.i_crit_edge
  %conv.i.i = trunc i32 %i.0.fr.i.i to i8
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #7, !srcloc !54
  %arrayidx58.i.i = getelementptr [80 x i8], ptr %dacvalue.i.i, i32 0, i32 %i.0.fr.i.i
  %22 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx58.i.i, align 1
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr60.i.i = getelementptr i8, ptr %25, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60.i.i, i8 %23) #7, !srcloc !54
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.body.i.i, %land.lhs.true52.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0.fr.i.i, 1
  %cmp.i.i = icmp ult i32 %i.0.fr.i.i, 79
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %26 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp62.i.i = icmp eq i32 %27, 8
  br i1 %cmp62.i.i, label %do.body65.i.i, label %for.end.i.i.mgag200_set_dac_regs.exit.i_crit_edge

for.end.i.i.mgag200_set_dac_regs.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_set_dac_regs.exit.i

do.body65.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr67.i.i = getelementptr i8, ptr %29, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67.i.i, i8 -112) #7, !srcloc !54
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr69.i.i = getelementptr i8, ptr %31, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69.i.i, i8 0) #7, !srcloc !54
  br label %mgag200_set_dac_regs.exit.i

mgag200_set_dac_regs.exit.i:                      ; preds = %do.body65.i.i, %for.end.i.i.mgag200_set_dac_regs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dacvalue.i.i) #7
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #7, !srcloc !54
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %35, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 15) #7, !srcloc !54
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %37, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 3) #7, !srcloc !54
  %38 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %39, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 0) #7, !srcloc !54
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %41, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 4) #7, !srcloc !54
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %43, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 14) #7, !srcloc !54
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %45, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 10) #7, !srcloc !54
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %47, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 0) #7, !srcloc !54
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr26.i = getelementptr i8, ptr %49, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i, i8 11) #7, !srcloc !54
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %51, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 0) #7, !srcloc !54
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %53, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 12) #7, !srcloc !54
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %55, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 0) #7, !srcloc !54
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr40.i = getelementptr i8, ptr %57, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40.i, i8 13) #7, !srcloc !54
  %58 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %59, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.i, i8 0) #7, !srcloc !54
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr47.i = getelementptr i8, ptr %61, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 14) #7, !srcloc !54
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr49.i = getelementptr i8, ptr %63, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i, i8 0) #7, !srcloc !54
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr54.i = getelementptr i8, ptr %65, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54.i, i8 15) #7, !srcloc !54
  %66 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %67, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56.i, i8 0) #7, !srcloc !54
  %68 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr61.i = getelementptr i8, ptr %69, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61.i, i8 17) #7, !srcloc !54
  %70 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr63.i = getelementptr i8, ptr %71, i32 8149
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %73 = and i8 %72, 79
  %74 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %75, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69.i, i8 17) #7, !srcloc !54
  %76 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr71.i = getelementptr i8, ptr %77, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71.i, i8 %73) #7, !srcloc !54
  %78 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %cmp.i = icmp eq i32 %79, 8
  br i1 %cmp.i, label %do.body75.i, label %mgag200_set_dac_regs.exit.i.if.end.i_crit_edge

mgag200_set_dac_regs.exit.i.if.end.i_crit_edge:   ; preds = %mgag200_set_dac_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body75.i:                                      ; preds = %mgag200_set_dac_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr77.i = getelementptr i8, ptr %81, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr77.i, i8 36) #7, !srcloc !54
  %82 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr79.i = getelementptr i8, ptr %83, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79.i, i8 5) #7, !srcloc !54
  %84 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i = load i32, ptr %type.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body75.i, %mgag200_set_dac_regs.exit.i.if.end.i_crit_edge
  %85 = phi i32 [ %.pr.i, %do.body75.i ], [ %79, %mgag200_set_dac_regs.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %85)
  %cmp83.i = icmp eq i32 %85, 9
  br i1 %cmp83.i, label %do.body86.i, label %if.end.i.mgag200_init_regs.exit_crit_edge

if.end.i.mgag200_init_regs.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_init_regs.exit

do.body86.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr88.i = getelementptr i8, ptr %87, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88.i, i8 52) #7, !srcloc !54
  %88 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr90.i = getelementptr i8, ptr %89, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90.i, i8 5) #7, !srcloc !54
  br label %mgag200_init_regs.exit

mgag200_init_regs.exit:                           ; preds = %do.body86.i, %if.end.i.mgag200_init_regs.exit_crit_edge
  %90 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr95.i = getelementptr i8, ptr %91, i32 8140
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr95.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %93 = or i8 %92, 1
  %94 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i, align 8
  %add.ptr100.i = getelementptr i8, ptr %95, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100.i, i8 %93) #7, !srcloc !54
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %mgag200_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 2
  %96 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %mgag200_init_regs.exit
  %max_width = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 30, i32 25
  %98 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 30, i32 26
  %99 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4096, ptr %max_height, align 4
  %100 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type.i.i, align 8
  %102 = and i32 %101, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %switch.i = icmp eq i32 %102, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %vram_fb_available.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 7
  %103 = ptrtoint ptr %vram_fb_available.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vram_fb_available.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %104)
  %cmp3.i = icmp ult i32 %104, 2097152
  br i1 %cmp3.i, label %land.lhs.true.i.mgag200_preferred_depth.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.mgag200_preferred_depth.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_preferred_depth.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  br label %mgag200_preferred_depth.exit

mgag200_preferred_depth.exit:                     ; preds = %if.else.i, %land.lhs.true.i.mgag200_preferred_depth.exit_crit_edge
  %retval.0.i = phi i32 [ 32, %if.else.i ], [ 16, %land.lhs.true.i.mgag200_preferred_depth.exit_crit_edge ]
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 30, i32 91
  %105 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i, ptr %preferred_depth, align 4
  %vram_base = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 5, i32 1
  %106 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vram_base, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 30, i32 28
  %108 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %fb_base, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 30, i32 27
  %109 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @mgag200_mode_config_funcs, ptr %funcs, align 4
  %call.i = tail call ptr @mgag200_i2c_create(ptr noundef %mdev) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %mgag200_preferred_depth.exit.if.end.i63_crit_edge

mgag200_preferred_depth.exit.if.end.i63_crit_edge: ; preds = %mgag200_preferred_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i63

do.end.i:                                         ; preds = %mgag200_preferred_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 2
  %110 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.11) #10
  br label %if.end.i63

if.end.i63:                                       ; preds = %do.end.i, %mgag200_preferred_depth.exit.if.end.i63_crit_edge
  %call4.i = tail call i32 @drm_connector_init_with_ddc(ptr noundef %mdev, ptr noundef %connector1, ptr noundef nonnull @mga_vga_connector_funcs, i32 noundef 1, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mgag200_i2c_destroy(ptr noundef %call.i) #7
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 2
  %112 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.6, i32 noundef %call4.i) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end.i63
  %helper_private.i.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 10, i32 0, i32 35
  %114 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @mga_vga_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %i2c8.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 10, i32 1
  %115 = ptrtoint ptr %i2c8.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i, ptr %i2c8.i, align 8
  %pixpll = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 11
  %call17 = tail call i32 @mgag200_pixpll_init(ptr noundef %pixpll, ptr noundef %mdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %mdev, ptr noundef %display_pipe, ptr noundef nonnull @mgag200_simple_display_pipe_funcs, ptr noundef nonnull @mgag200_simple_display_pipe_formats, i32 noundef 3, ptr noundef nonnull @mgag200_simple_display_pipe_fmtmods, ptr noundef %connector1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 2
  %116 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.9, i32 noundef %call21) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %display_pipe, i32 noundef 256) #7
  tail call void @drm_mode_config_reset(ptr noundef %mdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end26, %if.end16.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4.i, %do.end14 ], [ %call21, %do.end26 ], [ 0, %if.end28 ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgag200_pixpll_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mgag200_i2c_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgag200_i2c_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mga_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.mga_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  tail call void @mgag200_i2c_destroy(ptr noundef %1) #7
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_vga_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.mga_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %call = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call) #7
  %call2 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #7
  tail call void @kfree(ptr noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_vga_mode_valid(ptr nocapture noundef %connector, ptr noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %type = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %3, label %entry.if.end100_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge1086
    i32 4, label %if.then52
    i32 5, label %land.lhs.true
    i32 6, label %land.lhs.true82
    i32 8, label %land.lhs.true91
  ]

entry.if.then_crit_edge1086:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end100_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1086
  %model = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %if.else40 [
    i32 1, label %if.then6
    i32 2, label %if.then22
  ]

if.then6:                                         ; preds = %if.then
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %9)
  %cmp7 = icmp ugt i16 %9, 1600
  br i1 %cmp7, label %if.then6.cleanup179_crit_edge, label %if.end

if.then6.cleanup179_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end:                                           ; preds = %if.then6
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1200, i16 %11)
  %cmp11 = icmp ugt i16 %11, 1200
  br i1 %cmp11, label %if.end.cleanup179_crit_edge, label %if.end14

if.end.cleanup179_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end14:                                         ; preds = %if.end
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %12 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.end14.if.end100_crit_edge, label %lor.lhs.false.i

if.end14.if.end100_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i:                                  ; preds = %if.end14
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %14 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vtotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.not.i = icmp eq i16 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end100_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end100_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.if.end100_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end100_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %conv4.i = zext i16 %9 to i32
  %conv5.i = zext i16 %11 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %conv6.i1083 = zext i32 %mul.i to i64
  %conv8.i = zext i16 %13 to i32
  %conv10.i = zext i16 %15 to i32
  %mul11.i = mul nuw i32 %conv10.i, %conv8.i
  %conv13.i = sext i32 %17 to i64
  %mul14.i = mul nuw nsw i64 %conv6.i1083, 1000
  %mul15.i = mul nsw i64 %mul14.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i)
  %cmp187.i = icmp ult i64 %mul15.i, 4294967296
  br i1 %cmp187.i, label %if.then191.i, label %if.else197.i, !prof !57

if.then191.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i = trunc i64 %mul15.i to i32
  %div195.i = udiv i32 %conv192.i, %mul11.i
  %conv196.i = zext i32 %div195.i to i64
  br label %mga_vga_calculate_mode_bandwidth.exit

if.else197.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i, i64 %mul15.i) #11, !srcloc !58
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  br label %mga_vga_calculate_mode_bandwidth.exit

mga_vga_calculate_mode_bandwidth.exit:            ; preds = %if.else197.i, %if.then191.i
  %pixels_per_second.0.i = phi i64 [ %conv196.i, %if.then191.i ], [ %asmresult1.i.i, %if.else197.i ]
  %mul204.i = mul i64 %pixels_per_second.0.i, 400
  %shr230.i = lshr i64 %mul204.i, 10
  %extract.t.i = trunc i64 %shr230.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 24985600, i32 %extract.t.i)
  %cmp16 = icmp ugt i32 %extract.t.i, 24985600
  br i1 %cmp16, label %mga_vga_calculate_mode_bandwidth.exit.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.then22:                                        ; preds = %if.then
  %hdisplay23 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %19 = ptrtoint ptr %hdisplay23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %20)
  %cmp25 = icmp ugt i16 %20, 1920
  br i1 %cmp25, label %if.then22.cleanup179_crit_edge, label %if.end28

if.then22.cleanup179_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end28:                                         ; preds = %if.then22
  %vdisplay29 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %21 = ptrtoint ptr %vdisplay29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1200, i16 %22)
  %cmp31 = icmp ugt i16 %22, 1200
  br i1 %cmp31, label %if.end28.cleanup179_crit_edge, label %if.end34

if.end28.cleanup179_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end34:                                         ; preds = %if.end28
  %htotal.i229 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %23 = ptrtoint ptr %htotal.i229 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal.i229, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i230 = icmp eq i16 %24, 0
  br i1 %tobool.not.i230, label %if.end34.if.end100_crit_edge, label %lor.lhs.false.i233

if.end34.if.end100_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i233:                               ; preds = %if.end34
  %vtotal.i231 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %25 = ptrtoint ptr %vtotal.i231 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vtotal.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.i232 = icmp eq i16 %26, 0
  br i1 %tobool1.not.i232, label %lor.lhs.false.i233.if.end100_crit_edge, label %lor.lhs.false2.i235

lor.lhs.false.i233.if.end100_crit_edge:           ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i235:                              ; preds = %lor.lhs.false.i233
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i234 = icmp eq i32 %28, 0
  br i1 %tobool3.not.i234, label %lor.lhs.false2.i235.if.end100_crit_edge, label %if.end.i248

lor.lhs.false2.i235.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i248:                                      ; preds = %lor.lhs.false2.i235
  %conv4.i237 = zext i16 %20 to i32
  %conv5.i239 = zext i16 %22 to i32
  %mul.i240 = mul nuw nsw i32 %conv5.i239, %conv4.i237
  %conv6.i2411084 = zext i32 %mul.i240 to i64
  %conv8.i242 = zext i16 %24 to i32
  %conv10.i243 = zext i16 %26 to i32
  %mul11.i244 = mul nuw i32 %conv10.i243, %conv8.i242
  %conv13.i245 = sext i32 %28 to i64
  %mul14.i246 = mul nuw nsw i64 %conv6.i2411084, 1000
  %mul15.i247 = mul nsw i64 %mul14.i246, %conv13.i245
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i247)
  %cmp187.i352 = icmp ult i64 %mul15.i247, 4294967296
  br i1 %cmp187.i352, label %if.then191.i357, label %if.else197.i359, !prof !57

if.then191.i357:                                  ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i354 = trunc i64 %mul15.i247 to i32
  %div195.i355 = udiv i32 %conv192.i354, %mul11.i244
  %conv196.i356 = zext i32 %div195.i355 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit366

if.else197.i359:                                  ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i244, i64 %mul15.i247) #11, !srcloc !58
  %asmresult1.i.i358 = extractvalue { i64, i64 } %29, 1
  br label %mga_vga_calculate_mode_bandwidth.exit366

mga_vga_calculate_mode_bandwidth.exit366:         ; preds = %if.else197.i359, %if.then191.i357
  %pixels_per_second.0.i360 = phi i64 [ %conv196.i356, %if.then191.i357 ], [ %asmresult1.i.i358, %if.else197.i359 ]
  %mul204.i361 = mul i64 %pixels_per_second.0.i360, 400
  %shr230.i362 = lshr i64 %mul204.i361, 10
  %extract.t.i363 = trunc i64 %shr230.i362 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 30822400, i32 %extract.t.i363)
  %cmp36 = icmp ugt i32 %extract.t.i363, 30822400
  br i1 %cmp36, label %mga_vga_calculate_mode_bandwidth.exit366.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit366.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit366.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit366.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit366
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.else40:                                        ; preds = %if.then
  %htotal.i367 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %30 = ptrtoint ptr %htotal.i367 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %htotal.i367, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i368 = icmp eq i16 %31, 0
  br i1 %tobool.not.i368, label %if.else40.if.end100_crit_edge, label %lor.lhs.false.i371

if.else40.if.end100_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i371:                               ; preds = %if.else40
  %vtotal.i369 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %32 = ptrtoint ptr %vtotal.i369 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vtotal.i369, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool1.not.i370 = icmp eq i16 %33, 0
  br i1 %tobool1.not.i370, label %lor.lhs.false.i371.if.end100_crit_edge, label %lor.lhs.false2.i373

lor.lhs.false.i371.if.end100_crit_edge:           ; preds = %lor.lhs.false.i371
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i373:                              ; preds = %lor.lhs.false.i371
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not.i372 = icmp eq i32 %35, 0
  br i1 %tobool3.not.i372, label %lor.lhs.false2.i373.if.end100_crit_edge, label %if.end.i386

lor.lhs.false2.i373.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i373
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i386:                                      ; preds = %lor.lhs.false2.i373
  %hdisplay.i374 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %36 = ptrtoint ptr %hdisplay.i374 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay.i374, align 4
  %conv4.i375 = zext i16 %37 to i32
  %vdisplay.i376 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %38 = ptrtoint ptr %vdisplay.i376 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay.i376, align 2
  %conv5.i377 = zext i16 %39 to i32
  %mul.i378 = mul nuw i32 %conv5.i377, %conv4.i375
  %conv6.i379 = sext i32 %mul.i378 to i64
  %conv8.i380 = zext i16 %31 to i32
  %conv10.i381 = zext i16 %33 to i32
  %mul11.i382 = mul nuw i32 %conv10.i381, %conv8.i380
  %conv13.i383 = sext i32 %35 to i64
  %mul14.i384 = mul nsw i64 %conv13.i383, 1000
  %mul15.i385 = mul i64 %mul14.i384, %conv6.i379
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i385)
  %cmp187.i490 = icmp ult i64 %mul15.i385, 4294967296
  br i1 %cmp187.i490, label %if.then191.i495, label %if.else197.i497, !prof !57

if.then191.i495:                                  ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i492 = trunc i64 %mul15.i385 to i32
  %div195.i493 = udiv i32 %conv192.i492, %mul11.i382
  %conv196.i494 = zext i32 %div195.i493 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit504

if.else197.i497:                                  ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i382, i64 %mul15.i385) #11, !srcloc !58
  %asmresult1.i.i496 = extractvalue { i64, i64 } %40, 1
  br label %mga_vga_calculate_mode_bandwidth.exit504

mga_vga_calculate_mode_bandwidth.exit504:         ; preds = %if.else197.i497, %if.then191.i495
  %pixels_per_second.0.i498 = phi i64 [ %conv196.i494, %if.then191.i495 ], [ %asmresult1.i.i496, %if.else197.i497 ]
  %mul204.i499 = mul i64 %pixels_per_second.0.i498, 400
  %shr230.i500 = lshr i64 %mul204.i499, 10
  %extract.t.i501 = trunc i64 %shr230.i500 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 56320000, i32 %extract.t.i501)
  %cmp42 = icmp ugt i32 %extract.t.i501, 56320000
  br i1 %cmp42, label %mga_vga_calculate_mode_bandwidth.exit504.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit504.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit504.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit504
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit504.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit504
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.then52:                                        ; preds = %entry
  %hdisplay53 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %41 = ptrtoint ptr %hdisplay53 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hdisplay53, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %42)
  %cmp55 = icmp ugt i16 %42, 1280
  br i1 %cmp55, label %if.then52.cleanup179_crit_edge, label %if.end58

if.then52.cleanup179_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end58:                                         ; preds = %if.then52
  %vdisplay59 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %43 = ptrtoint ptr %vdisplay59 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vdisplay59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %44)
  %cmp61 = icmp ugt i16 %44, 1024
  br i1 %cmp61, label %if.end58.cleanup179_crit_edge, label %if.end64

if.end58.cleanup179_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end64:                                         ; preds = %if.end58
  %htotal.i505 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %45 = ptrtoint ptr %htotal.i505 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %htotal.i505, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i506 = icmp eq i16 %46, 0
  br i1 %tobool.not.i506, label %if.end64.if.end100_crit_edge, label %lor.lhs.false.i509

if.end64.if.end100_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i509:                               ; preds = %if.end64
  %vtotal.i507 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %47 = ptrtoint ptr %vtotal.i507 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vtotal.i507, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool1.not.i508 = icmp eq i16 %48, 0
  br i1 %tobool1.not.i508, label %lor.lhs.false.i509.if.end100_crit_edge, label %lor.lhs.false2.i511

lor.lhs.false.i509.if.end100_crit_edge:           ; preds = %lor.lhs.false.i509
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i511:                              ; preds = %lor.lhs.false.i509
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool3.not.i510 = icmp eq i32 %50, 0
  br i1 %tobool3.not.i510, label %lor.lhs.false2.i511.if.end100_crit_edge, label %if.end.i524

lor.lhs.false2.i511.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i511
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i524:                                      ; preds = %lor.lhs.false2.i511
  %conv4.i513 = zext i16 %42 to i32
  %conv5.i515 = zext i16 %44 to i32
  %mul.i516 = mul nuw nsw i32 %conv5.i515, %conv4.i513
  %conv6.i5171085 = zext i32 %mul.i516 to i64
  %conv8.i518 = zext i16 %46 to i32
  %conv10.i519 = zext i16 %48 to i32
  %mul11.i520 = mul nuw i32 %conv10.i519, %conv8.i518
  %conv13.i521 = sext i32 %50 to i64
  %mul14.i522 = mul nuw nsw i64 %conv6.i5171085, 1000
  %mul15.i523 = mul nsw i64 %mul14.i522, %conv13.i521
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i523)
  %cmp187.i628 = icmp ult i64 %mul15.i523, 4294967296
  br i1 %cmp187.i628, label %if.then191.i633, label %if.else197.i635, !prof !57

if.then191.i633:                                  ; preds = %if.end.i524
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i630 = trunc i64 %mul15.i523 to i32
  %div195.i631 = udiv i32 %conv192.i630, %mul11.i520
  %conv196.i632 = zext i32 %div195.i631 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit642

if.else197.i635:                                  ; preds = %if.end.i524
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i520, i64 %mul15.i523) #11, !srcloc !58
  %asmresult1.i.i634 = extractvalue { i64, i64 } %51, 1
  br label %mga_vga_calculate_mode_bandwidth.exit642

mga_vga_calculate_mode_bandwidth.exit642:         ; preds = %if.else197.i635, %if.then191.i633
  %pixels_per_second.0.i636 = phi i64 [ %conv196.i632, %if.then191.i633 ], [ %asmresult1.i.i634, %if.else197.i635 ]
  %mul204.i637 = mul i64 %pixels_per_second.0.i636, 400
  %shr230.i638 = lshr i64 %mul204.i637, 10
  %extract.t.i639 = trunc i64 %shr230.i638 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32642048, i32 %extract.t.i639)
  %cmp66 = icmp ugt i32 %extract.t.i639, 32642048
  br i1 %cmp66, label %mga_vga_calculate_mode_bandwidth.exit642.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit642.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit642.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit642
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit642.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit642
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

land.lhs.true:                                    ; preds = %entry
  %htotal.i643 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %52 = ptrtoint ptr %htotal.i643 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %htotal.i643, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i644 = icmp eq i16 %53, 0
  br i1 %tobool.not.i644, label %land.lhs.true.if.end100_crit_edge, label %lor.lhs.false.i647

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i647:                               ; preds = %land.lhs.true
  %vtotal.i645 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %54 = ptrtoint ptr %vtotal.i645 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vtotal.i645, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool1.not.i646 = icmp eq i16 %55, 0
  br i1 %tobool1.not.i646, label %lor.lhs.false.i647.if.end100_crit_edge, label %lor.lhs.false2.i649

lor.lhs.false.i647.if.end100_crit_edge:           ; preds = %lor.lhs.false.i647
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i649:                              ; preds = %lor.lhs.false.i647
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool3.not.i648 = icmp eq i32 %57, 0
  br i1 %tobool3.not.i648, label %lor.lhs.false2.i649.if.end100_crit_edge, label %if.end.i662

lor.lhs.false2.i649.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i649
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i662:                                      ; preds = %lor.lhs.false2.i649
  %hdisplay.i650 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %58 = ptrtoint ptr %hdisplay.i650 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hdisplay.i650, align 4
  %conv4.i651 = zext i16 %59 to i32
  %vdisplay.i652 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %60 = ptrtoint ptr %vdisplay.i652 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vdisplay.i652, align 2
  %conv5.i653 = zext i16 %61 to i32
  %mul.i654 = mul nuw i32 %conv5.i653, %conv4.i651
  %conv6.i655 = sext i32 %mul.i654 to i64
  %conv8.i656 = zext i16 %53 to i32
  %conv10.i657 = zext i16 %55 to i32
  %mul11.i658 = mul nuw i32 %conv10.i657, %conv8.i656
  %conv13.i659 = sext i32 %57 to i64
  %mul14.i660 = mul nsw i64 %conv13.i659, 1000
  %mul15.i661 = mul i64 %mul14.i660, %conv6.i655
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i661)
  %cmp187.i766 = icmp ult i64 %mul15.i661, 4294967296
  br i1 %cmp187.i766, label %if.then191.i771, label %if.else197.i773, !prof !57

if.then191.i771:                                  ; preds = %if.end.i662
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i768 = trunc i64 %mul15.i661 to i32
  %div195.i769 = udiv i32 %conv192.i768, %mul11.i658
  %conv196.i770 = zext i32 %div195.i769 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit780

if.else197.i773:                                  ; preds = %if.end.i662
  call void @__sanitizer_cov_trace_pc() #9
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i658, i64 %mul15.i661) #11, !srcloc !58
  %asmresult1.i.i772 = extractvalue { i64, i64 } %62, 1
  br label %mga_vga_calculate_mode_bandwidth.exit780

mga_vga_calculate_mode_bandwidth.exit780:         ; preds = %if.else197.i773, %if.then191.i771
  %pixels_per_second.0.i774 = phi i64 [ %conv196.i770, %if.then191.i771 ], [ %asmresult1.i.i772, %if.else197.i773 ]
  %mul204.i775 = mul i64 %pixels_per_second.0.i774, 400
  %shr230.i776 = lshr i64 %mul204.i775, 10
  %extract.t.i777 = trunc i64 %shr230.i776 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 33484800, i32 %extract.t.i777)
  %cmp75 = icmp ugt i32 %extract.t.i777, 33484800
  br i1 %cmp75, label %mga_vga_calculate_mode_bandwidth.exit780.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit780.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit780.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit780
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit780.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit780
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

land.lhs.true82:                                  ; preds = %entry
  %htotal.i781 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %63 = ptrtoint ptr %htotal.i781 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %htotal.i781, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i782 = icmp eq i16 %64, 0
  br i1 %tobool.not.i782, label %land.lhs.true82.if.end100_crit_edge, label %lor.lhs.false.i785

land.lhs.true82.if.end100_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i785:                               ; preds = %land.lhs.true82
  %vtotal.i783 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %65 = ptrtoint ptr %vtotal.i783 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vtotal.i783, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool1.not.i784 = icmp eq i16 %66, 0
  br i1 %tobool1.not.i784, label %lor.lhs.false.i785.if.end100_crit_edge, label %lor.lhs.false2.i787

lor.lhs.false.i785.if.end100_crit_edge:           ; preds = %lor.lhs.false.i785
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i787:                              ; preds = %lor.lhs.false.i785
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool3.not.i786 = icmp eq i32 %68, 0
  br i1 %tobool3.not.i786, label %lor.lhs.false2.i787.if.end100_crit_edge, label %if.end.i800

lor.lhs.false2.i787.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i787
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i800:                                      ; preds = %lor.lhs.false2.i787
  %hdisplay.i788 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %69 = ptrtoint ptr %hdisplay.i788 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %hdisplay.i788, align 4
  %conv4.i789 = zext i16 %70 to i32
  %vdisplay.i790 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %71 = ptrtoint ptr %vdisplay.i790 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vdisplay.i790, align 2
  %conv5.i791 = zext i16 %72 to i32
  %mul.i792 = mul nuw i32 %conv5.i791, %conv4.i789
  %conv6.i793 = sext i32 %mul.i792 to i64
  %conv8.i794 = zext i16 %64 to i32
  %conv10.i795 = zext i16 %66 to i32
  %mul11.i796 = mul nuw i32 %conv10.i795, %conv8.i794
  %conv13.i797 = sext i32 %68 to i64
  %mul14.i798 = mul nsw i64 %conv13.i797, 1000
  %mul15.i799 = mul i64 %mul14.i798, %conv6.i793
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i799)
  %cmp187.i904 = icmp ult i64 %mul15.i799, 4294967296
  br i1 %cmp187.i904, label %if.then191.i909, label %if.else197.i911, !prof !57

if.then191.i909:                                  ; preds = %if.end.i800
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i906 = trunc i64 %mul15.i799 to i32
  %div195.i907 = udiv i32 %conv192.i906, %mul11.i796
  %conv196.i908 = zext i32 %div195.i907 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit918

if.else197.i911:                                  ; preds = %if.end.i800
  call void @__sanitizer_cov_trace_pc() #9
  %73 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i796, i64 %mul15.i799) #11, !srcloc !58
  %asmresult1.i.i910 = extractvalue { i64, i64 } %73, 1
  br label %mga_vga_calculate_mode_bandwidth.exit918

mga_vga_calculate_mode_bandwidth.exit918:         ; preds = %if.else197.i911, %if.then191.i909
  %pixels_per_second.0.i912 = phi i64 [ %conv196.i908, %if.then191.i909 ], [ %asmresult1.i.i910, %if.else197.i911 ]
  %mul204.i913 = mul i64 %pixels_per_second.0.i912, 400
  %shr230.i914 = lshr i64 %mul204.i913, 10
  %extract.t.i915 = trunc i64 %shr230.i914 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400000, i32 %extract.t.i915)
  %cmp84 = icmp ugt i32 %extract.t.i915, 38400000
  br i1 %cmp84, label %mga_vga_calculate_mode_bandwidth.exit918.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit918.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit918.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit918
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit918.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit918
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

land.lhs.true91:                                  ; preds = %entry
  %htotal.i919 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %74 = ptrtoint ptr %htotal.i919 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %htotal.i919, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i920 = icmp eq i16 %75, 0
  br i1 %tobool.not.i920, label %land.lhs.true91.if.end100_crit_edge, label %lor.lhs.false.i923

land.lhs.true91.if.end100_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false.i923:                               ; preds = %land.lhs.true91
  %vtotal.i921 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %76 = ptrtoint ptr %vtotal.i921 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vtotal.i921, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool1.not.i922 = icmp eq i16 %77, 0
  br i1 %tobool1.not.i922, label %lor.lhs.false.i923.if.end100_crit_edge, label %lor.lhs.false2.i925

lor.lhs.false.i923.if.end100_crit_edge:           ; preds = %lor.lhs.false.i923
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

lor.lhs.false2.i925:                              ; preds = %lor.lhs.false.i923
  %78 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool3.not.i924 = icmp eq i32 %79, 0
  br i1 %tobool3.not.i924, label %lor.lhs.false2.i925.if.end100_crit_edge, label %if.end.i938

lor.lhs.false2.i925.if.end100_crit_edge:          ; preds = %lor.lhs.false2.i925
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end.i938:                                      ; preds = %lor.lhs.false2.i925
  %hdisplay.i926 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %80 = ptrtoint ptr %hdisplay.i926 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %hdisplay.i926, align 4
  %conv4.i927 = zext i16 %81 to i32
  %vdisplay.i928 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %82 = ptrtoint ptr %vdisplay.i928 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vdisplay.i928, align 2
  %conv5.i929 = zext i16 %83 to i32
  %mul.i930 = mul nuw i32 %conv5.i929, %conv4.i927
  %conv6.i931 = sext i32 %mul.i930 to i64
  %conv8.i932 = zext i16 %75 to i32
  %conv10.i933 = zext i16 %77 to i32
  %mul11.i934 = mul nuw i32 %conv10.i933, %conv8.i932
  %conv13.i935 = sext i32 %79 to i64
  %mul14.i936 = mul nsw i64 %conv13.i935, 1000
  %mul15.i937 = mul i64 %mul14.i936, %conv6.i931
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i937)
  %cmp187.i1042 = icmp ult i64 %mul15.i937, 4294967296
  br i1 %cmp187.i1042, label %if.then191.i1047, label %if.else197.i1049, !prof !57

if.then191.i1047:                                 ; preds = %if.end.i938
  call void @__sanitizer_cov_trace_pc() #9
  %conv192.i1044 = trunc i64 %mul15.i937 to i32
  %div195.i1045 = udiv i32 %conv192.i1044, %mul11.i934
  %conv196.i1046 = zext i32 %div195.i1045 to i64
  br label %mga_vga_calculate_mode_bandwidth.exit1056

if.else197.i1049:                                 ; preds = %if.end.i938
  call void @__sanitizer_cov_trace_pc() #9
  %84 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i934, i64 %mul15.i937) #11, !srcloc !58
  %asmresult1.i.i1048 = extractvalue { i64, i64 } %84, 1
  br label %mga_vga_calculate_mode_bandwidth.exit1056

mga_vga_calculate_mode_bandwidth.exit1056:        ; preds = %if.else197.i1049, %if.then191.i1047
  %pixels_per_second.0.i1050 = phi i64 [ %conv196.i1046, %if.then191.i1047 ], [ %asmresult1.i.i1048, %if.else197.i1049 ]
  %mul204.i1051 = mul i64 %pixels_per_second.0.i1050, 400
  %shr230.i1052 = lshr i64 %mul204.i1051, 10
  %extract.t.i1053 = trunc i64 %shr230.i1052 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 56320000, i32 %extract.t.i1053)
  %cmp93 = icmp ugt i32 %extract.t.i1053, 56320000
  br i1 %cmp93, label %mga_vga_calculate_mode_bandwidth.exit1056.cleanup179_crit_edge, label %mga_vga_calculate_mode_bandwidth.exit1056.if.end100_crit_edge

mga_vga_calculate_mode_bandwidth.exit1056.if.end100_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit1056
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

mga_vga_calculate_mode_bandwidth.exit1056.cleanup179_crit_edge: ; preds = %mga_vga_calculate_mode_bandwidth.exit1056
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end100:                                        ; preds = %mga_vga_calculate_mode_bandwidth.exit1056.if.end100_crit_edge, %lor.lhs.false2.i925.if.end100_crit_edge, %lor.lhs.false.i923.if.end100_crit_edge, %land.lhs.true91.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit918.if.end100_crit_edge, %lor.lhs.false2.i787.if.end100_crit_edge, %lor.lhs.false.i785.if.end100_crit_edge, %land.lhs.true82.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit780.if.end100_crit_edge, %lor.lhs.false2.i649.if.end100_crit_edge, %lor.lhs.false.i647.if.end100_crit_edge, %land.lhs.true.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit642.if.end100_crit_edge, %lor.lhs.false2.i511.if.end100_crit_edge, %lor.lhs.false.i509.if.end100_crit_edge, %if.end64.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit504.if.end100_crit_edge, %lor.lhs.false2.i373.if.end100_crit_edge, %lor.lhs.false.i371.if.end100_crit_edge, %if.else40.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit366.if.end100_crit_edge, %lor.lhs.false2.i235.if.end100_crit_edge, %lor.lhs.false.i233.if.end100_crit_edge, %if.end34.if.end100_crit_edge, %mga_vga_calculate_mode_bandwidth.exit.if.end100_crit_edge, %lor.lhs.false2.i.if.end100_crit_edge, %lor.lhs.false.i.if.end100_crit_edge, %if.end14.if.end100_crit_edge, %entry.if.end100_crit_edge
  %hdisplay101 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %85 = ptrtoint ptr %hdisplay101 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hdisplay101, align 4
  %87 = and i16 %86, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp103.not = icmp eq i16 %87, 0
  br i1 %cmp103.not, label %lor.lhs.false105, label %if.end100.cleanup179_crit_edge

if.end100.cleanup179_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false105:                                 ; preds = %if.end100
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %88 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hsync_start, align 2
  %90 = and i16 %89, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp108.not = icmp eq i16 %90, 0
  br i1 %cmp108.not, label %lor.lhs.false110, label %lor.lhs.false105.cleanup179_crit_edge

lor.lhs.false105.cleanup179_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false110:                                 ; preds = %lor.lhs.false105
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %91 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %hsync_end, align 4
  %93 = and i16 %92, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp113.not = icmp eq i16 %93, 0
  br i1 %cmp113.not, label %lor.lhs.false115, label %lor.lhs.false110.cleanup179_crit_edge

lor.lhs.false110.cleanup179_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false115:                                 ; preds = %lor.lhs.false110
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %94 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %htotal, align 2
  %96 = and i16 %95, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp118.not = icmp eq i16 %96, 0
  br i1 %cmp118.not, label %if.end121, label %lor.lhs.false115.cleanup179_crit_edge

lor.lhs.false115.cleanup179_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end121:                                        ; preds = %lor.lhs.false115
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %97 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %crtc_hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %98)
  %cmp123 = icmp ugt i16 %98, 2048
  br i1 %cmp123, label %if.end121.cleanup179_crit_edge, label %lor.lhs.false125

if.end121.cleanup179_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false125:                                 ; preds = %if.end121
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %99 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %crtc_hsync_start, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %100)
  %cmp127 = icmp ugt i16 %100, 4096
  br i1 %cmp127, label %lor.lhs.false125.cleanup179_crit_edge, label %lor.lhs.false129

lor.lhs.false125.cleanup179_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false129:                                 ; preds = %lor.lhs.false125
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %101 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %crtc_hsync_end, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %102)
  %cmp131 = icmp ugt i16 %102, 4096
  br i1 %cmp131, label %lor.lhs.false129.cleanup179_crit_edge, label %lor.lhs.false133

lor.lhs.false129.cleanup179_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false133:                                 ; preds = %lor.lhs.false129
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %103 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %crtc_htotal, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %104)
  %cmp135 = icmp ugt i16 %104, 4096
  br i1 %cmp135, label %lor.lhs.false133.cleanup179_crit_edge, label %lor.lhs.false137

lor.lhs.false133.cleanup179_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false137:                                 ; preds = %lor.lhs.false133
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %105 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %crtc_vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %106)
  %cmp139 = icmp ugt i16 %106, 2048
  br i1 %cmp139, label %lor.lhs.false137.cleanup179_crit_edge, label %lor.lhs.false141

lor.lhs.false137.cleanup179_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false141:                                 ; preds = %lor.lhs.false137
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %107 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %crtc_vsync_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %108)
  %cmp143 = icmp ugt i16 %108, 4096
  br i1 %cmp143, label %lor.lhs.false141.cleanup179_crit_edge, label %lor.lhs.false145

lor.lhs.false141.cleanup179_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false145:                                 ; preds = %lor.lhs.false141
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %109 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %crtc_vsync_end, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %110)
  %cmp147 = icmp ugt i16 %110, 4096
  br i1 %cmp147, label %lor.lhs.false145.cleanup179_crit_edge, label %lor.lhs.false149

lor.lhs.false145.cleanup179_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

lor.lhs.false149:                                 ; preds = %lor.lhs.false145
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %111 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %crtc_vtotal, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %112)
  %cmp151 = icmp ugt i16 %112, 4096
  br i1 %cmp151, label %lor.lhs.false149.cleanup179_crit_edge, label %if.end154

lor.lhs.false149.cleanup179_crit_edge:            ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end154:                                        ; preds = %lor.lhs.false149
  %specified = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 1
  %113 = ptrtoint ptr %specified to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %specified, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not = icmp eq i8 %114, 0
  br i1 %tobool.not, label %if.end162.thread, label %if.then155

if.then155:                                       ; preds = %if.end154
  %bpp_specified = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 3
  %115 = ptrtoint ptr %bpp_specified to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bpp_specified, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool157.not = icmp eq i8 %116, 0
  br i1 %tobool157.not, label %if.then155.if.end162_crit_edge, label %if.then158

if.then155.if.end162_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then158:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  %bpp160 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 6
  %117 = ptrtoint ptr %bpp160 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bpp160, align 4
  %phi.bo = sdiv i32 %118, 8
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %if.then155.if.end162_crit_edge
  %bpp.0 = phi i32 [ %phi.bo, %if.then158 ], [ 4, %if.then155.if.end162_crit_edge ]
  %conv164 = zext i16 %86 to i32
  %vdisplay165 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %119 = ptrtoint ptr %vdisplay165 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vdisplay165, align 2
  %conv166 = zext i16 %120 to i32
  %mul = mul i32 %bpp.0, %conv164
  %mul167 = mul i32 %mul, %conv166
  %vram_fb_available = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 7
  %121 = ptrtoint ptr %vram_fb_available to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vram_fb_available, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul167, i32 %122)
  %cmp168 = icmp ugt i32 %mul167, %122
  br i1 %cmp168, label %if.then174.critedge, label %if.end162.cleanup179_crit_edge

if.end162.cleanup179_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end162.thread:                                 ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %conv1641076 = zext i16 %86 to i32
  %vdisplay1651077 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %123 = ptrtoint ptr %vdisplay1651077 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %vdisplay1651077, align 2
  %conv1661078 = zext i16 %124 to i32
  %mul1079 = shl nuw nsw i32 %conv1641076, 2
  %mul1671080 = mul i32 %mul1079, %conv1661078
  %vram_fb_available1081 = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 7
  %125 = ptrtoint ptr %vram_fb_available1081 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vram_fb_available1081, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1671080, i32 %126)
  %cmp1681082 = icmp ugt i32 %mul1671080, %126
  %spec.select = select i1 %cmp1681082, i32 -2, i32 0
  br label %cleanup179

if.then174.critedge:                              ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %specified to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %specified, align 8
  br label %cleanup179

cleanup179:                                       ; preds = %if.then174.critedge, %if.end162.thread, %if.end162.cleanup179_crit_edge, %lor.lhs.false149.cleanup179_crit_edge, %lor.lhs.false145.cleanup179_crit_edge, %lor.lhs.false141.cleanup179_crit_edge, %lor.lhs.false137.cleanup179_crit_edge, %lor.lhs.false133.cleanup179_crit_edge, %lor.lhs.false129.cleanup179_crit_edge, %lor.lhs.false125.cleanup179_crit_edge, %if.end121.cleanup179_crit_edge, %lor.lhs.false115.cleanup179_crit_edge, %lor.lhs.false110.cleanup179_crit_edge, %lor.lhs.false105.cleanup179_crit_edge, %if.end100.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit1056.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit918.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit780.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit642.cleanup179_crit_edge, %if.end58.cleanup179_crit_edge, %if.then52.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit504.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit366.cleanup179_crit_edge, %if.end28.cleanup179_crit_edge, %if.then22.cleanup179_crit_edge, %mga_vga_calculate_mode_bandwidth.exit.cleanup179_crit_edge, %if.end.cleanup179_crit_edge, %if.then6.cleanup179_crit_edge
  %retval.1 = phi i32 [ 11, %if.then52.cleanup179_crit_edge ], [ 12, %if.end58.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit642.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit780.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit918.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit1056.cleanup179_crit_edge ], [ 3, %lor.lhs.false115.cleanup179_crit_edge ], [ 3, %lor.lhs.false110.cleanup179_crit_edge ], [ 3, %lor.lhs.false105.cleanup179_crit_edge ], [ 3, %if.end100.cleanup179_crit_edge ], [ -2, %lor.lhs.false149.cleanup179_crit_edge ], [ -2, %lor.lhs.false145.cleanup179_crit_edge ], [ -2, %lor.lhs.false141.cleanup179_crit_edge ], [ -2, %lor.lhs.false137.cleanup179_crit_edge ], [ -2, %lor.lhs.false133.cleanup179_crit_edge ], [ -2, %lor.lhs.false129.cleanup179_crit_edge ], [ -2, %lor.lhs.false125.cleanup179_crit_edge ], [ -2, %if.end121.cleanup179_crit_edge ], [ -2, %if.then174.critedge ], [ 0, %if.end162.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit504.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit366.cleanup179_crit_edge ], [ 12, %if.end28.cleanup179_crit_edge ], [ 11, %if.then22.cleanup179_crit_edge ], [ -2, %mga_vga_calculate_mode_bandwidth.exit.cleanup179_crit_edge ], [ 12, %if.end.cleanup179_crit_edge ], [ 11, %if.then6.cleanup179_crit_edge ], [ %spec.select, %if.end162.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mgag200_simple_display_pipe_mode_valid(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_simple_display_pipe_enable(ptr nocapture noundef readonly %pipe, ptr noundef %crtc_state, ptr nocapture noundef readonly %plane_state) #0 align 64 {
entry:
  %fullscreen = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %pixpll3 = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 11
  %adjusted_mode4 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %fb6 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fullscreen) #7
  %4 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen, i32 0, i32 3
  %7 = ptrtoint ptr %fullscreen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fullscreen, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %6, align 4
  %type = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %16, label %entry.if.end_crit_edge [
    i32 4, label %entry.if.then_crit_edge
    i32 9, label %entry.if.then_crit_edge120
  ]

entry.if.then_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge120
  %rmmio.i = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 42) #7, !srcloc !54
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %21, i32 15370
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %23 = or i8 %22, 16
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %25, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 42) #7, !srcloc !54
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %27, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %23) #7, !srcloc !54
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %29, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 43) #7, !srcloc !54
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %31, i32 15370
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %33 = or i8 %32, 16
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %35, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 43) #7, !srcloc !54
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %37, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 %33) #7, !srcloc !54
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %39, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 0) #7, !srcloc !54
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 8
  %add.ptr26.i = getelementptr i8, ptr %41, i32 15370
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %43 = or i8 %42, -128
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %45, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 0) #7, !srcloc !54
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %47, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 %43) #7, !srcloc !54
  %48 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not88.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not88.not.i, label %if.then.while.body.i_crit_edge, label %if.then.while.end.i_crit_edge

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %iter_max.089.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 300, %if.then.while.body.i_crit_edge ]
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 8
  %add.ptr41.i = getelementptr i8, ptr %50, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 0) #7, !srcloc !54
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %52, i32 15370
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  %dec.i = add nsw i32 %iter_max.089.i, -1
  %55 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp ne i8 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool39.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %tmp.0.lcssa.i = phi i8 [ %43, %if.then.while.end.i_crit_edge ], [ %53, %while.body.i.while.end.i_crit_edge ]
  %tobool39.not.lcssa.i = phi i1 [ false, %if.then.while.end.i_crit_edge ], [ %tobool39.not.i, %while.body.i.while.end.i_crit_edge ]
  %56 = and i8 %tmp.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool49.not91.i = icmp eq i8 %56, 0
  %or.cond93.i = select i1 %tobool39.not.lcssa.i, i1 true, i1 %tobool49.not91.i
  br i1 %or.cond93.i, label %while.end.i.if.end_crit_edge, label %while.end.i.while.body53.i_crit_edge

while.end.i.while.body53.i_crit_edge:             ; preds = %while.end.i
  br label %while.body53.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body53.i:                                   ; preds = %while.body53.i.while.body53.i_crit_edge, %while.end.i.while.body53.i_crit_edge
  %iter_max.192.i = phi i32 [ %dec59.i, %while.body53.i.while.body53.i_crit_edge ], [ 300, %while.end.i.while.body53.i_crit_edge ]
  %57 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i, align 8
  %add.ptr55.i = getelementptr i8, ptr %58, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55.i, i8 0) #7, !srcloc !54
  %59 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i, align 8
  %add.ptr57.i = getelementptr i8, ptr %60, i32 15370
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  %dec59.i = add nsw i32 %iter_max.192.i, -1
  %63 = and i8 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool49.not.i = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec59.i)
  %tobool51.not.i = icmp eq i32 %dec59.i, 0
  %or.cond87.i = select i1 %tobool49.not.i, i1 true, i1 %tobool51.not.i
  br i1 %or.cond87.i, label %while.body53.i.if.end_crit_edge, label %while.body53.i.while.body53.i_crit_edge

while.body53.i.while.body53.i_crit_edge:          ; preds = %while.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body53.i

while.body53.i.if.end_crit_edge:                  ; preds = %while.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %while.body53.i.if.end_crit_edge, %while.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %format1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %64 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %format1.i, align 8
  %66 = getelementptr inbounds %struct.drm_format_info, ptr %65, i32 0, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 2
  %conv.i = zext i8 %68 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %arrayidx1.i.i = getelementptr [4 x i8], ptr @mgag200_get_bpp_shift.bpp_shift, i32 0, i32 %sub.i.i
  %69 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %68)
  %cond.i = icmp eq i8 %68, 3
  %mul3.i = shl i32 3, %conv2.i
  %sub.i = add i32 %mul3.i, 255
  %notmask.i = shl nsw i32 -1, %conv2.i
  %sub5.i = xor i32 %notmask.i, -1
  %scale.0.i = select i1 %cond.i, i32 %sub.i, i32 %sub5.i
  %rmmio.i60 = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i61 = getelementptr i8, ptr %72, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 3) #7, !srcloc !54
  %73 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr7.i62 = getelementptr i8, ptr %74, i32 8159
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i62) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %76 = add nuw nsw i32 %conv.i, 536870911
  %77 = and i32 %76, 536870911
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %77, label %do.end22.i [
    i32 0, label %if.end.sw.epilog39.i_crit_edge
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb14.i
  ]

if.end.sw.epilog39.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog39.i

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %depth.i = getelementptr inbounds %struct.drm_format_info, ptr %65, i32 0, i32 1
  %79 = ptrtoint ptr %depth.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %80)
  %cmp.i = icmp eq i8 %80, 15
  %..i = select i1 %cmp.i, i8 1, i8 2
  br label %sw.epilog39.i

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog39.i

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog39.i

do.end22.i:                                       ; preds = %if.end
  %dev23.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev23.i, align 4
  %call24.i = tail call ptr @dev_driver_string(ptr noundef %82) #7
  %83 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev23.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end22.i.dev_name.exit.i_crit_edge

do.end22.i.dev_name.exit.i_crit_edge:             ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end22.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %88, %if.end.i.i ], [ %86, %do.end22.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 517, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call24.i, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.16) #7
  br label %mgag200_set_format_regs.exit

sw.epilog39.i:                                    ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb10.i, %if.end.sw.epilog39.i_crit_edge
  %xmulctrl.0.i = phi i8 [ 7, %sw.bb14.i ], [ 3, %sw.bb13.i ], [ 0, %if.end.sw.epilog39.i_crit_edge ], [ %..i, %sw.bb10.i ]
  %89 = and i8 %75, -8
  %90 = trunc i32 %scale.0.i to i8
  %conv43.i = or i8 %89, %90
  %91 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr46.i = getelementptr i8, ptr %92, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46.i, i8 25) #7, !srcloc !54
  %93 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr48.i = getelementptr i8, ptr %94, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48.i, i8 %xmulctrl.0.i) #7, !srcloc !54
  %95 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr53.i = getelementptr i8, ptr %96, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53.i, i8 0) #7, !srcloc !54
  %97 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr55.i63 = getelementptr i8, ptr %98, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55.i63, i8 0) #7, !srcloc !54
  %99 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr60.i = getelementptr i8, ptr %100, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60.i, i8 1) #7, !srcloc !54
  %101 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr62.i = getelementptr i8, ptr %102, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62.i, i8 0) #7, !srcloc !54
  %103 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr67.i = getelementptr i8, ptr %104, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67.i, i8 2) #7, !srcloc !54
  %105 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr69.i = getelementptr i8, ptr %106, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69.i, i8 0) #7, !srcloc !54
  %107 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr74.i = getelementptr i8, ptr %108, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74.i, i8 3) #7, !srcloc !54
  %109 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr76.i = getelementptr i8, ptr %110, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76.i, i8 0) #7, !srcloc !54
  %111 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr81.i = getelementptr i8, ptr %112, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81.i, i8 4) #7, !srcloc !54
  %113 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr83.i = getelementptr i8, ptr %114, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83.i, i8 0) #7, !srcloc !54
  %115 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr88.i = getelementptr i8, ptr %116, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88.i, i8 5) #7, !srcloc !54
  %117 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr90.i = getelementptr i8, ptr %118, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90.i, i8 64) #7, !srcloc !54
  %119 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr95.i = getelementptr i8, ptr %120, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95.i, i8 6) #7, !srcloc !54
  %121 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr97.i = getelementptr i8, ptr %122, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97.i, i8 5) #7, !srcloc !54
  %123 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr102.i = getelementptr i8, ptr %124, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102.i, i8 7) #7, !srcloc !54
  %125 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr104.i = getelementptr i8, ptr %126, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104.i, i8 15) #7, !srcloc !54
  %127 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr109.i = getelementptr i8, ptr %128, i32 8142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr109.i, i8 8) #7, !srcloc !54
  %129 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr111.i = getelementptr i8, ptr %130, i32 8143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111.i, i8 15) #7, !srcloc !54
  %131 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr116.i = getelementptr i8, ptr %132, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116.i, i8 3) #7, !srcloc !54
  %133 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr118.i = getelementptr i8, ptr %134, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118.i, i8 %conv43.i) #7, !srcloc !54
  br label %mgag200_set_format_regs.exit

mgag200_set_format_regs.exit:                     ; preds = %sw.epilog39.i, %dev_name.exit.i
  %hdisplay1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 1
  %135 = ptrtoint ptr %hdisplay1.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %hdisplay1.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 2
  %137 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %hsync_start.i, align 2
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 3
  %139 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %hsync_end.i, align 4
  %htotal8.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 4
  %141 = ptrtoint ptr %htotal8.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %htotal8.i, align 2
  %143 = lshr i16 %142, 3
  %div10.i = zext i16 %143 to i32
  %sub11.i = add nsw i32 %div10.i, -1
  %and.i = and i32 %sub11.i, 7
  %144 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i, label %mgag200_set_format_regs.exit.mgag200_set_mode_regs.exit_crit_edge [
    i32 6, label %mgag200_set_format_regs.exit.if.then.i_crit_edge
    i32 4, label %mgag200_set_format_regs.exit.if.then.i_crit_edge121
  ]

mgag200_set_format_regs.exit.if.then.i_crit_edge121: ; preds = %mgag200_set_format_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

mgag200_set_format_regs.exit.if.then.i_crit_edge: ; preds = %mgag200_set_format_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

mgag200_set_format_regs.exit.mgag200_set_mode_regs.exit_crit_edge: ; preds = %mgag200_set_format_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_set_mode_regs.exit

if.then.i:                                        ; preds = %mgag200_set_format_regs.exit.if.then.i_crit_edge, %mgag200_set_format_regs.exit.if.then.i_crit_edge121
  br label %mgag200_set_mode_regs.exit

mgag200_set_mode_regs.exit:                       ; preds = %if.then.i, %mgag200_set_format_regs.exit.mgag200_set_mode_regs.exit_crit_edge
  %htotal.0.i = phi i32 [ %div10.i, %if.then.i ], [ %sub11.i, %mgag200_set_format_regs.exit.mgag200_set_mode_regs.exit_crit_edge ]
  %145 = lshr i16 %138, 3
  %div3.i = zext i16 %145 to i32
  %sub4.i = add nsw i32 %div3.i, -1
  %146 = lshr i16 %136, 3
  %div.i = zext i16 %146 to i32
  %sub.i64 = add nsw i32 %div.i, -1
  %vdisplay16.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 6
  %147 = ptrtoint ptr %vdisplay16.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vdisplay16.i, align 2
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 7
  %149 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %vsync_start.i, align 4
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 8
  %151 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %vsync_end.i, align 2
  %vtotal23.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 9
  %153 = ptrtoint ptr %vtotal23.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %vtotal23.i, align 4
  %155 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i66 = getelementptr i8, ptr %156, i32 8140
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i66) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %158 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags.i, align 4
  %160 = and i8 %157, 63
  %161 = trunc i32 %159 to i8
  %162 = shl i8 %161, 5
  %163 = and i8 %162, 64
  %misc.0.i = or i8 %163, %160
  %164 = shl i8 %161, 4
  %165 = and i8 %164, -128
  %misc.1.i = or i8 %misc.0.i, %165
  %sub46.i = add nsw i32 %htotal.0.i, -4
  %and47.i = lshr i32 %sub46.i, 8
  %shr.i = and i32 %and47.i, 1
  %and48.i = lshr i32 %sub.i64, 7
  %shr49.i = and i32 %and48.i, 2
  %and51.i = lshr i32 %sub4.i, 6
  %shr52.i = and i32 %and51.i, 4
  %and54.i = and i32 %htotal.0.i, 64
  %or50.i = or i32 %shr52.i, %shr49.i
  %or53.i = or i32 %or50.i, %and54.i
  %or55.i = or i32 %or53.i, %shr.i
  %166 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %167)
  %cmp57.i = icmp eq i32 %167, 4
  %conv56.i = trunc i32 %or55.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %167)
  %cmp61.i = icmp eq i32 %167, 9
  %or.cond.i67 = or i1 %cmp57.i, %cmp61.i
  %conv66.i = or i8 %conv56.i, -120
  %crtcext1.0.i = select i1 %or.cond.i67, i8 %conv66.i, i8 %conv56.i
  %conv24.i = zext i16 %154 to i32
  %sub25.i = add nsw i32 %conv24.i, -2
  %conv19.i = zext i16 %150 to i32
  %sub20.i = add nsw i32 %conv19.i, -1
  %conv17.i = zext i16 %148 to i32
  %sub18.i = add nsw i32 %conv17.i, -1
  %168 = lshr i16 %140, 3
  %narrow.i = add nuw nsw i16 %168, 31
  %and68.i = lshr i32 %sub25.i, 10
  %shr69.i = and i32 %and68.i, 3
  %and70.i = and i32 %sub18.i, 1024
  %shr71.i = lshr exact i32 %and70.i, 8
  %and73.i = lshr i32 %sub18.i, 7
  %shr74.i = and i32 %and73.i, 24
  %and76.i = lshr i32 %sub20.i, 5
  %shr77.i = and i32 %and76.i, 96
  %shr80.i = lshr exact i32 %and70.i, 3
  %or72.i = or i32 %shr74.i, %shr71.i
  %or75.i = or i32 %or72.i, %shr80.i
  %or78.i = or i32 %or75.i, %shr77.i
  %or81.i = or i32 %or78.i, %shr69.i
  %conv82.i = trunc i32 %or81.i to i8
  %169 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr84.i = getelementptr i8, ptr %170, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84.i, i8 0) #7, !srcloc !54
  %conv86.i = trunc i32 %sub46.i to i8
  %171 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr88.i68 = getelementptr i8, ptr %172, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88.i68, i8 %conv86.i) #7, !srcloc !54
  %173 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr91.i = getelementptr i8, ptr %174, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91.i, i8 1) #7, !srcloc !54
  %conv92.i = trunc i32 %sub.i64 to i8
  %175 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr94.i = getelementptr i8, ptr %176, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94.i, i8 %conv92.i) #7, !srcloc !54
  %177 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr99.i = getelementptr i8, ptr %178, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99.i, i8 2) #7, !srcloc !54
  %179 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr102.i69 = getelementptr i8, ptr %180, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102.i69, i8 %conv92.i) #7, !srcloc !54
  %181 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr107.i = getelementptr i8, ptr %182, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107.i, i8 3) #7, !srcloc !54
  %183 = trunc i32 %htotal.0.i to i8
  %184 = and i8 %183, 31
  %conv110.i = or i8 %184, -128
  %185 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr112.i = getelementptr i8, ptr %186, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr112.i, i8 %conv110.i) #7, !srcloc !54
  %187 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr117.i = getelementptr i8, ptr %188, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117.i, i8 4) #7, !srcloc !54
  %conv118.i = trunc i32 %sub4.i to i8
  %189 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr120.i = getelementptr i8, ptr %190, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120.i, i8 %conv118.i) #7, !srcloc !54
  %191 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr125.i = getelementptr i8, ptr %192, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr125.i, i8 5) #7, !srcloc !54
  %and126.i = shl nsw i32 %htotal.0.i, 2
  %shl.i = and i32 %and126.i, 128
  %193 = and i16 %narrow.i, 31
  %and127.i = zext i16 %193 to i32
  %or128.i = or i32 %shl.i, %and127.i
  %conv129.i = trunc i32 %or128.i to i8
  %194 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr131.i = getelementptr i8, ptr %195, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr131.i, i8 %conv129.i) #7, !srcloc !54
  %196 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr136.i = getelementptr i8, ptr %197, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr136.i, i8 6) #7, !srcloc !54
  %conv138.i = trunc i32 %sub25.i to i8
  %198 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr140.i = getelementptr i8, ptr %199, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr140.i, i8 %conv138.i) #7, !srcloc !54
  %200 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr145.i = getelementptr i8, ptr %201, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr145.i, i8 7) #7, !srcloc !54
  %and146.i = lshr i32 %sub25.i, 8
  %shr147.i = and i32 %and146.i, 1
  %and148.i = and i32 %sub18.i, 256
  %shr149.i = lshr exact i32 %and148.i, 7
  %and151.i = lshr i32 %sub20.i, 6
  %shr152.i = and i32 %and151.i, 4
  %shr155.i = lshr exact i32 %and148.i, 5
  %shr158.i = lshr exact i32 %and148.i, 4
  %and160.i = lshr i32 %sub25.i, 4
  %shr161.i = and i32 %and160.i, 32
  %and163.i = and i32 %sub18.i, 512
  %shr164.i = lshr exact i32 %and163.i, 3
  %and166.i = lshr i32 %sub20.i, 2
  %shr167.i = and i32 %and166.i, 128
  %or150.i = or i32 %shr155.i, %shr149.i
  %or153.i = or i32 %or150.i, %shr158.i
  %or156.i = or i32 %or153.i, %shr164.i
  %or159.i = or i32 %or156.i, %shr152.i
  %or162.i = or i32 %or159.i, %shr167.i
  %or165.i = or i32 %or162.i, %shr147.i
  %or168.i = or i32 %or165.i, %shr161.i
  %conv169.i = trunc i32 %or168.i to i8
  %202 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr171.i = getelementptr i8, ptr %203, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr171.i, i8 %conv169.i) #7, !srcloc !54
  %204 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr176.i = getelementptr i8, ptr %205, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr176.i, i8 9) #7, !srcloc !54
  %shr178.i = lshr exact i32 %and163.i, 4
  %or181.i = or i32 %shr178.i, %shr164.i
  %conv182.i = trunc i32 %or181.i to i8
  %206 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr184.i = getelementptr i8, ptr %207, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr184.i, i8 %conv182.i) #7, !srcloc !54
  %208 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr189.i = getelementptr i8, ptr %209, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr189.i, i8 16) #7, !srcloc !54
  %conv191.i = trunc i32 %sub20.i to i8
  %210 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr193.i = getelementptr i8, ptr %211, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr193.i, i8 %conv191.i) #7, !srcloc !54
  %212 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr198.i = getelementptr i8, ptr %213, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr198.i, i8 17) #7, !srcloc !54
  %214 = trunc i16 %152 to i8
  %215 = add i8 %214, 15
  %216 = and i8 %215, 15
  %conv201.i = or i8 %216, 32
  %217 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr203.i = getelementptr i8, ptr %218, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr203.i, i8 %conv201.i) #7, !srcloc !54
  %219 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr208.i = getelementptr i8, ptr %220, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr208.i, i8 18) #7, !srcloc !54
  %conv210.i = trunc i32 %sub18.i to i8
  %221 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr212.i = getelementptr i8, ptr %222, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr212.i, i8 %conv210.i) #7, !srcloc !54
  %223 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr217.i = getelementptr i8, ptr %224, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr217.i, i8 20) #7, !srcloc !54
  %225 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr219.i = getelementptr i8, ptr %226, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr219.i, i8 0) #7, !srcloc !54
  %227 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr224.i = getelementptr i8, ptr %228, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr224.i, i8 21) #7, !srcloc !54
  %229 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr228.i = getelementptr i8, ptr %230, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr228.i, i8 %conv210.i) #7, !srcloc !54
  %231 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr233.i = getelementptr i8, ptr %232, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr233.i, i8 22) #7, !srcloc !54
  %233 = trunc i16 %154 to i8
  %conv235.i = add i8 %233, -1
  %234 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr237.i = getelementptr i8, ptr %235, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr237.i, i8 %conv235.i) #7, !srcloc !54
  %236 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr242.i = getelementptr i8, ptr %237, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr242.i, i8 23) #7, !srcloc !54
  %238 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr244.i = getelementptr i8, ptr %239, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr244.i, i8 -61) #7, !srcloc !54
  %240 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr249.i = getelementptr i8, ptr %241, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr249.i, i8 24) #7, !srcloc !54
  %242 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr253.i = getelementptr i8, ptr %243, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr253.i, i8 %conv210.i) #7, !srcloc !54
  %244 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr258.i = getelementptr i8, ptr %245, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr258.i, i8 1) #7, !srcloc !54
  %246 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr260.i = getelementptr i8, ptr %247, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr260.i, i8 %crtcext1.0.i) #7, !srcloc !54
  %248 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr265.i = getelementptr i8, ptr %249, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr265.i, i8 2) #7, !srcloc !54
  %250 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr267.i = getelementptr i8, ptr %251, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr267.i, i8 %conv82.i) #7, !srcloc !54
  %252 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr272.i = getelementptr i8, ptr %253, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr272.i, i8 5) #7, !srcloc !54
  %254 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr274.i = getelementptr i8, ptr %255, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr274.i, i8 0) #7, !srcloc !54
  %256 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr278.i = getelementptr i8, ptr %257, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr278.i, i8 %misc.1.i) #7, !srcloc !54
  %funcs = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 11, i32 1
  %258 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %funcs, align 4
  %update = getelementptr inbounds %struct.mgag200_pll_funcs, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %update, align 4
  %pixpllc = getelementptr inbounds %struct.mgag200_crtc_state, ptr %crtc_state, i32 0, i32 1
  tail call void %261(ptr noundef %pixpll3, ptr noundef %pixpllc) #7
  %262 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %263)
  %cmp11 = icmp eq i32 %263, 8
  br i1 %cmp11, label %if.then12, label %mgag200_set_mode_regs.exit.if.end13_crit_edge

mgag200_set_mode_regs.exit.if.end13_crit_edge:    ; preds = %mgag200_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %mgag200_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %264 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i71 = getelementptr i8, ptr %265, i32 11784
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !60
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %or.i = or i32 %267, 2097152
  %268 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr2.i72 = getelementptr i8, ptr %269, i32 11784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %270 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i72, i32 %270) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %271 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %271(i32 noundef 214748000) #7
  %and.i73 = and i32 %267, -2097153
  %272 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr4.i = getelementptr i8, ptr %273, i32 11784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %274 = tail call i32 @llvm.bswap.i32(i32 %and.i73) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %274) #7, !srcloc !63
  %275 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %275)
  %.pr = load i32, ptr %type, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %mgag200_set_mode_regs.exit.if.end13_crit_edge
  %276 = phi i32 [ %.pr, %if.then12 ], [ %263, %mgag200_set_mode_regs.exit.if.end13_crit_edge ]
  %277 = zext i32 %276 to i64
  call void @__sanitizer_cov_trace_switch(i64 %277, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %276, label %if.end13.if.end24_crit_edge [
    i32 2, label %if.end13.if.then19_crit_edge
    i32 3, label %if.end13.if.then19_crit_edge122
    i32 5, label %if.then22
  ]

if.end13.if.then19_crit_edge122:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.end13.if.then19_crit_edge, %if.end13.if.then19_crit_edge122
  %model.i = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 9
  %278 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %279)
  %cmp.i74 = icmp ugt i32 %279, 3
  br i1 %cmp.i74, label %if.then19.mgag200_g200se_set_hiprilvl.exit_crit_edge, label %if.else.i

if.then19.mgag200_g200se_set_hiprilvl.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_g200se_set_hiprilvl.exit

if.else.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %279)
  %cmp2.i = icmp ugt i32 %279, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.else43.i

if.then3.i:                                       ; preds = %if.else.i
  %280 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %format1.i, align 8
  %282 = getelementptr inbounds %struct.drm_format_info, ptr %281, i32 0, i32 3
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %282, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %284)
  %cmp4.i = icmp ugt i8 %284, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %284)
  %cmp12.i = icmp eq i8 %284, 2
  %..i75 = select i1 %cmp12.i, i32 16, i32 8
  %bpp.0.i = select i1 %cmp4.i, i32 32, i32 %..i75
  %285 = ptrtoint ptr %adjusted_mode4 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %adjusted_mode4, align 4
  %mul17.i = mul i32 %bpp.0.i, %286
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100999, i32 %mul17.i)
  %cmp18.i = icmp ugt i32 %mul17.i, 3100999
  br i1 %cmp18.i, label %if.then3.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, label %if.else21.i

if.then3.i.mgag200_g200se_set_hiprilvl.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_g200se_set_hiprilvl.exit

if.else21.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2600999, i32 %mul17.i)
  %cmp22.i = icmp ugt i32 %mul17.i, 2600999
  br i1 %cmp22.i, label %if.else21.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, label %if.else25.i

if.else21.i.mgag200_g200se_set_hiprilvl.exit_crit_edge: ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_g200se_set_hiprilvl.exit

if.else25.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900999, i32 %mul17.i)
  %cmp26.i = icmp ugt i32 %mul17.i, 1900999
  br i1 %cmp26.i, label %if.else25.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, label %if.else29.i

if.else25.i.mgag200_g200se_set_hiprilvl.exit_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_g200se_set_hiprilvl.exit

if.else29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1160999, i32 %mul17.i)
  %cmp30.i = icmp ugt i32 %mul17.i, 1160999
  br i1 %cmp30.i, label %if.else29.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, label %if.else33.i

if.else29.i.mgag200_g200se_set_hiprilvl.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_g200se_set_hiprilvl.exit

if.else33.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 440999, i32 %mul17.i)
  %cmp34.i = icmp ugt i32 %mul17.i, 440999
  %.63.i = select i1 %cmp34.i, i8 4, i8 5
  br label %mgag200_g200se_set_hiprilvl.exit

if.else43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %279)
  %cmp44.i = icmp eq i32 %279, 1
  %.64.i = select i1 %cmp44.i, i8 3, i8 4
  br label %mgag200_g200se_set_hiprilvl.exit

mgag200_g200se_set_hiprilvl.exit:                 ; preds = %if.else43.i, %if.else33.i, %if.else29.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, %if.else25.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, %if.else21.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, %if.then3.i.mgag200_g200se_set_hiprilvl.exit_crit_edge, %if.then19.mgag200_g200se_set_hiprilvl.exit_crit_edge
  %hiprilvl.1.i = phi i8 [ 0, %if.then19.mgag200_g200se_set_hiprilvl.exit_crit_edge ], [ 0, %if.then3.i.mgag200_g200se_set_hiprilvl.exit_crit_edge ], [ 1, %if.else21.i.mgag200_g200se_set_hiprilvl.exit_crit_edge ], [ 2, %if.else25.i.mgag200_g200se_set_hiprilvl.exit_crit_edge ], [ 3, %if.else29.i.mgag200_g200se_set_hiprilvl.exit_crit_edge ], [ %.63.i, %if.else33.i ], [ %.64.i, %if.else43.i ]
  %287 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i77 = getelementptr i8, ptr %288, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77, i8 6) #7, !srcloc !54
  %289 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr53.i78 = getelementptr i8, ptr %290, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53.i78, i8 %hiprilvl.1.i) #7, !srcloc !54
  br label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %291 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i80 = getelementptr i8, ptr %292, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i80, i8 6) #7, !srcloc !54
  %293 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr2.i81 = getelementptr i8, ptr %294, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i81, i8 0) #7, !srcloc !54
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %mgag200_g200se_set_hiprilvl.exit, %if.end13.if.end24_crit_edge
  %295 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %type, align 8
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %296, label %if.end24.if.end31_crit_edge [
    i32 4, label %if.end24.if.then30_crit_edge
    i32 9, label %if.end24.if.then30_crit_edge123
  ]

if.end24.if.then30_crit_edge123:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end24.if.then30_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end24.if.then30_crit_edge, %if.end24.if.then30_crit_edge123
  %298 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i83 = getelementptr i8, ptr %299, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i83, i8 1) #7, !srcloc !54
  %300 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr2.i84 = getelementptr i8, ptr %301, i32 8159
  %302 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i84) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %303 = or i8 %302, -120
  %304 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr5.i85 = getelementptr i8, ptr %305, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i85, i8 %303) #7, !srcloc !54
  %306 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr7.i86 = getelementptr i8, ptr %307, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i86, i8 49) #7, !srcloc !54
  %308 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr9.i87 = getelementptr i8, ptr %309, i32 15370
  %310 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i87) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %311 = or i8 %310, 8
  %312 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr15.i = getelementptr i8, ptr %313, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 %311) #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 2147480) #7
  %315 = and i8 %310, -9
  %316 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr19.i = getelementptr i8, ptr %317, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 49) #7, !srcloc !54
  %318 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr21.i = getelementptr i8, ptr %319, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 %315) #7, !srcloc !54
  %320 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr23.i = getelementptr i8, ptr %321, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 0) #7, !srcloc !54
  %322 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr25.i = getelementptr i8, ptr %323, i32 15370
  %324 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %325 = and i8 %324, 127
  %326 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr31.i = getelementptr i8, ptr %327, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 %325) #7, !srcloc !54
  %328 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr33.i88 = getelementptr i8, ptr %329, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i88, i8 43) #7, !srcloc !54
  %330 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr35.i89 = getelementptr i8, ptr %331, i32 15370
  %332 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35.i89) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %333 = and i8 %332, -17
  %334 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr41.i90 = getelementptr i8, ptr %335, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i90, i8 43) #7, !srcloc !54
  %336 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr43.i91 = getelementptr i8, ptr %337, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43.i91, i8 %333) #7, !srcloc !54
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end24.if.end31_crit_edge
  %338 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %pipe, align 8
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 11
  %340 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %enabled.i, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool.not.i92 = icmp eq i8 %341, 0
  br i1 %tobool.not.i92, label %if.end31.mga_crtc_load_lut.exit_crit_edge, label %if.end.i

if.end31.mga_crtc_load_lut.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_crtc_load_lut.exit

if.end.i:                                         ; preds = %if.end31
  %state.i = getelementptr inbounds %struct.mga_device, ptr %339, i32 0, i32 12, i32 1, i32 19
  %342 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %state.i, align 4
  %tobool2.not.i = icmp eq ptr %343, null
  br i1 %tobool2.not.i, label %if.end.i.mga_crtc_load_lut.exit_crit_edge, label %if.end4.i

if.end.i.mga_crtc_load_lut.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_crtc_load_lut.exit

if.end4.i:                                        ; preds = %if.end.i
  %fb8.i = getelementptr inbounds %struct.drm_plane_state, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %fb8.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %fb8.i, align 4
  %gamma_store.i = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 18
  %346 = ptrtoint ptr %gamma_store.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %gamma_store.i, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 17
  %348 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %gamma_size.i, align 8
  %add.ptr.i93 = getelementptr i16, ptr %347, i32 %349
  %add.ptr10.i = getelementptr i16, ptr %add.ptr.i93, i32 %349
  %rmmio.i94 = getelementptr inbounds %struct.mga_device, ptr %339, i32 0, i32 4
  %350 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr11.i95 = getelementptr i8, ptr %351, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i95, i8 0) #7, !srcloc !54
  %tobool12.not.i = icmp eq ptr %345, null
  br i1 %tobool12.not.i, label %if.end4.i.for.body63.i.preheader_crit_edge, label %land.lhs.true.i

if.end4.i.for.body63.i.preheader_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63.i.preheader

for.body63.i.preheader:                           ; preds = %land.lhs.true.i.for.body63.i.preheader_crit_edge, %if.end4.i.for.body63.i.preheader_crit_edge
  br label %for.body63.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %format.i96 = getelementptr inbounds %struct.drm_framebuffer, ptr %345, i32 0, i32 4
  %352 = ptrtoint ptr %format.i96 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %format.i96, align 8
  %354 = getelementptr inbounds %struct.drm_format_info, ptr %353, i32 0, i32 3
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %354, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %356)
  %cmp.i97 = icmp eq i8 %356, 2
  br i1 %cmp.i97, label %if.then14.i, label %land.lhs.true.i.for.body63.i.preheader_crit_edge

land.lhs.true.i.for.body63.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63.i.preheader

if.then14.i:                                      ; preds = %land.lhs.true.i
  %depth.i98 = getelementptr inbounds %struct.drm_format_info, ptr %353, i32 0, i32 1
  %357 = ptrtoint ptr %depth.i98 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %depth.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %358)
  %cmp17.i = icmp eq i8 %358, 15
  %cond.i99 = select i1 %cmp17.i, i32 8, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end48.i.for.body.i_crit_edge, %if.then14.i
  %i.0124.i = phi i32 [ 0, %if.then14.i ], [ %add.i, %if.end48.i.for.body.i_crit_edge ]
  %b_ptr.0123.i = phi ptr [ %add.ptr10.i, %if.then14.i ], [ %b_ptr.1.i, %if.end48.i.for.body.i_crit_edge ]
  %g_ptr.0122.i = phi ptr [ %add.ptr.i93, %if.then14.i ], [ %incdec.ptr51.i, %if.end48.i.for.body.i_crit_edge ]
  %r_ptr.0121.i = phi ptr [ %347, %if.then14.i ], [ %r_ptr.1.i, %if.end48.i.for.body.i_crit_edge ]
  %359 = ptrtoint ptr %format.i96 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %format.i96, align 8
  %depth22.i = getelementptr inbounds %struct.drm_format_info, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %depth22.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %depth22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %362)
  %cmp24.i = icmp eq i8 %362, 16
  br i1 %cmp24.i, label %if.then26.i, label %if.else39.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.0124.i)
  %cmp27.i = icmp sgt i32 %i.0124.i, 128
  br i1 %cmp27.i, label %if.then26.i.if.end48.i_crit_edge, label %if.else.i100

if.then26.i.if.end48.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.else.i100:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %363 = ptrtoint ptr %r_ptr.0121.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %r_ptr.0121.i, align 2
  %365 = lshr i16 %364, 8
  %conv31.i = trunc i16 %365 to i8
  %366 = ptrtoint ptr %b_ptr.0123.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %b_ptr.0123.i, align 2
  %368 = lshr i16 %367, 8
  %conv35.i = trunc i16 %368 to i8
  %incdec.ptr36.i = getelementptr i16, ptr %r_ptr.0121.i, i32 2
  %incdec.ptr37.i = getelementptr i16, ptr %b_ptr.0123.i, i32 2
  br label %if.end48.i

if.else39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr40.i = getelementptr i16, ptr %r_ptr.0121.i, i32 1
  %369 = ptrtoint ptr %r_ptr.0121.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %r_ptr.0121.i, align 2
  %371 = lshr i16 %370, 8
  %conv43.i101 = trunc i16 %371 to i8
  %incdec.ptr44.i = getelementptr i16, ptr %b_ptr.0123.i, i32 1
  %372 = ptrtoint ptr %b_ptr.0123.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %b_ptr.0123.i, align 2
  %374 = lshr i16 %373, 8
  %conv47.i = trunc i16 %374 to i8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else39.i, %if.else.i100, %if.then26.i.if.end48.i_crit_edge
  %r_ptr.1.i = phi ptr [ %incdec.ptr36.i, %if.else.i100 ], [ %incdec.ptr40.i, %if.else39.i ], [ %r_ptr.0121.i, %if.then26.i.if.end48.i_crit_edge ]
  %b_ptr.1.i = phi ptr [ %incdec.ptr37.i, %if.else.i100 ], [ %incdec.ptr44.i, %if.else39.i ], [ %b_ptr.0123.i, %if.then26.i.if.end48.i_crit_edge ]
  %r.0.i = phi i8 [ %conv31.i, %if.else.i100 ], [ %conv43.i101, %if.else39.i ], [ 0, %if.then26.i.if.end48.i_crit_edge ]
  %b.0.i = phi i8 [ %conv35.i, %if.else.i100 ], [ %conv47.i, %if.else39.i ], [ 0, %if.then26.i.if.end48.i_crit_edge ]
  %375 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr50.i = getelementptr i8, ptr %376, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50.i, i8 %r.0.i) #7, !srcloc !54
  %incdec.ptr51.i = getelementptr i16, ptr %g_ptr.0122.i, i32 1
  %377 = ptrtoint ptr %g_ptr.0122.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %g_ptr.0122.i, align 2
  %379 = lshr i16 %378, 8
  %conv54.i = trunc i16 %379 to i8
  %380 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr56.i = getelementptr i8, ptr %381, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56.i, i8 %conv54.i) #7, !srcloc !54
  %382 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr58.i = getelementptr i8, ptr %383, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58.i, i8 %b.0.i) #7, !srcloc !54
  %add.i = add i32 %i.0124.i, %cond.i99
  %cmp19.i = icmp slt i32 %add.i, 256
  br i1 %cmp19.i, label %if.end48.i.for.body.i_crit_edge, label %if.end48.i.mga_crtc_load_lut.exit_crit_edge

if.end48.i.mga_crtc_load_lut.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_crtc_load_lut.exit

if.end48.i.for.body.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body63.i:                                     ; preds = %for.body63.i.for.body63.i_crit_edge, %for.body63.i.preheader
  %i.1129.i = phi i32 [ %inc83.i, %for.body63.i.for.body63.i_crit_edge ], [ 0, %for.body63.i.preheader ]
  %b_ptr.2128.i = phi ptr [ %incdec.ptr76.i, %for.body63.i.for.body63.i_crit_edge ], [ %add.ptr10.i, %for.body63.i.preheader ]
  %g_ptr.1127.i = phi ptr [ %incdec.ptr70.i, %for.body63.i.for.body63.i_crit_edge ], [ %add.ptr.i93, %for.body63.i.preheader ]
  %r_ptr.2126.i = phi ptr [ %incdec.ptr64.i, %for.body63.i.for.body63.i_crit_edge ], [ %347, %for.body63.i.preheader ]
  %incdec.ptr64.i = getelementptr i16, ptr %r_ptr.2126.i, i32 1
  %384 = ptrtoint ptr %r_ptr.2126.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %r_ptr.2126.i, align 2
  %386 = lshr i16 %385, 8
  %conv67.i = trunc i16 %386 to i8
  %387 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr69.i102 = getelementptr i8, ptr %388, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr69.i102, i8 %conv67.i) #7, !srcloc !54
  %incdec.ptr70.i = getelementptr i16, ptr %g_ptr.1127.i, i32 1
  %389 = ptrtoint ptr %g_ptr.1127.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %g_ptr.1127.i, align 2
  %391 = lshr i16 %390, 8
  %conv73.i = trunc i16 %391 to i8
  %392 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr75.i = getelementptr i8, ptr %393, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr75.i, i8 %conv73.i) #7, !srcloc !54
  %incdec.ptr76.i = getelementptr i16, ptr %b_ptr.2128.i, i32 1
  %394 = ptrtoint ptr %b_ptr.2128.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %b_ptr.2128.i, align 2
  %396 = lshr i16 %395, 8
  %conv79.i = trunc i16 %396 to i8
  %397 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %rmmio.i94, align 8
  %add.ptr81.i103 = getelementptr i8, ptr %398, i32 15361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81.i103, i8 %conv79.i) #7, !srcloc !54
  %inc83.i = add nuw nsw i32 %i.1129.i, 1
  %exitcond.not.i = icmp eq i32 %inc83.i, 256
  br i1 %exitcond.not.i, label %for.body63.i.mga_crtc_load_lut.exit_crit_edge, label %for.body63.i.for.body63.i_crit_edge

for.body63.i.for.body63.i_crit_edge:              ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63.i

for.body63.i.mga_crtc_load_lut.exit_crit_edge:    ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_crtc_load_lut.exit

mga_crtc_load_lut.exit:                           ; preds = %for.body63.i.mga_crtc_load_lut.exit_crit_edge, %if.end48.i.mga_crtc_load_lut.exit_crit_edge, %if.end.i.mga_crtc_load_lut.exit_crit_edge, %if.end31.mga_crtc_load_lut.exit_crit_edge
  %399 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i105 = getelementptr i8, ptr %400, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i105, i8 0) #7, !srcloc !54
  %401 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr2.i106 = getelementptr i8, ptr %402, i32 8133
  %403 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i106) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %404 = or i8 %403, 3
  %405 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr6.i = getelementptr i8, ptr %406, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #7, !srcloc !54
  %407 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr8.i = getelementptr i8, ptr %408, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %404) #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %409 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %409
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %mga_crtc_load_lut.exit
  %410 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i.i = getelementptr i8, ptr %411, i32 7700
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %413 = and i32 %412, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool.not.i.i107 = icmp eq i32 %413, 0
  br i1 %tobool.not.i.i107, label %do.body.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %414 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i108 = add i32 %add.neg.i.i, %414
  %cmp.i.i = icmp slt i32 %sub.i.i108, 0
  br i1 %cmp.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge, label %land.rhs.i.i.do.end.i.i_crit_edge

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %415 = load volatile i32, ptr @jiffies, align 128
  %add1.neg.i.i = sub i32 -10, %415
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %land.rhs9.i.i.do.body2.i.i_crit_edge, %do.end.i.i
  %416 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %417, i32 7700
  %418 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %419 = and i32 %418, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool8.not.i.i = icmp eq i32 %419, 0
  br i1 %tobool8.not.i.i, label %land.rhs9.i.i, label %do.body2.i.i.mga_wait_vsync.exit.i_crit_edge

do.body2.i.i.mga_wait_vsync.exit.i_crit_edge:     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_wait_vsync.exit.i

land.rhs9.i.i:                                    ; preds = %do.body2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %420 = load volatile i32, ptr @jiffies, align 128
  %sub10.i.i = add i32 %add1.neg.i.i, %420
  %cmp11.i.i = icmp slt i32 %sub10.i.i, 0
  br i1 %cmp11.i.i, label %land.rhs9.i.i.do.body2.i.i_crit_edge, label %land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge

land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge:    ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_wait_vsync.exit.i

land.rhs9.i.i.do.body2.i.i_crit_edge:             ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i

mga_wait_vsync.exit.i:                            ; preds = %land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge, %do.body2.i.i.mga_wait_vsync.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %421 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i67.i = sub i32 -100, %421
  br label %do.body.i70.i

do.body.i70.i:                                    ; preds = %land.rhs.i73.i.do.body.i70.i_crit_edge, %mga_wait_vsync.exit.i
  %422 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr.i68.i = getelementptr i8, ptr %423, i32 7702
  %424 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i68.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %425 = and i8 %424, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool.not.i69.i = icmp eq i8 %425, 0
  br i1 %tobool.not.i69.i, label %do.body.i70.i.mgag200_enable_display.exit_crit_edge, label %land.rhs.i73.i

do.body.i70.i.mgag200_enable_display.exit_crit_edge: ; preds = %do.body.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_enable_display.exit

land.rhs.i73.i:                                   ; preds = %do.body.i70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %426 = load volatile i32, ptr @jiffies, align 128
  %sub.i71.i = add i32 %add.neg.i67.i, %426
  %cmp.i72.i = icmp slt i32 %sub.i71.i, 0
  br i1 %cmp.i72.i, label %land.rhs.i73.i.do.body.i70.i_crit_edge, label %land.rhs.i73.i.mgag200_enable_display.exit_crit_edge

land.rhs.i73.i.mgag200_enable_display.exit_crit_edge: ; preds = %land.rhs.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_enable_display.exit

land.rhs.i73.i.do.body.i70.i_crit_edge:           ; preds = %land.rhs.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i70.i

mgag200_enable_display.exit:                      ; preds = %land.rhs.i73.i.mgag200_enable_display.exit_crit_edge, %do.body.i70.i.mgag200_enable_display.exit_crit_edge
  %427 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr13.i = getelementptr i8, ptr %428, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 1) #7, !srcloc !54
  %429 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr15.i109 = getelementptr i8, ptr %430, i32 8133
  %431 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i109) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %432 = and i8 %431, -33
  %433 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr23.i110 = getelementptr i8, ptr %434, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i110, i8 1) #7, !srcloc !54
  %435 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr25.i111 = getelementptr i8, ptr %436, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i111, i8 %432) #7, !srcloc !54
  tail call void @msleep(i32 noundef 20) #7
  %437 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr30.i = getelementptr i8, ptr %438, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i, i8 1) #7, !srcloc !54
  %439 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr32.i = getelementptr i8, ptr %440, i32 8159
  %441 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %442 = and i8 %441, -49
  %443 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr44.i = getelementptr i8, ptr %444, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 1) #7, !srcloc !54
  %445 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %rmmio.i60, align 8
  %add.ptr46.i112 = getelementptr i8, ptr %446, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46.i112, i8 %442) #7, !srcloc !54
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %plane_state, i32 0, i32 2
  call fastcc void @mgag200_handle_damage(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %fullscreen, ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fullscreen) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_simple_display_pipe_disable(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %rmmio.i = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #7, !srcloc !54
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 8133
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %7 = and i8 %6, -3
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #7, !srcloc !54
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %11, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %7) #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %entry
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 7700
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %16 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %17
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge, label %land.rhs.i.i.do.end.i.i_crit_edge

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add1.neg.i.i = sub i32 -10, %18
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %land.rhs9.i.i.do.body2.i.i_crit_edge, %do.end.i.i
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %20, i32 7700
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %22 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool8.not.i.i, label %land.rhs9.i.i, label %do.body2.i.i.mga_wait_vsync.exit.i_crit_edge

do.body2.i.i.mga_wait_vsync.exit.i_crit_edge:     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_wait_vsync.exit.i

land.rhs9.i.i:                                    ; preds = %do.body2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub10.i.i = add i32 %add1.neg.i.i, %23
  %cmp11.i.i = icmp slt i32 %sub10.i.i, 0
  br i1 %cmp11.i.i, label %land.rhs9.i.i.do.body2.i.i_crit_edge, label %land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge

land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge:    ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_wait_vsync.exit.i

land.rhs9.i.i.do.body2.i.i_crit_edge:             ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i

mga_wait_vsync.exit.i:                            ; preds = %land.rhs9.i.i.mga_wait_vsync.exit.i_crit_edge, %do.body2.i.i.mga_wait_vsync.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i63.i = sub i32 -100, %24
  br label %do.body.i66.i

do.body.i66.i:                                    ; preds = %land.rhs.i69.i.do.body.i66.i_crit_edge, %mga_wait_vsync.exit.i
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %26, i32 7702
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i65.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i65.i, label %do.body.i66.i.mgag200_disable_display.exit_crit_edge, label %land.rhs.i69.i

do.body.i66.i.mgag200_disable_display.exit_crit_edge: ; preds = %do.body.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_disable_display.exit

land.rhs.i69.i:                                   ; preds = %do.body.i66.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i67.i = add i32 %add.neg.i63.i, %29
  %cmp.i68.i = icmp slt i32 %sub.i67.i, 0
  br i1 %cmp.i68.i, label %land.rhs.i69.i.do.body.i66.i_crit_edge, label %land.rhs.i69.i.mgag200_disable_display.exit_crit_edge

land.rhs.i69.i.mgag200_disable_display.exit_crit_edge: ; preds = %land.rhs.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mgag200_disable_display.exit

land.rhs.i69.i.do.body.i66.i_crit_edge:           ; preds = %land.rhs.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i66.i

mgag200_disable_display.exit:                     ; preds = %land.rhs.i69.i.mgag200_disable_display.exit_crit_edge, %do.body.i66.i.mgag200_disable_display.exit_crit_edge
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %31, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 1) #7, !srcloc !54
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %33, i32 8133
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %35 = or i8 %34, 32
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %37, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 1) #7, !srcloc !54
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %39, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i, i8 %35) #7, !srcloc !54
  tail call void @msleep(i32 noundef 20) #7
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %41, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i, i8 1) #7, !srcloc !54
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 8
  %add.ptr32.i = getelementptr i8, ptr %43, i32 8159
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %45 = or i8 %44, 48
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 8
  %add.ptr41.i = getelementptr i8, ptr %47, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 1) #7, !srcloc !54
  %48 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %49, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43.i, i8 %45) #7, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_simple_display_pipe_check(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %plane_state, ptr noundef %crtc_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane_state, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pixpll3 = getelementptr inbounds %struct.mga_device, ptr %3, i32 0, i32 11
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.then13_crit_edge, label %if.end10

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end10:                                         ; preds = %if.end
  %fb9 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb9, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.then13_crit_edge, label %lor.lhs.false

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %format12 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %format12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format12, align 8
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end10.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %14 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false.if.end14_crit_edge
  %mode_changed15 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %15 = ptrtoint ptr %mode_changed15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load16 = load i8, ptr %mode_changed15, align 2
  %16 = and i8 %bf.load16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast.not = icmp eq i8 %16, 0
  br i1 %bf.cast.not, label %if.end14.if.end23_crit_edge, label %if.then18

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  %funcs = getelementptr inbounds %struct.mga_device, ptr %3, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %pixpllc = getelementptr inbounds %struct.mgag200_crtc_state, ptr %crtc_state, i32 0, i32 1
  %call19 = tail call i32 %20(ptr noundef %pixpll3, i32 noundef %22, ptr noundef %pixpllc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end23_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_simple_display_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #0 align 64 {
entry:
  %damage = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plane1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %plane1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane1, align 8
  %state3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state3, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #7
  %tobool.not = icmp eq ptr %5, null
  %6 = call ptr @memset(ptr %damage, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %3, ptr noundef nonnull %damage) #7
  br i1 %call6, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %3, i32 0, i32 2
  call fastcc void @mgag200_handle_damage(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %damage, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_kms_prepare_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_cleanup_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_simple_display_pipe_reset_crtc(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 300) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %pipe, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mgag200_simple_display_pipe_duplicate_crtc_state(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 300) #12
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %pipe, ptr noundef nonnull %call7.i.i) #7
  %pixpllc = getelementptr inbounds %struct.mgag200_crtc_state, ptr %call7.i.i, i32 0, i32 1
  %pixpllc6 = getelementptr inbounds %struct.mgag200_crtc_state, ptr %1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %pixpllc, ptr %pixpllc6, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_simple_display_pipe_destroy_crtc_state(ptr nocapture noundef readnone %pipe, ptr noundef %crtc_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %crtc_state) #7
  tail call void @kfree(ptr noundef %crtc_state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_reset_shadow_plane(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_simple_kms_duplicate_shadow_plane_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_destroy_shadow_plane_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mgag200_handle_damage(ptr nocapture noundef readonly %mdev, ptr noundef %fb, ptr noundef %clip, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vram = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 6
  %0 = ptrtoint ptr %vram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vram, align 8
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %4 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %call = tail call i32 @drm_fb_clip_offset(i32 noundef %5, ptr noundef %7, ptr noundef %clip) #7
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  %8 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitches, align 8
  tail call void @drm_fb_memcpy_toio(ptr noundef %add.ptr, i32 noundef %9, ptr noundef %3, ptr noundef %fb, ptr noundef %clip) #7
  %rmmio.i = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #7, !srcloc !54
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %13, i32 8159
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %15 = and i8 %14, -80
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %17, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.i, i8 12) #7, !srcloc !54
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %19, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 0) #7, !srcloc !54
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 8
  %add.ptr49.i = getelementptr i8, ptr %21, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i, i8 13) #7, !srcloc !54
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 8
  %add.ptr51.i = getelementptr i8, ptr %23, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51.i, i8 0) #7, !srcloc !54
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %25, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56.i, i8 0) #7, !srcloc !54
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 8
  %add.ptr58.i = getelementptr i8, ptr %27, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58.i, i8 %15) #7, !srcloc !54
  %28 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pitches, align 8
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format, align 8
  %32 = getelementptr inbounds %struct.drm_format_info, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 2
  %conv.i.i = zext i8 %34 to i32
  %div.i.i = udiv i32 %29, %conv.i.i
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx1.i.i.i = getelementptr [4 x i8], ptr @mgag200_get_bpp_shift.bpp_shift, i32 0, i32 %sub.i.i.i
  %35 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp.i.i = icmp eq i8 %34, 3
  %mul7.i.i = mul i32 %div.i.i, 3
  %div.sink.i.i = select i1 %cmp.i.i, i32 %mul7.i.i, i32 %div.i.i
  %conv9.i.i = zext i8 %36 to i32
  %sub10.i.i = sub nsw i32 4, %conv9.i.i
  %shr11.i.i = lshr i32 %div.sink.i.i, %sub10.i.i
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %38, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 0) #7, !srcloc !54
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %40, i32 8159
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %conv.i = trunc i32 %shr11.i.i to i8
  %42 = and i8 %41, -49
  %shr.i = lshr i32 %shr11.i.i, 4
  %43 = trunc i32 %shr.i to i8
  %44 = and i8 %43, 48
  %conv9.i = or i8 %42, %44
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %46, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 19) #7, !srcloc !54
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %48, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 %conv.i) #7, !srcloc !54
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %50, i32 8158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 0) #7, !srcloc !54
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %52, i32 8159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 %conv9.i) #7, !srcloc !54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_clip_offset(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1068, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mgag200_modeset_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mgag200_modeset_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1084, i32 3}
!10 = !{ptr @mgag200_modeset_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mgag200_modeset_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1101, i32 3}
!14 = !{ptr @mgag200_modeset_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mgag200_modeset_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mgag200_mode_config_funcs, !17, !"mgag200_mode_config_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1042, i32 43}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 816, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mgag200_vga_connector_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @mgag200_vga_connector_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mga_vga_connector_funcs, !25, !"mga_vga_connector_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 798, i32 41}
!26 = !{ptr @mga_vga_connector_helper_funcs, !27, !"mga_vga_connector_helper_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 793, i32 48}
!28 = !{ptr @mgag200_simple_display_pipe_funcs, !29, !"mgag200_simple_display_pipe_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1015, i32 1}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 517, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mgag200_get_bpp_shift.bpp_shift, !35, !"bpp_shift", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 436, i32 18}
!36 = distinct !{null, !37, !"RESET_FLAG", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 541, i32 18}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 230, i32 2}
!40 = !{ptr @mgag200_simple_display_pipe_formats, !41, !"mgag200_simple_display_pipe_formats", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1027, i32 23}
!42 = !{ptr @mgag200_simple_display_pipe_fmtmods, !43, !"mgag200_simple_display_pipe_fmtmods", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mgag200/mgag200_mode.c", i32 1033, i32 23}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2150552373}
!54 = !{i64 3011028}
!55 = !{i64 3011423}
!56 = !{i64 2150550768}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148009322, i64 2148009602, i64 2148009936, i64 2148010270}
!59 = !{i8 0, i8 2}
!60 = !{i64 3011643}
!61 = !{i64 2150551992}
!62 = !{i64 2150553347}
!63 = !{i64 3011225}
