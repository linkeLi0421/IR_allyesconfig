; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/dc.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.tegra_windowgroup_soc = type { i32, i32, ptr, i32 }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.103, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.103 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_display_hub = type { %struct.drm_private_obj, %struct.host1x_client, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.86, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.86 = type { [4 x i8] }
%struct.tegra_dc_window = type { %struct.anon.100, %struct.anon.101, i32, [2 x i32], [3 x i32], i32, i8, i8, %struct.tegra_bo_tiling, i32, i32 }
%struct.anon.100 = type { i32, i32, i32, i32 }
%struct.anon.101 = type { i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,outputs\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tegra-dc\00", [23 x i8] zeroinitializer }, align 32
@tegra_dc_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_dc_soc_info }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@tegra_dc_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_dc_probe, ptr @tegra_dc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 3144, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_dc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/drm/tegra/dc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry_ptr = internal global ptr @tegra_dc_probe._entry, section ".printk_index", align 4
@tegra_dc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 3167, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry_ptr.12 = internal global ptr @tegra_dc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 3173, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry_ptr.16 = internal global ptr @tegra_dc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 3221, ptr null, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to probe RGB output: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry_ptr.20 = internal global ptr @tegra_dc_probe._entry.18, section ".printk_index", align 4
@dc_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr @tegra_dc_early_init, ptr @tegra_dc_init, ptr @tegra_dc_exit, ptr @tegra_dc_late_exit, ptr @tegra_dc_runtime_suspend, ptr @tegra_dc_runtime_resume }, [40 x i8] zeroinitializer }, align 32
@tegra_dc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_dc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 3235, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_dc_probe._entry_ptr.23 = internal global ptr @tegra_dc_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,head\00", [20 x i8] zeroinitializer }, align 32
@tegra_dc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 3057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"missing \22nvidia,head\22 property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_dc_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@tegra_dc_parse_dt._entry_ptr = internal global ptr @tegra_dc_parse_dt._entry, section ".printk_index", align 4
@tegra_dc_couple.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.7, ptr @.str.29, i8 3, i8 10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_dc_couple\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coupled to %s\0A\00", [17 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 2609, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate syncpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_dc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry_ptr = internal global ptr @tegra_dc_init._entry, section ".printk_index", align 4
@tegra_dc_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.7, i32 2613, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach to domain: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry_ptr.35 = internal global ptr @tegra_dc_init._entry.33, section ".printk_index", align 4
@tegra_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @tegra_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @tegra_crtc_atomic_duplicate_state, ptr @tegra_crtc_atomic_destroy_state, ptr null, ptr null, ptr @tegra_dc_late_register, ptr @tegra_dc_early_unregister, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dc_get_vblank_counter, ptr @tegra_dc_enable_vblank, ptr @tegra_dc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_crtc_atomic_check, ptr @tegra_crtc_atomic_begin, ptr @tegra_crtc_atomic_flush, ptr @tegra_crtc_atomic_enable, ptr @tegra_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.7, i32 2664, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize RGB output: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry_ptr.38 = internal global ptr @tegra_dc_init._entry.36, section ".printk_index", align 4
@tegra_dc_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.31, ptr @.str.7, i32 2672, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dc_init._entry_ptr.41 = internal global ptr @tegra_dc_init._entry.39, section ".printk_index", align 4
@tegra_plane_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@tegra_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_plane_atomic_check, ptr @tegra_plane_atomic_update, ptr @tegra_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_primary_plane_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 845, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create rotation property: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_primary_plane_create\00", [37 x i8] zeroinitializer }, align 32
@tegra_primary_plane_create._entry_ptr = internal global ptr @tegra_primary_plane_create._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hardware doesn't support block linear mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported UV-plane configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@compute_dda_inc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_legacy_cursor_plane_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875708754], [28 x i8] zeroinitializer }, align 32
@tegra_cursor_plane_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713089], [28 x i8] zeroinitializer }, align 32
@linear_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@tegra_cursor_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_cursor_atomic_check, ptr @tegra_cursor_atomic_update, ptr @tegra_cursor_atomic_disable, ptr @tegra_cursor_atomic_async_check, ptr @tegra_cursor_atomic_async_update }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cursor size %ux%u not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dc_overlay_plane_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.48, ptr @.str.7, i32 1282, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_dc_overlay_plane_create\00", [34 x i8] zeroinitializer }, align 32
@tegra_dc_overlay_plane_create._entry_ptr = internal global ptr @tegra_dc_overlay_plane_create._entry, section ".printk_index", align 4
@debugfs_files = internal global { [3 x %struct.drm_info_list], [48 x i8] } { [3 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.49, ptr @tegra_dc_show_regs, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.50, ptr @tegra_dc_show_crc, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.51, ptr @tegra_dc_show_stats, i32 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@tegra_dc_regs = internal constant { [212 x %struct.debugfs_reg32], [416 x i8] } { [212 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.53, i32 0 }, %struct.debugfs_reg32 { ptr @.str.54, i32 1 }, %struct.debugfs_reg32 { ptr @.str.55, i32 2 }, %struct.debugfs_reg32 { ptr @.str.56, i32 8 }, %struct.debugfs_reg32 { ptr @.str.57, i32 9 }, %struct.debugfs_reg32 { ptr @.str.58, i32 10 }, %struct.debugfs_reg32 { ptr @.str.59, i32 16 }, %struct.debugfs_reg32 { ptr @.str.60, i32 17 }, %struct.debugfs_reg32 { ptr @.str.61, i32 18 }, %struct.debugfs_reg32 { ptr @.str.62, i32 24 }, %struct.debugfs_reg32 { ptr @.str.63, i32 25 }, %struct.debugfs_reg32 { ptr @.str.64, i32 26 }, %struct.debugfs_reg32 { ptr @.str.65, i32 40 }, %struct.debugfs_reg32 { ptr @.str.66, i32 49 }, %struct.debugfs_reg32 { ptr @.str.67, i32 50 }, %struct.debugfs_reg32 { ptr @.str.68, i32 51 }, %struct.debugfs_reg32 { ptr @.str.69, i32 54 }, %struct.debugfs_reg32 { ptr @.str.70, i32 55 }, %struct.debugfs_reg32 { ptr @.str.71, i32 56 }, %struct.debugfs_reg32 { ptr @.str.72, i32 57 }, %struct.debugfs_reg32 { ptr @.str.73, i32 58 }, %struct.debugfs_reg32 { ptr @.str.74, i32 59 }, %struct.debugfs_reg32 { ptr @.str.75, i32 60 }, %struct.debugfs_reg32 { ptr @.str.76, i32 61 }, %struct.debugfs_reg32 { ptr @.str.77, i32 62 }, %struct.debugfs_reg32 { ptr @.str.78, i32 64 }, %struct.debugfs_reg32 { ptr @.str.79, i32 65 }, %struct.debugfs_reg32 { ptr @.str.80, i32 66 }, %struct.debugfs_reg32 { ptr @.str.81, i32 67 }, %struct.debugfs_reg32 { ptr @.str.82, i32 768 }, %struct.debugfs_reg32 { ptr @.str.83, i32 769 }, %struct.debugfs_reg32 { ptr @.str.84, i32 770 }, %struct.debugfs_reg32 { ptr @.str.85, i32 771 }, %struct.debugfs_reg32 { ptr @.str.86, i32 772 }, %struct.debugfs_reg32 { ptr @.str.87, i32 773 }, %struct.debugfs_reg32 { ptr @.str.88, i32 774 }, %struct.debugfs_reg32 { ptr @.str.89, i32 775 }, %struct.debugfs_reg32 { ptr @.str.90, i32 776 }, %struct.debugfs_reg32 { ptr @.str.91, i32 777 }, %struct.debugfs_reg32 { ptr @.str.92, i32 778 }, %struct.debugfs_reg32 { ptr @.str.93, i32 779 }, %struct.debugfs_reg32 { ptr @.str.94, i32 780 }, %struct.debugfs_reg32 { ptr @.str.95, i32 781 }, %struct.debugfs_reg32 { ptr @.str.96, i32 782 }, %struct.debugfs_reg32 { ptr @.str.97, i32 783 }, %struct.debugfs_reg32 { ptr @.str.98, i32 784 }, %struct.debugfs_reg32 { ptr @.str.99, i32 785 }, %struct.debugfs_reg32 { ptr @.str.100, i32 786 }, %struct.debugfs_reg32 { ptr @.str.101, i32 787 }, %struct.debugfs_reg32 { ptr @.str.102, i32 788 }, %struct.debugfs_reg32 { ptr @.str.103, i32 789 }, %struct.debugfs_reg32 { ptr @.str.104, i32 790 }, %struct.debugfs_reg32 { ptr @.str.105, i32 791 }, %struct.debugfs_reg32 { ptr @.str.106, i32 792 }, %struct.debugfs_reg32 { ptr @.str.107, i32 793 }, %struct.debugfs_reg32 { ptr @.str.108, i32 794 }, %struct.debugfs_reg32 { ptr @.str.109, i32 795 }, %struct.debugfs_reg32 { ptr @.str.110, i32 796 }, %struct.debugfs_reg32 { ptr @.str.111, i32 797 }, %struct.debugfs_reg32 { ptr @.str.112, i32 798 }, %struct.debugfs_reg32 { ptr @.str.113, i32 799 }, %struct.debugfs_reg32 { ptr @.str.114, i32 800 }, %struct.debugfs_reg32 { ptr @.str.115, i32 801 }, %struct.debugfs_reg32 { ptr @.str.116, i32 802 }, %struct.debugfs_reg32 { ptr @.str.117, i32 803 }, %struct.debugfs_reg32 { ptr @.str.118, i32 804 }, %struct.debugfs_reg32 { ptr @.str.119, i32 805 }, %struct.debugfs_reg32 { ptr @.str.120, i32 806 }, %struct.debugfs_reg32 { ptr @.str.121, i32 807 }, %struct.debugfs_reg32 { ptr @.str.122, i32 808 }, %struct.debugfs_reg32 { ptr @.str.123, i32 809 }, %struct.debugfs_reg32 { ptr @.str.124, i32 1024 }, %struct.debugfs_reg32 { ptr @.str.125, i32 1025 }, %struct.debugfs_reg32 { ptr @.str.126, i32 1026 }, %struct.debugfs_reg32 { ptr @.str.127, i32 1027 }, %struct.debugfs_reg32 { ptr @.str.128, i32 1028 }, %struct.debugfs_reg32 { ptr @.str.129, i32 1029 }, %struct.debugfs_reg32 { ptr @.str.130, i32 1030 }, %struct.debugfs_reg32 { ptr @.str.131, i32 1031 }, %struct.debugfs_reg32 { ptr @.str.132, i32 1032 }, %struct.debugfs_reg32 { ptr @.str.133, i32 1033 }, %struct.debugfs_reg32 { ptr @.str.134, i32 1034 }, %struct.debugfs_reg32 { ptr @.str.135, i32 1035 }, %struct.debugfs_reg32 { ptr @.str.136, i32 1036 }, %struct.debugfs_reg32 { ptr @.str.137, i32 1037 }, %struct.debugfs_reg32 { ptr @.str.138, i32 1038 }, %struct.debugfs_reg32 { ptr @.str.139, i32 1039 }, %struct.debugfs_reg32 { ptr @.str.140, i32 1040 }, %struct.debugfs_reg32 { ptr @.str.141, i32 1041 }, %struct.debugfs_reg32 { ptr @.str.142, i32 1042 }, %struct.debugfs_reg32 { ptr @.str.143, i32 1043 }, %struct.debugfs_reg32 { ptr @.str.144, i32 1044 }, %struct.debugfs_reg32 { ptr @.str.145, i32 1045 }, %struct.debugfs_reg32 { ptr @.str.146, i32 1046 }, %struct.debugfs_reg32 { ptr @.str.147, i32 1047 }, %struct.debugfs_reg32 { ptr @.str.148, i32 1048 }, %struct.debugfs_reg32 { ptr @.str.149, i32 1049 }, %struct.debugfs_reg32 { ptr @.str.150, i32 1050 }, %struct.debugfs_reg32 { ptr @.str.151, i32 1051 }, %struct.debugfs_reg32 { ptr @.str.152, i32 1052 }, %struct.debugfs_reg32 { ptr @.str.153, i32 1053 }, %struct.debugfs_reg32 { ptr @.str.154, i32 1054 }, %struct.debugfs_reg32 { ptr @.str.155, i32 1055 }, %struct.debugfs_reg32 { ptr @.str.156, i32 1056 }, %struct.debugfs_reg32 { ptr @.str.157, i32 1057 }, %struct.debugfs_reg32 { ptr @.str.158, i32 1058 }, %struct.debugfs_reg32 { ptr @.str.159, i32 1059 }, %struct.debugfs_reg32 { ptr @.str.160, i32 1060 }, %struct.debugfs_reg32 { ptr @.str.161, i32 1061 }, %struct.debugfs_reg32 { ptr @.str.162, i32 1062 }, %struct.debugfs_reg32 { ptr @.str.163, i32 1063 }, %struct.debugfs_reg32 { ptr @.str.164, i32 1064 }, %struct.debugfs_reg32 { ptr @.str.165, i32 1065 }, %struct.debugfs_reg32 { ptr @.str.166, i32 1066 }, %struct.debugfs_reg32 { ptr @.str.167, i32 1067 }, %struct.debugfs_reg32 { ptr @.str.168, i32 1068 }, %struct.debugfs_reg32 { ptr @.str.169, i32 1069 }, %struct.debugfs_reg32 { ptr @.str.170, i32 1070 }, %struct.debugfs_reg32 { ptr @.str.171, i32 1071 }, %struct.debugfs_reg32 { ptr @.str.172, i32 1072 }, %struct.debugfs_reg32 { ptr @.str.173, i32 1073 }, %struct.debugfs_reg32 { ptr @.str.174, i32 1074 }, %struct.debugfs_reg32 { ptr @.str.175, i32 1075 }, %struct.debugfs_reg32 { ptr @.str.176, i32 1076 }, %struct.debugfs_reg32 { ptr @.str.177, i32 1077 }, %struct.debugfs_reg32 { ptr @.str.178, i32 1078 }, %struct.debugfs_reg32 { ptr @.str.179, i32 1079 }, %struct.debugfs_reg32 { ptr @.str.180, i32 1080 }, %struct.debugfs_reg32 { ptr @.str.181, i32 1081 }, %struct.debugfs_reg32 { ptr @.str.182, i32 1084 }, %struct.debugfs_reg32 { ptr @.str.183, i32 1085 }, %struct.debugfs_reg32 { ptr @.str.184, i32 1086 }, %struct.debugfs_reg32 { ptr @.str.185, i32 1087 }, %struct.debugfs_reg32 { ptr @.str.186, i32 1088 }, %struct.debugfs_reg32 { ptr @.str.187, i32 1089 }, %struct.debugfs_reg32 { ptr @.str.188, i32 1090 }, %struct.debugfs_reg32 { ptr @.str.189, i32 1091 }, %struct.debugfs_reg32 { ptr @.str.190, i32 1092 }, %struct.debugfs_reg32 { ptr @.str.191, i32 1093 }, %struct.debugfs_reg32 { ptr @.str.192, i32 1094 }, %struct.debugfs_reg32 { ptr @.str.193, i32 1152 }, %struct.debugfs_reg32 { ptr @.str.194, i32 1153 }, %struct.debugfs_reg32 { ptr @.str.195, i32 1154 }, %struct.debugfs_reg32 { ptr @.str.196, i32 1155 }, %struct.debugfs_reg32 { ptr @.str.197, i32 1156 }, %struct.debugfs_reg32 { ptr @.str.198, i32 1216 }, %struct.debugfs_reg32 { ptr @.str.199, i32 1217 }, %struct.debugfs_reg32 { ptr @.str.200, i32 1218 }, %struct.debugfs_reg32 { ptr @.str.201, i32 1219 }, %struct.debugfs_reg32 { ptr @.str.202, i32 1220 }, %struct.debugfs_reg32 { ptr @.str.203, i32 1221 }, %struct.debugfs_reg32 { ptr @.str.204, i32 1222 }, %struct.debugfs_reg32 { ptr @.str.205, i32 1223 }, %struct.debugfs_reg32 { ptr @.str.206, i32 1224 }, %struct.debugfs_reg32 { ptr @.str.207, i32 1225 }, %struct.debugfs_reg32 { ptr @.str.208, i32 1226 }, %struct.debugfs_reg32 { ptr @.str.209, i32 1227 }, %struct.debugfs_reg32 { ptr @.str.210, i32 1228 }, %struct.debugfs_reg32 { ptr @.str.211, i32 1229 }, %struct.debugfs_reg32 { ptr @.str.212, i32 1230 }, %struct.debugfs_reg32 { ptr @.str.213, i32 1231 }, %struct.debugfs_reg32 { ptr @.str.214, i32 1232 }, %struct.debugfs_reg32 { ptr @.str.215, i32 1233 }, %struct.debugfs_reg32 { ptr @.str.216, i32 1234 }, %struct.debugfs_reg32 { ptr @.str.217, i32 1235 }, %struct.debugfs_reg32 { ptr @.str.218, i32 1236 }, %struct.debugfs_reg32 { ptr @.str.219, i32 1237 }, %struct.debugfs_reg32 { ptr @.str.220, i32 1238 }, %struct.debugfs_reg32 { ptr @.str.221, i32 1240 }, %struct.debugfs_reg32 { ptr @.str.222, i32 1241 }, %struct.debugfs_reg32 { ptr @.str.223, i32 1242 }, %struct.debugfs_reg32 { ptr @.str.224, i32 1243 }, %struct.debugfs_reg32 { ptr @.str.225, i32 1244 }, %struct.debugfs_reg32 { ptr @.str.226, i32 1245 }, %struct.debugfs_reg32 { ptr @.str.227, i32 1246 }, %struct.debugfs_reg32 { ptr @.str.228, i32 1260 }, %struct.debugfs_reg32 { ptr @.str.229, i32 1265 }, %struct.debugfs_reg32 { ptr @.str.230, i32 1792 }, %struct.debugfs_reg32 { ptr @.str.231, i32 1793 }, %struct.debugfs_reg32 { ptr @.str.232, i32 1794 }, %struct.debugfs_reg32 { ptr @.str.233, i32 1795 }, %struct.debugfs_reg32 { ptr @.str.234, i32 1796 }, %struct.debugfs_reg32 { ptr @.str.235, i32 1797 }, %struct.debugfs_reg32 { ptr @.str.236, i32 1798 }, %struct.debugfs_reg32 { ptr @.str.237, i32 1799 }, %struct.debugfs_reg32 { ptr @.str.238, i32 1800 }, %struct.debugfs_reg32 { ptr @.str.239, i32 1801 }, %struct.debugfs_reg32 { ptr @.str.240, i32 1802 }, %struct.debugfs_reg32 { ptr @.str.241, i32 1803 }, %struct.debugfs_reg32 { ptr @.str.242, i32 1804 }, %struct.debugfs_reg32 { ptr @.str.243, i32 1805 }, %struct.debugfs_reg32 { ptr @.str.244, i32 1806 }, %struct.debugfs_reg32 { ptr @.str.245, i32 1807 }, %struct.debugfs_reg32 { ptr @.str.246, i32 1808 }, %struct.debugfs_reg32 { ptr @.str.247, i32 1809 }, %struct.debugfs_reg32 { ptr @.str.248, i32 1810 }, %struct.debugfs_reg32 { ptr @.str.249, i32 1811 }, %struct.debugfs_reg32 { ptr @.str.250, i32 1812 }, %struct.debugfs_reg32 { ptr @.str.251, i32 2048 }, %struct.debugfs_reg32 { ptr @.str.252, i32 2049 }, %struct.debugfs_reg32 { ptr @.str.253, i32 2050 }, %struct.debugfs_reg32 { ptr @.str.254, i32 2051 }, %struct.debugfs_reg32 { ptr @.str.255, i32 2052 }, %struct.debugfs_reg32 { ptr @.str.256, i32 2053 }, %struct.debugfs_reg32 { ptr @.str.257, i32 2054 }, %struct.debugfs_reg32 { ptr @.str.258, i32 2055 }, %struct.debugfs_reg32 { ptr @.str.259, i32 2056 }, %struct.debugfs_reg32 { ptr @.str.260, i32 2057 }, %struct.debugfs_reg32 { ptr @.str.261, i32 2058 }, %struct.debugfs_reg32 { ptr @.str.262, i32 3018 }, %struct.debugfs_reg32 { ptr @.str.263, i32 3530 }, %struct.debugfs_reg32 { ptr @.str.264, i32 4042 }], [416 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-40s %#05x %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT_CNTRL\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT_ERROR\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT_CNTRL\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT_ERROR\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT_CNTRL\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT_ERROR\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT_CNTRL\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT_ERROR\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_CMD_CONT_SYNCPT_VSYNC\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_CMD_DISPLAY_COMMAND_OPTION0\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_CMD_DISPLAY_COMMAND\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_CMD_SIGNAL_RAISE\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_CMD_DISPLAY_POWER_CONTROL\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_CMD_INT_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DC_CMD_INT_MASK\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_CMD_INT_ENABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DC_CMD_INT_TYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_CMD_INT_POLARITY\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_CMD_SIGNAL_RAISE1\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_CMD_SIGNAL_RAISE2\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_CMD_SIGNAL_RAISE3\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_CMD_STATE_ACCESS\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_CMD_STATE_CONTROL\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_CMD_DISPLAY_WINDOW_HEADER\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_CMD_REG_ACT_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_COM_CRC_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_COM_CRC_CHECKSUM\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(0)\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(1)\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(2)\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(3)\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(0)\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(1)\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(2)\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(3)\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(0)\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(0)\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(1)\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(2)\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(3)\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_COM_PIN_INPUT_DATA(0)\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_COM_PIN_INPUT_DATA(1)\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(0)\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(1)\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(2)\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(3)\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(4)\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(5)\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(6)\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_COM_PIN_MISC_CONTROL\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_COM_PIN_PM0_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_PM0_DUTY_CYCLE\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_COM_PIN_PM1_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_PIN_PM1_DUTY_CYCLE\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_COM_SPI_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DC_COM_SPI_START_BYTE\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_HSPI_WRITE_DATA_AB\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_HSPI_WRITE_DATA_CD\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_COM_HSPI_CS_DC\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_SCRATCH_REGISTER_A\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_COM_SCRATCH_REGISTER_B\00", [38 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DC_COM_GPIO_CTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_COM_GPIO_DEBOUNCE_COUNTER\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_COM_CRC_CHECKSUM_LATCHED\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_DISP_SIGNAL_OPTIONS0\00", [35 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_DISP_SIGNAL_OPTIONS1\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_DISP_WIN_OPTIONS\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_DISP_DISP_MEM_HIGH_PRIORITY\00", [33 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC_DISP_DISP_MEM_HIGH_PRIORITY_TIMER\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_DISP_TIMING_OPTIONS\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_REF_TO_SYNC\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_SYNC_WIDTH\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_BACK_PORCH\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DC_DISP_ACTIVE\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_FRONT_PORCH\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_H_PULSE0_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE0_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE0_POSITION_B\00", [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE0_POSITION_C\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE0_POSITION_D\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_H_PULSE1_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE1_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE1_POSITION_B\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE1_POSITION_C\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE1_POSITION_D\00", [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_H_PULSE2_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE2_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE2_POSITION_B\00", [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE2_POSITION_C\00", [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_H_PULSE2_POSITION_D\00", [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_V_PULSE0_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE0_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE0_POSITION_B\00", [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE0_POSITION_C\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_V_PULSE1_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE1_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE1_POSITION_B\00", [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE1_POSITION_C\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_V_PULSE2_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE2_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_V_PULSE3_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_V_PULSE3_POSITION_A\00", [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_M0_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_M1_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_DI_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_PP_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_PP_SELECT_A\00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_PP_SELECT_B\00", [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_PP_SELECT_C\00", [44 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_PP_SELECT_D\00", [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_DISP_DISP_CLOCK_CONTROL\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC_DISP_DISP_INTERFACE_CONTROL\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_DISP_DISP_COLOR_CONTROL\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_SHIFT_CLOCK_OPTIONS\00", [36 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_DATA_ENABLE_OPTIONS\00", [36 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC_DISP_SERIAL_INTERFACE_OPTIONS\00", [63 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_LCD_SPI_OPTIONS\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_DISP_BORDER_COLOR\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_COLOR_KEY0_LOWER\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_COLOR_KEY0_UPPER\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_COLOR_KEY1_LOWER\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_COLOR_KEY1_UPPER\00", [39 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_DISP_CURSOR_FOREGROUND\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_DISP_CURSOR_BACKGROUND\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_DISP_CURSOR_START_ADDR\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_CURSOR_START_ADDR_NS\00", [35 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_CURSOR_POSITION\00", [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_DISP_CURSOR_POSITION_NS\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DC_DISP_INIT_SEQ_CONTROL\00", [39 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_A\00", [36 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_B\00", [36 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_C\00", [36 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_D\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_DISP_DC_MCCIF_FIFOCTRL\00", [38 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_MCCIF_DISPLAY0A_HYST\00", [35 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_MCCIF_DISPLAY0B_HYST\00", [35 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_MCCIF_DISPLAY1A_HYST\00", [35 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_MCCIF_DISPLAY1B_HYST\00", [35 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_DISP_DAC_CRT_CTRL\00", [43 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_DISP_DISP_MISC_CONTROL\00", [38 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_DISP_SD_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_DISP_SD_CSC_COEFF\00", [43 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(0)\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(1)\00", [46 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(2)\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(3)\00", [46 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(4)\00", [46 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(5)\00", [46 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(6)\00", [46 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(7)\00", [46 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_DISP_SD_LUT(8)\00", [46 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_DISP_SD_FLICKER_CONTROL\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_DISP_DC_PIXEL_COUNT\00", [41 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(0)\00", [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(1)\00", [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(2)\00", [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(3)\00", [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(4)\00", [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(5)\00", [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(6)\00", [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_HISTOGRAM(7)\00", [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_SD_BL_TF(0)\00", [44 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_SD_BL_TF(1)\00", [44 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_SD_BL_TF(2)\00", [44 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_DISP_SD_BL_TF(3)\00", [44 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DC_DISP_SD_BL_CONTROL\00", [42 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_DISP_SD_HW_K_VALUES\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_DISP_SD_MAN_K_VALUES\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_CURSOR_START_ADDR_HI\00", [35 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DC_DISP_BLEND_CURSOR_CONTROL\00", [35 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_WIN_WIN_OPTIONS\00", [45 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DC_WIN_BYTE_SWAP\00", [47 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DC_WIN_BUFFER_CONTROL\00", [42 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_WIN_COLOR_DEPTH\00", [45 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DC_WIN_POSITION\00", [16 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DC_WIN_SIZE\00", [20 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DC_WIN_PRESCALED_SIZE\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_WIN_H_INITIAL_DDA\00", [43 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_WIN_V_INITIAL_DDA\00", [43 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DC_WIN_DDA_INC\00", [17 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_WIN_LINE_STRIDE\00", [45 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_WIN_BUF_STRIDE\00", [46 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_WIN_UV_BUF_STRIDE\00", [43 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_WIN_BUFFER_ADDR_MODE\00", [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_WIN_DV_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DC_WIN_BLEND_NOKEY\00", [45 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC_WIN_BLEND_1WIN\00", [46 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_WIN_BLEND_2WIN_X\00", [44 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC_WIN_BLEND_2WIN_Y\00", [44 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_WIN_BLEND_3WIN_XY\00", [43 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_WIN_HP_FETCH_CONTROL\00", [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DC_WINBUF_START_ADDR\00", [43 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_WINBUF_START_ADDR_NS\00", [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_WINBUF_START_ADDR_U\00", [41 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_WINBUF_START_ADDR_U_NS\00", [38 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_WINBUF_START_ADDR_V\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_WINBUF_START_ADDR_V_NS\00", [38 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_WINBUF_ADDR_H_OFFSET\00", [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_WINBUF_ADDR_H_OFFSET_NS\00", [37 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC_WINBUF_ADDR_V_OFFSET\00", [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC_WINBUF_ADDR_V_OFFSET_NS\00", [37 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC_WINBUF_UFLOW_STATUS\00", [41 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_WINBUF_AD_UFLOW_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_WINBUF_BD_UFLOW_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC_WINBUF_CD_UFLOW_STATUS\00", [38 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"frames: %lu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vblank: %lu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"underflow: %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"overflow: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"frames total: %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vblank total: %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"underflow total: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"overflow total: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_crtc_calculate_memory_bandwidth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_crtc_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.275, ptr @.str.7, i32 2134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_crtc_atomic_enable\00", [39 x i8] zeroinitializer }, align 32
@tegra_crtc_atomic_enable._entry_ptr = internal global ptr @tegra_crtc_atomic_enable._entry, section ".printk_index", align 4
@tegra_dc_set_clock_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.7, i32 1893, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set parent clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dc_set_clock_rate\00", [40 x i8] zeroinitializer }, align 32
@tegra_dc_set_clock_rate._entry_ptr = internal global ptr @tegra_dc_set_clock_rate._entry, section ".printk_index", align 4
@tegra_dc_set_clock_rate._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.277, ptr @.str.7, i32 1908, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set clock rate to %lu Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dc_set_clock_rate._entry_ptr.280 = internal global ptr @tegra_dc_set_clock_rate._entry.278, section ".printk_index", align 4
@tegra_dc_set_clock_rate._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.277, ptr @.str.7, i32 1913, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set clock %pC to %lu Hz: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_dc_set_clock_rate._entry_ptr.283 = internal global ptr @tegra_dc_set_clock_rate._entry.281, section ".printk_index", align 4
@.str.284 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rate: %lu, div: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk: %lu\0A\00", [21 x i8] zeroinitializer }, align 32
@tegra_dc_update_voltage_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.7, i32 1866, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to find OPP for %luHz: %pe\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_dc_update_voltage_state\00", [34 x i8] zeroinitializer }, align 32
@tegra_dc_update_voltage_state._entry_ptr = internal global ptr @tegra_dc_update_voltage_state._entry, section ".printk_index", align 4
@tegra_dc_update_voltage_state._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.7, i32 1883, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set power domain state to %lu: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@tegra_dc_update_voltage_state._entry_ptr.290 = internal global ptr @tegra_dc_update_voltage_state._entry.288, section ".printk_index", align 4
@tegra_crtc_atomic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.292, ptr @.str.7, i32 2110, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to suspend: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_crtc_atomic_disable\00", [38 x i8] zeroinitializer }, align 32
@tegra_crtc_atomic_disable._entry_ptr = internal global ptr @tegra_crtc_atomic_disable._entry, section ".printk_index", align 4
@tegra_crtc_atomic_disable._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.292, ptr @.str.7, i32 2116, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to clear power domain state: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_crtc_atomic_disable._entry_ptr.295 = internal global ptr @tegra_crtc_atomic_disable._entry.293, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_dc_wait_idle.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.296, ptr @.str.7, ptr @.str.297, i8 1, i8 -24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.296 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dc_wait_idle\00", [45 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout waiting for DC to become idle\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_dc_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.298, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@tegra_dc_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.299, ptr @.str.7, ptr @.str.300, i8 2, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.299 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_dc_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): head underflow\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_dc_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.302, ptr @.str.7, i32 2712, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to shutdown RGB output: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_dc_exit\00", [18 x i8] zeroinitializer }, align 32
@tegra_dc_exit._entry_ptr = internal global ptr @tegra_dc_exit._entry, section ".printk_index", align 4
@tegra_dc_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str.7, i32 2740, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_dc_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@tegra_dc_runtime_suspend._entry_ptr = internal global ptr @tegra_dc_runtime_suspend._entry, section ".printk_index", align 4
@tegra_dc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.306, ptr @.str.7, i32 2761, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dc_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@tegra_dc_runtime_resume._entry_ptr = internal global ptr @tegra_dc_runtime_resume._entry, section ".printk_index", align 4
@tegra_dc_runtime_resume._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.306, ptr @.str.7, i32 2769, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power partition: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dc_runtime_resume._entry_ptr.309 = internal global ptr @tegra_dc_runtime_resume._entry.307, section ".printk_index", align 4
@tegra_dc_runtime_resume._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.306, ptr @.str.7, i32 2775, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_dc_runtime_resume._entry_ptr.312 = internal global ptr @tegra_dc_runtime_resume._entry.310, section ".printk_index", align 4
@tegra_dc_runtime_resume._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.306, ptr @.str.7, i32 2781, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dc_runtime_resume._entry_ptr.315 = internal global ptr @tegra_dc_runtime_resume._entry.313, section ".printk_index", align 4
@tegra_dc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.317, ptr @.str.7, i32 3256, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_dc_remove\00", [16 x i8] zeroinitializer }, align 32
@tegra_dc_remove._entry_ptr = internal global ptr @tegra_dc_remove._entry, section ".printk_index", align 4
@tegra_dc_remove._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.317, ptr @.str.7, i32 3262, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to remove RGB output: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dc_remove._entry_ptr.320 = internal global ptr @tegra_dc_remove._entry.318, section ".printk_index", align 4
@tegra194_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i32 64, i8 0, i8 0, i8 1, ptr @tegra194_dc_wgrps, i32 6, ptr null, i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@tegra186_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 0, i8 0, i8 1, ptr @tegra186_dc_wgrps, i32 6, ptr null, i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@tegra210_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra114_primary_formats, i32 18, ptr @tegra114_overlay_formats, i32 22, ptr @tegra124_modifiers, i8 0, i8 0, i8 0, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra124_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra124_primary_formats, i32 20, ptr @tegra124_overlay_formats, i32 24, ptr @tegra124_modifiers, i8 0, i8 0, i8 0, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra114_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra114_primary_formats, i32 18, ptr @tegra114_overlay_formats, i32 22, ptr @tegra20_modifiers, i8 0, i8 0, i8 0, i8 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra30_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 8, i8 0, i8 0, i8 0, ptr null, i32 0, ptr @tegra20_primary_formats, i32 10, ptr @tegra20_overlay_formats, i32 14, ptr @tegra20_modifiers, i8 0, i8 1, i8 0, i8 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra20_dc_soc_info = internal constant { %struct.tegra_dc_soc_info, [44 x i8] } { %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 8, i8 0, i8 1, i8 0, ptr null, i32 0, ptr @tegra20_primary_formats, i32 10, ptr @tegra20_overlay_formats, i32 14, ptr @tegra20_modifiers, i8 1, i8 1, i8 1, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@tegra194_dc_wgrps = internal constant { [6 x %struct.tegra_windowgroup_soc], [32 x i8] } { [6 x %struct.tegra_windowgroup_soc] [%struct.tegra_windowgroup_soc { i32 0, i32 0, ptr @.compoundliteral, i32 1 }, %struct.tegra_windowgroup_soc { i32 1, i32 1, ptr @.compoundliteral.321, i32 1 }, %struct.tegra_windowgroup_soc { i32 2, i32 1, ptr @.compoundliteral.322, i32 1 }, %struct.tegra_windowgroup_soc { i32 3, i32 2, ptr @.compoundliteral.323, i32 1 }, %struct.tegra_windowgroup_soc { i32 4, i32 2, ptr @.compoundliteral.324, i32 1 }, %struct.tegra_windowgroup_soc { i32 5, i32 2, ptr @.compoundliteral.325, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.compoundliteral.321 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@tegra186_dc_wgrps = internal constant { [6 x %struct.tegra_windowgroup_soc], [32 x i8] } { [6 x %struct.tegra_windowgroup_soc] [%struct.tegra_windowgroup_soc { i32 0, i32 0, ptr @.compoundliteral.326, i32 1 }, %struct.tegra_windowgroup_soc { i32 1, i32 1, ptr @.compoundliteral.327, i32 1 }, %struct.tegra_windowgroup_soc { i32 2, i32 1, ptr @.compoundliteral.328, i32 1 }, %struct.tegra_windowgroup_soc { i32 3, i32 2, ptr @.compoundliteral.329, i32 1 }, %struct.tegra_windowgroup_soc { i32 4, i32 2, ptr @.compoundliteral.330, i32 1 }, %struct.tegra_windowgroup_soc { i32 5, i32 2, ptr @.compoundliteral.331, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.compoundliteral.327 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@tegra114_primary_formats = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016], [56 x i8] zeroinitializer }, align 32
@tegra114_overlay_formats = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], [40 x i8] zeroinitializer }, align 32
@tegra124_modifiers = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 0, i64 216172782113783824, i64 216172782113783825, i64 216172782113783826, i64 216172782113783827, i64 216172782113783828, i64 216172782113783829, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@tegra124_primary_formats = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 875714642, i32 875714626], [48 x i8] zeroinitializer }, align 32
@tegra124_overlay_formats = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 875714642, i32 875714626, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], [32 x i8] zeroinitializer }, align 32
@tegra20_modifiers = internal constant { [3 x i64], [40 x i8] } { [3 x i64] [i64 0, i64 216172782113783809, i64 72057594037927935], [40 x i8] zeroinitializer }, align 32
@tegra20_primary_formats = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 892424792, i32 892426322, i32 875709016, i32 875713112], [56 x i8] zeroinitializer }, align 32
@tegra20_overlay_formats = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 892424792, i32 892426322, i32 875709016, i32 875713112, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], [40 x i8] zeroinitializer }, align 32
@switch.table.__tegra_cursor_atomic_update = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 16777216, i32 0, i32 33554432, i32 0, i32 0, i32 0, i32 50331648], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.332 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.335 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.339 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.340 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.341 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 99, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3273, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant [18 x i8] c"tegra_dc_of_match\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3021, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"tegra_dc_driver\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3271, i32 24 }
@___asan_gen_.358 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 27, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 108, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3144, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3167, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3171, i32 47 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3173, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3218, i32 12 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3220, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [14 x i8] c"dc_client_ops\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2795, i32 39 }
@___asan_gen_.408 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3232, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3234, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3055, i32 47 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3057, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3113, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2609, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2613, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"tegra_crtc_funcs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1765, i32 36 }
@___asan_gen_.459 = private unnamed_addr constant [24 x i8] c"tegra_crtc_helper_funcs\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2489, i32 43 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2664, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2671, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [25 x i8] c"tegra_plane_helper_funcs\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 771, i32 44 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 844, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 658, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 690, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant [34 x i8] c"tegra_legacy_cursor_plane_formats\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 850, i32 18 }
@___asan_gen_.495 = private unnamed_addr constant [27 x i8] c"tegra_cursor_plane_formats\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 854, i32 18 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"linear_modifiers\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1095, i32 23 }
@___asan_gen_.501 = private unnamed_addr constant [32 x i8] c"tegra_cursor_plane_helper_funcs\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1085, i32 44 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 937, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1281, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant [14 x i8] c"debugfs_files\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1688, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1689, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1690, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1691, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant [14 x i8] c"tegra_dc_regs\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1398, i32 35 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1630, i32 17 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1399, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1400, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1401, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1402, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1403, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1404, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1405, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1406, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1407, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1408, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1409, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1410, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1411, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1412, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1413, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1414, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1415, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1416, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1417, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1418, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1419, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1420, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1421, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1422, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1423, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1424, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1425, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1426, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1427, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1428, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1429, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1430, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1431, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1432, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1433, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1434, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1435, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1436, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1437, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1438, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1439, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1440, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1441, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1442, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1443, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1444, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1445, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1446, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1447, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1448, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1449, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1450, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1451, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1452, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1453, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1454, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1455, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1456, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1457, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1458, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1459, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1460, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1461, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1462, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1463, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1464, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1465, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1466, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1467, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1468, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1469, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1470, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1471, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1472, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1473, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1474, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1475, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1476, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1477, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1478, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1479, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1480, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1481, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1482, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1483, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1484, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1485, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1486, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1487, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1488, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1489, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1490, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1491, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1492, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1493, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1494, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1495, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1496, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1497, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1498, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1499, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1500, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1501, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1502, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1503, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1504, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1505, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1506, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1507, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1508, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1509, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1510, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1511, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1512, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1513, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1514, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1515, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1516, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1517, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1518, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1519, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1520, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1521, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1522, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1523, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1524, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1525, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1526, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1527, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1528, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1529, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1530, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1531, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1532, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1533, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1534, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1535, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1536, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1537, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1538, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1539, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1540, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1541, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1542, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1543, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1544, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1545, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1546, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1547, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1548, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1549, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1550, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1551, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1552, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1553, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1554, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1555, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1556, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1557, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1558, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1559, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1560, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1561, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1562, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1563, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1564, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1565, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1566, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1567, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1568, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1569, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1570, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1571, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1572, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1573, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1574, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1575, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1576, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1577, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1578, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1579, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1580, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1581, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1582, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1583, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1584, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1585, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1586, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1587, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1588, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1589, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1590, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1591, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1592, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1593, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1594, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1595, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1596, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1597, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1598, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1599, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1600, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1601, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1602, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1603, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1604, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1605, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1606, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1607, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1608, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1609, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1610, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1661, i32 16 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1675, i32 16 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1676, i32 16 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1677, i32 16 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1678, i32 16 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1680, i32 16 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1681, i32 16 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1682, i32 16 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1683, i32 16 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2134, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1893, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1906, i32 4 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1912, i32 4 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1916, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1918, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1865, i32 3 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1882, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2110, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2115, i32 4 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1955, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2539, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2712, i32 3 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2740, i32 3 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2761, i32 3 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2769, i32 4 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2775, i32 4 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2781, i32 4 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3255, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3262, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant [21 x i8] c"tegra194_dc_soc_info\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 3004, i32 39 }
@___asan_gen_.1341 = private unnamed_addr constant [21 x i8] c"tegra186_dc_soc_info\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2953, i32 39 }
@___asan_gen_.1344 = private unnamed_addr constant [21 x i8] c"tegra210_dc_soc_info\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2896, i32 39 }
@___asan_gen_.1347 = private unnamed_addr constant [21 x i8] c"tegra124_dc_soc_info\00", align 1
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2873, i32 39 }
@___asan_gen_.1350 = private unnamed_addr constant [21 x i8] c"tegra114_dc_soc_info\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2850, i32 39 }
@___asan_gen_.1353 = private unnamed_addr constant [20 x i8] c"tegra30_dc_soc_info\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2827, i32 39 }
@___asan_gen_.1356 = private unnamed_addr constant [20 x i8] c"tegra20_dc_soc_info\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2804, i32 39 }
@___asan_gen_.1359 = private unnamed_addr constant [18 x i8] c"tegra194_dc_wgrps\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2970, i32 43 }
@___asan_gen_.1362 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1368 = private unnamed_addr constant [18 x i8] c"tegra186_dc_wgrps\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 2919, i32 43 }
@___asan_gen_.1371 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1377 = private unnamed_addr constant [25 x i8] c"tegra114_primary_formats\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 552, i32 18 }
@___asan_gen_.1380 = private unnamed_addr constant [25 x i8] c"tegra114_overlay_formats\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1171, i32 18 }
@___asan_gen_.1383 = private unnamed_addr constant [19 x i8] c"tegra124_modifiers\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 599, i32 18 }
@___asan_gen_.1386 = private unnamed_addr constant [25 x i8] c"tegra124_primary_formats\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 574, i32 18 }
@___asan_gen_.1389 = private unnamed_addr constant [25 x i8] c"tegra124_overlay_formats\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1198, i32 18 }
@___asan_gen_.1392 = private unnamed_addr constant [18 x i8] c"tegra20_modifiers\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 546, i32 18 }
@___asan_gen_.1395 = private unnamed_addr constant [24 x i8] c"tegra20_primary_formats\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 532, i32 18 }
@___asan_gen_.1398 = private unnamed_addr constant [24 x i8] c"tegra20_overlay_formats\00", align 1
@___asan_gen_.1399 = private constant [30 x i8] c"../drivers/gpu/drm/tegra/dc.c\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1399, i32 1152, i32 18 }
@___asan_gen_.1401 = private unnamed_addr constant [42 x i8] c"switch.table.__tegra_cursor_atomic_update\00", align 1
@llvm.compiler.used = appending global [390 x ptr] [ptr @tegra_crtc_atomic_disable._entry, ptr @tegra_crtc_atomic_disable._entry.293, ptr @tegra_crtc_atomic_disable._entry_ptr, ptr @tegra_crtc_atomic_disable._entry_ptr.295, ptr @tegra_crtc_atomic_enable._entry, ptr @tegra_crtc_atomic_enable._entry_ptr, ptr @tegra_dc_exit._entry, ptr @tegra_dc_exit._entry_ptr, ptr @tegra_dc_init._entry, ptr @tegra_dc_init._entry.33, ptr @tegra_dc_init._entry.36, ptr @tegra_dc_init._entry.39, ptr @tegra_dc_init._entry_ptr, ptr @tegra_dc_init._entry_ptr.35, ptr @tegra_dc_init._entry_ptr.38, ptr @tegra_dc_init._entry_ptr.41, ptr @tegra_dc_overlay_plane_create._entry, ptr @tegra_dc_overlay_plane_create._entry_ptr, ptr @tegra_dc_parse_dt._entry, ptr @tegra_dc_parse_dt._entry_ptr, ptr @tegra_dc_probe._entry, ptr @tegra_dc_probe._entry.10, ptr @tegra_dc_probe._entry.14, ptr @tegra_dc_probe._entry.18, ptr @tegra_dc_probe._entry.21, ptr @tegra_dc_probe._entry_ptr, ptr @tegra_dc_probe._entry_ptr.12, ptr @tegra_dc_probe._entry_ptr.16, ptr @tegra_dc_probe._entry_ptr.20, ptr @tegra_dc_probe._entry_ptr.23, ptr @tegra_dc_remove._entry, ptr @tegra_dc_remove._entry.318, ptr @tegra_dc_remove._entry_ptr, ptr @tegra_dc_remove._entry_ptr.320, ptr @tegra_dc_runtime_resume._entry, ptr @tegra_dc_runtime_resume._entry.307, ptr @tegra_dc_runtime_resume._entry.310, ptr @tegra_dc_runtime_resume._entry.313, ptr @tegra_dc_runtime_resume._entry_ptr, ptr @tegra_dc_runtime_resume._entry_ptr.309, ptr @tegra_dc_runtime_resume._entry_ptr.312, ptr @tegra_dc_runtime_resume._entry_ptr.315, ptr @tegra_dc_runtime_suspend._entry, ptr @tegra_dc_runtime_suspend._entry_ptr, ptr @tegra_dc_set_clock_rate._entry, ptr @tegra_dc_set_clock_rate._entry.278, ptr @tegra_dc_set_clock_rate._entry.281, ptr @tegra_dc_set_clock_rate._entry_ptr, ptr @tegra_dc_set_clock_rate._entry_ptr.280, ptr @tegra_dc_set_clock_rate._entry_ptr.283, ptr @tegra_dc_update_voltage_state._entry, ptr @tegra_dc_update_voltage_state._entry.288, ptr @tegra_dc_update_voltage_state._entry_ptr, ptr @tegra_dc_update_voltage_state._entry_ptr.290, ptr @tegra_primary_plane_create._entry, ptr @tegra_primary_plane_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @tegra_dc_of_match, ptr @tegra_dc_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @dc_client_ops, ptr @tegra_dc_probe.__key, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @tegra_crtc_funcs, ptr @tegra_crtc_helper_funcs, ptr @.str.37, ptr @.str.40, ptr @tegra_plane_helper_funcs, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @tegra_legacy_cursor_plane_formats, ptr @tegra_cursor_plane_formats, ptr @linear_modifiers, ptr @tegra_cursor_plane_helper_funcs, ptr @.str.47, ptr @.str.48, ptr @debugfs_files, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @tegra_dc_regs, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.279, ptr @.str.282, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.289, ptr @.str.291, ptr @.str.292, ptr @.str.294, ptr @.str.296, ptr @.str.297, ptr @tegra_dc_irq._rs, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.308, ptr @.str.311, ptr @.str.314, ptr @.str.316, ptr @.str.317, ptr @.str.319, ptr @tegra194_dc_soc_info, ptr @tegra186_dc_soc_info, ptr @tegra210_dc_soc_info, ptr @tegra124_dc_soc_info, ptr @tegra114_dc_soc_info, ptr @tegra30_dc_soc_info, ptr @tegra20_dc_soc_info, ptr @tegra194_dc_wgrps, ptr @.compoundliteral, ptr @.compoundliteral.321, ptr @.compoundliteral.322, ptr @.compoundliteral.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @tegra186_dc_wgrps, ptr @.compoundliteral.326, ptr @.compoundliteral.327, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @tegra114_primary_formats, ptr @tegra114_overlay_formats, ptr @tegra124_modifiers, ptr @tegra124_primary_formats, ptr @tegra124_overlay_formats, ptr @tegra20_modifiers, ptr @tegra20_primary_formats, ptr @tegra20_overlay_formats, ptr @switch.table.__tegra_cursor_atomic_update], section "llvm.metadata"
@0 = internal global [362 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_primary_plane_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_legacy_cursor_plane_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cursor_plane_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cursor_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_overlay_plane_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_files to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_regs to i32), i32 1696, i32 2112, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_crtc_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_set_clock_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_set_clock_rate._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_set_clock_rate._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_update_voltage_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_update_voltage_state._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_crtc_atomic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_crtc_atomic_disable._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_runtime_resume._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_runtime_resume._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_runtime_resume._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_remove._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_dc_soc_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_dc_wgrps to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_dc_wgrps to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_primary_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_overlay_formats to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_modifiers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_primary_formats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_overlay_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_modifiers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_primary_formats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_overlay_formats to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__tegra_cursor_atomic_update to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_dc_has_output(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it) #11
  %4 = call ptr @memset(ptr %it, i32 255, i32 36)
  %call = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it, ptr noundef %3, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0) #11
  %call2 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #11
  %node = getelementptr inbounds %struct.of_phandle_iterator, ptr %it, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp8 = icmp eq i32 %call2, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %of_node3 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %7 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node3, align 8
  %cmp4 = icmp eq ptr %6, %8
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call5 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #11
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp4, %for.inc.cleanup_crit_edge ], [ %cmp4, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it) #11
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_dc_commit(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %1, i32 noundef 65, i32 noundef 256) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 8
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #11, !srcloc !701
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %5, i32 noundef 65, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #11, !srcloc !701
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_state_setup_clock(ptr nocapture noundef readonly %dc, ptr nocapture noundef writeonly %crtc_state, ptr noundef %clk, i32 noundef %pclk, i32 noundef %div) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk1 = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 6
  %0 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk1, align 8
  %call2 = tail call zeroext i1 @clk_has_parent(ptr noundef %1, ptr noundef %clk) #11
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clk3 = getelementptr inbounds %struct.tegra_dc_state, ptr %crtc_state, i32 0, i32 1
  %2 = ptrtoint ptr %clk3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %clk, ptr %clk3, align 4
  %pclk4 = getelementptr inbounds %struct.tegra_dc_state, ptr %crtc_state, i32 0, i32 2
  %3 = ptrtoint ptr %pclk4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pclk, ptr %pclk4, align 4
  %div5 = getelementptr inbounds %struct.tegra_dc_state, ptr %crtc_state, i32 0, i32 3
  %4 = ptrtoint ptr %div5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %div5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_has_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_crtc_atomic_post_commit(ptr noundef %crtc, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef %crtc, ptr noundef %state, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef readonly %crtc, ptr nocapture noundef readonly %state, i1 noundef zeroext %prepare_bandwidth_transition) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 8
  %has_nvdisplay = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_nvdisplay, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %4 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.then4, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.end
  %state27 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 20
  %14 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state27, align 4
  %dev28200 = getelementptr inbounds %struct.drm_atomic_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev28200 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28200, align 4
  %num_total_plane201 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 17
  %18 = ptrtoint ptr %num_total_plane201 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_total_plane201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp30202.not = icmp eq i32 %19, 0
  br i1 %cmp30202.not, label %for.cond26.preheader.cleanup_crit_edge, label %for.body31.lr.ph

for.cond26.preheader.cleanup_crit_edge:           ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body31.lr.ph:                                 ; preds = %for.cond26.preheader
  %active57 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 2
  br label %for.body31

if.then4:                                         ; preds = %if.end
  %active5 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %active5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active5, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 18
  %24 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn205 = load ptr, ptr %plane_list, align 4
  %cmp.not207 = icmp eq ptr %.pn205, %plane_list
  br i1 %cmp.not207, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn208 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn205, %if.end8.for.body_crit_edge ]
  %25 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state2, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plane_mask, align 4
  %index.i.i166 = getelementptr i8, ptr %.pn208, i32 480
  %29 = ptrtoint ptr %index.i.i166 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i166, align 4
  %shl.i = shl nuw i32 1, %30
  %and = and i32 %shl.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %icc_mem = getelementptr i8, ptr %.pn208, i32 536
  %31 = ptrtoint ptr %icc_mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %icc_mem, align 4
  %call17 = tail call i32 @icc_set_bw(ptr noundef %32, i32 noundef 0, i32 noundef 0) #11
  %icc_mem_vfilter = getelementptr i8, ptr %.pn208, i32 540
  %33 = ptrtoint ptr %icc_mem_vfilter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %icc_mem_vfilter, align 8
  %call18 = tail call i32 @icc_set_bw(ptr noundef %34, i32 noundef 0, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %.pn208 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn208, align 4
  %36 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crtc, align 8
  %plane_list11 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list11
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body31:                                       ; preds = %for.inc102.for.body31_crit_edge, %for.body31.lr.ph
  %38 = phi ptr [ %15, %for.body31.lr.ph ], [ %108, %for.inc102.for.body31_crit_edge ]
  %i.0203 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.inc102.for.body31_crit_edge ]
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %40, i32 %i.0203
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool33.not = icmp eq ptr %42, null
  br i1 %tobool33.not, label %for.body31.for.inc102_crit_edge, label %land.lhs.true

for.body31.for.inc102_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102

land.lhs.true:                                    ; preds = %for.body31
  %old_state = getelementptr %struct.__drm_planes_state, ptr %40, i32 %i.0203, i32 2
  %43 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %old_state, align 4
  %state44 = getelementptr inbounds %struct.drm_plane, ptr %42, i32 0, i32 19
  %45 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state44, align 4
  %dc47 = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %dc47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dc47, align 8
  %cmp48.not = icmp eq ptr %48, %spec.select.i
  br i1 %cmp48.not, label %if.end50, label %land.lhs.true.for.inc102_crit_edge

land.lhs.true.for.inc102_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102

if.end50:                                         ; preds = %land.lhs.true
  %avg_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %46, i32 0, i32 12
  %49 = ptrtoint ptr %avg_memory_bandwidth to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %avg_memory_bandwidth, align 4
  %avg_memory_bandwidth51 = getelementptr inbounds %struct.tegra_plane_state, ptr %44, i32 0, i32 12
  %51 = ptrtoint ptr %avg_memory_bandwidth51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avg_memory_bandwidth51, align 4
  %total_peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %46, i32 0, i32 10
  %53 = ptrtoint ptr %total_peak_memory_bandwidth to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_peak_memory_bandwidth, align 4
  %total_peak_memory_bandwidth52 = getelementptr inbounds %struct.tegra_plane_state, ptr %44, i32 0, i32 10
  %55 = ptrtoint ptr %total_peak_memory_bandwidth52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_peak_memory_bandwidth52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp53 = icmp eq i32 %50, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp55 = icmp eq i32 %54, %56
  %or.cond = select i1 %cmp53, i1 %cmp55, i1 false
  br i1 %or.cond, label %land.lhs.true56, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true56:                                  ; preds = %if.end50
  %57 = ptrtoint ptr %active57 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %active57, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool58.not = icmp eq i8 %58, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.end60_crit_edge, label %land.lhs.true56.for.inc102_crit_edge

land.lhs.true56.for.inc102_crit_edge:             ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102

land.lhs.true56.if.end60_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true56.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 20, i32 3
  %59 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 20, i32 1
  %61 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %y1.i, align 4
  %sub.i = sub i32 %60, %62
  %shr = ashr i32 %sub.i, 16
  %y2.i167 = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 21, i32 3
  %63 = ptrtoint ptr %y2.i167 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %y2.i167, align 4
  %y1.i168 = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 21, i32 1
  %65 = ptrtoint ptr %y1.i168 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %y1.i168, align 4
  %sub.i169 = sub i32 %64, %66
  %y2.i170 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 20, i32 3
  %67 = ptrtoint ptr %y2.i170 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %y2.i170, align 4
  %y1.i171 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 20, i32 1
  %69 = ptrtoint ptr %y1.i171 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %y1.i171, align 4
  %sub.i172 = sub i32 %68, %70
  %shr70 = ashr i32 %sub.i172, 16
  %y2.i173 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 21, i32 3
  %71 = ptrtoint ptr %y2.i173 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %y2.i173, align 4
  %y1.i174 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 21, i32 1
  %73 = ptrtoint ptr %y1.i174 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %y1.i174, align 4
  %sub.i175 = sub i32 %72, %74
  br i1 %prepare_bandwidth_transition, label %if.then78, label %if.end60.if.end90_crit_edge

if.end60.if.end90_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then78:                                        ; preds = %if.end60
  %75 = tail call i32 @llvm.umax.i32(i32 %52, i32 %50)
  %76 = tail call i32 @llvm.umax.i32(i32 %56, i32 %54)
  call void @__sanitizer_cov_trace_cmp4(i32 %shr70, i32 %sub.i175)
  %cmp.i = icmp eq i32 %shr70, %sub.i175
  br i1 %cmp.i, label %if.then78.if.end90_crit_edge, label %if.end.i

if.then78.if.end90_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.end.i:                                         ; preds = %if.then78
  %index.i = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 3
  %77 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %index.i, align 8
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %78, label %if.end.i.if.then88_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 2, label %land.lhs.true8.i
  ]

if.end.i.if.then88_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

land.lhs.true.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %soc, align 8
  %has_win_a_without_filters.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %has_win_a_without_filters.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %has_win_a_without_filters.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i176 = icmp eq i8 %83, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i.if.then88_crit_edge, label %land.lhs.true.i.if.end90_crit_edge

land.lhs.true.i.if.end90_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

land.lhs.true.i.if.then88_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

land.lhs.true8.i:                                 ; preds = %if.end.i
  %84 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %soc, align 8
  %has_win_c_without_vert_filter.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %85, i32 0, i32 19
  %86 = ptrtoint ptr %has_win_c_without_vert_filter.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %has_win_c_without_vert_filter.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool10.not.i = icmp eq i8 %87, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.then88_crit_edge, label %land.lhs.true8.i.if.end90_crit_edge

land.lhs.true8.i.if.end90_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

land.lhs.true8.i.if.then88_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

if.then88:                                        ; preds = %land.lhs.true8.i.if.then88_crit_edge, %land.lhs.true.i.if.then88_crit_edge, %if.end.i.if.then88_crit_edge
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %land.lhs.true8.i.if.end90_crit_edge, %land.lhs.true.i.if.end90_crit_edge, %if.then78.if.end90_crit_edge, %if.end60.if.end90_crit_edge
  %window.sroa.4.0 = phi i32 [ %shr70, %if.then88 ], [ %shr, %if.end60.if.end90_crit_edge ], [ %shr, %if.then78.if.end90_crit_edge ], [ %shr, %land.lhs.true.i.if.end90_crit_edge ], [ %shr, %land.lhs.true8.i.if.end90_crit_edge ]
  %window.sroa.8.0 = phi i32 [ %sub.i175, %if.then88 ], [ %sub.i169, %if.end60.if.end90_crit_edge ], [ %sub.i169, %if.then78.if.end90_crit_edge ], [ %sub.i169, %land.lhs.true.i.if.end90_crit_edge ], [ %sub.i169, %land.lhs.true8.i.if.end90_crit_edge ]
  %new_peak_bw.0 = phi i32 [ %76, %if.then88 ], [ %54, %if.end60.if.end90_crit_edge ], [ %76, %if.then78.if.end90_crit_edge ], [ %76, %land.lhs.true.i.if.end90_crit_edge ], [ %76, %land.lhs.true8.i.if.end90_crit_edge ]
  %new_avg_bw.0 = phi i32 [ %75, %if.then88 ], [ %50, %if.end60.if.end90_crit_edge ], [ %75, %if.then78.if.end90_crit_edge ], [ %75, %land.lhs.true.i.if.end90_crit_edge ], [ %75, %land.lhs.true8.i.if.end90_crit_edge ]
  %icc_mem91 = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 4
  %88 = ptrtoint ptr %icc_mem91 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %icc_mem91, align 4
  %call92 = tail call i32 @icc_set_bw(ptr noundef %89, i32 noundef %new_avg_bw.0, i32 noundef %new_peak_bw.0) #11
  %90 = ptrtoint ptr %dc47 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dc47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %window.sroa.4.0, i32 %window.sroa.8.0)
  %cmp.i180 = icmp eq i32 %window.sroa.4.0, %window.sroa.8.0
  br i1 %cmp.i180, label %if.end90.if.else97_crit_edge, label %if.end.i182

if.end90.if.else97_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97

if.end.i182:                                      ; preds = %if.end90
  %index.i181 = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 3
  %92 = ptrtoint ptr %index.i181 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %index.i181, align 8
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %93, label %if.end.i182.if.then94_crit_edge [
    i32 0, label %land.lhs.true.i186
    i32 2, label %land.lhs.true8.i190
  ]

if.end.i182.if.then94_crit_edge:                  ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

land.lhs.true.i186:                               ; preds = %if.end.i182
  %soc.i183 = getelementptr inbounds %struct.tegra_dc, ptr %91, i32 0, i32 14
  %95 = ptrtoint ptr %soc.i183 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %soc.i183, align 8
  %has_win_a_without_filters.i184 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %has_win_a_without_filters.i184 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %has_win_a_without_filters.i184, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i185 = icmp eq i8 %98, 0
  br i1 %tobool.not.i185, label %land.lhs.true.i186.if.then94_crit_edge, label %land.lhs.true.i186.if.else97_crit_edge

land.lhs.true.i186.if.else97_crit_edge:           ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97

land.lhs.true.i186.if.then94_crit_edge:           ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

land.lhs.true8.i190:                              ; preds = %if.end.i182
  %soc9.i187 = getelementptr inbounds %struct.tegra_dc, ptr %91, i32 0, i32 14
  %99 = ptrtoint ptr %soc9.i187 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %soc9.i187, align 8
  %has_win_c_without_vert_filter.i188 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %100, i32 0, i32 19
  %101 = ptrtoint ptr %has_win_c_without_vert_filter.i188 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %has_win_c_without_vert_filter.i188, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool10.not.i189 = icmp eq i8 %102, 0
  br i1 %tobool10.not.i189, label %land.lhs.true8.i190.if.then94_crit_edge, label %land.lhs.true8.i190.if.else97_crit_edge

land.lhs.true8.i190.if.else97_crit_edge:          ; preds = %land.lhs.true8.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else97

land.lhs.true8.i190.if.then94_crit_edge:          ; preds = %land.lhs.true8.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.then94:                                        ; preds = %land.lhs.true8.i190.if.then94_crit_edge, %land.lhs.true.i186.if.then94_crit_edge, %if.end.i182.if.then94_crit_edge
  %icc_mem_vfilter95 = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 5
  %103 = ptrtoint ptr %icc_mem_vfilter95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %icc_mem_vfilter95, align 8
  %call96 = tail call i32 @icc_set_bw(ptr noundef %104, i32 noundef %new_avg_bw.0, i32 noundef %new_peak_bw.0) #11
  br label %for.inc102

if.else97:                                        ; preds = %land.lhs.true8.i190.if.else97_crit_edge, %land.lhs.true.i186.if.else97_crit_edge, %if.end90.if.else97_crit_edge
  %icc_mem_vfilter98 = getelementptr inbounds %struct.tegra_plane, ptr %42, i32 0, i32 5
  %105 = ptrtoint ptr %icc_mem_vfilter98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %icc_mem_vfilter98, align 8
  %call99 = tail call i32 @icc_set_bw(ptr noundef %106, i32 noundef 0, i32 noundef 0) #11
  br label %for.inc102

for.inc102:                                       ; preds = %if.else97, %if.then94, %land.lhs.true56.for.inc102_crit_edge, %land.lhs.true.for.inc102_crit_edge, %for.body31.for.inc102_crit_edge
  %inc = add nuw i32 %i.0203, 1
  %107 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %state27, align 4
  %dev28 = getelementptr inbounds %struct.drm_atomic_state, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev28, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %110, i32 0, i32 30, i32 17
  %111 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_total_plane, align 4
  %cmp30 = icmp ult i32 %inc, %112
  br i1 %cmp30, label %for.inc102.for.body31_crit_edge, label %for.inc102.cleanup_crit_edge

for.inc102.cleanup_crit_edge:                     ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc102.for.body31_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

cleanup:                                          ; preds = %for.inc102.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %for.cond26.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_mask.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool2.not.i = icmp eq i64 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_mask.exit_crit_edge

land.lhs.true.i.dma_get_mask.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_get_mask.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %dma_get_mask.exit

dma_get_mask.exit:                                ; preds = %if.end.i, %land.lhs.true.i.dma_get_mask.exit_crit_edge
  %retval.0.i = phi i64 [ 4294967295, %if.end.i ], [ %5, %land.lhs.true.i.dma_get_mask.exit_crit_edge ]
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i185 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %6 = ptrtoint ptr %dma_mask.i185 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i185, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %retval.0.i) #11
  br label %if.end

dma_coerce_mask_and_coherent.exit:                ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %dma_coerce_mask_and_coherent.exit.if.end_crit_edge

dma_coerce_mask_and_coherent.exit.if.end_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit.if.end_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1320, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %soc, align 8
  %list = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %dev11 = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end7.tegra_dc_parse_dt.exit_crit_edge

if.end7.tegra_dc_parse_dt.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_parse_dt.exit

do.end.i:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25) #14
  %call.i.i186 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_dc_of_match, ptr noundef null) #11
  %tobool.not3.i = icmp eq ptr %call.i.i186, null
  br i1 %tobool.not3.i, label %do.end.i.tegra_dc_parse_dt.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.tegra_dc_parse_dt.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_parse_dt.exit

for.body.i:                                       ; preds = %if.end.i188.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %np.04.i = phi ptr [ %call.i1.i, %if.end.i188.for.body.i_crit_edge ], [ %call.i.i186, %do.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev11, align 4
  %of_node4.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node4.i, align 8
  %cmp5.i = icmp eq ptr %np.04.i, %19
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i188

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %np.04.i) #11
  br label %tegra_dc_parse_dt.exit

if.end.i188:                                      ; preds = %for.body.i
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %value.i, align 4
  %call.i1.i = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.04.i, ptr noundef nonnull @tegra_dc_of_match, ptr noundef null) #11
  %tobool.not.i187 = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i187, label %if.end.i188.tegra_dc_parse_dt.exit_crit_edge, label %if.end.i188.for.body.i_crit_edge

if.end.i188.for.body.i_crit_edge:                 ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i188.tegra_dc_parse_dt.exit_crit_edge:     ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_parse_dt.exit

tegra_dc_parse_dt.exit:                           ; preds = %if.end.i188.tegra_dc_parse_dt.exit_crit_edge, %if.then6.i, %do.end.i.tegra_dc_parse_dt.exit_crit_edge, %if.end7.tegra_dc_parse_dt.exit_crit_edge
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i, align 4
  %pipe.i = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pipe.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 8
  %coupled_pm.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %coupled_pm.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %coupled_pm.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i189 = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i191 = icmp eq i32 %23, 1
  %or.cond220 = select i1 %tobool.not.i189, i1 %cmp.i191, i1 false
  br i1 %or.cond220, label %if.then.i, label %tegra_dc_parse_dt.exit.if.end19_crit_edge

tegra_dc_parse_dt.exit.if.end19_crit_edge:        ; preds = %tegra_dc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then.i:                                        ; preds = %tegra_dc_parse_dt.exit
  %29 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev11, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver.i, align 4
  %call.i194 = call ptr @driver_find_device(ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef nonnull @tegra_dc_match_by_pipe) #11
  %tobool1.not.i = icmp eq ptr %call.i194, null
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i195

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i195:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i194, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %parent5.i = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %parent5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %parent5.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dc_couple.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dc_probe, %if.end19)) #11
          to label %if.then11.i [label %if.end19], !srcloc !703

if.then11.i:                                      ; preds = %if.end.i195
  %36 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev11, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call.i194, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then11.i.dev_name.exit.i_crit_edge

if.then11.i.dev_name.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i194, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then11.i.dev_name.exit.i_crit_edge
  %retval.0.i23.i = phi ptr [ %41, %if.end.i.i ], [ %39, %if.then11.i.dev_name.exit.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dc_couple.__UNIQUE_ID_ddebug352, ptr noundef %37, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i23.i) #11
  br label %if.end19

if.end19:                                         ; preds = %dev_name.exit.i, %if.end.i195, %tegra_dc_parse_dt.exit.if.end19_crit_edge
  %call21 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call21, ptr %clk, align 8
  %cmp.i196 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #14
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 8
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call.i.i197 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %rst = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i197, ptr %rst, align 4
  %cmp.i198 = icmp ugt ptr %call.i.i197, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  %47 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rst, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %50 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk, align 8
  %call.i199 = call i32 @clk_prepare(ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end.i202, label %if.end43.clk_prepare_enable.exit_crit_edge

if.end43.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i202:                                      ; preds = %if.end43
  %call1.i = call i32 @clk_enable(ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i201 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i201, label %if.end.i202.if.end48_crit_edge, label %if.then3.i

if.end.i202.if.end48_crit_edge:                   ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then3.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %51) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end43.clk_prepare_enable.exit_crit_edge
  %retval.0.i203 = phi i32 [ %call.i199, %if.end43.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i203)
  %cmp46 = icmp slt i32 %retval.0.i203, 0
  br i1 %cmp46, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end48_crit_edge

clk_prepare_enable.exit.if.end48_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %clk_prepare_enable.exit.if.end48_crit_edge, %if.end.i202.if.end48_crit_edge
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #11
  %52 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rst, align 4
  %call50 = call i32 @reset_control_assert(ptr noundef %53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #11
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %55) #11
  call void @clk_unprepare(ptr noundef %55) #11
  %56 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc, align 8
  %has_powergate = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %has_powergate to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_powergate, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool56.not = icmp eq i8 %59, 0
  br i1 %tobool56.not, label %if.end53.if.end64_crit_edge, label %if.then57

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp58 = icmp eq i32 %61, 0
  %spec.select = select i1 %cmp58, i32 18, i32 19
  %62 = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select, ptr %62, align 8
  %call63 = call i32 @tegra_powergate_power_off(i32 noundef %spec.select) #11
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end53.if.end64_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #11
  %64 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %opp_params.i, align 1
  %65 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev11, align 4
  %call.i205 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %66, ptr noundef nonnull %opp_params.i) #11
  %67 = zext i32 %call.i205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %call.i205, label %tegra_dc_init_opp_table.exit [
    i32 0, label %if.else.i
    i32 -19, label %if.end64.tegra_dc_init_opp_table.exit.thread_crit_edge
  ]

if.end64.tegra_dc_init_opp_table.exit.thread_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_init_opp_table.exit.thread

if.else.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_init_opp_table.exit.thread

tegra_dc_init_opp_table.exit.thread:              ; preds = %if.else.i, %if.end64.tegra_dc_init_opp_table.exit.thread_crit_edge
  %.sink.i = phi i8 [ 1, %if.else.i ], [ 0, %if.end64.tegra_dc_init_opp_table.exit.thread_crit_edge ]
  %has_opp_table.i = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 15
  %68 = ptrtoint ptr %has_opp_table.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink.i, ptr %has_opp_table.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #11
  br label %if.end68

tegra_dc_init_opp_table.exit:                     ; preds = %if.end64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp66 = icmp slt i32 %call.i205, 0
  br i1 %cmp66, label %tegra_dc_init_opp_table.exit.cleanup_crit_edge, label %tegra_dc_init_opp_table.exit.if.end68_crit_edge

tegra_dc_init_opp_table.exit.if.end68_crit_edge:  ; preds = %tegra_dc_init_opp_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

tegra_dc_init_opp_table.exit.cleanup_crit_edge:   ; preds = %tegra_dc_init_opp_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %tegra_dc_init_opp_table.exit.if.end68_crit_edge, %tegra_dc_init_opp_table.exit.thread
  %call69 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %regs = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call69, ptr %regs, align 8
  %cmp.i207 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %call69 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %call76 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.tegra_dc, ptr %call.i, i32 0, i32 9
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call76, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp78 = icmp slt i32 %call76, 0
  br i1 %cmp78, label %if.end75.cleanup_crit_edge, label %if.end80

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %call81 = call i32 @tegra_dc_rgb_probe(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call81)
  %cmp82 = icmp sgt i32 %call81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call81)
  %cmp83.not = icmp eq i32 %call81, -19
  %or.cond = or i1 %cmp82, %cmp83.not
  br i1 %or.cond, label %if.end94, label %if.then84

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call81)
  %cmp85 = icmp eq i32 %call81, -517
  %spec.store.select = select i1 %cmp85, ptr @.str.17, ptr @.str.8
  %72 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %spec.store.select, ptr noundef %73, ptr noundef nonnull @.str.19, i32 noundef %call81) #14
  br label %cleanup

if.end94:                                         ; preds = %if.end80
  %driver_data.i.i208 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i208 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i208, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i209 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %prev.i209, align 4
  %ops = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @dc_client_ops, ptr %ops, align 4
  %dev100 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %dev100 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %dev100, align 4
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_dc_probe.__key) #11
  %call103 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end108, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end108:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call103) #14
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call112 = call i32 @tegra_dc_rgb_remove(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end108, %if.end94.cleanup_crit_edge, %if.then84, %if.end75.cleanup_crit_edge, %if.then72, %tegra_dc_init_opp_table.exit.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end39, %do.end27, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %45, %do.end27 ], [ %49, %do.end39 ], [ %70, %if.then72 ], [ %call81, %if.then84 ], [ %call103, %do.end108 ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i203, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call.i205, %tegra_dc_init_opp_table.exit.cleanup_crit_edge ], [ -6, %if.end75.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.316, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @tegra_dc_rgb_remove(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.319, i32 noundef %call2) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !703

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !704

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !705
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !706
  %13 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !704

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 29, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !708
  %31 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_match_by_pipe(ptr nocapture noundef readonly %dev, ptr noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %data to i32
  %pipe1 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pipe1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp = icmp eq i32 %4, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_early_init(ptr nocapture noundef readonly %client) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %num_crtcs = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtcs, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %num_crtcs, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_init(ptr noundef %client) #0 align 64 {
entry:
  %planes.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 5
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %add = add i32 %7, 26
  tail call void @host1x_syncpt_release_vblank_reservation(ptr noundef %client, i32 noundef %add) #11
  %soc.i = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 14
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 8
  %wgrps.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %wgrps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wgrps.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %num_wgrps.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %num_wgrps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_wgrps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.not.i = icmp eq i32 %13, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.cleanup100_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup100_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup100

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %dc4.i = getelementptr %struct.tegra_windowgroup_soc, ptr %11, i32 %i.017.i, i32 1
  %16 = ptrtoint ptr %dc4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dc4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp5.i = icmp eq i32 %17, %15
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.critedge.i_crit_edge

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %num_windows.i = getelementptr %struct.tegra_windowgroup_soc, ptr %11, i32 %i.017.i, i32 3
  %18 = ptrtoint ptr %num_windows.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.not.i = icmp eq i32 %19, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.critedge.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.i.for.inc.critedge.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup100_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.critedge.i.cleanup100_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup100

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %has_nvdisplay = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %9, i32 0, i32 9
  %20 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_nvdisplay, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 13
  %22 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hub, align 4
  %client4 = getelementptr inbounds %struct.tegra_display_hub, ptr %23, i32 0, i32 1
  %parent = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 9
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client4, ptr %parent, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call ptr @host1x_syncpt_request(ptr noundef %client, i32 noundef 1) #11
  %syncpt = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 1
  %25 = ptrtoint ptr %syncpt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call6, ptr %syncpt, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.30) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end5.if.end10_crit_edge
  %call11 = tail call i32 @host1x_client_iommu_attach(ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, -19
  %or.cond = or i1 %cmp, %cmp12.not
  br i1 %or.cond, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %28 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.34, i32 noundef %call11) #14
  br label %cleanup100

if.end18:                                         ; preds = %if.end10
  %30 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc.i, align 8
  %wgrps = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wgrps, align 4
  %tobool20.not = icmp eq ptr %33, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %num_wgrps55.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %31, i32 0, i32 11
  %34 = ptrtoint ptr %num_wgrps55.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_wgrps55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp56.not.i = icmp eq i32 %35, 0
  br i1 %cmp56.not.i, label %if.then21.if.end28_crit_edge, label %if.then21.for.body.i178_crit_edge

if.then21.for.body.i178_crit_edge:                ; preds = %if.then21
  br label %for.body.i178

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.body.i178:                                    ; preds = %for.inc17.i.for.body.i178_crit_edge, %if.then21.for.body.i178_crit_edge
  %36 = phi ptr [ %55, %for.inc17.i.for.body.i178_crit_edge ], [ %31, %if.then21.for.body.i178_crit_edge ]
  %i.058.i = phi i32 [ %inc18.i, %for.inc17.i.for.body.i178_crit_edge ], [ 0, %if.then21.for.body.i178_crit_edge ]
  %primary.057.i = phi ptr [ %primary.5.ph.i, %for.inc17.i.for.body.i178_crit_edge ], [ null, %if.then21.for.body.i178_crit_edge ]
  %wgrps.i177 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %wgrps.i177 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wgrps.i177, align 4
  %arrayidx.i = getelementptr %struct.tegra_windowgroup_soc, ptr %38, i32 %i.058.i
  %dc2.i = getelementptr %struct.tegra_windowgroup_soc, ptr %38, i32 %i.058.i, i32 1
  %39 = ptrtoint ptr %dc2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dc2.i, align 4
  %41 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp3.i = icmp eq i32 %40, %42
  br i1 %cmp3.i, label %for.cond4.preheader.i, label %for.body.i178.for.inc17.i_crit_edge

for.body.i178.for.inc17.i_crit_edge:              ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17.i

for.cond4.preheader.i:                            ; preds = %for.body.i178
  %num_windows.i179 = getelementptr %struct.tegra_windowgroup_soc, ptr %38, i32 %i.058.i, i32 3
  %43 = ptrtoint ptr %num_windows.i179 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_windows.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp552.not.i = icmp eq i32 %44, 0
  br i1 %cmp552.not.i, label %for.cond4.preheader.i.for.inc17.i_crit_edge, label %for.body6.lr.ph.i

for.cond4.preheader.i.for.inc17.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %windows.i = getelementptr %struct.tegra_windowgroup_soc, ptr %38, i32 %i.058.i, i32 2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.054.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i181, %for.inc.i.for.body6.i_crit_edge ]
  %primary.153.i = phi ptr [ %primary.057.i, %for.body6.lr.ph.i ], [ %primary.3.ph.i, %for.inc.i.for.body6.i_crit_edge ]
  %45 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %windows.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %46, i32 %j.054.i
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @tegra_shared_plane_create(ptr noundef %3, ptr noundef %client, i32 noundef %50, i32 noundef %48) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body6.i.if.end24_crit_edge, label %if.end.i

for.body6.i.if.end24_crit_edge:                   ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i:                                         ; preds = %for.body6.i
  %tobool.not.i180 = icmp eq ptr %primary.153.i, null
  br i1 %tobool.not.i180, label %if.then11.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 16
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.end.i.for.inc.i_crit_edge
  %primary.3.ph.i = phi ptr [ %call.i, %if.then11.i ], [ %primary.153.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i181 = add nuw i32 %j.054.i, 1
  %52 = ptrtoint ptr %num_windows.i179 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_windows.i179, align 4
  %cmp5.i182 = icmp ult i32 %inc.i181, %53
  br i1 %cmp5.i182, label %for.inc.i.for.body6.i_crit_edge, label %for.inc.i.for.inc17.i_crit_edge

for.inc.i.for.inc17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6.i

for.inc17.i:                                      ; preds = %for.inc.i.for.inc17.i_crit_edge, %for.cond4.preheader.i.for.inc17.i_crit_edge, %for.body.i178.for.inc17.i_crit_edge
  %primary.5.ph.i = phi ptr [ %primary.057.i, %for.body.i178.for.inc17.i_crit_edge ], [ %primary.057.i, %for.cond4.preheader.i.for.inc17.i_crit_edge ], [ %primary.3.ph.i, %for.inc.i.for.inc17.i_crit_edge ]
  %inc18.i = add nuw i32 %i.058.i, 1
  %54 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc.i, align 8
  %num_wgrps.i183 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %num_wgrps.i183 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_wgrps.i183, align 4
  %cmp.i = icmp ult i32 %inc18.i, %57
  br i1 %cmp.i, label %for.inc17.i.for.body.i178_crit_edge, label %for.inc17.i.if.end24_crit_edge

for.inc17.i.if.end24_crit_edge:                   ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.inc17.i.for.body.i178_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i178

if.else:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %planes.i) #11
  %58 = ptrtoint ptr %planes.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %planes.i, align 4, !annotation !709
  %59 = getelementptr inbounds [2 x ptr], ptr %planes.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %59, align 4, !annotation !709
  %num_crtc.i.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %61 = ptrtoint ptr %num_crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_crtc.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 552) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.tegra_dc_add_planes.exit_crit_edge, label %if.end.i.i

if.else.tegra_dc_add_planes.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_add_planes.exit

if.end.i.i:                                       ; preds = %if.else
  %offset.i.i = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2560, ptr %offset.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %index.i.i, align 8
  %dc3.i.i = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %dc3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %client, ptr %dc3.i.i, align 8
  %67 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %soc.i, align 8
  %num_primary_formats.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %num_primary_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_primary_formats.i.i, align 4
  %primary_formats.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %68, i32 0, i32 12
  %71 = ptrtoint ptr %primary_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %primary_formats.i.i, align 4
  %modifiers6.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %68, i32 0, i32 16
  %73 = ptrtoint ptr %modifiers6.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %modifiers6.i.i, align 4
  %call7.i.i = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %call7.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end11.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %75 = inttoptr i32 %call7.i.i to ptr
  br label %tegra_primary_plane_create.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call12.i.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %3, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %shl.i.i.i, ptr noundef nonnull @tegra_plane_funcs, ptr noundef %72, i32 noundef %70, ptr noundef %74, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp.i.i184 = icmp slt i32 %call12.i.i, 0
  br i1 %cmp.i.i184, label %if.then13.i.i, label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %76 = inttoptr i32 %call12.i.i to ptr
  br label %tegra_primary_plane_create.exit.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %helper_private.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i.i, i32 0, i32 18
  %77 = ptrtoint ptr %helper_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @tegra_plane_helper_funcs, ptr %helper_private.i.i.i, align 8
  %78 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index.i.i, align 8
  %call19.i.i = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i.i.i, i32 noundef %79, i32 noundef 0, i32 noundef 255) #11
  %call21.i.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1, i32 noundef 53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %do.end.i.i, label %if.end15.i.i.tegra_primary_plane_create.exit.i_crit_edge

if.end15.i.i.tegra_primary_plane_create.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_primary_plane_create.exit.i

do.end.i.i:                                       ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 2
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.42, i32 noundef %call21.i.i) #14
  br label %tegra_primary_plane_create.exit.i

tegra_primary_plane_create.exit.i:                ; preds = %do.end.i.i, %if.end15.i.i.tegra_primary_plane_create.exit.i_crit_edge, %if.then13.i.i, %if.then9.i.i
  %retval.0.i.i = phi ptr [ %75, %if.then9.i.i ], [ %76, %if.then13.i.i ], [ %call7.i.i.i.i, %do.end.i.i ], [ %call7.i.i.i.i, %if.end15.i.i.tegra_primary_plane_create.exit.i_crit_edge ]
  %cmp.i36.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %tegra_primary_plane_create.exit.i.tegra_dc_add_planes.exit_crit_edge, label %if.end.i186

tegra_primary_plane_create.exit.i.tegra_dc_add_planes.exit_crit_edge: ; preds = %tegra_primary_plane_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_add_planes.exit

if.end.i186:                                      ; preds = %tegra_primary_plane_create.exit.i
  %82 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soc.i, align 8
  %supports_cursor.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %supports_cursor.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %supports_cursor.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i185 = icmp eq i8 %85, 0
  %call4.i = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %3, ptr noundef %client, i32 noundef 1, i1 noundef zeroext false) #11
  %86 = ptrtoint ptr %planes.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call4.i, ptr %planes.i, align 4
  %cmp.i37.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %if.end.i186.while.cond.preheader.i_crit_edge, label %for.cond.i.1

if.end.i186.while.cond.preheader.i_crit_edge:     ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

for.cond.i.1:                                     ; preds = %if.end.i186
  br i1 %tobool.not.i185, label %for.cond.i.1.tegra_dc_add_planes.exit_crit_edge, label %for.body.i189.1

for.cond.i.1.tegra_dc_add_planes.exit_crit_edge:  ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_add_planes.exit

for.body.i189.1:                                  ; preds = %for.cond.i.1
  %call4.i.1 = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %3, ptr noundef %client, i32 noundef 2, i1 noundef zeroext false) #11
  %arrayidx.i188.1 = getelementptr inbounds [2 x ptr], ptr %planes.i, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx.i188.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call4.i.1, ptr %arrayidx.i188.1, align 4
  %cmp.i37.i.1 = icmp ugt ptr %call4.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i.1, label %for.body.i189.1.while.cond.preheader.i_crit_edge, label %for.body.i189.1.tegra_dc_add_planes.exit_crit_edge

for.body.i189.1.tegra_dc_add_planes.exit_crit_edge: ; preds = %for.body.i189.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_add_planes.exit

for.body.i189.1.while.cond.preheader.i_crit_edge: ; preds = %for.body.i189.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i189.1.while.cond.preheader.i_crit_edge, %if.end.i186.while.cond.preheader.i_crit_edge
  %call4.i.lcssa = phi ptr [ %call4.i, %if.end.i186.while.cond.preheader.i_crit_edge ], [ %call4.i.1, %for.body.i189.1.while.cond.preheader.i_crit_edge ]
  %tobool10.not.i = phi i1 [ false, %if.end.i186.while.cond.preheader.i_crit_edge ], [ true, %for.body.i189.1.while.cond.preheader.i_crit_edge ]
  %i.0.i.lcssa244 = phi i32 [ -1, %if.end.i186.while.cond.preheader.i_crit_edge ], [ 0, %for.body.i189.1.while.cond.preheader.i_crit_edge ]
  br i1 %cmp.i37.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.preheader.i
  %arrayidx11.i = getelementptr [2 x ptr], ptr %planes.i, i32 0, i32 %i.0.i.lcssa244
  %88 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx11.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_plane, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs.i, align 4
  %destroy.i = getelementptr inbounds %struct.drm_plane_funcs, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %destroy.i, align 4
  tail call void %93(ptr noundef %89) #11
  br i1 %tobool10.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.1

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i.1 = add nsw i32 %i.0.i.lcssa244, -1
  %arrayidx11.i.1 = getelementptr [2 x ptr], ptr %planes.i, i32 0, i32 %dec.i.1
  %94 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx11.i.1, align 4
  %funcs.i.1 = getelementptr inbounds %struct.drm_plane, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %funcs.i.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs.i.1, align 4
  %destroy.i.1 = getelementptr inbounds %struct.drm_plane_funcs, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %destroy.i.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %destroy.i.1, align 4
  tail call void %99(ptr noundef %95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool10.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool10.not.i.1, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.2 = add nsw i32 %i.0.i.lcssa244, -2
  %arrayidx11.i.2 = getelementptr [2 x ptr], ptr %planes.i, i32 0, i32 %dec.i.2
  %100 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx11.i.2, align 4
  %funcs.i.2 = getelementptr inbounds %struct.drm_plane, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %funcs.i.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs.i.2, align 4
  %destroy.i.2 = getelementptr inbounds %struct.drm_plane_funcs, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %destroy.i.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %destroy.i.2, align 4
  tail call void %105(ptr noundef %101) #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.2, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %funcs13.i = getelementptr inbounds %struct.drm_plane, ptr %retval.0.i.i, i32 0, i32 14
  %106 = ptrtoint ptr %funcs13.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %funcs13.i, align 4
  %destroy14.i = getelementptr inbounds %struct.drm_plane_funcs, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %destroy14.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %destroy14.i, align 4
  tail call void %109(ptr noundef %retval.0.i.i) #11
  br label %tegra_dc_add_planes.exit

tegra_dc_add_planes.exit:                         ; preds = %while.end.i, %for.body.i189.1.tegra_dc_add_planes.exit_crit_edge, %for.cond.i.1.tegra_dc_add_planes.exit_crit_edge, %tegra_primary_plane_create.exit.i.tegra_dc_add_planes.exit_crit_edge, %if.else.tegra_dc_add_planes.exit_crit_edge
  %retval.0.i = phi ptr [ %call4.i.lcssa, %while.end.i ], [ %retval.0.i.i, %tegra_primary_plane_create.exit.i.tegra_dc_add_planes.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.tegra_dc_add_planes.exit_crit_edge ], [ %retval.0.i.i, %for.body.i189.1.tegra_dc_add_planes.exit_crit_edge ], [ %retval.0.i.i, %for.cond.i.1.tegra_dc_add_planes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %planes.i) #11
  br label %if.end24

if.end24:                                         ; preds = %tegra_dc_add_planes.exit, %for.inc17.i.if.end24_crit_edge, %for.body6.i.if.end24_crit_edge
  %primary.0 = phi ptr [ %retval.0.i, %tegra_dc_add_planes.exit ], [ %call.i, %for.body6.i.if.end24_crit_edge ], [ %primary.5.ph.i, %for.inc17.i.if.end24_crit_edge ]
  %cmp.i190 = icmp ugt ptr %primary.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.end95, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %if.then21.if.end28_crit_edge
  %primary.0209 = phi ptr [ %primary.0, %if.end24.if.end28_crit_edge ], [ null, %if.then21.if.end28_crit_edge ]
  %110 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %soc.i, align 8
  %supports_cursor = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %supports_cursor to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %supports_cursor, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool30.not = icmp eq i8 %113, 0
  br i1 %tobool30.not, label %if.else37, label %if.then31

if.then31:                                        ; preds = %if.end28
  %num_crtc.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %114 = ptrtoint ptr %num_crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_crtc.i.i, align 4
  %shl.i.i = shl nuw i32 1, %115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3520, i32 noundef 552) #15
  %tobool.not.i191 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i191, label %if.then31.if.then34_crit_edge, label %if.end.i193

if.then31.if.then34_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.end.i193:                                      ; preds = %if.then31
  %index.i = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 6, ptr %index.i, align 8
  %dc3.i = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %dc3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %client, ptr %dc3.i, align 8
  %119 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %soc.i, align 8
  %has_nvdisplay.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %has_nvdisplay.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %has_nvdisplay.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool4.not.i = icmp eq i8 %122, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i193.if.end11.i_crit_edge

if.end.i193.if.end11.i_crit_edge:                 ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i193
  %call6.i = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end11.i_crit_edge, label %if.then8.i

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %123 = inttoptr i32 %call6.i to ptr
  br label %tegra_dc_cursor_plane_create.exit

if.end11.i:                                       ; preds = %if.then5.i.if.end11.i_crit_edge, %if.end.i193.if.end11.i_crit_edge
  %formats.0.i = phi ptr [ @tegra_legacy_cursor_plane_formats, %if.then5.i.if.end11.i_crit_edge ], [ @tegra_cursor_plane_formats, %if.end.i193.if.end11.i_crit_edge ]
  %call12.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, i32 noundef %shl.i.i, ptr noundef nonnull @tegra_plane_funcs, ptr noundef nonnull %formats.0.i, i32 noundef 1, ptr noundef nonnull @linear_modifiers, i32 noundef 2, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i194 = icmp slt i32 %call12.i, 0
  br i1 %cmp.i194, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %124 = inttoptr i32 %call12.i to ptr
  br label %tegra_dc_cursor_plane_create.exit

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i, i32 0, i32 18
  %125 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @tegra_cursor_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %call18.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %call7.i.i.i, i32 noundef 255) #11
  br label %tegra_dc_cursor_plane_create.exit

tegra_dc_cursor_plane_create.exit:                ; preds = %if.end15.i, %if.then13.i, %if.then8.i
  %retval.0.i195 = phi ptr [ %124, %if.then13.i ], [ %call7.i.i.i, %if.end15.i ], [ %123, %if.then8.i ]
  %cmp.i196 = icmp ugt ptr %retval.0.i195, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %tegra_dc_cursor_plane_create.exit.if.then34_crit_edge, label %tegra_dc_cursor_plane_create.exit.if.end43_crit_edge

tegra_dc_cursor_plane_create.exit.if.end43_crit_edge: ; preds = %tegra_dc_cursor_plane_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

tegra_dc_cursor_plane_create.exit.if.then34_crit_edge: ; preds = %tegra_dc_cursor_plane_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.then34:                                        ; preds = %tegra_dc_cursor_plane_create.exit.if.then34_crit_edge, %if.then31.if.then34_crit_edge
  %retval.0.i195214 = phi ptr [ %retval.0.i195, %tegra_dc_cursor_plane_create.exit.if.then34_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then31.if.then34_crit_edge ]
  %126 = ptrtoint ptr %retval.0.i195214 to i32
  br label %cleanup

if.else37:                                        ; preds = %if.end28
  %call38 = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %3, ptr noundef %client, i32 noundef 2, i1 noundef zeroext true)
  %cmp.i197 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then40, label %if.else37.if.end43_crit_edge

if.else37.if.end43_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.else37.if.end43_crit_edge, %tegra_dc_cursor_plane_create.exit.if.end43_crit_edge
  %cursor.0 = phi ptr [ %retval.0.i195, %tegra_dc_cursor_plane_create.exit.if.end43_crit_edge ], [ %call38, %if.else37.if.end43_crit_edge ]
  %base = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 3
  %call44 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %3, ptr noundef %base, ptr noundef %primary.0209, ptr noundef %cursor.0, ptr noundef nonnull @tegra_crtc_funcs, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %helper_private.i = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 3, i32 19
  %128 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @tegra_crtc_helper_funcs, ptr %helper_private.i, align 8
  %129 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %soc.i, align 8
  %pitch_align = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %pitch_align to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pitch_align, align 4
  %pitch_align50 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 11
  %133 = ptrtoint ptr %pitch_align50 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pitch_align50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp51 = icmp ugt i32 %132, %134
  br i1 %cmp51, label %if.then52, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %pitch_align50 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %132, ptr %pitch_align50, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47.if.end56_crit_edge
  %136 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %soc.i, align 8
  %has_nvdisplay58 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %has_nvdisplay58 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %has_nvdisplay58, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool59.not = icmp eq i8 %139, 0
  %spec.select = select i1 %tobool59.not, i32 4096, i32 16384
  %140 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 26
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %spec.select, ptr %140, align 4
  %142 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 25
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %spec.select, ptr %142, align 4
  %call68 = tail call i32 @tegra_dc_rgb_init(ptr noundef %3, ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call68)
  %cmp69 = icmp sgt i32 %call68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call68)
  %cmp71.not = icmp eq i32 %call68, -19
  %or.cond173 = or i1 %cmp69, %cmp71.not
  %dev78 = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 2
  %144 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev78, align 4
  br i1 %or.cond173, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.37, i32 noundef %call68) #14
  br label %cleanup

if.end77:                                         ; preds = %if.end56
  %irq = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 9
  %146 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %145, i32 0, i32 3
  %148 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i198 = icmp eq ptr %149, null
  br i1 %tobool.not.i198, label %if.end.i199, label %if.end77.dev_name.exit_crit_edge

if.end77.dev_name.exit_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i199:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %145, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i199, %if.end77.dev_name.exit_crit_edge
  %retval.0.i200 = phi ptr [ %151, %if.end.i199 ], [ %149, %if.end77.dev_name.exit_crit_edge ]
  %call.i201 = tail call i32 @devm_request_threaded_irq(ptr noundef %145, i32 noundef %147, ptr noundef nonnull @tegra_dc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i200, ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp82 = icmp slt i32 %call.i201, 0
  br i1 %cmp82, label %do.end86, label %if.end89

do.end86:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev78, align 4
  %154 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.40, i32 noundef %155, i32 noundef %call.i201) #14
  br label %cleanup

if.end89:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %host, align 4
  %dma_parms = getelementptr inbounds %struct.device, ptr %157, i32 0, i32 22
  %158 = ptrtoint ptr %dma_parms to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dma_parms, align 4
  %dev91 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %160 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev91, align 4
  %dma_parms92 = getelementptr inbounds %struct.device, ptr %161, i32 0, i32 22
  %162 = ptrtoint ptr %dma_parms92 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %dma_parms92, align 4
  br label %cleanup100

cleanup:                                          ; preds = %do.end86, %do.end75, %if.end43.cleanup_crit_edge, %if.then40, %if.then34
  %cursor.1 = phi ptr [ %retval.0.i195214, %if.then34 ], [ %cursor.0, %if.end43.cleanup_crit_edge ], [ %cursor.0, %do.end75 ], [ %cursor.0, %do.end86 ], [ %call38, %if.then40 ]
  %err.0 = phi i32 [ %126, %if.then34 ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call68, %do.end75 ], [ %call.i201, %do.end86 ], [ %127, %if.then40 ]
  %tobool.not.i202 = icmp eq ptr %cursor.1, null
  %cmp.i203 = icmp ugt ptr %cursor.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i202, %cmp.i203
  br i1 %spec.select.i, label %cleanup.if.then97_crit_edge, label %if.then94

cleanup.if.then97_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

if.then94:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_plane_cleanup(ptr noundef nonnull %cursor.1) #11
  br label %if.then97

if.end95:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %primary.0 to i32
  br label %if.end98

if.then97:                                        ; preds = %if.then94, %cleanup.if.then97_crit_edge
  tail call void @drm_plane_cleanup(ptr noundef %primary.0209) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end95
  %err.0224229 = phi i32 [ %err.0, %if.then97 ], [ %163, %if.end95 ]
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #11
  %164 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %syncpt, align 8
  tail call void @host1x_syncpt_put(ptr noundef %165) #11
  br label %cleanup100

cleanup100:                                       ; preds = %if.end98, %if.end89, %do.end16, %for.inc.critedge.i.cleanup100_crit_edge, %for.cond.preheader.i.cleanup100_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ %err.0224229, %if.end98 ], [ 0, %if.end89 ], [ 0, %for.cond.preheader.i.cleanup100_crit_edge ], [ 0, %for.inc.critedge.i.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soc.i = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 14
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 8
  %wgrps.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wgrps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wgrps.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %num_wgrps.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_wgrps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_wgrps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pipe.i = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 5
  %6 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %dc4.i = getelementptr %struct.tegra_windowgroup_soc, ptr %3, i32 %i.017.i, i32 1
  %8 = ptrtoint ptr %dc4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dc4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp5.i = icmp eq i32 %9, %7
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.critedge.i_crit_edge

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %num_windows.i = getelementptr %struct.tegra_windowgroup_soc, ptr %3, i32 %i.017.i, i32 3
  %10 = ptrtoint ptr %num_windows.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not.i = icmp eq i32 %11, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.critedge.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.i.for.inc.critedge.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.critedge.i.cleanup_crit_edge:             ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dma_parms = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %dma_parms to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_parms, align 4
  %dev2 = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 2
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  %irq = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 9
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %16, i32 noundef %18, ptr noundef %client) #11
  %call3 = tail call i32 @tegra_dc_rgb_exit(ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.301, i32 noundef %call3) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #11
  %syncpt = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 1
  %21 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %syncpt, align 8
  tail call void @host1x_syncpt_put(ptr noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %for.inc.critedge.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end6 ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.inc.critedge.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_late_exit(ptr nocapture noundef readonly %client) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %num_crtcs = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtcs, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %num_crtcs, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_runtime_suspend(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rst = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 7
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.303, i32 noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 14
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 8
  %has_powergate = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %has_powergate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_powergate, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %powergate = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 4
  %8 = ptrtoint ptr %powergate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %powergate, align 8
  %call4 = tail call i32 @tegra_powergate_power_off(i32 noundef %9) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %clk = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 6
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_runtime_resume(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !710
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !711
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.305, i32 noundef %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 14
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 8
  %has_powergate = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %has_powergate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_powergate, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %powergate = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 4
  %7 = ptrtoint ptr %powergate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %powergate, align 8
  %clk = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  %rst = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 7
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef %8, ptr noundef %10, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.308, i32 noundef %call4) #14
  br label %put_rpm

if.else:                                          ; preds = %if.end
  %clk11 = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 6
  %13 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk11, align 8
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.clk_prepare_enable.exit_crit_edge

if.else.clk_prepare_enable.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %14) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.else.clk_prepare_enable.exit_crit_edge
  %retval.0.i54 = phi i32 [ %call.i53, %if.else.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i54)
  %cmp13 = icmp slt i32 %retval.0.i54, 0
  br i1 %cmp13, label %do.end17, label %clk_prepare_enable.exit.if.end18_crit_edge

clk_prepare_enable.exit.if.end18_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end17:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.311, i32 noundef %retval.0.i54) #14
  br label %put_rpm

if.end18:                                         ; preds = %clk_prepare_enable.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %rst19 = getelementptr inbounds %struct.tegra_dc, ptr %client, i32 0, i32 7
  %15 = ptrtoint ptr %rst19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rst19, align 4
  %call20 = tail call i32 @reset_control_deassert(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.314, i32 noundef %call20) #14
  %17 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk11, align 8
  tail call void @clk_disable(ptr noundef %18) #11
  tail call void @clk_unprepare(ptr noundef %18) #11
  br label %put_rpm

put_rpm:                                          ; preds = %do.end25, %do.end17, %do.end9
  %err.0 = phi i32 [ %call4, %do.end9 ], [ %retval.0.i54, %do.end17 ], [ %call20, %do.end25 ]
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %put_rpm, %if.end18.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.0, %put_rpm ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_release_vblank_reservation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %drm, ptr noundef %dc, i32 noundef %index, i1 noundef zeroext %cursor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 19
  %0 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc.i, align 4
  %shl.i = shl nuw i32 1, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 552) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %index, 9
  %add = add i32 %mul, 2560
  %offset = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %offset, align 4
  %index3 = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %index3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %index, ptr %index3, align 8
  %dc4 = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dc4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dc, ptr %dc4, align 8
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 14
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 8
  %num_overlay_formats = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %num_overlay_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_overlay_formats, align 4
  %overlay_formats = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %overlay_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %overlay_formats, align 4
  %call6 = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %12 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %. = select i1 %cursor, i32 2, i32 0
  %call14 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i, i32 noundef %shl.i, ptr noundef nonnull @tegra_plane_funcs, ptr noundef %11, i32 noundef %9, ptr noundef nonnull @linear_modifiers, i32 noundef %., ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %13 = inttoptr i32 %call14 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_plane_helper_funcs, ptr %helper_private.i, align 8
  %15 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index3, align 8
  %call21 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef %16, i32 noundef 0, i32 noundef 255) #11
  %call23 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.42, i32 noundef %call23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17.cleanup_crit_edge, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then8 ], [ %13, %if.then15 ], [ %call7.i.i, %do.end ], [ %call7.i.i, %if.end17.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !713
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %5, i32 noundef 55, i32 noundef %3) #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %7, i32 noundef 55, i32 noundef %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %9, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %2) #11, !srcloc !701
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stats = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11
  %frames_total = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %frames_total to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frames_total, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %frames_total, align 4
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats, align 4
  %inc2 = add i32 %13, 1
  store i32 %inc2, ptr %stats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 3
  %call6 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %base) #11
  %vblank_total = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 5
  %14 = ptrtoint ptr %vblank_total to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vblank_total, align 4
  %inc8 = add i32 %15, 1
  store i32 %inc8, ptr %vblank_total, align 4
  %vblank = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vblank, align 4
  %inc10 = add i32 %17, 1
  store i32 %inc10, ptr %vblank, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %and12 = and i32 %3, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %underflow_total = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %underflow_total to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %underflow_total, align 4
  %inc16 = add i32 %19, 1
  store i32 %inc16, ptr %underflow_total, align 4
  %underflow = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %underflow, align 4
  %inc18 = add i32 %21, 1
  store i32 %inc18, ptr %underflow, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %and20 = and i32 %3, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %overflow_total = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 7
  %22 = ptrtoint ptr %overflow_total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %overflow_total, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, ptr %overflow_total, align 4
  %overflow = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %overflow to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %overflow, align 4
  %inc26 = add i32 %25, 1
  store i32 %inc26, ptr %overflow, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %and28 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end46_crit_edge, label %do.body

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body:                                          ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dc_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dc_irq, %do.end)) #11
          to label %land.lhs.true [label %do.end], !srcloc !703

land.lhs.true:                                    ; preds = %do.body
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_dc_irq._rs, ptr noundef nonnull @.str.299) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end_crit_edge, label %if.then38

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dc_irq.descriptor, ptr noundef %27, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.299) #11
  br label %do.end

do.end:                                           ; preds = %if.then38, %land.lhs.true.do.end_crit_edge, %do.body
  %underflow_total41 = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 6
  %28 = ptrtoint ptr %underflow_total41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %underflow_total41, align 4
  %inc42 = add i32 %29, 1
  store i32 %inc42, ptr %underflow_total41, align 4
  %underflow44 = getelementptr inbounds %struct.tegra_dc, ptr %data, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %underflow44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %underflow44, align 4
  %inc45 = add i32 %31, 1
  store i32 %inc45, ptr %underflow44, align 4
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.end27.if.end46_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_shared_plane_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_interconnect_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_plane_cleanup_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_plane_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %rotation2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %rotation2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation2, align 4
  %tiling3 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %peak_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %peak_memory_bandwidth, align 4
  %avg_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %avg_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %avg_memory_bandwidth, align 4
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %total_peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %total_peak_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_peak_memory_bandwidth, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %format8 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 4
  %swap = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 5
  %call9 = tail call i32 @tegra_plane_format(i32 noundef %18, ptr noundef %format8, ptr noundef %swap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 8
  %has_legacy_blending = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %has_legacy_blending to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_legacy_blending, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @tegra_plane_setup_legacy_state(ptr noundef %plane, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then13.cleanup_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %23 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fb, align 4
  %call20 = tail call i32 @tegra_fb_get_tiling(ptr noundef %24, ptr noundef %tiling3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %tiling3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tiling3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp24 = icmp eq i32 %26, 2
  br i1 %cmp24, label %land.lhs.true, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end23
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 8
  %supports_block_linear = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %supports_block_linear to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %supports_block_linear, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %31 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb, align 4
  %call30 = tail call zeroext i1 @tegra_fb_is_bottom_up(ptr noundef %32) #11
  %or = or i32 %7, 32
  %spec.select = select i1 %call30, i32 %or, i32 %7
  %call33 = tail call i32 @drm_rotation_simplify(i32 noundef %spec.select, i32 noundef 49) #11
  %33 = trunc i32 %call33 to i8
  %34 = lshr i8 %33, 4
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %35, ptr %36, align 4
  %38 = trunc i32 %call33 to i8
  %39 = lshr i8 %38, 5
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %40, ptr %41, align 1
  %43 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fb, align 4
  %format45 = getelementptr inbounds %struct.drm_framebuffer, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %format45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %format45, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp46 = icmp ugt i8 %48, 2
  br i1 %cmp46, label %if.then48, label %if.end28.if.end57_crit_edge

if.end28.if.end57_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then48:                                        ; preds = %if.end28
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %44, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 8
  %arrayidx52 = getelementptr %struct.drm_framebuffer, ptr %44, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp53.not = icmp eq i32 %50, %52
  br i1 %cmp53.not, label %if.then48.if.end57_crit_edge, label %if.then55

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end57:                                         ; preds = %if.then48.if.end57_crit_edge, %if.end28.if.end57_crit_edge
  %call58 = tail call i32 @tegra_plane_state_add(ptr noundef %plane, ptr noundef %5) #11
  %53 = tail call i32 @llvm.smin.i32(i32 %call58, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then55, %if.then27, %if.end18.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then55 ], [ -22, %if.then27 ], [ 0, %if.then ], [ %call9, %if.end.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %53, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_update(ptr noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %planar.i = alloca i8, align 1
  %window = alloca %struct.tegra_dc_window, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb2, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %window) #11
  %8 = call ptr @memset(ptr %window, i32 255, i32 84)
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb2, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %visible, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tegra_plane_atomic_disable(ptr noundef %plane, ptr noundef %state)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %15 = call ptr @memset(ptr %window, i32 0, i32 84)
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src, align 4
  %shr = ashr i32 %17, 16
  %18 = ptrtoint ptr %window to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %window, align 4
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y1, align 4
  %shr11 = ashr i32 %20, 16
  %y = getelementptr inbounds %struct.anon.100, ptr %window, i32 0, i32 1
  %21 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr11, ptr %y, align 4
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x2.i, align 4
  %sub.i = sub i32 %23, %17
  %shr15 = ashr i32 %sub.i, 16
  %w = getelementptr inbounds %struct.anon.100, ptr %window, i32 0, i32 2
  %24 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr15, ptr %w, align 4
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %25 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y2.i, align 4
  %sub.i93 = sub i32 %26, %20
  %shr19 = ashr i32 %sub.i93, 16
  %h = getelementptr inbounds %struct.anon.100, ptr %window, i32 0, i32 3
  %27 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr19, ptr %h, align 4
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst, align 4
  %dst22 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 1
  %30 = ptrtoint ptr %dst22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dst22, align 4
  %y125 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %y125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y125, align 4
  %y27 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %y27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %y27, align 4
  %x2.i94 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %34 = ptrtoint ptr %x2.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %x2.i94, align 4
  %sub.i95 = sub i32 %35, %29
  %w31 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %w31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i95, ptr %w31, align 4
  %y2.i96 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %37 = ptrtoint ptr %y2.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y2.i96, align 4
  %sub.i98 = sub i32 %38, %32
  %h35 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %h35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i98, ptr %h35, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %40 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %format, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, ptr %41, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 2
  %conv = zext i8 %44 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %bits_per_pixel = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 2
  %45 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %bits_per_pixel, align 4
  %reflect_x = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 6
  %46 = ptrtoint ptr %reflect_x to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reflect_x, align 4, !range !702
  %reflect_x37 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 6
  %48 = ptrtoint ptr %reflect_x37 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %reflect_x37, align 4
  %reflect_y = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 7
  %49 = ptrtoint ptr %reflect_y to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reflect_y, align 1, !range !702
  %reflect_y39 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 7
  %51 = ptrtoint ptr %reflect_y39 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %reflect_y39, align 1
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %52 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %normalized_zpos, align 4
  %zpos = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 5
  %54 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %zpos, align 4
  %tiling = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 8
  %tiling41 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3
  %55 = call ptr @memcpy(ptr %tiling, ptr %tiling41, i32 12)
  %format42 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 4
  %56 = ptrtoint ptr %format42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %format42, align 4
  %format43 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 9
  %58 = ptrtoint ptr %format43 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %format43, align 4
  %swap = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 5
  %59 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %swap, align 4
  %swap44 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 10
  %61 = ptrtoint ptr %swap44 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %swap44, align 4
  %62 = load ptr, ptr %format, align 8
  %num_planes101 = getelementptr inbounds %struct.drm_format_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %num_planes101 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_planes101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp103.not = icmp eq i8 %64, 0
  br i1 %cmp103.not, label %if.end8.for.end_crit_edge, label %for.inc.peel

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.peel:                                     ; preds = %if.end8
  %arrayidx48.peel = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 0
  %65 = ptrtoint ptr %arrayidx48.peel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx48.peel, align 4
  %arrayidx49.peel = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 0
  %67 = ptrtoint ptr %arrayidx49.peel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx49.peel, align 4
  %add.peel = add i32 %68, %66
  %arrayidx50.peel = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 4, i32 0
  %69 = ptrtoint ptr %arrayidx50.peel to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.peel, ptr %arrayidx50.peel, align 4
  %arrayidx54.peel = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 0
  %70 = ptrtoint ptr %arrayidx54.peel to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx54.peel, align 4
  %arrayidx55.peel = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 3, i32 0
  %72 = ptrtoint ptr %arrayidx55.peel to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx55.peel, align 4
  %73 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %format, align 8
  %num_planes.peel = getelementptr inbounds %struct.drm_format_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %num_planes.peel to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_planes.peel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp.peel = icmp ugt i8 %76, 1
  br i1 %cmp.peel, label %for.inc.peel116, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.peel116:                                  ; preds = %for.inc.peel
  %arrayidx48.peel108 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %arrayidx48.peel108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx48.peel108, align 4
  %arrayidx49.peel109 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %arrayidx49.peel109 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx49.peel109, align 4
  %add.peel110 = add i32 %80, %78
  %arrayidx50.peel111 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %arrayidx50.peel111 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.peel110, ptr %arrayidx50.peel111, align 4
  %arrayidx54.peel114 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %arrayidx54.peel114 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx54.peel114, align 4
  %arrayidx55.peel115 = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %arrayidx55.peel115 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx55.peel115, align 4
  %85 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %format, align 8
  %num_planes.peel118 = getelementptr inbounds %struct.drm_format_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %num_planes.peel118 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_planes.peel118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp.peel120 = icmp ugt i8 %88, 2
  br i1 %cmp.peel120, label %for.inc.peel116.for.inc_crit_edge, label %for.inc.peel116.for.end_crit_edge

for.inc.peel116.for.end_crit_edge:                ; preds = %for.inc.peel116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.peel116.for.inc_crit_edge:                ; preds = %for.inc.peel116
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel116.for.inc_crit_edge
  %i.0104 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 2, %for.inc.peel116.for.inc_crit_edge ]
  %arrayidx48 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 %i.0104
  %89 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 7, i32 %i.0104
  %91 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx49, align 4
  %add = add i32 %92, %90
  %arrayidx50 = getelementptr %struct.tegra_dc_window, ptr %window, i32 0, i32 4, i32 %i.0104
  %93 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add, ptr %arrayidx50, align 4
  %inc = add nuw nsw i32 %i.0104, 1
  %94 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %num_planes, align 1
  %conv46 = zext i8 %97 to i32
  %cmp = icmp ult i32 %inc, %conv46
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !715

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel116.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %if.end8.for.end_crit_edge
  %dc1.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %98 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dc1.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %planar.i) #11
  %100 = ptrtoint ptr %planar.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -1, ptr %planar.i, align 1, !annotation !709
  %101 = ptrtoint ptr %format43 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %format43, align 4
  %call.i = call zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %102, ptr noundef nonnull %planar.i, ptr noundef null) #11
  br i1 %call.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bits_per_pixel, align 4
  %div246.i = lshr i32 %104, 3
  br label %if.end.i

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %planar.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %planar.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool2.not.i = icmp eq i8 %106, 0
  %cond.i = select i1 %tobool2.not.i, i32 2, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %bpp.0.i = phi i32 [ %cond.i, %if.else.i ], [ %div246.i, %if.then.i ]
  %107 = ptrtoint ptr %format43 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %format43, align 4
  %109 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dc1.i, align 8
  %offset10.i.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 2
  %111 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i.i = add i32 %112, 387
  %dev.i2.i.i = getelementptr inbounds %struct.tegra_dc, ptr %110, i32 0, i32 2
  %113 = ptrtoint ptr %dev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i2.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %114, i32 noundef %add42.i.i.i, i32 noundef %108) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %115 = call i32 @llvm.bswap.i32(i32 %108) #11
  %regs.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %110, i32 0, i32 8
  %116 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i.i.i, align 8
  %shl.i.i.i = shl i32 %add42.i.i.i, 2
  %add.ptr.i.i.i = getelementptr i8, ptr %117, i32 %shl.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %115) #11, !srcloc !701
  %118 = ptrtoint ptr %swap44 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %swap44, align 4
  %120 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dc1.i, align 8
  %122 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i251.i = add i32 %123, 385
  %dev.i2.i252.i = getelementptr inbounds %struct.tegra_dc, ptr %121, i32 0, i32 2
  %124 = ptrtoint ptr %dev.i2.i252.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i2.i252.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %125, i32 noundef %add42.i.i251.i, i32 noundef %119) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %126 = call i32 @llvm.bswap.i32(i32 %119) #11
  %regs.i.i253.i = getelementptr inbounds %struct.tegra_dc, ptr %121, i32 0, i32 8
  %127 = ptrtoint ptr %regs.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i.i253.i, align 8
  %shl.i.i254.i = shl i32 %add42.i.i251.i, 2
  %add.ptr.i.i255.i = getelementptr i8, ptr %128, i32 %shl.i.i254.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i255.i, i32 %126) #11, !srcloc !701
  %129 = ptrtoint ptr %y27 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %y27, align 4
  %and.i = shl i32 %130, 16
  %shl.i = and i32 %and.i, 536805376
  %131 = ptrtoint ptr %dst22 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dst22, align 4
  %and5.i = and i32 %132, 8191
  %or.i = or i32 %shl.i, %and5.i
  %133 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dc1.i, align 8
  %135 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i258.i = add i32 %136, 388
  %dev.i2.i259.i = getelementptr inbounds %struct.tegra_dc, ptr %134, i32 0, i32 2
  %137 = ptrtoint ptr %dev.i2.i259.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i2.i259.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %138, i32 noundef %add42.i.i258.i, i32 noundef %or.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %139 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %regs.i.i260.i = getelementptr inbounds %struct.tegra_dc, ptr %134, i32 0, i32 8
  %140 = ptrtoint ptr %regs.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i260.i, align 8
  %shl.i.i261.i = shl i32 %add42.i.i258.i, 2
  %add.ptr.i.i262.i = getelementptr i8, ptr %141, i32 %shl.i.i261.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i262.i, i32 %139) #11, !srcloc !701
  %142 = ptrtoint ptr %h35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %h35, align 4
  %and8.i = shl i32 %143, 16
  %shl9.i = and i32 %and8.i, 536805376
  %144 = ptrtoint ptr %w31 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %w31, align 4
  %and11.i = and i32 %145, 8191
  %or13.i = or i32 %shl9.i, %and11.i
  %146 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dc1.i, align 8
  %148 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i265.i = add i32 %149, 389
  %dev.i2.i266.i = getelementptr inbounds %struct.tegra_dc, ptr %147, i32 0, i32 2
  %150 = ptrtoint ptr %dev.i2.i266.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i2.i266.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %151, i32 noundef %add42.i.i265.i, i32 noundef %or13.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %152 = call i32 @llvm.bswap.i32(i32 %or13.i) #11
  %regs.i.i267.i = getelementptr inbounds %struct.tegra_dc, ptr %147, i32 0, i32 8
  %153 = ptrtoint ptr %regs.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i267.i, align 8
  %shl.i.i268.i = shl i32 %add42.i.i265.i, 2
  %add.ptr.i.i269.i = getelementptr i8, ptr %154, i32 %shl.i.i268.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i269.i, i32 %152) #11, !srcloc !701
  %155 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %window, align 4
  %mul.i = mul i32 %156, %bpp.0.i
  %157 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %y, align 4
  %159 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %w, align 4
  %mul19.i = mul i32 %160, %bpp.0.i
  %161 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %h, align 4
  %163 = ptrtoint ptr %reflect_x37 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %reflect_x37, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool22.not.i = icmp eq i8 %164, 0
  %sub.i99 = add i32 %160, -1
  %mul26.i = mul i32 %sub.i99, %bpp.0.i
  %add.i = select i1 %tobool22.not.i, i32 0, i32 %mul26.i
  %h_offset.0.i = add i32 %add.i, %mul.i
  %165 = ptrtoint ptr %reflect_y39 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %reflect_y39, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool28.not.i = icmp eq i8 %166, 0
  %sub32.i = add i32 %162, -1
  %add33.i = select i1 %tobool28.not.i, i32 0, i32 %sub32.i
  %v_offset.0.i = add i32 %add33.i, %158
  %and35.i = shl i32 %162, 16
  %shl36.i = and i32 %and35.i, 536805376
  %and37.i = and i32 %mul19.i, 32767
  %or39.i = or i32 %shl36.i, %and37.i
  %167 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dc1.i, align 8
  %169 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i272.i = add i32 %170, 390
  %dev.i2.i273.i = getelementptr inbounds %struct.tegra_dc, ptr %168, i32 0, i32 2
  %171 = ptrtoint ptr %dev.i2.i273.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i2.i273.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %172, i32 noundef %add42.i.i272.i, i32 noundef %or39.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %173 = call i32 @llvm.bswap.i32(i32 %or39.i) #11
  %regs.i.i274.i = getelementptr inbounds %struct.tegra_dc, ptr %168, i32 0, i32 8
  %174 = ptrtoint ptr %regs.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i.i274.i, align 8
  %shl.i.i275.i = shl i32 %add42.i.i272.i, 2
  %add.ptr.i.i276.i = getelementptr i8, ptr %175, i32 %shl.i.i275.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i276.i, i32 %173) #11, !srcloc !701
  br i1 %call.i, label %land.lhs.true.i, label %if.end.i.if.end43.i_crit_edge

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %176 = ptrtoint ptr %planar.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %planar.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool41.not.i = icmp eq i8 %177, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.if.end43.i_crit_edge, label %if.end43.thread.i

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end43.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %178 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %w, align 4
  %180 = ptrtoint ptr %w31 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %w31, align 4
  br label %if.end37.i.i

if.end43.i:                                       ; preds = %land.lhs.true.i.if.end43.i_crit_edge, %if.end.i.if.end43.i_crit_edge
  %182 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %w, align 4
  %184 = ptrtoint ptr %w31 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %w31, align 4
  %186 = zext i32 %bpp.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %bpp.0.i, label %land.end.i.i [
    i32 2, label %if.end43.i.if.end37.i.i_crit_edge
    i32 4, label %if.end43.i.sw.bb36.i.i_crit_edge
  ]

if.end43.i.sw.bb36.i.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i.i

if.end43.i.if.end37.i.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i.i

land.end.i.i:                                     ; preds = %if.end43.i
  %.b58.i.i = load i1, ptr @compute_dda_inc.__already_done, align 1
  br i1 %.b58.i.i, label %land.end.i.i.sw.bb36.i.i_crit_edge, label %if.then7.i.i, !prof !704

land.end.i.i.sw.bb36.i.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @compute_dda_inc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 141, i32 noundef 9, ptr noundef null) #11
  br label %sw.bb36.i.i

sw.bb36.i.i:                                      ; preds = %if.then7.i.i, %land.end.i.i.sw.bb36.i.i_crit_edge, %if.end43.i.sw.bb36.i.i_crit_edge
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %sw.bb36.i.i, %if.end43.i.if.end37.i.i_crit_edge, %if.end43.thread.i
  %shl1.i714.in.i = phi i32 [ %183, %sw.bb36.i.i ], [ %183, %if.end43.i.if.end37.i.i_crit_edge ], [ %179, %if.end43.thread.i ]
  %shl.i713.in.i = phi i32 [ %185, %sw.bb36.i.i ], [ %185, %if.end43.i.if.end37.i.i_crit_edge ], [ %181, %if.end43.thread.i ]
  %max.0.i.i = phi i32 [ 16384, %sw.bb36.i.i ], [ 32768, %if.end43.i.if.end37.i.i_crit_edge ], [ 32768, %if.end43.thread.i ]
  %shl.i713.i = shl i32 %shl.i713.in.i, 12
  %shl1.i714.i = shl i32 %shl1.i714.in.i, 12
  %sub.i.i = add i32 %shl.i713.i, -4096
  %187 = call i32 @llvm.umax.i32(i32 %sub.i.i, i32 4096) #11
  %sub39.i.i = add i32 %shl1.i714.i, -4096
  %conv.i.i.i = zext i32 %sub39.i.i to i64
  %shl.i.i277.i = shl nuw nsw i64 %conv.i.i.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %sub39.i.i)
  %cmp169.i.i.i = icmp ult i32 %sub39.i.i, 524288
  br i1 %cmp169.i.i.i, label %if.then173.i.i.i, label %if.else179.i.i.i, !prof !704

if.then173.i.i.i:                                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i.i = trunc i64 %shl.i.i277.i to i32
  %div177.i.i.i = udiv i32 %conv174.i.i.i, %187
  %conv178.i.i.i = zext i32 %div177.i.i.i to i64
  br label %compute_dda_inc.exit.i

if.else179.i.i.i:                                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %188 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %187, i64 %shl.i.i277.i) #16, !srcloc !717
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %188, 1
  br label %compute_dda_inc.exit.i

compute_dda_inc.exit.i:                           ; preds = %if.else179.i.i.i, %if.then173.i.i.i
  %tmp.0.i.i.i = phi i64 [ %conv178.i.i.i, %if.then173.i.i.i ], [ %asmresult1.i.i.i.i, %if.else179.i.i.i ]
  %add185.i.i.i = add i64 %tmp.0.i.i.i, 1
  %div186268.i.i.i = lshr i64 %add185.i.i.i, 1
  %conv188.i.i.i = trunc i64 %div186268.i.i.i to i32
  %189 = call i32 @llvm.umin.i32(i32 %max.0.i.i, i32 %conv188.i.i.i) #11
  %190 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %h, align 4
  %192 = ptrtoint ptr %h35 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %h35, align 4
  %shl.i278.i = shl i32 %193, 12
  %shl1.i279.i = shl i32 %191, 12
  %sub.i281.i = add i32 %shl.i278.i, -4096
  %194 = call i32 @llvm.umax.i32(i32 %sub.i281.i, i32 4096) #11
  %sub39.i282.i = add i32 %shl1.i279.i, -4096
  %conv.i.i283.i = zext i32 %sub39.i282.i to i64
  %shl.i.i284.i = shl nuw nsw i64 %conv.i.i283.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %sub39.i282.i)
  %cmp169.i.i387.i = icmp ult i32 %sub39.i282.i, 524288
  br i1 %cmp169.i.i387.i, label %if.then173.i.i392.i, label %if.else179.i.i394.i, !prof !704

if.then173.i.i392.i:                              ; preds = %compute_dda_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i389.i = trunc i64 %shl.i.i284.i to i32
  %div177.i.i390.i = udiv i32 %conv174.i.i389.i, %194
  %conv178.i.i391.i = zext i32 %div177.i.i390.i to i64
  br label %compute_dda_inc.exit399.i

if.else179.i.i394.i:                              ; preds = %compute_dda_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %194, i64 %shl.i.i284.i) #16, !srcloc !717
  %asmresult1.i.i.i393.i = extractvalue { i64, i64 } %195, 1
  br label %compute_dda_inc.exit399.i

compute_dda_inc.exit399.i:                        ; preds = %if.else179.i.i394.i, %if.then173.i.i392.i
  %tmp.0.i.i395.i = phi i64 [ %conv178.i.i391.i, %if.then173.i.i392.i ], [ %asmresult1.i.i.i393.i, %if.else179.i.i394.i ]
  %add185.i.i396.i = add i64 %tmp.0.i.i395.i, 1
  %div186268.i.i397.i = lshr i64 %add185.i.i396.i, 1
  %conv188.i.i398.i = trunc i64 %div186268.i.i397.i to i32
  %196 = call i32 @llvm.umin.i32(i32 %conv188.i.i398.i, i32 61440) #11
  %shl55.i = shl nuw i32 %196, 16
  %or58.i = or i32 %shl55.i, %189
  %197 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dc1.i, align 8
  %199 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i402.i = add i32 %200, 393
  %dev.i2.i403.i = getelementptr inbounds %struct.tegra_dc, ptr %198, i32 0, i32 2
  %201 = ptrtoint ptr %dev.i2.i403.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i2.i403.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %202, i32 noundef %add42.i.i402.i, i32 noundef %or58.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %203 = call i32 @llvm.bswap.i32(i32 %or58.i) #11
  %regs.i.i404.i = getelementptr inbounds %struct.tegra_dc, ptr %198, i32 0, i32 8
  %204 = ptrtoint ptr %regs.i.i404.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i404.i, align 8
  %shl.i.i405.i = shl i32 %add42.i.i402.i, 2
  %add.ptr.i.i406.i = getelementptr i8, ptr %205, i32 %shl.i.i405.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i406.i, i32 %203) #11, !srcloc !701
  %206 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dc1.i, align 8
  %208 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i409.i = add i32 %209, 391
  %dev.i2.i410.i = getelementptr inbounds %struct.tegra_dc, ptr %207, i32 0, i32 2
  %210 = ptrtoint ptr %dev.i2.i410.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i2.i410.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %211, i32 noundef %add42.i.i409.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i411.i = getelementptr inbounds %struct.tegra_dc, ptr %207, i32 0, i32 8
  %212 = ptrtoint ptr %regs.i.i411.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i411.i, align 8
  %shl.i.i412.i = shl i32 %add42.i.i409.i, 2
  %add.ptr.i.i413.i = getelementptr i8, ptr %213, i32 %shl.i.i412.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i413.i, i32 0) #11, !srcloc !701
  %214 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dc1.i, align 8
  %216 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i416.i = add i32 %217, 392
  %dev.i2.i417.i = getelementptr inbounds %struct.tegra_dc, ptr %215, i32 0, i32 2
  %218 = ptrtoint ptr %dev.i2.i417.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev.i2.i417.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %219, i32 noundef %add42.i.i416.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i418.i = getelementptr inbounds %struct.tegra_dc, ptr %215, i32 0, i32 8
  %220 = ptrtoint ptr %regs.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regs.i.i418.i, align 8
  %shl.i.i419.i = shl i32 %add42.i.i416.i, 2
  %add.ptr.i.i420.i = getelementptr i8, ptr %221, i32 %shl.i.i419.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i420.i, i32 0) #11, !srcloc !701
  %222 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dc1.i, align 8
  %224 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i423.i = add i32 %225, 396
  %dev.i2.i424.i = getelementptr inbounds %struct.tegra_dc, ptr %223, i32 0, i32 2
  %226 = ptrtoint ptr %dev.i2.i424.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev.i2.i424.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %227, i32 noundef %add42.i.i423.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i425.i = getelementptr inbounds %struct.tegra_dc, ptr %223, i32 0, i32 8
  %228 = ptrtoint ptr %regs.i.i425.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs.i.i425.i, align 8
  %shl.i.i426.i = shl i32 %add42.i.i423.i, 2
  %add.ptr.i.i427.i = getelementptr i8, ptr %229, i32 %shl.i.i426.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i427.i, i32 0) #11, !srcloc !701
  %230 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dc1.i, align 8
  %232 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i430.i = add i32 %233, 395
  %dev.i2.i431.i = getelementptr inbounds %struct.tegra_dc, ptr %231, i32 0, i32 2
  %234 = ptrtoint ptr %dev.i2.i431.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev.i2.i431.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %235, i32 noundef %add42.i.i430.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i432.i = getelementptr inbounds %struct.tegra_dc, ptr %231, i32 0, i32 8
  %236 = ptrtoint ptr %regs.i.i432.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i.i432.i, align 8
  %shl.i.i433.i = shl i32 %add42.i.i430.i, 2
  %add.ptr.i.i434.i = getelementptr i8, ptr %237, i32 %shl.i.i433.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i434.i, i32 0) #11, !srcloc !701
  %base.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 4
  %238 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %base.i, align 4
  %240 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dc1.i, align 8
  %242 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i437.i = add i32 %243, 448
  %dev.i2.i438.i = getelementptr inbounds %struct.tegra_dc, ptr %241, i32 0, i32 2
  %244 = ptrtoint ptr %dev.i2.i438.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev.i2.i438.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %245, i32 noundef %add42.i.i437.i, i32 noundef %239) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %246 = call i32 @llvm.bswap.i32(i32 %239) #11
  %regs.i.i439.i = getelementptr inbounds %struct.tegra_dc, ptr %241, i32 0, i32 8
  %247 = ptrtoint ptr %regs.i.i439.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs.i.i439.i, align 8
  %shl.i.i440.i = shl i32 %add42.i.i437.i, 2
  %add.ptr.i.i441.i = getelementptr i8, ptr %248, i32 %shl.i.i440.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i441.i, i32 %246) #11, !srcloc !701
  br i1 %call.i, label %land.lhs.true66.i, label %compute_dda_inc.exit399.i.if.else78.i_crit_edge

compute_dda_inc.exit399.i.if.else78.i_crit_edge:  ; preds = %compute_dda_inc.exit399.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78.i

land.lhs.true66.i:                                ; preds = %compute_dda_inc.exit399.i
  %249 = ptrtoint ptr %planar.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %planar.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool67.not.i = icmp eq i8 %250, 0
  br i1 %tobool67.not.i, label %land.lhs.true66.i.if.else78.i_crit_edge, label %if.then68.i

land.lhs.true66.i.if.else78.i_crit_edge:          ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78.i

if.then68.i:                                      ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx70.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 4, i32 1
  %251 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx70.i, align 4
  %253 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dc1.i, align 8
  %255 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i445.i = add i32 %256, 450
  %dev.i2.i446.i = getelementptr inbounds %struct.tegra_dc, ptr %254, i32 0, i32 2
  %257 = ptrtoint ptr %dev.i2.i446.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i2.i446.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %258, i32 noundef %add42.i.i445.i, i32 noundef %252) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %259 = call i32 @llvm.bswap.i32(i32 %252) #11
  %regs.i.i447.i = getelementptr inbounds %struct.tegra_dc, ptr %254, i32 0, i32 8
  %260 = ptrtoint ptr %regs.i.i447.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i.i447.i, align 8
  %shl.i.i448.i = shl i32 %add42.i.i445.i, 2
  %add.ptr.i.i449.i = getelementptr i8, ptr %261, i32 %shl.i.i448.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i449.i, i32 %259) #11, !srcloc !701
  %arrayidx72.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 4, i32 2
  %262 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx72.i, align 4
  %264 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dc1.i, align 8
  %266 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i453.i = add i32 %267, 452
  %dev.i2.i454.i = getelementptr inbounds %struct.tegra_dc, ptr %265, i32 0, i32 2
  %268 = ptrtoint ptr %dev.i2.i454.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev.i2.i454.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %269, i32 noundef %add42.i.i453.i, i32 noundef %263) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %270 = call i32 @llvm.bswap.i32(i32 %263) #11
  %regs.i.i455.i = getelementptr inbounds %struct.tegra_dc, ptr %265, i32 0, i32 8
  %271 = ptrtoint ptr %regs.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i.i455.i, align 8
  %shl.i.i456.i = shl i32 %add42.i.i453.i, 2
  %add.ptr.i.i457.i = getelementptr i8, ptr %272, i32 %shl.i.i456.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i457.i, i32 %270) #11, !srcloc !701
  %stride.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 3
  %arrayidx73.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 3, i32 1
  %273 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx73.i, align 4
  %shl74.i = shl i32 %274, 16
  %275 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %stride.i, align 4
  %or77.i = or i32 %shl74.i, %276
  %277 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dc1.i, align 8
  %279 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i460.i = add i32 %280, 394
  %dev.i2.i461.i = getelementptr inbounds %struct.tegra_dc, ptr %278, i32 0, i32 2
  %281 = ptrtoint ptr %dev.i2.i461.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev.i2.i461.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %282, i32 noundef %add42.i.i460.i, i32 noundef %or77.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %283 = call i32 @llvm.bswap.i32(i32 %or77.i) #11
  %regs.i.i462.i = getelementptr inbounds %struct.tegra_dc, ptr %278, i32 0, i32 8
  %284 = ptrtoint ptr %regs.i.i462.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs.i.i462.i, align 8
  %shl.i.i463.i = shl i32 %add42.i.i460.i, 2
  %add.ptr.i.i464.i = getelementptr i8, ptr %285, i32 %shl.i.i463.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i464.i, i32 %283) #11, !srcloc !701
  br label %if.end81.i

if.else78.i:                                      ; preds = %land.lhs.true66.i.if.else78.i_crit_edge, %compute_dda_inc.exit399.i.if.else78.i_crit_edge
  %stride79.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 3
  %286 = ptrtoint ptr %stride79.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %stride79.i, align 4
  %288 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dc1.i, align 8
  %290 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i467.i = add i32 %291, 394
  %dev.i2.i468.i = getelementptr inbounds %struct.tegra_dc, ptr %289, i32 0, i32 2
  %292 = ptrtoint ptr %dev.i2.i468.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i2.i468.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %293, i32 noundef %add42.i.i467.i, i32 noundef %287) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %294 = call i32 @llvm.bswap.i32(i32 %287) #11
  %regs.i.i469.i = getelementptr inbounds %struct.tegra_dc, ptr %289, i32 0, i32 8
  %295 = ptrtoint ptr %regs.i.i469.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs.i.i469.i, align 8
  %shl.i.i470.i = shl i32 %add42.i.i467.i, 2
  %add.ptr.i.i471.i = getelementptr i8, ptr %296, i32 %shl.i.i470.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i471.i, i32 %294) #11, !srcloc !701
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else78.i, %if.then68.i
  %value.0.i = phi i32 [ %or77.i, %if.then68.i ], [ %or58.i, %if.else78.i ]
  %297 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dc1.i, align 8
  %299 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i475.i = add i32 %300, 454
  %dev.i2.i476.i = getelementptr inbounds %struct.tegra_dc, ptr %298, i32 0, i32 2
  %301 = ptrtoint ptr %dev.i2.i476.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev.i2.i476.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %302, i32 noundef %add42.i.i475.i, i32 noundef %h_offset.0.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %303 = call i32 @llvm.bswap.i32(i32 %h_offset.0.i) #11
  %regs.i.i477.i = getelementptr inbounds %struct.tegra_dc, ptr %298, i32 0, i32 8
  %304 = ptrtoint ptr %regs.i.i477.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regs.i.i477.i, align 8
  %shl.i.i478.i = shl i32 %add42.i.i475.i, 2
  %add.ptr.i.i479.i = getelementptr i8, ptr %305, i32 %shl.i.i478.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i479.i, i32 %303) #11, !srcloc !701
  %306 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dc1.i, align 8
  %308 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i483.i = add i32 %309, 456
  %dev.i2.i484.i = getelementptr inbounds %struct.tegra_dc, ptr %307, i32 0, i32 2
  %310 = ptrtoint ptr %dev.i2.i484.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i2.i484.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %311, i32 noundef %add42.i.i483.i, i32 noundef %v_offset.0.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %312 = call i32 @llvm.bswap.i32(i32 %v_offset.0.i) #11
  %regs.i.i485.i = getelementptr inbounds %struct.tegra_dc, ptr %307, i32 0, i32 8
  %313 = ptrtoint ptr %regs.i.i485.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs.i.i485.i, align 8
  %shl.i.i486.i = shl i32 %add42.i.i483.i, 2
  %add.ptr.i.i487.i = getelementptr i8, ptr %314, i32 %shl.i.i486.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i487.i, i32 %312) #11, !srcloc !701
  %soc.i = getelementptr inbounds %struct.tegra_dc, ptr %99, i32 0, i32 14
  %315 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %soc.i, align 8
  %supports_block_linear.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %supports_block_linear.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %supports_block_linear.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool82.not.i = icmp eq i8 %318, 0
  %319 = ptrtoint ptr %tiling to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %tiling, align 4
  br i1 %tobool82.not.i, label %if.else91.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end81.i
  %321 = zext i32 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %320, label %if.then83.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb86.i
    i32 2, label %sw.bb87.i
  ]

if.then83.i.sw.epilog.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb86.i:                                        ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  %value84.i = getelementptr inbounds %struct.tegra_dc_window, ptr %window, i32 0, i32 8, i32 1
  %322 = ptrtoint ptr %value84.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %value84.i, align 4
  %and88.i = shl i32 %323, 4
  %shl89.i = and i32 %and88.i, 112
  %or90.i = or i32 %shl89.i, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb87.i, %sw.bb86.i, %sw.bb.i, %if.then83.i.sw.epilog.i_crit_edge
  %value.1.i = phi i32 [ %value.0.i, %if.then83.i.sw.epilog.i_crit_edge ], [ %or90.i, %sw.bb87.i ], [ %320, %sw.bb86.i ], [ %320, %sw.bb.i ]
  %324 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dc1.i, align 8
  %326 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i491.i = add i32 %327, 459
  %dev.i2.i492.i = getelementptr inbounds %struct.tegra_dc, ptr %325, i32 0, i32 2
  %328 = ptrtoint ptr %dev.i2.i492.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev.i2.i492.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %329, i32 noundef %add42.i.i491.i, i32 noundef %value.1.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %330 = call i32 @llvm.bswap.i32(i32 %value.1.i) #11
  %regs.i.i493.i = getelementptr inbounds %struct.tegra_dc, ptr %325, i32 0, i32 8
  %331 = ptrtoint ptr %regs.i.i493.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %regs.i.i493.i, align 8
  %shl.i.i494.i = shl i32 %add42.i.i491.i, 2
  %add.ptr.i.i495.i = getelementptr i8, ptr %332, i32 %shl.i.i494.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i495.i, i32 %330) #11, !srcloc !701
  br label %if.end97.i

if.else91.i:                                      ; preds = %if.end81.i
  %333 = zext i32 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %320, label %if.else91.i.sw.epilog96.i_crit_edge [
    i32 0, label %sw.bb94.i
    i32 1, label %sw.bb95.i
  ]

if.else91.i.sw.epilog96.i_crit_edge:              ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog96.i

sw.bb94.i:                                        ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog96.i

sw.bb95.i:                                        ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog96.i

sw.epilog96.i:                                    ; preds = %sw.bb95.i, %sw.bb94.i, %if.else91.i.sw.epilog96.i_crit_edge
  %value.2.i = phi i32 [ %value.0.i, %if.else91.i.sw.epilog96.i_crit_edge ], [ 65537, %sw.bb95.i ], [ 0, %sw.bb94.i ]
  %334 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dc1.i, align 8
  %336 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i498.i = add i32 %337, 397
  %dev.i2.i499.i = getelementptr inbounds %struct.tegra_dc, ptr %335, i32 0, i32 2
  %338 = ptrtoint ptr %dev.i2.i499.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev.i2.i499.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %339, i32 noundef %add42.i.i498.i, i32 noundef %value.2.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %340 = call i32 @llvm.bswap.i32(i32 %value.2.i) #11
  %regs.i.i500.i = getelementptr inbounds %struct.tegra_dc, ptr %335, i32 0, i32 8
  %341 = ptrtoint ptr %regs.i.i500.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs.i.i500.i, align 8
  %shl.i.i501.i = shl i32 %add42.i.i498.i, 2
  %add.ptr.i.i502.i = getelementptr i8, ptr %342, i32 %shl.i.i501.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i502.i, i32 %340) #11, !srcloc !701
  br label %if.end97.i

if.end97.i:                                       ; preds = %sw.epilog96.i, %sw.epilog.i
  br i1 %call.i, label %if.then99.i, label %if.else101.i

if.then99.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  %343 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dc1.i, align 8
  %345 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i504.i = add i32 %346, 273
  %dev.i2.i505.i = getelementptr inbounds %struct.tegra_dc, ptr %344, i32 0, i32 2
  %347 = ptrtoint ptr %dev.i2.i505.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev.i2.i505.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %348, i32 noundef %add42.i.i504.i, i32 noundef 240) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i506.i = getelementptr inbounds %struct.tegra_dc, ptr %344, i32 0, i32 8
  %349 = ptrtoint ptr %regs.i.i506.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %regs.i.i506.i, align 8
  %shl.i.i507.i = shl i32 %add42.i.i504.i, 2
  %add.ptr.i.i508.i = getelementptr i8, ptr %350, i32 %shl.i.i507.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i508.i, i32 -268435456) #11, !srcloc !701
  %351 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dc1.i, align 8
  %353 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i511.i = add i32 %354, 274
  %dev.i2.i512.i = getelementptr inbounds %struct.tegra_dc, ptr %352, i32 0, i32 2
  %355 = ptrtoint ptr %dev.i2.i512.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev.i2.i512.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %356, i32 noundef %add42.i.i511.i, i32 noundef 298) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i513.i = getelementptr inbounds %struct.tegra_dc, ptr %352, i32 0, i32 8
  %357 = ptrtoint ptr %regs.i.i513.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %regs.i.i513.i, align 8
  %shl.i.i514.i = shl i32 %add42.i.i511.i, 2
  %add.ptr.i.i515.i = getelementptr i8, ptr %358, i32 %shl.i.i514.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i515.i, i32 704708608) #11, !srcloc !701
  %359 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dc1.i, align 8
  %361 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i518.i = add i32 %362, 275
  %dev.i2.i519.i = getelementptr inbounds %struct.tegra_dc, ptr %360, i32 0, i32 2
  %363 = ptrtoint ptr %dev.i2.i519.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev.i2.i519.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %364, i32 noundef %add42.i.i518.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i520.i = getelementptr inbounds %struct.tegra_dc, ptr %360, i32 0, i32 8
  %365 = ptrtoint ptr %regs.i.i520.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %regs.i.i520.i, align 8
  %shl.i.i521.i = shl i32 %add42.i.i518.i, 2
  %add.ptr.i.i522.i = getelementptr i8, ptr %366, i32 %shl.i.i521.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i522.i, i32 0) #11, !srcloc !701
  %367 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dc1.i, align 8
  %369 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i525.i = add i32 %370, 276
  %dev.i2.i526.i = getelementptr inbounds %struct.tegra_dc, ptr %368, i32 0, i32 2
  %371 = ptrtoint ptr %dev.i2.i526.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev.i2.i526.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %372, i32 noundef %add42.i.i525.i, i32 noundef 408) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i527.i = getelementptr inbounds %struct.tegra_dc, ptr %368, i32 0, i32 8
  %373 = ptrtoint ptr %regs.i.i527.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %regs.i.i527.i, align 8
  %shl.i.i528.i = shl i32 %add42.i.i525.i, 2
  %add.ptr.i.i529.i = getelementptr i8, ptr %374, i32 %shl.i.i528.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i529.i, i32 -1744764928) #11, !srcloc !701
  %375 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dc1.i, align 8
  %377 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i532.i = add i32 %378, 277
  %dev.i2.i533.i = getelementptr inbounds %struct.tegra_dc, ptr %376, i32 0, i32 2
  %379 = ptrtoint ptr %dev.i2.i533.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev.i2.i533.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %380, i32 noundef %add42.i.i532.i, i32 noundef 923) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i534.i = getelementptr inbounds %struct.tegra_dc, ptr %376, i32 0, i32 8
  %381 = ptrtoint ptr %regs.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %regs.i.i534.i, align 8
  %shl.i.i535.i = shl i32 %add42.i.i532.i, 2
  %add.ptr.i.i536.i = getelementptr i8, ptr %382, i32 %shl.i.i535.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i536.i, i32 -1694302208) #11, !srcloc !701
  %383 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dc1.i, align 8
  %385 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i539.i = add i32 %386, 278
  %dev.i2.i540.i = getelementptr inbounds %struct.tegra_dc, ptr %384, i32 0, i32 2
  %387 = ptrtoint ptr %dev.i2.i540.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev.i2.i540.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %388, i32 noundef %add42.i.i539.i, i32 noundef 815) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i541.i = getelementptr inbounds %struct.tegra_dc, ptr %384, i32 0, i32 8
  %389 = ptrtoint ptr %regs.i.i541.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %regs.i.i541.i, align 8
  %shl.i.i542.i = shl i32 %add42.i.i539.i, 2
  %add.ptr.i.i543.i = getelementptr i8, ptr %390, i32 %shl.i.i542.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i543.i, i32 788725760) #11, !srcloc !701
  %391 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dc1.i, align 8
  %393 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i546.i = add i32 %394, 279
  %dev.i2.i547.i = getelementptr inbounds %struct.tegra_dc, ptr %392, i32 0, i32 2
  %395 = ptrtoint ptr %dev.i2.i547.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dev.i2.i547.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %396, i32 noundef %add42.i.i546.i, i32 noundef 516) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i548.i = getelementptr inbounds %struct.tegra_dc, ptr %392, i32 0, i32 8
  %397 = ptrtoint ptr %regs.i.i548.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %regs.i.i548.i, align 8
  %shl.i.i549.i = shl i32 %add42.i.i546.i, 2
  %add.ptr.i.i550.i = getelementptr i8, ptr %398, i32 %shl.i.i549.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i550.i, i32 67239936) #11, !srcloc !701
  %399 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dc1.i, align 8
  %401 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i553.i = add i32 %402, 280
  %dev.i2.i554.i = getelementptr inbounds %struct.tegra_dc, ptr %400, i32 0, i32 2
  %403 = ptrtoint ptr %dev.i2.i554.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dev.i2.i554.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %404, i32 noundef %add42.i.i553.i, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i555.i = getelementptr inbounds %struct.tegra_dc, ptr %400, i32 0, i32 8
  %405 = ptrtoint ptr %regs.i.i555.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %regs.i.i555.i, align 8
  %shl.i.i556.i = shl i32 %add42.i.i553.i, 2
  %add.ptr.i.i557.i = getelementptr i8, ptr %406, i32 %shl.i.i556.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i557.i, i32 0) #11, !srcloc !701
  br label %if.end106.i

if.else101.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  %407 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %408)
  %cmp.i = icmp ult i32 %408, 24
  %spec.select247.i = select i1 %cmp.i, i32 1073741888, i32 1073741824
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else101.i, %if.then99.i
  %value.3.i = phi i32 [ 1074003968, %if.then99.i ], [ %spec.select247.i, %if.else101.i ]
  %409 = ptrtoint ptr %reflect_x37 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %reflect_x37, align 4, !range !702
  %411 = zext i8 %410 to i32
  %spec.select248.i = or i32 %value.3.i, %411
  %412 = ptrtoint ptr %reflect_y39 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %reflect_y39, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %tobool113.not.i = icmp eq i8 %413, 0
  %or115.i = or i32 %spec.select248.i, 4
  %value.5.i = select i1 %tobool113.not.i, i32 %spec.select248.i, i32 %or115.i
  %414 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %dc1.i, align 8
  %416 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %w, align 4
  %418 = ptrtoint ptr %w31 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %w31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %417, i32 %419)
  %cmp.i.i = icmp eq i32 %417, %419
  br i1 %cmp.i.i, label %if.end106.i.if.end120.i_crit_edge, label %if.end.i.i

if.end106.i.if.end120.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120.i

if.end.i.i:                                       ; preds = %if.end106.i
  %index.i.i100 = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %420 = ptrtoint ptr %index.i.i100 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %index.i.i100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %cmp3.i.i = icmp eq i32 %421, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.then118.i_crit_edge

if.end.i.i.if.then118.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %soc.i.i = getelementptr inbounds %struct.tegra_dc, ptr %415, i32 0, i32 14
  %422 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %soc.i.i, align 8
  %has_win_a_without_filters.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %423, i32 0, i32 17
  %424 = ptrtoint ptr %has_win_a_without_filters.i.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %has_win_a_without_filters.i.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool.not.i.i = icmp eq i8 %425, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.then118.i_crit_edge, label %land.lhs.true.i.i.if.end120.i_crit_edge

land.lhs.true.i.i.if.end120.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120.i

land.lhs.true.i.i.if.then118.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118.i

if.then118.i:                                     ; preds = %land.lhs.true.i.i.if.then118.i_crit_edge, %if.end.i.i.if.then118.i_crit_edge
  %426 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i560.i = add i32 %427, 257
  %dev.i2.i561.i = getelementptr inbounds %struct.tegra_dc, ptr %415, i32 0, i32 2
  %428 = ptrtoint ptr %dev.i2.i561.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev.i2.i561.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %429, i32 noundef %add42.i.i560.i, i32 noundef 32768) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i562.i = getelementptr inbounds %struct.tegra_dc, ptr %415, i32 0, i32 8
  %430 = ptrtoint ptr %regs.i.i562.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %regs.i.i562.i, align 8
  %shl.i.i563.i = shl i32 %add42.i.i560.i, 2
  %add.ptr.i.i564.i = getelementptr i8, ptr %431, i32 %shl.i.i563.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i564.i, i32 8388608) #11, !srcloc !701
  %432 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %dc1.i, align 8
  %434 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i567.i = add i32 %435, 258
  %dev.i2.i568.i = getelementptr inbounds %struct.tegra_dc, ptr %433, i32 0, i32 2
  %436 = ptrtoint ptr %dev.i2.i568.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev.i2.i568.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %437, i32 noundef %add42.i.i567.i, i32 noundef 1040743649) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i569.i = getelementptr inbounds %struct.tegra_dc, ptr %433, i32 0, i32 8
  %438 = ptrtoint ptr %regs.i.i569.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %regs.i.i569.i, align 8
  %shl.i.i570.i = shl i32 %add42.i.i567.i, 2
  %add.ptr.i.i571.i = getelementptr i8, ptr %439, i32 %shl.i.i570.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i571.i, i32 -511965122) #11, !srcloc !701
  %440 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %dc1.i, align 8
  %442 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i574.i = add i32 %443, 259
  %dev.i2.i575.i = getelementptr inbounds %struct.tegra_dc, ptr %441, i32 0, i32 2
  %444 = ptrtoint ptr %dev.i2.i575.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %dev.i2.i575.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %445, i32 noundef %add42.i.i574.i, i32 noundef 991001281) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i576.i = getelementptr inbounds %struct.tegra_dc, ptr %441, i32 0, i32 8
  %446 = ptrtoint ptr %regs.i.i576.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %regs.i.i576.i, align 8
  %shl.i.i577.i = shl i32 %add42.i.i574.i, 2
  %add.ptr.i.i578.i = getelementptr i8, ptr %447, i32 %shl.i.i577.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i578.i, i32 -1048964805) #11, !srcloc !701
  %448 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dc1.i, align 8
  %450 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i581.i = add i32 %451, 260
  %dev.i2.i582.i = getelementptr inbounds %struct.tegra_dc, ptr %449, i32 0, i32 2
  %452 = ptrtoint ptr %dev.i2.i582.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dev.i2.i582.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %453, i32 noundef %add42.i.i581.i, i32 noundef 1494971306) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i583.i = getelementptr inbounds %struct.tegra_dc, ptr %449, i32 0, i32 8
  %454 = ptrtoint ptr %regs.i.i583.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %regs.i.i583.i, align 8
  %shl.i.i584.i = shl i32 %add42.i.i581.i, 2
  %add.ptr.i.i585.i = getelementptr i8, ptr %455, i32 %shl.i.i584.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i585.i, i32 -1435296935) #11, !srcloc !701
  %456 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dc1.i, align 8
  %458 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i588.i = add i32 %459, 261
  %dev.i2.i589.i = getelementptr inbounds %struct.tegra_dc, ptr %457, i32 0, i32 2
  %460 = ptrtoint ptr %dev.i2.i589.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev.i2.i589.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %461, i32 noundef %add42.i.i588.i, i32 noundef 1462070682) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i590.i = getelementptr inbounds %struct.tegra_dc, ptr %457, i32 0, i32 8
  %462 = ptrtoint ptr %regs.i.i590.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %regs.i.i590.i, align 8
  %shl.i.i591.i = shl i32 %add42.i.i588.i, 2
  %add.ptr.i.i592.i = getelementptr i8, ptr %463, i32 %shl.i.i591.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i592.i, i32 -1704123049) #11, !srcloc !701
  %464 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %dc1.i, align 8
  %466 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i595.i = add i32 %467, 262
  %dev.i2.i596.i = getelementptr inbounds %struct.tegra_dc, ptr %465, i32 0, i32 2
  %468 = ptrtoint ptr %dev.i2.i596.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev.i2.i596.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %469, i32 noundef %add42.i.i595.i, i32 noundef 1429169803) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i597.i = getelementptr inbounds %struct.tegra_dc, ptr %465, i32 0, i32 8
  %470 = ptrtoint ptr %regs.i.i597.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %regs.i.i597.i, align 8
  %shl.i.i598.i = shl i32 %add42.i.i595.i, 2
  %add.ptr.i.i599.i = getelementptr i8, ptr %471, i32 %shl.i.i598.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i599.i, i32 -1956237483) #11, !srcloc !701
  %472 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dc1.i, align 8
  %474 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i602.i = add i32 %475, 263
  %dev.i2.i603.i = getelementptr inbounds %struct.tegra_dc, ptr %473, i32 0, i32 2
  %476 = ptrtoint ptr %dev.i2.i603.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %dev.i2.i603.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %477, i32 noundef %add42.i.i602.i, i32 noundef 1933074059) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i604.i = getelementptr inbounds %struct.tegra_dc, ptr %473, i32 0, i32 8
  %478 = ptrtoint ptr %regs.i.i604.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %regs.i.i604.i, align 8
  %shl.i.i605.i = shl i32 %add42.i.i602.i, 2
  %add.ptr.i.i606.i = getelementptr i8, ptr %479, i32 %shl.i.i605.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i606.i, i32 -1956759437) #11, !srcloc !701
  %480 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %dc1.i, align 8
  %482 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i609.i = add i32 %483, 264
  %dev.i2.i610.i = getelementptr inbounds %struct.tegra_dc, ptr %481, i32 0, i32 2
  %484 = ptrtoint ptr %dev.i2.i610.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev.i2.i610.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %485, i32 noundef %add42.i.i609.i, i32 noundef 1917015427) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i611.i = getelementptr inbounds %struct.tegra_dc, ptr %481, i32 0, i32 8
  %486 = ptrtoint ptr %regs.i.i611.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %regs.i.i611.i, align 8
  %shl.i.i612.i = shl i32 %add42.i.i609.i, 2
  %add.ptr.i.i613.i = getelementptr i8, ptr %487, i32 %shl.i.i612.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i613.i, i32 -2091564174) #11, !srcloc !701
  %488 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %dc1.i, align 8
  %490 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i616.i = add i32 %491, 265
  %dev.i2.i617.i = getelementptr inbounds %struct.tegra_dc, ptr %489, i32 0, i32 2
  %492 = ptrtoint ptr %dev.i2.i617.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dev.i2.i617.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %493, i32 noundef %add42.i.i616.i, i32 noundef 1900825739) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i618.i = getelementptr inbounds %struct.tegra_dc, ptr %489, i32 0, i32 8
  %494 = ptrtoint ptr %regs.i.i618.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %regs.i.i618.i, align 8
  %shl.i.i619.i = shl i32 %add42.i.i616.i, 2
  %add.ptr.i.i620.i = getelementptr i8, ptr %495, i32 %shl.i.i619.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i620.i, i32 -1957933967) #11, !srcloc !701
  %496 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dc1.i, align 8
  %498 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i623.i = add i32 %499, 266
  %dev.i2.i624.i = getelementptr inbounds %struct.tegra_dc, ptr %497, i32 0, i32 2
  %500 = ptrtoint ptr %dev.i2.i624.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %dev.i2.i624.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %501, i32 noundef %add42.i.i623.i, i32 noundef 1884636051) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i625.i = getelementptr inbounds %struct.tegra_dc, ptr %497, i32 0, i32 8
  %502 = ptrtoint ptr %regs.i.i625.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %regs.i.i625.i, align 8
  %shl.i.i626.i = shl i32 %add42.i.i623.i, 2
  %add.ptr.i.i627.i = getelementptr i8, ptr %503, i32 %shl.i.i626.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i627.i, i32 -1824303760) #11, !srcloc !701
  %504 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %dc1.i, align 8
  %506 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i630.i = add i32 %507, 267
  %dev.i2.i631.i = getelementptr inbounds %struct.tegra_dc, ptr %505, i32 0, i32 2
  %508 = ptrtoint ptr %dev.i2.i631.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %dev.i2.i631.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %509, i32 noundef %add42.i.i630.i, i32 noundef 1902000283) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i632.i = getelementptr inbounds %struct.tegra_dc, ptr %505, i32 0, i32 8
  %510 = ptrtoint ptr %regs.i.i632.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %regs.i.i632.i, align 8
  %shl.i.i633.i = shl i32 %add42.i.i630.i, 2
  %add.ptr.i.i634.i = getelementptr i8, ptr %511, i32 %shl.i.i633.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i634.i, i32 -1690804623) #11, !srcloc !701
  %512 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dc1.i, align 8
  %514 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i637.i = add i32 %515, 268
  %dev.i2.i638.i = getelementptr inbounds %struct.tegra_dc, ptr %513, i32 0, i32 2
  %516 = ptrtoint ptr %dev.i2.i638.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %dev.i2.i638.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %517, i32 noundef %add42.i.i637.i, i32 noundef 1902522282) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i639.i = getelementptr inbounds %struct.tegra_dc, ptr %513, i32 0, i32 8
  %518 = ptrtoint ptr %regs.i.i639.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %regs.i.i639.i, align 8
  %shl.i.i640.i = shl i32 %add42.i.i637.i, 2
  %add.ptr.i.i641.i = getelementptr i8, ptr %519, i32 %shl.i.i640.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i641.i, i32 -1439734159) #11, !srcloc !701
  %520 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %dc1.i, align 8
  %522 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i644.i = add i32 %523, 269
  %dev.i2.i645.i = getelementptr inbounds %struct.tegra_dc, ptr %521, i32 0, i32 2
  %524 = ptrtoint ptr %dev.i2.i645.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %dev.i2.i645.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %525, i32 noundef %add42.i.i644.i, i32 noundef 1399662010) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i646.i = getelementptr inbounds %struct.tegra_dc, ptr %521, i32 0, i32 8
  %526 = ptrtoint ptr %regs.i.i646.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %regs.i.i646.i, align 8
  %shl.i.i647.i = shl i32 %add42.i.i644.i, 2
  %add.ptr.i.i648.i = getelementptr i8, ptr %527, i32 %shl.i.i647.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i648.i, i32 -1171952301) #11, !srcloc !701
  %528 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %dc1.i, align 8
  %530 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i651.i = add i32 %531, 270
  %dev.i2.i652.i = getelementptr inbounds %struct.tegra_dc, ptr %529, i32 0, i32 2
  %532 = ptrtoint ptr %dev.i2.i652.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dev.i2.i652.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %533, i32 noundef %add42.i.i651.i, i32 noundef 1433607114) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i653.i = getelementptr inbounds %struct.tegra_dc, ptr %529, i32 0, i32 8
  %534 = ptrtoint ptr %regs.i.i653.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %regs.i.i653.i, align 8
  %shl.i.i654.i = shl i32 %add42.i.i651.i, 2
  %add.ptr.i.i655.i = getelementptr i8, ptr %535, i32 %shl.i.i654.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i655.i, i32 -904170667) #11, !srcloc !701
  %536 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dc1.i, align 8
  %538 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i658.i = add i32 %539, 271
  %dev.i2.i659.i = getelementptr inbounds %struct.tegra_dc, ptr %537, i32 0, i32 2
  %540 = ptrtoint ptr %dev.i2.i659.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %dev.i2.i659.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %541, i32 noundef %add42.i.i658.i, i32 noundef 947524057) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i660.i = getelementptr inbounds %struct.tegra_dc, ptr %537, i32 0, i32 8
  %542 = ptrtoint ptr %regs.i.i660.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %regs.i.i660.i, align 8
  %shl.i.i661.i = shl i32 %add42.i.i658.i, 2
  %add.ptr.i.i662.i = getelementptr i8, ptr %543, i32 %shl.i.i661.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i662.i, i32 -653166024) #11, !srcloc !701
  %544 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %dc1.i, align 8
  %546 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i665.i = add i32 %547, 272
  %dev.i2.i666.i = getelementptr inbounds %struct.tegra_dc, ptr %545, i32 0, i32 2
  %548 = ptrtoint ptr %dev.i2.i666.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dev.i2.i666.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %549, i32 noundef %add42.i.i665.i, i32 noundef 1014761713) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i667.i = getelementptr inbounds %struct.tegra_dc, ptr %545, i32 0, i32 8
  %550 = ptrtoint ptr %regs.i.i667.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %regs.i.i667.i, align 8
  %shl.i.i668.i = shl i32 %add42.i.i665.i, 2
  %add.ptr.i.i669.i = getelementptr i8, ptr %551, i32 %shl.i.i668.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i669.i, i32 -251102148) #11, !srcloc !701
  %or119.i = or i32 %value.5.i, 256
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then118.i, %land.lhs.true.i.i.if.end120.i_crit_edge, %if.end106.i.if.end120.i_crit_edge
  %value.6.i = phi i32 [ %or119.i, %if.then118.i ], [ %value.5.i, %if.end106.i.if.end120.i_crit_edge ], [ %value.5.i, %land.lhs.true.i.i.if.end120.i_crit_edge ]
  %552 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %dc1.i, align 8
  %554 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %h, align 4
  %556 = ptrtoint ptr %h35 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %h35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %555, i32 %557)
  %cmp.i671.i = icmp eq i32 %555, %557
  br i1 %cmp.i671.i, label %if.end120.i.if.end127.i_crit_edge, label %if.end.i673.i

if.end120.i.if.end127.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.end.i673.i:                                    ; preds = %if.end120.i
  %index.i672.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %558 = ptrtoint ptr %index.i672.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %index.i672.i, align 8
  %560 = zext i32 %559 to i64
  call void @__sanitizer_cov_trace_switch(i64 %560, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %559, label %if.end.i673.i.for.body.i.preheader_crit_edge [
    i32 0, label %land.lhs.true.i677.i
    i32 2, label %land.lhs.true8.i.i
  ]

if.end.i673.i.for.body.i.preheader_crit_edge:     ; preds = %if.end.i673.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

land.lhs.true.i677.i:                             ; preds = %if.end.i673.i
  %soc.i674.i = getelementptr inbounds %struct.tegra_dc, ptr %553, i32 0, i32 14
  %561 = ptrtoint ptr %soc.i674.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %soc.i674.i, align 8
  %has_win_a_without_filters.i675.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %562, i32 0, i32 17
  %563 = ptrtoint ptr %has_win_a_without_filters.i675.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %has_win_a_without_filters.i675.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool.not.i676.i = icmp eq i8 %564, 0
  br i1 %tobool.not.i676.i, label %land.lhs.true.i677.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i677.i.if.end127.i_crit_edge

land.lhs.true.i677.i.if.end127.i_crit_edge:       ; preds = %land.lhs.true.i677.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

land.lhs.true.i677.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true.i677.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

land.lhs.true8.i.i:                               ; preds = %if.end.i673.i
  %soc9.i.i = getelementptr inbounds %struct.tegra_dc, ptr %553, i32 0, i32 14
  %565 = ptrtoint ptr %soc9.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %soc9.i.i, align 8
  %has_win_c_without_vert_filter.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %566, i32 0, i32 19
  %567 = ptrtoint ptr %has_win_c_without_vert_filter.i.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %has_win_c_without_vert_filter.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %568)
  %tobool10.not.i.i = icmp eq i8 %568, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.for.body.i.preheader_crit_edge, label %land.lhs.true8.i.i.if.end127.i_crit_edge

land.lhs.true8.i.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

land.lhs.true8.i.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true8.i.i.for.body.i.preheader_crit_edge, %land.lhs.true.i677.i.for.body.i.preheader_crit_edge, %if.end.i673.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %k.0718.i = phi i32 [ %sub125.i, %for.body.i.for.body.i_crit_edge ], [ 128, %for.body.i.preheader ]
  %i.0717.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %569 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %dc1.i, align 8
  %571 = add nuw nsw i32 %i.0717.i, 281
  %572 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i684.i = add i32 %571, %573
  %dev.i2.i685.i = getelementptr inbounds %struct.tegra_dc, ptr %570, i32 0, i32 2
  %574 = ptrtoint ptr %dev.i2.i685.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %dev.i2.i685.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %575, i32 noundef %add42.i.i684.i, i32 noundef %k.0718.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %576 = call i32 @llvm.bswap.i32(i32 %k.0718.i) #11
  %regs.i.i686.i = getelementptr inbounds %struct.tegra_dc, ptr %570, i32 0, i32 8
  %577 = ptrtoint ptr %regs.i.i686.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %regs.i.i686.i, align 8
  %shl.i.i687.i = shl i32 %add42.i.i684.i, 2
  %add.ptr.i.i688.i = getelementptr i8, ptr %578, i32 %shl.i.i687.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i688.i, i32 %576) #11, !srcloc !701
  %inc.i = add nuw nsw i32 %i.0717.i, 1
  %sub125.i = add nsw i32 %k.0718.i, -8
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %or126.i = or i32 %value.6.i, 1024
  br label %if.end127.i

if.end127.i:                                      ; preds = %for.end.i, %land.lhs.true8.i.i.if.end127.i_crit_edge, %land.lhs.true.i677.i.if.end127.i_crit_edge, %if.end120.i.if.end127.i_crit_edge
  %value.7.i = phi i32 [ %or126.i, %for.end.i ], [ %value.6.i, %if.end120.i.if.end127.i_crit_edge ], [ %value.6.i, %land.lhs.true.i677.i.if.end127.i_crit_edge ], [ %value.6.i, %land.lhs.true8.i.i.if.end127.i_crit_edge ]
  %579 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %dc1.i, align 8
  %581 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i695.i = add i32 %582, 384
  %dev.i2.i696.i = getelementptr inbounds %struct.tegra_dc, ptr %580, i32 0, i32 2
  %583 = ptrtoint ptr %dev.i2.i696.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %dev.i2.i696.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %584, i32 noundef %add42.i.i695.i, i32 noundef %value.7.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %585 = call i32 @llvm.bswap.i32(i32 %value.7.i) #11
  %regs.i.i697.i = getelementptr inbounds %struct.tegra_dc, ptr %580, i32 0, i32 8
  %586 = ptrtoint ptr %regs.i.i697.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %regs.i.i697.i, align 8
  %shl.i.i698.i = shl i32 %add42.i.i695.i, 2
  %add.ptr.i.i699.i = getelementptr i8, ptr %587, i32 %shl.i.i698.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i699.i, i32 %585) #11, !srcloc !701
  %588 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %soc.i, align 8
  %has_legacy_blending.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %589, i32 0, i32 5
  %590 = ptrtoint ptr %has_legacy_blending.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %has_legacy_blending.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %tobool129.not.i = icmp eq i8 %591, 0
  %592 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %dc1.i, align 8
  %594 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %offset10.i.i.i, align 4
  br i1 %tobool129.not.i, label %if.else131.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.end127.i
  %add42.i.i.i.i = add i32 %595, 399
  %dev.i2.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 2
  %596 = ptrtoint ptr %dev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %dev.i2.i.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %597, i32 noundef %add42.i.i.i.i, i32 noundef 16776960) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 8
  %598 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %regs.i.i.i.i, align 8
  %shl.i.i.i.i = shl i32 %add42.i.i.i.i, 2
  %add.ptr.i.i.i.i = getelementptr i8, ptr %599, i32 %shl.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 16776960) #11, !srcloc !701
  %600 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dc1.i, align 8
  %602 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i144.i.i = add i32 %603, 400
  %dev.i2.i145.i.i = getelementptr inbounds %struct.tegra_dc, ptr %601, i32 0, i32 2
  %604 = ptrtoint ptr %dev.i2.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %dev.i2.i145.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %605, i32 noundef %add42.i.i144.i.i, i32 noundef 16776960) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i146.i.i = getelementptr inbounds %struct.tegra_dc, ptr %601, i32 0, i32 8
  %606 = ptrtoint ptr %regs.i.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %regs.i.i146.i.i, align 8
  %shl.i.i147.i.i = shl i32 %add42.i.i144.i.i, 2
  %add.ptr.i.i148.i.i = getelementptr i8, ptr %607, i32 %shl.i.i147.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148.i.i, i32 16776960) #11, !srcloc !701
  %state1.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %608 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %state1.i.i, align 4
  %opaque.i.i = getelementptr inbounds %struct.tegra_plane_state, ptr %609, i32 0, i32 9
  %610 = ptrtoint ptr %opaque.i.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %opaque.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %611)
  %tobool.not.i700.i = icmp eq i8 %611, 0
  br i1 %tobool.not.i700.i, label %for.body.preheader.i.i, label %if.then.i.i

for.body.preheader.i.i:                           ; preds = %if.then130.i
  %arrayidx20.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 0
  %612 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx20.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %613)
  %tobool22.not.i.i = icmp eq i8 %613, 0
  br i1 %tobool22.not.i.i, label %for.body.preheader.i.i.for.inc.i.i_crit_edge, label %land.lhs.true23.i.i

for.body.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.then130.i
  %normalized_zpos.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %609, i32 0, i32 16
  %614 = ptrtoint ptr %normalized_zpos.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %normalized_zpos.i.i, align 4
  %616 = zext i32 %615 to i64
  call void @__sanitizer_cov_trace_switch(i64 %616, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %615, label %if.then.i.i.if.end75.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb15.i.i
  ]

if.then.i.i.if.end75.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  %blending5.i.i = getelementptr inbounds %struct.tegra_plane_state, ptr %609, i32 0, i32 8
  %617 = ptrtoint ptr %blending5.i.i to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %blending5.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %618)
  %tobool7.not.i.i = icmp eq i8 %618, 0
  br i1 %tobool7.not.i.i, label %sw.bb.i.i.if.end75.i.i_crit_edge, label %land.lhs.true.i701.i

sw.bb.i.i.if.end75.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

land.lhs.true.i701.i:                             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 1
  %619 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %arrayidx9.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %620)
  %tobool11.not.i.i = icmp eq i8 %620, 0
  %spec.select.i.i = select i1 %tobool11.not.i.i, i32 0, i32 8
  br label %if.end75.i.i

sw.bb15.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

land.lhs.true23.i.i:                              ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %top.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 0, i32 1
  %621 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %top.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %622)
  %tobool26.not.i.i = icmp eq i8 %622, 0
  %spec.select232.i.i = select i1 %tobool26.not.i.i, i32 0, i32 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true23.i.i, %for.body.preheader.i.i.for.inc.i.i_crit_edge
  %background.sroa.0.0.i.i = phi i32 [ 0, %for.body.preheader.i.i.for.inc.i.i_crit_edge ], [ %spec.select232.i.i, %land.lhs.true23.i.i ]
  %arrayidx20.1.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 1
  %623 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %arrayidx20.1.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %624)
  %tobool22.not.1.i.i = icmp eq i8 %624, 0
  br i1 %tobool22.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true23.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i

land.lhs.true23.1.i.i:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %top.1.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 1, i32 1
  %625 = ptrtoint ptr %top.1.i.i to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %top.1.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %626)
  %tobool26.not.1.i.i = icmp eq i8 %626, 0
  %spec.select233.i.i = select i1 %tobool26.not.1.i.i, i32 0, i32 8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true23.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %background.sroa.9.0.i.i = phi i32 [ 0, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %spec.select233.i.i, %land.lhs.true23.1.i.i ]
  %normalized_zpos32.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %609, i32 0, i32 16
  %627 = ptrtoint ptr %normalized_zpos32.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %normalized_zpos32.i.i, align 4
  %629 = zext i32 %628 to i64
  call void @__sanitizer_cov_trace_switch(i64 %629, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %628, label %for.inc.1.i.i.if.end75.i.i_crit_edge [
    i32 0, label %sw.bb33.i.i
    i32 1, label %sw.bb47.i.i
  ]

for.inc.1.i.i.if.end75.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

sw.bb33.i.i:                                      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %630 = select i1 %tobool22.not.i.i, i1 true, i1 %tobool22.not.1.i.i
  %spec.select.i = select i1 %630, i32 0, i32 8
  br label %if.end75.i.i

sw.bb47.i.i:                                      ; preds = %for.inc.1.i.i
  br i1 %tobool22.not.i.i, label %sw.bb47.i.i.if.end60.i.i_crit_edge, label %land.lhs.true52.i.i

sw.bb47.i.i.if.end60.i.i_crit_edge:               ; preds = %sw.bb47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i.i

land.lhs.true52.i.i:                              ; preds = %sw.bb47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %top55.i.i = getelementptr inbounds %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 0, i32 1
  %631 = ptrtoint ptr %top55.i.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %top55.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %632)
  %tobool56.not.i.i = icmp eq i8 %632, 0
  %spec.select235.i.i = select i1 %tobool56.not.i.i, i32 0, i32 4
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %land.lhs.true52.i.i, %sw.bb47.i.i.if.end60.i.i_crit_edge
  %background.sroa.15.0.i.i = phi i32 [ 0, %sw.bb47.i.i.if.end60.i.i_crit_edge ], [ %spec.select235.i.i, %land.lhs.true52.i.i ]
  br i1 %tobool22.not.1.i.i, label %if.end60.i.i.if.end75.i.i_crit_edge, label %land.lhs.true65.i.i

if.end60.i.i.if.end75.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

land.lhs.true65.i.i:                              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %top68.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 1, i32 1
  %633 = ptrtoint ptr %top68.i.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %top68.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %634)
  %tobool69.not.i.i = icmp eq i8 %634, 0
  %spec.select236.i.i = select i1 %tobool69.not.i.i, i32 %background.sroa.15.0.i.i, i32 4
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %land.lhs.true65.i.i, %if.end60.i.i.if.end75.i.i_crit_edge, %sw.bb33.i.i, %for.inc.1.i.i.if.end75.i.i_crit_edge, %sw.bb15.i.i, %land.lhs.true.i701.i, %sw.bb.i.i.if.end75.i.i_crit_edge, %if.then.i.i.if.end75.i.i_crit_edge
  %background.sroa.0.1.i.i = phi i32 [ %background.sroa.0.0.i.i, %for.inc.1.i.i.if.end75.i.i_crit_edge ], [ %background.sroa.0.0.i.i, %if.end60.i.i.if.end75.i.i_crit_edge ], [ 8, %if.then.i.i.if.end75.i.i_crit_edge ], [ 8, %sw.bb15.i.i ], [ 8, %sw.bb.i.i.if.end75.i.i_crit_edge ], [ 8, %land.lhs.true.i701.i ], [ %background.sroa.0.0.i.i, %land.lhs.true65.i.i ], [ %background.sroa.0.0.i.i, %sw.bb33.i.i ]
  %background.sroa.9.1.i.i = phi i32 [ %background.sroa.9.0.i.i, %for.inc.1.i.i.if.end75.i.i_crit_edge ], [ %background.sroa.9.0.i.i, %if.end60.i.i.if.end75.i.i_crit_edge ], [ 8, %if.then.i.i.if.end75.i.i_crit_edge ], [ 8, %sw.bb15.i.i ], [ 8, %sw.bb.i.i.if.end75.i.i_crit_edge ], [ 8, %land.lhs.true.i701.i ], [ %background.sroa.9.0.i.i, %land.lhs.true65.i.i ], [ %background.sroa.9.0.i.i, %sw.bb33.i.i ]
  %background.sroa.15.1.i.i = phi i32 [ 0, %for.inc.1.i.i.if.end75.i.i_crit_edge ], [ %background.sroa.15.0.i.i, %if.end60.i.i.if.end75.i.i_crit_edge ], [ 0, %if.then.i.i.if.end75.i.i_crit_edge ], [ 8, %sw.bb15.i.i ], [ 0, %sw.bb.i.i.if.end75.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i701.i ], [ %spec.select236.i.i, %land.lhs.true65.i.i ], [ %spec.select.i, %sw.bb33.i.i ]
  %foreground.0.i.i = phi i32 [ 16776964, %for.inc.1.i.i.if.end75.i.i_crit_edge ], [ 16776964, %if.end60.i.i.if.end75.i.i_crit_edge ], [ 16776960, %if.then.i.i.if.end75.i.i_crit_edge ], [ 16776960, %sw.bb15.i.i ], [ 16776960, %sw.bb.i.i.if.end75.i.i_crit_edge ], [ 16776960, %land.lhs.true.i701.i ], [ 16776964, %land.lhs.true65.i.i ], [ 16776964, %sw.bb33.i.i ]
  %normalized_zpos77.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %609, i32 0, i32 16
  %635 = ptrtoint ptr %normalized_zpos77.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %normalized_zpos77.i.i, align 4
  %637 = zext i32 %636 to i64
  call void @__sanitizer_cov_trace_switch(i64 %637, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %636, label %if.end75.i.i.tegra_dc_setup_window.exit_crit_edge [
    i32 0, label %sw.bb78.i.i
    i32 1, label %sw.bb82.i.i
    i32 2, label %sw.bb104.i.i
  ]

if.end75.i.i.tegra_dc_setup_window.exit_crit_edge: ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_setup_window.exit

sw.bb78.i.i:                                      ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %638 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %dc1.i, align 8
  %640 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i151.i.i = add i32 %641, 401
  %dev.i2.i152.i.i = getelementptr inbounds %struct.tegra_dc, ptr %639, i32 0, i32 2
  %642 = ptrtoint ptr %dev.i2.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %dev.i2.i152.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %643, i32 noundef %add42.i.i151.i.i, i32 noundef %background.sroa.0.1.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %644 = call i32 @llvm.bswap.i32(i32 %background.sroa.0.1.i.i) #11
  %regs.i.i153.i.i = getelementptr inbounds %struct.tegra_dc, ptr %639, i32 0, i32 8
  %645 = ptrtoint ptr %regs.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %regs.i.i153.i.i, align 8
  %shl.i.i154.i.i = shl i32 %add42.i.i151.i.i, 2
  %add.ptr.i.i155.i.i = getelementptr i8, ptr %646, i32 %shl.i.i154.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155.i.i, i32 %644) #11, !srcloc !701
  %647 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %dc1.i, align 8
  %649 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i158.i.i = add i32 %650, 402
  %dev.i2.i159.i.i = getelementptr inbounds %struct.tegra_dc, ptr %648, i32 0, i32 2
  %651 = ptrtoint ptr %dev.i2.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %dev.i2.i159.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %652, i32 noundef %add42.i.i158.i.i, i32 noundef %background.sroa.9.1.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %653 = call i32 @llvm.bswap.i32(i32 %background.sroa.9.1.i.i) #11
  %regs.i.i160.i.i = getelementptr inbounds %struct.tegra_dc, ptr %648, i32 0, i32 8
  %654 = ptrtoint ptr %regs.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %regs.i.i160.i.i, align 8
  %shl.i.i161.i.i = shl i32 %add42.i.i158.i.i, 2
  %add.ptr.i.i162.i.i = getelementptr i8, ptr %655, i32 %shl.i.i161.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i162.i.i, i32 %653) #11, !srcloc !701
  %656 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %dc1.i, align 8
  %658 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i165.i.i = add i32 %659, 403
  %dev.i2.i166.i.i = getelementptr inbounds %struct.tegra_dc, ptr %657, i32 0, i32 2
  %660 = ptrtoint ptr %dev.i2.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %dev.i2.i166.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %661, i32 noundef %add42.i.i165.i.i, i32 noundef %background.sroa.15.1.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %662 = call i32 @llvm.bswap.i32(i32 %background.sroa.15.1.i.i) #11
  %regs.i.i167.i.i = getelementptr inbounds %struct.tegra_dc, ptr %657, i32 0, i32 8
  %663 = ptrtoint ptr %regs.i.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %regs.i.i167.i.i, align 8
  %shl.i.i168.i.i = shl i32 %add42.i.i165.i.i, 2
  %add.ptr.i.i169.i.i = getelementptr i8, ptr %664, i32 %shl.i.i168.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i169.i.i, i32 %662) #11, !srcloc !701
  br label %tegra_dc_setup_window.exit

sw.bb82.i.i:                                      ; preds = %if.end75.i.i
  %top85.i.i = getelementptr inbounds %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 0, i32 1
  %665 = ptrtoint ptr %top85.i.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %top85.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %666)
  %tobool86.not.i.i = icmp eq i8 %666, 0
  br i1 %tobool86.not.i.i, label %land.lhs.true87.i.i, label %sw.bb82.i.i.if.else96.i.i_crit_edge

sw.bb82.i.i.if.else96.i.i_crit_edge:              ; preds = %sw.bb82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96.i.i

land.lhs.true87.i.i:                              ; preds = %sw.bb82.i.i
  %top90.i.i = getelementptr %struct.tegra_plane_state, ptr %609, i32 0, i32 8, i32 1, i32 1
  %667 = ptrtoint ptr %top90.i.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %top90.i.i, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %668)
  %tobool91.not.i.i = icmp eq i8 %668, 0
  br i1 %tobool91.not.i.i, label %land.lhs.true87.i.i.if.else96.i.i_crit_edge, label %land.lhs.true87.i.i.if.end100.i.i_crit_edge

land.lhs.true87.i.i.if.end100.i.i_crit_edge:      ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i.i

land.lhs.true87.i.i.if.else96.i.i_crit_edge:      ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96.i.i

if.else96.i.i:                                    ; preds = %land.lhs.true87.i.i.if.else96.i.i_crit_edge, %sw.bb82.i.i.if.else96.i.i_crit_edge
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.else96.i.i, %land.lhs.true87.i.i.if.end100.i.i_crit_edge
  %blending.sroa.6.0.i.i = phi i32 [ %foreground.0.i.i, %if.else96.i.i ], [ %background.sroa.9.1.i.i, %land.lhs.true87.i.i.if.end100.i.i_crit_edge ]
  %blending.sroa.0.0.i.i = phi i32 [ %background.sroa.0.1.i.i, %if.else96.i.i ], [ %foreground.0.i.i, %land.lhs.true87.i.i.if.end100.i.i_crit_edge ]
  %669 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %dc1.i, align 8
  %671 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i172.i.i = add i32 %672, 401
  %dev.i2.i173.i.i = getelementptr inbounds %struct.tegra_dc, ptr %670, i32 0, i32 2
  %673 = ptrtoint ptr %dev.i2.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %dev.i2.i173.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %674, i32 noundef %add42.i.i172.i.i, i32 noundef %blending.sroa.0.0.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %675 = call i32 @llvm.bswap.i32(i32 %blending.sroa.0.0.i.i) #11
  %regs.i.i174.i.i = getelementptr inbounds %struct.tegra_dc, ptr %670, i32 0, i32 8
  %676 = ptrtoint ptr %regs.i.i174.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %regs.i.i174.i.i, align 8
  %shl.i.i175.i.i = shl i32 %add42.i.i172.i.i, 2
  %add.ptr.i.i176.i.i = getelementptr i8, ptr %677, i32 %shl.i.i175.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i176.i.i, i32 %675) #11, !srcloc !701
  %678 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %dc1.i, align 8
  %680 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i179.i.i = add i32 %681, 402
  %dev.i2.i180.i.i = getelementptr inbounds %struct.tegra_dc, ptr %679, i32 0, i32 2
  %682 = ptrtoint ptr %dev.i2.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %dev.i2.i180.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %683, i32 noundef %add42.i.i179.i.i, i32 noundef %blending.sroa.6.0.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %684 = call i32 @llvm.bswap.i32(i32 %blending.sroa.6.0.i.i) #11
  %regs.i.i181.i.i = getelementptr inbounds %struct.tegra_dc, ptr %679, i32 0, i32 8
  %685 = ptrtoint ptr %regs.i.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %regs.i.i181.i.i, align 8
  %shl.i.i182.i.i = shl i32 %add42.i.i179.i.i, 2
  %add.ptr.i.i183.i.i = getelementptr i8, ptr %686, i32 %shl.i.i182.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i183.i.i, i32 %684) #11, !srcloc !701
  %687 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %dc1.i, align 8
  %689 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i186.i.i = add i32 %690, 403
  %dev.i2.i187.i.i = getelementptr inbounds %struct.tegra_dc, ptr %688, i32 0, i32 2
  %691 = ptrtoint ptr %dev.i2.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %dev.i2.i187.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %692, i32 noundef %add42.i.i186.i.i, i32 noundef %background.sroa.15.1.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %693 = call i32 @llvm.bswap.i32(i32 %background.sroa.15.1.i.i) #11
  %regs.i.i188.i.i = getelementptr inbounds %struct.tegra_dc, ptr %688, i32 0, i32 8
  %694 = ptrtoint ptr %regs.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %regs.i.i188.i.i, align 8
  %shl.i.i189.i.i = shl i32 %add42.i.i186.i.i, 2
  %add.ptr.i.i190.i.i = getelementptr i8, ptr %695, i32 %shl.i.i189.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190.i.i, i32 %693) #11, !srcloc !701
  br label %tegra_dc_setup_window.exit

sw.bb104.i.i:                                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %696 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %dc1.i, align 8
  %698 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i193.i.i = add i32 %699, 401
  %dev.i2.i194.i.i = getelementptr inbounds %struct.tegra_dc, ptr %697, i32 0, i32 2
  %700 = ptrtoint ptr %dev.i2.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %dev.i2.i194.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %701, i32 noundef %add42.i.i193.i.i, i32 noundef %foreground.0.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %702 = call i32 @llvm.bswap.i32(i32 %foreground.0.i.i) #11
  %regs.i.i195.i.i = getelementptr inbounds %struct.tegra_dc, ptr %697, i32 0, i32 8
  %703 = ptrtoint ptr %regs.i.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %regs.i.i195.i.i, align 8
  %shl.i.i196.i.i = shl i32 %add42.i.i193.i.i, 2
  %add.ptr.i.i197.i.i = getelementptr i8, ptr %704, i32 %shl.i.i196.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i197.i.i, i32 %702) #11, !srcloc !701
  %705 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %dc1.i, align 8
  %707 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i200.i.i = add i32 %708, 402
  %dev.i2.i201.i.i = getelementptr inbounds %struct.tegra_dc, ptr %706, i32 0, i32 2
  %709 = ptrtoint ptr %dev.i2.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %dev.i2.i201.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %710, i32 noundef %add42.i.i200.i.i, i32 noundef %foreground.0.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i202.i.i = getelementptr inbounds %struct.tegra_dc, ptr %706, i32 0, i32 8
  %711 = ptrtoint ptr %regs.i.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %regs.i.i202.i.i, align 8
  %shl.i.i203.i.i = shl i32 %add42.i.i200.i.i, 2
  %add.ptr.i.i204.i.i = getelementptr i8, ptr %712, i32 %shl.i.i203.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i204.i.i, i32 %702) #11, !srcloc !701
  %713 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %dc1.i, align 8
  %715 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i207.i.i = add i32 %716, 403
  %dev.i2.i208.i.i = getelementptr inbounds %struct.tegra_dc, ptr %714, i32 0, i32 2
  %717 = ptrtoint ptr %dev.i2.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %dev.i2.i208.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %718, i32 noundef %add42.i.i207.i.i, i32 noundef %foreground.0.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i209.i.i = getelementptr inbounds %struct.tegra_dc, ptr %714, i32 0, i32 8
  %719 = ptrtoint ptr %regs.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %regs.i.i209.i.i, align 8
  %shl.i.i210.i.i = shl i32 %add42.i.i207.i.i, 2
  %add.ptr.i.i211.i.i = getelementptr i8, ptr %720, i32 %shl.i.i210.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i211.i.i, i32 %702) #11, !srcloc !701
  br label %tegra_dc_setup_window.exit

if.else131.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  %add42.i.i.i704.i = add i32 %595, 407
  %dev.i2.i.i705.i = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 2
  %721 = ptrtoint ptr %dev.i2.i.i705.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %dev.i2.i.i705.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %722, i32 noundef %add42.i.i.i704.i, i32 noundef 613) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i.i706.i = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 8
  %723 = ptrtoint ptr %regs.i.i.i706.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %regs.i.i.i706.i, align 8
  %shl.i.i.i707.i = shl i32 %add42.i.i.i704.i, 2
  %add.ptr.i.i.i708.i = getelementptr i8, ptr %724, i32 %shl.i.i.i707.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i708.i, i32 1694629888) #11, !srcloc !701
  %725 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %dc1.i, align 8
  %727 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i7.i.i = add i32 %728, 408
  %dev.i2.i8.i.i = getelementptr inbounds %struct.tegra_dc, ptr %726, i32 0, i32 2
  %729 = ptrtoint ptr %dev.i2.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %dev.i2.i8.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %730, i32 noundef %add42.i.i7.i.i, i32 noundef 613) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i9.i.i = getelementptr inbounds %struct.tegra_dc, ptr %726, i32 0, i32 8
  %731 = ptrtoint ptr %regs.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %regs.i.i9.i.i, align 8
  %shl.i.i10.i.i = shl i32 %add42.i.i7.i.i, 2
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %732, i32 %shl.i.i10.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i.i, i32 1694629888) #11, !srcloc !701
  %733 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %zpos, align 4
  %sub.i709.i = sub i32 255, %734
  %and.i.i = and i32 %sub.i709.i, 255
  %or.i.i = or i32 %and.i.i, 16776960
  %735 = ptrtoint ptr %dc1.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %dc1.i, align 8
  %737 = ptrtoint ptr %offset10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %offset10.i.i.i, align 4
  %add42.i.i14.i.i = add i32 %738, 406
  %dev.i2.i15.i.i = getelementptr inbounds %struct.tegra_dc, ptr %736, i32 0, i32 2
  %739 = ptrtoint ptr %dev.i2.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %dev.i2.i15.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %740, i32 noundef %add42.i.i14.i.i, i32 noundef %or.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %741 = call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %regs.i.i16.i.i = getelementptr inbounds %struct.tegra_dc, ptr %736, i32 0, i32 8
  %742 = ptrtoint ptr %regs.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %regs.i.i16.i.i, align 8
  %shl.i.i17.i.i = shl i32 %add42.i.i14.i.i, 2
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %743, i32 %shl.i.i17.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i.i, i32 %741) #11, !srcloc !701
  br label %tegra_dc_setup_window.exit

tegra_dc_setup_window.exit:                       ; preds = %if.else131.i, %sw.bb104.i.i, %if.end100.i.i, %sw.bb78.i.i, %if.end75.i.i.tegra_dc_setup_window.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %planar.i) #11
  br label %cleanup

cleanup:                                          ; preds = %tegra_dc_setup_window.exit, %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %window) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %dc.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc.i, align 8
  %offset10.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %offset10.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset10.i.i, align 4
  %add42.i.i = add i32 %11, 384
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %shl.i.i = shl i32 %add42.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !713
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %17, i32 noundef %add42.i.i, i32 noundef %15) #11
  %and = and i32 %15, -1073741825
  %18 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dc.i, align 8
  %20 = ptrtoint ptr %offset10.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset10.i.i, align 4
  %add42.i.i12 = add i32 %21, 384
  %dev.i2.i = getelementptr inbounds %struct.tegra_dc, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i2.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %23, i32 noundef %add42.i.i12, i32 noundef %and) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %regs.i.i13 = getelementptr inbounds %struct.tegra_dc, ptr %19, i32 0, i32 8
  %25 = ptrtoint ptr %regs.i.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i13, align 8
  %shl.i.i14 = shl i32 %add42.i.i12, 2
  %add.ptr.i.i15 = getelementptr i8, ptr %26, i32 %shl.i.i14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %24) #11, !srcloc !701
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_format(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_setup_legacy_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fb_get_tiling(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_fb_is_bottom_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_state_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !703

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !704

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !718
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !719
  %13 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !704

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 32, ptr noundef nonnull @.str.3) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !708
  %31 = tail call i32 @llvm.read_register.i32(metadata !690) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cursor_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %peak_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %peak_memory_bandwidth, align 4
  %avg_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %avg_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %avg_memory_bandwidth, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %total_peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %total_peak_memory_bandwidth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %total_peak_memory_bandwidth, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %12, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %14)
  %cmp.not = icmp eq i32 %shr, %14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_h, align 4
  %shr3 = lshr i32 %16, 16
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %18)
  %cmp4.not = icmp eq i32 %shr3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp9.not = icmp eq i32 %12, %16
  %or.cond = select i1 %cmp4.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %19 = add nsw i32 %shr, -32
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 27)
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %20, label %if.end11.cleanup_crit_edge [
    i32 0, label %if.end11.if.end23_crit_edge
    i32 1, label %if.end11.if.end23_crit_edge47
    i32 3, label %if.end11.if.end23_crit_edge48
    i32 7, label %if.end11.if.end23_crit_edge49
  ]

if.end11.if.end23_crit_edge49:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end11.if.end23_crit_edge48:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end11.if.end23_crit_edge47:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end11.if.end23_crit_edge, %if.end11.if.end23_crit_edge47, %if.end11.if.end23_crit_edge48, %if.end11.if.end23_crit_edge49
  %call24 = tail call i32 @tegra_plane_state_add(ptr noundef %plane, ptr noundef %5) #11
  %22 = tail call i32 @llvm.smin.i32(i32 %call24, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %22, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call fastcc void @__tegra_cursor_atomic_update(ptr noundef %plane, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %regs.i = getelementptr i8, ptr %7, i32 1008
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 4104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #11, !srcloc !713
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %dev.i = getelementptr i8, ptr %7, i32 -4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %13, i32 noundef 1026, i32 noundef %11) #11
  %and = and i32 %11, -65537
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %15, i32 noundef 1026, i32 noundef %and) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %16) #11, !srcloc !701
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_cursor_atomic_async_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  %index.i.i94 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %index.i.i94 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i94, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %11, i32 1
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !720

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1029, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %state28 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %16 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state28, align 4
  %crtc29 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %crtc29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc29, align 4
  %cmp.not = icmp eq ptr %19, %7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end27
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_w, align 4
  %src_w32 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %22 = ptrtoint ptr %src_w32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_w32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp33.not = icmp eq i32 %21, %23
  br i1 %cmp33.not, label %lor.lhs.false34, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_h, align 4
  %src_h36 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %26 = ptrtoint ptr %src_h36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_h36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp37.not = icmp eq i32 %25, %27
  br i1 %cmp37.not, label %lor.lhs.false38, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 6
  %28 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_w, align 4
  %crtc_w40 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %crtc_w40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_w40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp41.not = icmp eq i32 %29, %31
  br i1 %cmp41.not, label %lor.lhs.false42, label %lor.lhs.false38.cleanup_crit_edge

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 7
  %32 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_h, align 4
  %crtc_h44 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %34 = ptrtoint ptr %crtc_h44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_h44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp45.not = icmp eq i32 %33, %35
  br i1 %cmp45.not, label %lor.lhs.false46, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 2
  %36 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fb, align 4
  %fb48 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %fb48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fb48, align 4
  %cmp49.not = icmp ne ptr %37, %39
  %cmp53 = icmp eq ptr %37, null
  %or.cond = or i1 %cmp53, %cmp49.not
  br i1 %or.cond, label %lor.lhs.false46.cleanup_crit_edge, label %if.end55

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false46
  %call56 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %13, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %40 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %visible, align 4, !range !702
  %42 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state28, align 4
  %visible62 = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %visible62 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %visible62, align 4, !range !702
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %45)
  %cmp65.not = icmp eq i8 %41, %45
  %. = select i1 %cmp65.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end55.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false38.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %lor.lhs.false42.cleanup_crit_edge ], [ -22, %lor.lhs.false38.cleanup_crit_edge ], [ -22, %lor.lhs.false34.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %., %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_async_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_x, align 4
  %state2 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %src_x3 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %src_x3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %src_x3, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_y, align 4
  %15 = load ptr, ptr %state2, align 4
  %src_y5 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %src_y5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %src_y5, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_x, align 4
  %19 = load ptr, ptr %state2, align 4
  %crtc_x7 = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %crtc_x7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %crtc_x7, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_y, align 4
  %23 = load ptr, ptr %state2, align 4
  %crtc_y9 = getelementptr inbounds %struct.drm_plane_state, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %crtc_y9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %crtc_y9, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %25 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %visible, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call fastcc void @__tegra_cursor_atomic_update(ptr noundef %plane, ptr noundef %5)
  %index = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 8
  %shl11 = shl i32 512, %28
  %or = or i32 %shl11, 256
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %30, i32 noundef 65, i32 noundef %or) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %33, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %31) #11, !srcloc !701
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %35, i32 260
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #11, !srcloc !713
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %39, i32 noundef 65, i32 noundef %37) #11
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 8
  %shl14 = shl i32 2, %41
  %or15 = or i32 %shl14, 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %43, i32 noundef 65, i32 noundef %or15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %or15) #11
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %46, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %44) #11, !srcloc !701
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %48, i32 260
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #11, !srcloc !713
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %52, i32 noundef 65, i32 noundef %50) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tegra_cursor_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %new_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 6
  %8 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_w, align 4
  %10 = add i32 %9, -32
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 7
  %13 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_h, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 938, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %9, i32 noundef %14) #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %11 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.__tegra_cursor_atomic_update, i32 0, i32 %11
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %iova = getelementptr inbounds %struct.tegra_plane_state, ptr %new_state, i32 0, i32 2
  %17 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iova, align 4
  %shr = lshr i32 %18, 10
  %or32 = or i32 %shr, %switch.load
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %20, i32 noundef 1086, i32 noundef %or32) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or32) #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %23, i32 4344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %21) #11, !srcloc !701
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %add.ptr.i128 = getelementptr i8, ptr %25, i32 4104
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #11, !srcloc !713
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %29, i32 noundef 1026, i32 noundef %27) #11
  %or34 = or i32 %27, 65536
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %31, i32 noundef 1026, i32 noundef %or34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %or34) #11
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %add.ptr.i132 = getelementptr i8, ptr %34, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %32) #11, !srcloc !701
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %add.ptr.i134 = getelementptr i8, ptr %36, i32 5060
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #11, !srcloc !713
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %40, i32 noundef 1265, i32 noundef %38) #11
  %41 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %soc, align 8
  %has_nvdisplay39 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %has_nvdisplay39 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %has_nvdisplay39, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool40.not = icmp eq i8 %44, 0
  %and42 = and i32 %38, -33752064
  %and37 = and i32 %38, -16974848
  %or43 = or i32 %and37, 16777216
  %value.2 = select i1 %tobool40.not, i32 %or43, i32 %and42
  %or47 = or i32 %value.2, 131583
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %46, i32 noundef 1265, i32 noundef %or47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or47) #11
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %49, i32 5060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %47) #11, !srcloc !701
  %50 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %soc, align 8
  %has_nvdisplay49 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %has_nvdisplay49 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_nvdisplay49, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool50.not = icmp eq i8 %53, 0
  br i1 %tobool50.not, label %if.else67, label %if.then51

if.then51:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 21
  %54 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst, align 4
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 21, i32 1
  %56 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %y1, align 4
  %src53 = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 20
  %58 = ptrtoint ptr %src53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src53, align 4
  %shr.i = ashr i32 %59, 16
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 20, i32 1
  %60 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %y1.i, align 4
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 20, i32 2
  %62 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %x2.i.i, align 4
  %sub.i.i = sub i32 %63, %59
  %shr2.i = ashr i32 %sub.i.i, 16
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 20, i32 3
  %64 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %y2.i.i, align 4
  %sub.i8.i = sub i32 %65, %61
  %vmask = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 10
  %66 = ptrtoint ptr %vmask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vmask, align 8
  %and55152 = shl i32 %67, 16
  %68 = and i32 %and55152, %61
  %hmask = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 9
  %69 = ptrtoint ptr %hmask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hmask, align 4
  %and57 = and i32 %70, %shr.i
  %or58 = or i32 %68, %and57
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %72, i32 noundef 1090, i32 noundef %or58) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %73 = tail call i32 @llvm.bswap.i32(i32 %or58) #11
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 8
  %add.ptr.i141 = getelementptr i8, ptr %75, i32 4360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %73) #11, !srcloc !701
  %76 = ptrtoint ptr %vmask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vmask, align 8
  %and61153 = shl i32 %77, 16
  %78 = and i32 %and61153, %sub.i8.i
  %79 = ptrtoint ptr %hmask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hmask, align 4
  %and65 = and i32 %80, %shr2.i
  %or66 = or i32 %78, %and65
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %82, i32 noundef 1094, i32 noundef %or66) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %83 = tail call i32 @llvm.bswap.i32(i32 %or66) #11
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %85, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %83) #11, !srcloc !701
  br label %if.end68

if.else67:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 4
  %86 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 5
  %88 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crtc_y, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then51
  %x.0 = phi i32 [ %55, %if.then51 ], [ %87, %if.else67 ]
  %y.0 = phi i32 [ %57, %if.then51 ], [ %89, %if.else67 ]
  %vmask69 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 10
  %90 = ptrtoint ptr %vmask69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vmask69, align 8
  %and70 = and i32 %91, %y.0
  %shl71 = shl i32 %and70, 16
  %hmask72 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 9
  %92 = ptrtoint ptr %hmask72 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hmask72, align 4
  %and73 = and i32 %93, %x.0
  %or74 = or i32 %shl71, %and73
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %95, i32 noundef 1088, i32 noundef %or74) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %96 = tail call i32 @llvm.bswap.i32(i32 %or74) #11
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 8
  %add.ptr.i149 = getelementptr i8, ptr %98, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %96) #11, !srcloc !701
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 300) #15
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #11
  tail call void @kfree(ptr noundef nonnull %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_crtc_atomic_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 300) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #11
  %clk = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %clk3 = getelementptr inbounds %struct.tegra_dc_state, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %clk3, align 4
  %pclk = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pclk, align 4
  %pclk4 = getelementptr inbounds %struct.tegra_dc_state, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %pclk4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pclk4, align 8
  %div = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %div, align 4
  %div5 = getelementptr inbounds %struct.tegra_dc_state, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %div5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %div5, align 4
  %planes = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %planes, align 4
  %planes6 = getelementptr inbounds %struct.tegra_dc_state, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %planes6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %planes6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #11
  tail call void @kfree(ptr noundef %state) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_late_register(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %debugfs_entry = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 25
  %4 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_entry, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 48, i32 noundef 3264) #11
  %debugfs_files = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 13
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %debugfs_files, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs_files, align 4
  %data = getelementptr %struct.drm_info_list, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i, ptr %data, align 4
  %10 = load ptr, ptr %debugfs_files, align 4
  %data.1 = getelementptr %struct.drm_info_list, ptr %10, i32 1, i32 3
  %11 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i, ptr %data.1, align 4
  %12 = load ptr, ptr %debugfs_files, align 4
  %data.2 = getelementptr %struct.drm_info_list, ptr %12, i32 2, i32 3
  %13 = ptrtoint ptr %data.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select.i, ptr %data.2, align 4
  %14 = load ptr, ptr %debugfs_files, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %14, i32 noundef 3, ptr noundef %5, ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dc_early_unregister(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %debugfs_files = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 13
  %4 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_files, align 4
  %call1 = tail call i32 @drm_debugfs_remove_files(ptr noundef %5, i32 noundef 3, ptr noundef %3) #11
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_files, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_files, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_get_vblank_counter(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %syncpt = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 1
  %0 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syncpt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 8
  %has_nvdisplay = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_nvdisplay, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @host1x_syncpt_read(ptr noundef nonnull %1) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 3
  %call4 = tail call i64 @drm_crtc_vblank_count(ptr noundef %base) #11
  %conv = trunc i64 %call4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_enable_vblank(ptr noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #11, !srcloc !713
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %5, i32 noundef 56, i32 noundef %3) #11
  %or = or i32 %3, 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %7, i32 noundef 56, i32 noundef %or) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %8) #11, !srcloc !701
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dc_disable_vblank(ptr noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #11, !srcloc !713
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %5, i32 noundef 56, i32 noundef %3) #11
  %and = and i32 %3, -5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %7, i32 noundef 56, i32 noundef %and) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %8) #11, !srcloc !701
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_regs(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %mutex = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 3, i32 4
  %call = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #11
  %state = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 3, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %for.cond.preheader

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.cond.preheader:                               ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 8
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.016 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [212 x %struct.debugfs_reg32], ptr @tegra_dc_regs, i32 0, i32 %i.016
  %offset3 = getelementptr [212 x %struct.debugfs_reg32], ptr @tegra_dc_regs, i32 0, i32 %i.016, i32 1
  %10 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset3, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %11, 2
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !713
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %19, i32 noundef %11, i32 noundef %17) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef %13, i32 noundef %11, i32 noundef %17) #11
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 212
  br i1 %exitcond.not, label %for.body.unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -16, %entry.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_crc(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %mutex = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 3, i32 4
  %call = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #11
  %state = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 3, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %11, i32 noundef 768, i32 noundef 5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 83886080) #11, !srcloc !701
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %15, i32 noundef 65, i32 noundef 256) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65536) #11, !srcloc !701
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %19, i32 noundef 65, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16777216) #11, !srcloc !701
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %base) #11
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %base) #11
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %23, i32 3076
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #11, !srcloc !713
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %27, i32 noundef 769, i32 noundef %25) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.265, i32 noundef %25) #11
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %29, i32 noundef 768, i32 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %31, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #11, !srcloc !701
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -16, %entry.unlock_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %stats = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.266, i32 noundef %7) #11
  %vblank = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vblank, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.267, i32 noundef %9) #11
  %underflow = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %underflow, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.268, i32 noundef %11) #11
  %overflow = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %overflow to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overflow, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.269, i32 noundef %13) #11
  %frames_total = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %frames_total to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frames_total, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.270, i32 noundef %15) #11
  %vblank_total = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %vblank_total to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vblank_total, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.271, i32 noundef %17) #11
  %underflow_total = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %underflow_total to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %underflow_total, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.272, i32 noundef %19) #11
  %overflow_total = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11, i32 7
  %20 = ptrtoint ptr %overflow_total to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %overflow_total, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.273, i32 noundef %21) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_crtc_atomic_check(ptr noundef readonly %crtc, ptr noundef %state) #0 align 64 {
entry:
  %rect.i.i = alloca %struct.drm_rect, align 4
  %overlap_mask.i = alloca [7 x i32], align 4
  %plane_peak_bw.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %overlap_mask.i) #11
  %0 = call ptr @memset(ptr %overlap_mask.i, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %plane_peak_bw.i) #11
  %1 = call ptr @memset(ptr %plane_peak_bw.i, i32 0, i32 28)
  %tobool.not.i.i = icmp eq ptr %crtc, null
  %add.ptr.i.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %soc.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i.i, i32 0, i32 14
  %2 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc.i, align 8
  %has_nvdisplay.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %has_nvdisplay.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_nvdisplay.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge

entry.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_crtc_calculate_memory_bandwidth.exit

if.end.i:                                         ; preds = %entry
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %8 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i.i, align 4
  %new_state.i.i = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %9, i32 3
  %10 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i.i, align 4
  %state3.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state3.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 18
  %16 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn249.i = load ptr, ptr %plane_list.i, align 4
  %cmp.not252.i = icmp eq ptr %.pn249.i, %plane_list.i
  br i1 %cmp.not252.i, label %if.end.i.for.cond84.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.cond84.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond84.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 4
  br label %for.body.i

for.cond84.preheader.i:                           ; preds = %for.inc.i.for.cond84.preheader.i_crit_edge, %if.end.i.for.cond84.preheader.i_crit_edge
  %all_planes_overlap_simultaneously.0.off0.lcssa.i = phi i1 [ true, %if.end.i.for.cond84.preheader.i_crit_edge ], [ %all_planes_overlap_simultaneously.1.off0.i, %for.inc.i.for.cond84.preheader.i_crit_edge ]
  %plane_list7.lcssa.i = phi ptr [ %plane_list.i, %if.end.i.for.cond84.preheader.i_crit_edge ], [ %.pn.i, %for.inc.i.for.cond84.preheader.i_crit_edge ]
  %17 = ptrtoint ptr %plane_list7.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn222262.i = load ptr, ptr %plane_list7.lcssa.i, align 4
  %18 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state3.i, align 4
  %dev87264.i = getelementptr inbounds %struct.drm_atomic_state, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dev87264.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev87264.i, align 4
  %plane_list89265.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 18
  %cmp90.not266.i = icmp eq ptr %.pn222262.i, %plane_list89265.i
  br i1 %cmp90.not266.i, label %for.cond84.preheader.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, label %for.body93.lr.ph.i

for.cond84.preheader.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge: ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_crtc_calculate_memory_bandwidth.exit

for.body93.lr.ph.i:                               ; preds = %for.cond84.preheader.i
  %plane_mask94.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 4
  br label %for.body93.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dev5255.i = phi ptr [ %dev.i, %for.body.lr.ph.i ], [ %dev5.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = phi ptr [ %13, %for.body.lr.ph.i ], [ %122, %for.inc.i.for.body.i_crit_edge ]
  %.pn254.i = phi ptr [ %.pn249.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %all_planes_overlap_simultaneously.0.off0253.i = phi i1 [ true, %for.body.lr.ph.i ], [ %all_planes_overlap_simultaneously.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %plane_mask.i, align 4
  %index.i.i227.i = getelementptr i8, ptr %.pn254.i, i32 480
  %25 = ptrtoint ptr %index.i.i227.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i227.i, align 4
  %shl.i.i = shl nuw i32 1, %26
  %and.i = and i32 %shl.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %planes.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %planes.i.i, align 4
  %state1.i.i = getelementptr %struct.__drm_planes_state, ptr %28, i32 %26, i32 1
  %29 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state1.i.i, align 4
  %tobool.not.i229.i = icmp eq ptr %30, null
  %state6.i.i = getelementptr i8, ptr %.pn254.i, i32 488
  %spec.select.i230.i = select i1 %tobool.not.i229.i, ptr %state6.i.i, ptr %state1.i.i
  %31 = ptrtoint ptr %spec.select.i230.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i.i = load ptr, ptr %spec.select.i230.i, align 4
  %tobool13.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool13.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  %index.i = getelementptr i8, ptr %.pn254.i, i32 532
  %32 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp18.i = icmp ugt i32 %33, 6
  br i1 %cmp18.i, label %land.rhs.i, label %if.end60.i

land.rhs.i:                                       ; preds = %if.else15.i
  %.b223.i = load i1, ptr @tegra_crtc_calculate_memory_bandwidth.__already_done, align 1
  br i1 %.b223.i, label %land.rhs.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, label %if.then27.i, !prof !704

land.rhs.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_crtc_calculate_memory_bandwidth.exit

if.then27.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tegra_crtc_calculate_memory_bandwidth.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2393, i32 noundef 9, ptr noundef null) #11
  br label %tegra_crtc_calculate_memory_bandwidth.exit

if.end60.i:                                       ; preds = %if.else15.i
  %peak_memory_bandwidth.i = getelementptr inbounds %struct.tegra_plane_state, ptr %retval.0.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %peak_memory_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %peak_memory_bandwidth.i, align 4
  %arrayidx.i = getelementptr [7 x i32], ptr %plane_peak_bw.i, i32 0, i32 %33
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect.i.i) #11
  %visible.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 22
  %37 = call ptr @memset(ptr %rect.i.i, i32 255, i32 16)
  %38 = ptrtoint ptr %visible.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %visible.i.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i231.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i231.i, label %if.end60.i.tegra_plane_overlap_mask.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end60.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end60.i
  %fb.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %format.i.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %format.i.i.i, align 8
  %src.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 20
  %x2.i.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 20, i32 2
  %44 = ptrtoint ptr %x2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %x2.i.i.i.i, align 4
  %46 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %45, %47
  %shr.i.i.i = ashr i32 %sub.i.i.i.i, 16
  %dst.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 21
  %x2.i24.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 21, i32 2
  %48 = ptrtoint ptr %x2.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %x2.i24.i.i.i, align 4
  %50 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dst.i.i.i, align 4
  %sub.i25.i.i.i = sub i32 %49, %51
  %52 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %retval.0.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.not.i.i.i = icmp eq i32 %55, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %crtc.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %crtc.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %57, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 -248
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr null, ptr %add.ptr.i.i.i.i
  %soc1.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i.i.i.i, i32 0, i32 14
  %58 = ptrtoint ptr %soc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %soc1.i.i.i, align 8
  %supports_cursor.i.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %supports_cursor.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %supports_cursor.i.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.tegra_plane_overlap_mask.exit.i_crit_edge

if.end.i.i.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %sub.i25.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %shr.i.i.i, %sub.i25.i.i.i
  br i1 %cmp6.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end5.i.i.i.if.end3.i.i_crit_edge

if.end5.i.i.i.if.end3.i.i_crit_edge:              ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end5.i.i.i
  %num_planes.i.i.i = getelementptr inbounds %struct.drm_format_info, ptr %43, i32 0, i32 2
  %62 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_planes.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp7.not.i.i.i = icmp eq i8 %63, 1
  br i1 %cmp7.not.i.i.i, label %tegra_plane_is_cursor.exit.i.i, label %lor.lhs.false.i.i.i.if.end3.i.i_crit_edge

lor.lhs.false.i.i.i.if.end3.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

tegra_plane_is_cursor.exit.i.i:                   ; preds = %lor.lhs.false.i.i.i
  %64 = getelementptr inbounds %struct.drm_format_info, ptr %43, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 2
  %conv10.i.i.i = zext i8 %66 to i32
  %mul.i.i.i = mul nsw i32 %shr.i.i.i, %conv10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mul.i.i.i)
  %cmp11.i.i.i = icmp ult i32 %mul.i.i.i, 257
  br i1 %cmp11.i.i.i, label %tegra_plane_is_cursor.exit.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, label %tegra_plane_is_cursor.exit.i.i.if.end3.i.i_crit_edge

tegra_plane_is_cursor.exit.i.i.if.end3.i.i_crit_edge: ; preds = %tegra_plane_is_cursor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

tegra_plane_is_cursor.exit.i.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %tegra_plane_is_cursor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

if.end3.i.i:                                      ; preds = %tegra_plane_is_cursor.exit.i.i.if.end3.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end3.i.i_crit_edge, %if.end5.i.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  %67 = ptrtoint ptr %dev5255.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev5255.i, align 4
  %plane_list.i.i = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 30, i32 18
  %69 = ptrtoint ptr %plane_list.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn97.i.i = load ptr, ptr %plane_list.i.i, align 4
  %cmp.not100.i.i = icmp eq ptr %.pn97.i.i, %plane_list.i.i
  br i1 %cmp.not100.i.i, label %if.end3.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  br label %for.body.i.i

if.end3.i.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.i.i.for.body.i.i_crit_edge
  %70 = phi ptr [ %114, %for.inc.i.i.for.body.i.i_crit_edge ], [ %22, %if.end3.i.i.for.body.i.i_crit_edge ]
  %.pn103.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn97.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  %overlap_mask.0101.i.i = phi i32 [ %overlap_mask.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end3.i.i.for.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %plane_mask.i, align 4
  %index.i.i.i.i = getelementptr i8, ptr %.pn103.i.i, i32 480
  %73 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %74
  %and.i232.i = and i32 %shl.i.i.i, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.i)
  %tobool10.not.i.i = icmp eq i32 %and.i232.i, 0
  br i1 %tobool10.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %planes.i.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %70, i32 0, i32 3
  %75 = ptrtoint ptr %planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %planes.i.i.i, align 4
  %state1.i.i.i = getelementptr %struct.__drm_planes_state, ptr %76, i32 %74, i32 1
  %77 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %state1.i.i.i, align 4
  %tobool.not.i59.i.i = icmp eq ptr %78, null
  %state6.i.i.i = getelementptr i8, ptr %.pn103.i.i, i32 488
  %spec.select.i.i.i = select i1 %tobool.not.i59.i.i, ptr %state6.i.i.i, ptr %state1.i.i.i
  %79 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %retval.0.i60.i.i = load ptr, ptr %spec.select.i.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %retval.0.i60.i.i, null
  br i1 %tobool14.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else16.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  %80 = call ptr @memcpy(ptr %rect.i.i, ptr %dst.i.i.i, i32 16)
  %81 = ptrtoint ptr %retval.0.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %retval.0.i60.i.i, align 4
  %visible19.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 22
  %83 = ptrtoint ptr %visible19.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %visible19.i.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool20.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool20.not.i.i, label %if.else16.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false21.i.i

if.else16.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

lor.lhs.false21.i.i:                              ; preds = %if.else16.i.i
  %fb22.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %fb22.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fb22.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %86, null
  br i1 %tobool23.not.i.i, label %lor.lhs.false21.i.i.for.inc.i.i_crit_edge, label %if.end25.i.i

lor.lhs.false21.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end25.i.i:                                     ; preds = %lor.lhs.false21.i.i
  %format.i62.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %format.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %format.i62.i.i, align 8
  %src.i63.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 20
  %x2.i.i64.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 20, i32 2
  %89 = ptrtoint ptr %x2.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %x2.i.i64.i.i, align 4
  %91 = ptrtoint ptr %src.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %src.i63.i.i, align 4
  %sub.i.i65.i.i = sub i32 %90, %92
  %shr.i66.i.i = ashr i32 %sub.i.i65.i.i, 16
  %dst.i67.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 21
  %x2.i24.i68.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 21, i32 2
  %93 = ptrtoint ptr %x2.i24.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %x2.i24.i68.i.i, align 4
  %95 = ptrtoint ptr %dst.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dst.i67.i.i, align 4
  %sub.i25.i69.i.i = sub i32 %94, %96
  %type.i70.i.i = getelementptr inbounds %struct.drm_plane, ptr %82, i32 0, i32 16
  %97 = ptrtoint ptr %type.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type.i70.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp.not.i71.i.i = icmp eq i32 %98, 2
  br i1 %cmp.not.i71.i.i, label %if.end.i79.i.i, label %if.end25.i.i.if.end28.i.i_crit_edge

if.end25.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.end.i79.i.i:                                   ; preds = %if.end25.i.i
  %crtc.i72.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %retval.0.i60.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %crtc.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %crtc.i72.i.i, align 4
  %tobool.not.i.i73.i.i = icmp eq ptr %100, null
  %add.ptr.i.i74.i.i = getelementptr i8, ptr %100, i32 -248
  %spec.select.i.i75.i.i = select i1 %tobool.not.i.i73.i.i, ptr null, ptr %add.ptr.i.i74.i.i
  %soc1.i76.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i.i75.i.i, i32 0, i32 14
  %101 = ptrtoint ptr %soc1.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %soc1.i76.i.i, align 8
  %supports_cursor.i77.i.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %supports_cursor.i77.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %supports_cursor.i77.i.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i78.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i78.i.i, label %if.end5.i81.i.i, label %if.end.i79.i.i.for.inc.i.i_crit_edge

if.end.i79.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end5.i81.i.i:                                  ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i66.i.i, i32 %sub.i25.i69.i.i)
  %cmp6.not.i80.i.i = icmp eq i32 %shr.i66.i.i, %sub.i25.i69.i.i
  br i1 %cmp6.not.i80.i.i, label %lor.lhs.false.i84.i.i, label %if.end5.i81.i.i.if.end28.i.i_crit_edge

if.end5.i81.i.i.if.end28.i.i_crit_edge:           ; preds = %if.end5.i81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

lor.lhs.false.i84.i.i:                            ; preds = %if.end5.i81.i.i
  %num_planes.i82.i.i = getelementptr inbounds %struct.drm_format_info, ptr %88, i32 0, i32 2
  %105 = ptrtoint ptr %num_planes.i82.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_planes.i82.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp7.not.i83.i.i = icmp eq i8 %106, 1
  br i1 %cmp7.not.i83.i.i, label %tegra_plane_is_cursor.exit90.i.i, label %lor.lhs.false.i84.i.i.if.end28.i.i_crit_edge

lor.lhs.false.i84.i.i.if.end28.i.i_crit_edge:     ; preds = %lor.lhs.false.i84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

tegra_plane_is_cursor.exit90.i.i:                 ; preds = %lor.lhs.false.i84.i.i
  %107 = getelementptr inbounds %struct.drm_format_info, ptr %88, i32 0, i32 3
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 2
  %conv10.i85.i.i = zext i8 %109 to i32
  %mul.i86.i.i = mul nsw i32 %shr.i66.i.i, %conv10.i85.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mul.i86.i.i)
  %cmp11.i87.i.i = icmp ult i32 %mul.i86.i.i, 257
  br i1 %cmp11.i87.i.i, label %tegra_plane_is_cursor.exit90.i.i.for.inc.i.i_crit_edge, label %tegra_plane_is_cursor.exit90.i.i.if.end28.i.i_crit_edge

tegra_plane_is_cursor.exit90.i.i.if.end28.i.i_crit_edge: ; preds = %tegra_plane_is_cursor.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

tegra_plane_is_cursor.exit90.i.i.for.inc.i.i_crit_edge: ; preds = %tegra_plane_is_cursor.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end28.i.i:                                     ; preds = %tegra_plane_is_cursor.exit90.i.i.if.end28.i.i_crit_edge, %lor.lhs.false.i84.i.i.if.end28.i.i_crit_edge, %if.end5.i81.i.i.if.end28.i.i_crit_edge, %if.end25.i.i.if.end28.i.i_crit_edge
  %call30.i.i = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %rect.i.i, ptr noundef %dst.i67.i.i) #11
  br i1 %call30.i.i, label %if.then31.i.i, label %if.end28.i.i.for.inc.i.i_crit_edge

if.end28.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then31.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %index.i.i = getelementptr inbounds %struct.tegra_plane, ptr %82, i32 0, i32 3
  %110 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index.i.i, align 8
  %shl.i233.i = shl nuw i32 1, %111
  %or.i.i = or i32 %shl.i233.i, %overlap_mask.0101.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then31.i.i, %if.end28.i.i.for.inc.i.i_crit_edge, %tegra_plane_is_cursor.exit90.i.i.for.inc.i.i_crit_edge, %if.end.i79.i.i.for.inc.i.i_crit_edge, %lor.lhs.false21.i.i.for.inc.i.i_crit_edge, %if.else16.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %overlap_mask.1.i.i = phi i32 [ %overlap_mask.0101.i.i, %tegra_plane_is_cursor.exit90.i.i.for.inc.i.i_crit_edge ], [ %or.i.i, %if.then31.i.i ], [ %overlap_mask.0101.i.i, %if.end28.i.i.for.inc.i.i_crit_edge ], [ %overlap_mask.0101.i.i, %lor.lhs.false21.i.i.for.inc.i.i_crit_edge ], [ %overlap_mask.0101.i.i, %if.else16.i.i.for.inc.i.i_crit_edge ], [ %overlap_mask.0101.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %overlap_mask.0101.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %overlap_mask.0101.i.i, %if.end.i79.i.i.for.inc.i.i_crit_edge ]
  %112 = ptrtoint ptr %.pn103.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn.i.i = load ptr, ptr %.pn103.i.i, align 4
  %113 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state3.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev6.i.i, align 4
  %plane_list8.i.i = getelementptr inbounds %struct.drm_device, ptr %116, i32 0, i32 30, i32 18
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %plane_list8.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.tegra_plane_overlap_mask.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_plane_overlap_mask.exit.i

tegra_plane_overlap_mask.exit.i:                  ; preds = %for.inc.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, %if.end3.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, %tegra_plane_is_cursor.exit.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, %if.end.i.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, %lor.lhs.false.i.i.tegra_plane_overlap_mask.exit.i_crit_edge, %if.end60.i.tegra_plane_overlap_mask.exit.i_crit_edge
  %retval.0.i234.i = phi i32 [ 0, %lor.lhs.false.i.i.tegra_plane_overlap_mask.exit.i_crit_edge ], [ 0, %if.end60.i.tegra_plane_overlap_mask.exit.i_crit_edge ], [ 0, %tegra_plane_is_cursor.exit.i.i.tegra_plane_overlap_mask.exit.i_crit_edge ], [ 0, %if.end.i.i.i.tegra_plane_overlap_mask.exit.i_crit_edge ], [ 0, %if.end3.i.i.tegra_plane_overlap_mask.exit.i_crit_edge ], [ %overlap_mask.1.i.i, %for.inc.i.i.tegra_plane_overlap_mask.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect.i.i) #11
  %117 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index.i, align 8
  %arrayidx64.i = getelementptr [7 x i32], ptr %overlap_mask.i, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i234.i, ptr %arrayidx64.i, align 4
  %call.i.i.i = call i32 @__sw_hweight32(i32 noundef %retval.0.i234.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp66.not.i = icmp eq i32 %call.i.i.i, 3
  %spec.select.i = select i1 %cmp66.not.i, i1 %all_planes_overlap_simultaneously.0.off0253.i, i1 false
  br label %for.inc.i

for.inc.i:                                        ; preds = %tegra_plane_overlap_mask.exit.i, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %all_planes_overlap_simultaneously.1.off0.i = phi i1 [ %all_planes_overlap_simultaneously.0.off0253.i, %if.else.i.for.inc.i_crit_edge ], [ %all_planes_overlap_simultaneously.0.off0253.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %tegra_plane_overlap_mask.exit.i ]
  %120 = ptrtoint ptr %.pn254.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i = load ptr, ptr %.pn254.i, align 4
  %121 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state3.i, align 4
  %dev5.i = getelementptr inbounds %struct.drm_atomic_state, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev5.i, align 4
  %plane_list7.i = getelementptr inbounds %struct.drm_device, ptr %124, i32 0, i32 30, i32 18
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list7.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond84.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.cond84.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond84.preheader.i

for.body93.i:                                     ; preds = %for.inc153.i.for.body93.i_crit_edge, %for.body93.lr.ph.i
  %125 = phi ptr [ %19, %for.body93.lr.ph.i ], [ %152, %for.inc153.i.for.body93.i_crit_edge ]
  %.pn222267.i = phi ptr [ %.pn222262.i, %for.body93.lr.ph.i ], [ %.pn222.i, %for.inc153.i.for.body93.i_crit_edge ]
  %plane.1269.i = getelementptr i8, ptr %.pn222267.i, i32 -4
  %126 = ptrtoint ptr %plane_mask94.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %plane_mask94.i, align 4
  %index.i.i235.i = getelementptr i8, ptr %.pn222267.i, i32 480
  %128 = ptrtoint ptr %index.i.i235.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %index.i.i235.i, align 4
  %shl.i236.i = shl nuw i32 1, %129
  %and96.i = and i32 %shl.i236.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %for.body93.i.for.inc153.i_crit_edge, label %if.else99.i

for.body93.i.for.inc153.i_crit_edge:              ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc153.i

if.else99.i:                                      ; preds = %for.body93.i
  %planes.i237.i = getelementptr inbounds %struct.drm_atomic_state, ptr %125, i32 0, i32 3
  %130 = ptrtoint ptr %planes.i237.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %planes.i237.i, align 4
  %state1.i239.i = getelementptr %struct.__drm_planes_state, ptr %131, i32 %129, i32 1
  %132 = ptrtoint ptr %state1.i239.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state1.i239.i, align 4
  %tobool.not.i240.i = icmp eq ptr %133, null
  %state6.i241.i = getelementptr i8, ptr %.pn222267.i, i32 488
  %spec.select.i242.i = select i1 %tobool.not.i240.i, ptr %state6.i241.i, ptr %state1.i239.i
  %134 = ptrtoint ptr %spec.select.i242.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %retval.0.i243.i = load ptr, ptr %spec.select.i242.i, align 4
  %tobool102.not.i = icmp eq ptr %retval.0.i243.i, null
  br i1 %tobool102.not.i, label %if.else99.i.for.inc153.i_crit_edge, label %if.else104.i

if.else99.i.for.inc153.i_crit_edge:               ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc153.i

if.else104.i:                                     ; preds = %if.else99.i
  %index107.i = getelementptr i8, ptr %.pn222267.i, i32 532
  %135 = ptrtoint ptr %index107.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index107.i, align 8
  %arrayidx108.i = getelementptr [7 x i32], ptr %overlap_mask.i, i32 0, i32 %136
  %call109.i = call i32 @_find_next_bit_be(ptr noundef %arrayidx108.i, i32 noundef 3, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call109.i)
  %cmp111257.i = icmp ult i32 %call109.i, 3
  br i1 %cmp111257.i, label %if.else104.i.for.body112.i_crit_edge, label %if.else104.i.for.end130.i_crit_edge

if.else104.i.for.end130.i_crit_edge:              ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130.i

if.else104.i.for.body112.i_crit_edge:             ; preds = %if.else104.i
  br label %for.body112.i

for.body112.i:                                    ; preds = %for.inc125.i.for.body112.i_crit_edge, %if.else104.i.for.body112.i_crit_edge
  %overlap_bw.0260.i = phi i32 [ %overlap_bw.1.i, %for.inc125.i.for.body112.i_crit_edge ], [ 0, %if.else104.i.for.body112.i_crit_edge ]
  %i.0258.i = phi i32 [ %call129.i, %for.inc125.i.for.body112.i_crit_edge ], [ %call109.i, %if.else104.i.for.body112.i_crit_edge ]
  %137 = ptrtoint ptr %index107.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %index107.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0258.i, i32 %138)
  %cmp114.i = icmp eq i32 %i.0258.i, %138
  br i1 %cmp114.i, label %for.body112.i.for.inc125.i_crit_edge, label %if.end116.i

for.body112.i.for.inc125.i_crit_edge:             ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc125.i

if.end116.i:                                      ; preds = %for.body112.i
  %arrayidx119.i = getelementptr [7 x i32], ptr %plane_peak_bw.i, i32 0, i32 %i.0258.i
  %139 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx119.i, align 4
  br i1 %all_planes_overlap_simultaneously.0.off0.lcssa.i, label %if.then118.i, label %if.else120.i

if.then118.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %140, %overlap_bw.0260.i
  br label %for.inc125.i

if.else120.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = call i32 @llvm.umax.i32(i32 %overlap_bw.0260.i, i32 %140) #11
  br label %for.inc125.i

for.inc125.i:                                     ; preds = %if.else120.i, %if.then118.i, %for.body112.i.for.inc125.i_crit_edge
  %overlap_bw.1.i = phi i32 [ %overlap_bw.0260.i, %for.body112.i.for.inc125.i_crit_edge ], [ %add.i, %if.then118.i ], [ %141, %if.else120.i ]
  %arrayidx127.i = getelementptr [7 x i32], ptr %overlap_mask.i, i32 0, i32 %138
  %add128.i = add nuw nsw i32 %i.0258.i, 1
  %call129.i = call i32 @_find_next_bit_be(ptr noundef %arrayidx127.i, i32 noundef 3, i32 noundef %add128.i) #11
  %cmp111.i = icmp ult i32 %call129.i, 3
  br i1 %cmp111.i, label %for.inc125.i.for.body112.i_crit_edge, label %for.inc125.i.for.end130.i_crit_edge

for.inc125.i.for.end130.i_crit_edge:              ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130.i

for.inc125.i.for.body112.i_crit_edge:             ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body112.i

for.end130.i:                                     ; preds = %for.inc125.i.for.end130.i_crit_edge, %if.else104.i.for.end130.i_crit_edge
  %overlap_bw.0.lcssa.i = phi i32 [ 0, %if.else104.i.for.end130.i_crit_edge ], [ %overlap_bw.1.i, %for.inc125.i.for.end130.i_crit_edge ]
  %142 = ptrtoint ptr %index107.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index107.i, align 8
  %arrayidx132.i = getelementptr [7 x i32], ptr %plane_peak_bw.i, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx132.i, align 4
  %add133.i = add i32 %145, %overlap_bw.0.lcssa.i
  %total_peak_memory_bandwidth.i = getelementptr inbounds %struct.tegra_plane_state, ptr %retval.0.i243.i, i32 0, i32 10
  %146 = ptrtoint ptr %total_peak_memory_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %total_peak_memory_bandwidth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %add133.i)
  %cmp134.not.i = icmp eq i32 %147, %add133.i
  br i1 %cmp134.not.i, label %for.end130.i.for.inc153.i_crit_edge, label %if.then135.i

for.end130.i.for.inc153.i_crit_edge:              ; preds = %for.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc153.i

if.then135.i:                                     ; preds = %for.end130.i
  %call136.i = call ptr @drm_atomic_get_plane_state(ptr noundef %state, ptr noundef %plane.1269.i) #11
  %cmp.i.i = icmp ugt ptr %call136.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup145.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #13
  %total_peak_memory_bandwidth142.i = getelementptr inbounds %struct.tegra_plane_state, ptr %call136.i, i32 0, i32 10
  %148 = ptrtoint ptr %total_peak_memory_bandwidth142.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add133.i, ptr %total_peak_memory_bandwidth142.i, align 4
  br label %for.inc153.i

cleanup145.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %call136.i to i32
  br label %tegra_crtc_calculate_memory_bandwidth.exit

for.inc153.i:                                     ; preds = %cleanup.i, %for.end130.i.for.inc153.i_crit_edge, %if.else99.i.for.inc153.i_crit_edge, %for.body93.i.for.inc153.i_crit_edge
  %150 = ptrtoint ptr %.pn222267.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pn222.i = load ptr, ptr %.pn222267.i, align 4
  %151 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state3.i, align 4
  %dev87.i = getelementptr inbounds %struct.drm_atomic_state, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev87.i, align 4
  %plane_list89.i = getelementptr inbounds %struct.drm_device, ptr %154, i32 0, i32 30, i32 18
  %cmp90.not.i = icmp eq ptr %.pn222.i, %plane_list89.i
  br i1 %cmp90.not.i, label %for.inc153.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, label %for.inc153.i.for.body93.i_crit_edge

for.inc153.i.for.body93.i_crit_edge:              ; preds = %for.inc153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body93.i

for.inc153.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge: ; preds = %for.inc153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_crtc_calculate_memory_bandwidth.exit

tegra_crtc_calculate_memory_bandwidth.exit:       ; preds = %for.inc153.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, %cleanup145.i, %if.then27.i, %land.rhs.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, %for.cond84.preheader.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge, %entry.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge
  %retval.5.i = phi i32 [ %149, %cleanup145.i ], [ 0, %entry.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge ], [ -22, %if.then27.i ], [ -22, %land.rhs.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge ], [ 0, %for.cond84.preheader.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge ], [ 0, %for.inc153.i.tegra_crtc_calculate_memory_bandwidth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %plane_peak_bw.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %overlap_mask.i) #11
  ret i32 %retval.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef %crtc, ptr noundef %state, i1 noundef zeroext true)
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %do.body2

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.body2:                                         ; preds = %entry
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #11
  %call6 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event13 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event13, align 4
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #11
  br label %if.end

if.else:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock15, i32 noundef %call3) #11
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1, align 4
  %event17 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_flush(ptr noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %planes = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %planes, align 4
  %shl = shl i32 %7, 8
  %or = or i32 %shl, 256
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %9, i32 noundef 65, i32 noundef %or) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %12, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %10) #11, !srcloc !701
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %14, i32 260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #11, !srcloc !713
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %18, i32 noundef 65, i32 noundef %16) #11
  %19 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %planes, align 4
  %or5 = or i32 %20, 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %22, i32 noundef 65, i32 noundef %or5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or5) #11
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %25, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %23) #11, !srcloc !701
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %27, i32 260
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #11, !srcloc !713
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %31, i32 noundef 65, i32 noundef %29) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %rate.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %clk.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 6
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 8
  %clk1.i = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk1.i, align 4
  %call.i = tail call i32 @clk_set_parent(ptr noundef %3, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.276, i32 noundef %call.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %pclk.i = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 0
  br i1 %cmp2.not.i, label %if.end.i.if.end27.i_crit_edge, label %if.then3.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk1.i, align 4
  %call6.i = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.then3.i.if.end14.i_crit_edge

if.then3.i.if.end14.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev12.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %12 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12.i, align 4
  %14 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pclk.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.279, i32 noundef %15) #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.then3.i.if.end14.i_crit_edge
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 8
  %18 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pclk.i, align 4
  %call17.i = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.end22.i, label %if.end14.i.if.end27.i_crit_edge

if.end14.i.if.end27.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

do.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev23.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %20 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23.i, align 4
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 8
  %24 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pclk.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.282, ptr noundef %23, i32 noundef %25, i32 noundef %call17.i) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end22.i, %if.end14.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %26 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i, align 8
  %call29.i = tail call i32 @clk_get_rate(ptr noundef %27) #11
  %div.i = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %div.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.284, i32 noundef %call29.i, i32 noundef %29) #11
  %30 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pclk.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.285, i32 noundef %31) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i.i) #11
  %has_opp_table.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 15
  %32 = ptrtoint ptr %has_opp_table.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_opp_table.i.i, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.end27.i.tegra_dc_set_clock_rate.exit_crit_edge, label %if.end.i.i

if.end27.i.tegra_dc_set_clock_rate.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_set_clock_rate.exit

if.end.i.i:                                       ; preds = %if.end27.i
  %34 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i, align 8
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %35) #11
  %mul.i.i = shl i32 %call.i.i, 1
  %36 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %div.i, align 4
  %add.i.i = add i32 %37, 2
  %add1.i.i = add i32 %mul.i.i, -1
  %sub.i.i = add i32 %add1.i.i, %add.i.i
  %div4.i.i = udiv i32 %sub.i.i, %add.i.i
  %38 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div4.i.i, ptr %rate.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  %call5.i.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %40, ptr noundef nonnull %rate.i.i) #11
  %cmp.i.i = icmp eq ptr %call5.i.i, inttoptr (i32 -34 to ptr)
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %call9.i.i = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %42, ptr noundef nonnull %rate.i.i) #11
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %opp.0.i.i = phi ptr [ %call9.i.i, %if.then7.i.i ], [ %call5.i.i, %if.end.i.i.if.end10.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %opp.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end14.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  %45 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rate.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.286, i32 noundef %46, ptr noundef nonnull %opp.0.i.i) #14
  br label %tegra_dc_set_clock_rate.exit

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %call15.i.i = call i32 @dev_pm_opp_get_required_pstate(ptr noundef %opp.0.i.i, i32 noundef 0) #11
  call void @dev_pm_opp_put(ptr noundef %opp.0.i.i) #11
  %47 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i, align 4
  %call17.i.i = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %48, i32 noundef %call15.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end14.i.i.tegra_dc_set_clock_rate.exit_crit_edge, label %do.end22.i.i

if.end14.i.i.tegra_dc_set_clock_rate.exit_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_set_clock_rate.exit

do.end22.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.289, i32 noundef %call15.i.i, i32 noundef %call17.i.i) #14
  br label %tegra_dc_set_clock_rate.exit

tegra_dc_set_clock_rate.exit:                     ; preds = %do.end22.i.i, %if.end14.i.i.tegra_dc_set_clock_rate.exit_crit_edge, %do.end.i.i, %if.end27.i.tegra_dc_set_clock_rate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i) #11
  %call4 = call i32 @host1x_client_resume(ptr noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %tegra_dc_set_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.274, i32 noundef %call4) #14
  br label %cleanup

if.end:                                           ; preds = %tegra_dc_set_clock_rate.exit
  %syncpt = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 1
  %53 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %syncpt, align 8
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 @host1x_syncpt_id(ptr noundef nonnull %54) #11
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %55 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc, align 8
  %has_nvdisplay = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_nvdisplay, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool9.not = icmp eq i8 %58, 0
  %. = select i1 %tobool9.not, i32 256, i32 -2147483648
  %dev.i123 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i123, align 4
  call fastcc void @trace_dc_writel(ptr noundef %60, i32 noundef 1, i32 noundef 256) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %62, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 65536) #11, !srcloc !701
  %or = or i32 %., %call8
  %63 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i123, align 4
  call fastcc void @trace_dc_writel(ptr noundef %64, i32 noundef 40, i32 noundef %or) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %65 = call i32 @llvm.bswap.i32(i32 %or) #11
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  %add.ptr.i127 = getelementptr i8, ptr %67, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %65) #11, !srcloc !701
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %soc13 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %68 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %soc13, align 8
  %has_nvdisplay14 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %has_nvdisplay14 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %has_nvdisplay14, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool15.not = icmp eq i8 %71, 0
  %dev.i143 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %72 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i143, align 4
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_dc_writel(ptr noundef %73, i32 noundef 58, i32 noundef 1006632960) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i129 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %74 = ptrtoint ptr %regs.i129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i129, align 8
  %add.ptr.i130 = getelementptr i8, ptr %75, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 60) #11, !srcloc !701
  %76 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %77, i32 noundef 59, i32 noundef 1031803126) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %regs.i129 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i129, align 8
  %add.ptr.i133 = getelementptr i8, ptr %79, i32 236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 -166690755) #11, !srcloc !701
  %80 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %81, i32 noundef 57, i32 noundef 25165830) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %regs.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i129, align 8
  %add.ptr.i136 = getelementptr i8, ptr %83, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 100696065) #11, !srcloc !701
  %84 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %85, i32 noundef 56, i32 noundef 8388738) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %86 = ptrtoint ptr %regs.i129 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i129, align 8
  %add.ptr.i139 = getelementptr i8, ptr %87, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 -2113896448) #11, !srcloc !701
  %88 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %89, i32 noundef 64, i32 noundef 1) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %regs.i129 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i129, align 8
  %add.ptr.i142 = getelementptr i8, ptr %91, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 16777216) #11, !srcloc !701
  br label %if.end18

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_dc_writel(ptr noundef %73, i32 noundef 58, i32 noundef 116480) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i144 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %92 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i145 = getelementptr i8, ptr %93, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 13041920) #11, !srcloc !701
  %94 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %95, i32 noundef 59, i32 noundef 116480) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i148 = getelementptr i8, ptr %97, i32 236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 13041920) #11, !srcloc !701
  %98 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %99, i32 noundef 1027, i32 noundef 2105376) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i151 = getelementptr i8, ptr %101, i32 4108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 538976256) #11, !srcloc !701
  %102 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %103, i32 noundef 1028, i32 noundef 65793) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i154 = getelementptr i8, ptr %105, i32 4112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 16843008) #11, !srcloc !701
  %106 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %107, i32 noundef 57, i32 noundef 116484) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i157 = getelementptr i8, ptr %109, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 80150784) #11, !srcloc !701
  %110 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i143, align 4
  call fastcc void @trace_dc_writel(ptr noundef %111, i32 noundef 56, i32 noundef 116480) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %112 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i144, align 8
  %add.ptr.i160 = getelementptr i8, ptr %113, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 13041920) #11, !srcloc !701
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %114 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %soc13, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool20.not = icmp eq i8 %117, 0
  %dev.i164 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %118 = ptrtoint ptr %dev.i164 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i164, align 4
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_dc_writel(ptr noundef %119, i32 noundef 1252, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i162 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %120 = ptrtoint ptr %regs.i162 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i162, align 8
  %add.ptr.i163 = getelementptr i8, ptr %121, i32 5008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 0) #11, !srcloc !701
  br label %if.end23

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_dc_writel(ptr noundef %119, i32 noundef 1077, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i165 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %122 = ptrtoint ptr %regs.i165 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i165, align 8
  %add.ptr.i166 = getelementptr i8, ptr %123, i32 4308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 0) #11, !srcloc !701
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  %124 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %soc13, align 8
  %has_nvdisplay25 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %has_nvdisplay25 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %has_nvdisplay25, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool26.not = icmp eq i8 %127, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %div.i, align 4
  %and = and i32 %129, 255
  %dev.i167 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %130 = ptrtoint ptr %dev.i167 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i167, align 4
  call fastcc void @trace_dc_writel(ptr noundef %131, i32 noundef 1070, i32 noundef %and) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %132 = shl nuw i32 %and, 24
  %regs.i168 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %133 = ptrtoint ptr %regs.i168 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i168, align 8
  %add.ptr.i169 = getelementptr i8, ptr %134, i32 4280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %132) #11, !srcloc !701
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  %135 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %soc13, align 8
  %has_nvdisplay.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %136, i32 0, i32 9
  %137 = ptrtoint ptr %has_nvdisplay.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %has_nvdisplay.i, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i170 = icmp eq i8 %138, 0
  br i1 %tobool.not.i170, label %if.then.i, label %if.end29.tegra_dc_set_timings.exit_crit_edge

if.end29.tegra_dc_set_timings.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_dc_set_timings.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i171 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %139 = ptrtoint ptr %dev.i.i171 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i171, align 4
  call fastcc void @trace_dc_writel(ptr noundef %140, i32 noundef 1029, i32 noundef 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %142, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !701
  %143 = ptrtoint ptr %dev.i.i171 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i.i171, align 4
  call fastcc void @trace_dc_writel(ptr noundef %144, i32 noundef 1030, i32 noundef 65537) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %145 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %146, i32 4120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777472) #11, !srcloc !701
  br label %tegra_dc_set_timings.exit

tegra_dc_set_timings.exit:                        ; preds = %if.then.i, %if.end29.tegra_dc_set_timings.exit_crit_edge
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %147 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vsync_end.i, align 2
  %conv.i = zext i16 %148 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %149 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %vsync_start.i, align 4
  %conv1.i = zext i16 %150 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl2.i = shl i32 %sub.i, 16
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %151 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %hsync_end.i, align 4
  %conv3.i = zext i16 %152 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %153 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %hsync_start.i, align 2
  %conv4.i = zext i16 %154 to i32
  %sub5.i = sub nsw i32 %conv3.i, %conv4.i
  %or7.i = or i32 %sub5.i, %shl2.i
  %dev.i4.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %155 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %156, i32 noundef 1031, i32 noundef %or7.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %157 = call i32 @llvm.bswap.i32(i32 %or7.i) #11
  %regs.i5.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %158 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %159, i32 4124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %157) #11, !srcloc !701
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %160 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %vtotal.i, align 4
  %conv8.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %vsync_end.i, align 2
  %conv10.i = zext i16 %163 to i32
  %sub11.i = sub nsw i32 %conv8.i, %conv10.i
  %shl12.i = shl i32 %sub11.i, 16
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %164 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %htotal.i, align 2
  %conv13.i = zext i16 %165 to i32
  %166 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %hsync_end.i, align 4
  %conv15.i = zext i16 %167 to i32
  %sub16.i = sub nsw i32 %conv13.i, %conv15.i
  %or18.i = or i32 %sub16.i, %shl12.i
  %168 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %169, i32 noundef 1032, i32 noundef %or18.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %170 = call i32 @llvm.bswap.i32(i32 %or18.i) #11
  %171 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %172, i32 4128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %170) #11, !srcloc !701
  %173 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vsync_start.i, align 4
  %conv20.i = zext i16 %174 to i32
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %175 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %vdisplay.i, align 2
  %conv21.i = zext i16 %176 to i32
  %sub22.i = sub nsw i32 %conv20.i, %conv21.i
  %shl23.i = shl i32 %sub22.i, 16
  %177 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %hsync_start.i, align 2
  %conv25.i = zext i16 %178 to i32
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %179 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hdisplay.i, align 4
  %conv26.i = zext i16 %180 to i32
  %sub27.i = sub nsw i32 %conv25.i, %conv26.i
  %or29.i = or i32 %sub27.i, %shl23.i
  %181 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %182, i32 noundef 1034, i32 noundef %or29.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %183 = call i32 @llvm.bswap.i32(i32 %or29.i) #11
  %184 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %185, i32 4136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %183) #11, !srcloc !701
  %186 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %vdisplay.i, align 2
  %conv31.i = zext i16 %187 to i32
  %shl32.i = shl nuw i32 %conv31.i, 16
  %188 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %hdisplay.i, align 4
  %conv34.i = zext i16 %189 to i32
  %or35.i = or i32 %shl32.i, %conv34.i
  %190 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %191, i32 noundef 1033, i32 noundef %or35.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %192 = call i32 @llvm.bswap.i32(i32 %or35.i) #11
  %193 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %194, i32 4132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %192) #11, !srcloc !701
  %195 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %soc13, align 8
  %supports_interlacing = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %supports_interlacing to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %supports_interlacing, align 1, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool32.not = icmp eq i8 %198, 0
  br i1 %tobool32.not, label %tegra_dc_set_timings.exit.if.end36_crit_edge, label %if.then33

tegra_dc_set_timings.exit.if.end36_crit_edge:     ; preds = %tegra_dc_set_timings.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %tegra_dc_set_timings.exit
  call void @__sanitizer_cov_trace_pc() #13
  %199 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i174 = getelementptr i8, ptr %200, i32 5012
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #11, !srcloc !713
  %202 = call i32 @llvm.bswap.i32(i32 %201) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %203 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %204, i32 noundef 1253, i32 noundef %202) #11
  %and35 = and i32 %202, -2
  %205 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %206, i32 noundef 1253, i32 noundef %and35) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %207 = call i32 @llvm.bswap.i32(i32 %and35) #11
  %208 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i178 = getelementptr i8, ptr %209, i32 5012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %207) #11, !srcloc !701
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %tegra_dc_set_timings.exit.if.end36_crit_edge
  %210 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i180 = getelementptr i8, ptr %211, i32 200
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #11, !srcloc !713
  %213 = call i32 @llvm.bswap.i32(i32 %212) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %214 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %215, i32 noundef 50, i32 noundef %213) #11
  %and38 = and i32 %213, -97
  %or39 = or i32 %and38, 32
  %216 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %217, i32 noundef 50, i32 noundef %or39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %218 = call i32 @llvm.bswap.i32(i32 %or39) #11
  %219 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %220, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %218) #11, !srcloc !701
  %221 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %soc13, align 8
  %has_nvdisplay41 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %222, i32 0, i32 9
  %223 = ptrtoint ptr %has_nvdisplay41 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %has_nvdisplay41, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool42.not = icmp eq i8 %224, 0
  br i1 %tobool42.not, label %if.then43, label %if.end36.if.end46_crit_edge

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %225 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i186 = getelementptr i8, ptr %226, i32 216
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #11, !srcloc !713
  %228 = call i32 @llvm.bswap.i32(i32 %227) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %229 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %230, i32 noundef 54, i32 noundef %228) #11
  %or45 = or i32 %228, 328021
  %231 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %232, i32 noundef 54, i32 noundef %or45) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %233 = call i32 @llvm.bswap.i32(i32 %or45) #11
  %234 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i190 = getelementptr i8, ptr %235, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %233) #11, !srcloc !701
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end36.if.end46_crit_edge
  %236 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %soc13, align 8
  %has_nvdisplay48 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %237, i32 0, i32 9
  %238 = ptrtoint ptr %has_nvdisplay48 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %has_nvdisplay48, align 2, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool49.not = icmp eq i8 %239, 0
  br i1 %tobool49.not, label %if.end46.if.end51_crit_edge, label %if.then50

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %240 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %241, i32 noundef 869, i32 noundef 257) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %242 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i193 = getelementptr i8, ptr %243, i32 3476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 16842752) #11, !srcloc !701
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46.if.end51_crit_edge
  %rgb = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 10
  %244 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rgb, align 8
  %tobool52.not = icmp eq ptr %245, null
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %246 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %247, i32 noundef 1073, i32 noundef 65537) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %248 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i196 = getelementptr i8, ptr %249, i32 4292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 16777472) #11, !srcloc !701
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %250 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %251, i32 noundef 65, i32 noundef 256) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %252 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i.i199 = getelementptr i8, ptr %253, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i199, i32 65536) #11, !srcloc !701
  %254 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev.i4.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %255, i32 noundef 65, i32 noundef 1) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  call void @arm_heavy_mb() #11
  %256 = ptrtoint ptr %regs.i5.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i5.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %257, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16777216) #11, !srcloc !701
  call void @drm_crtc_vblank_on(ptr noundef %crtc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dev.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %1, i32 noundef 64, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %regs.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #11, !srcloc !701
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %5, i32 200
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #11, !srcloc !713
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %8 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %9, i32 noundef 50, i32 noundef %7) #11
  %10 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %11, i32 noundef 64, i32 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #11, !srcloc !701
  %and.i = and i32 %7, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 200
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !713
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %18 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %19, i32 noundef 50, i32 noundef %17) #11
  %and.i54 = and i32 %17, -97
  %20 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %21, i32 noundef 50, i32 noundef %and.i54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i54) #11
  %23 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %24, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %22) #11, !srcloc !701
  %25 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %26, i32 noundef 65, i32 noundef 256) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i55 = getelementptr i8, ptr %28, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i55, i32 65536) #11, !srcloc !701
  %29 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %30, i32 noundef 65, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %32, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 16777216) #11, !srcloc !701
  tail call fastcc void @tegra_dc_wait_idle(ptr noundef %spec.select.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rgb = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 10
  %33 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rgb, align 8
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %36, i32 216
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #11, !srcloc !713
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %39 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %40, i32 noundef 54, i32 noundef %38) #11
  %and = and i32 %38, -328022
  %41 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %42, i32 noundef 54, i32 noundef %and) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %45, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %43) #11, !srcloc !701
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %stats = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 11
  %46 = call ptr @memset(ptr %stats, i32 0, i32 16)
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #11
  %47 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #11
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %49 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state6, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %event, align 4
  %tobool7.not = icmp eq ptr %52, null
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %52) #11
  %53 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state6, align 4
  %event12 = getelementptr inbounds %struct.drm_crtc_state, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %event12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %event12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5.if.end13_crit_edge
  %56 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %crtc, align 8
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock15) #11
  %call16 = tail call i32 @host1x_client_suspend(ptr noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.291, i32 noundef %call16) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end13.if.end19_crit_edge
  %has_opp_table = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 15
  %60 = ptrtoint ptr %has_opp_table to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_opp_table, align 4, !range !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool20.not = icmp eq i8 %61, 0
  br i1 %tobool20.not, label %if.end19.if.end31_crit_edge, label %if.then21

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then21:                                        ; preds = %if.end19
  %62 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i.i, align 4
  %call23 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %63, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end31_crit_edge, label %do.end28

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.294, i32 noundef %call23) #14
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.then21.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_required_pstate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dc_wait_idle(ptr nocapture noundef readonly %dc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub2 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp3 = icmp slt i32 %sub2, 0
  br i1 %cmp3, label %while.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %dev.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %regs.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %3, i32 noundef 64, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #11, !srcloc !701
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %7, i32 200
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #11, !srcloc !713
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  %10 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %11, i32 noundef 50, i32 noundef %9) #11
  %12 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %13, i32 noundef 64, i32 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #11, !srcloc !701
  %and.i = and i32 %9, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %while.body.return_crit_edge, label %if.end

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %16
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dc_wait_idle.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dc_wait_idle, %return)) #11
          to label %if.then6 [label %return], !srcloc !703

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dc_wait_idle.__UNIQUE_ID_ddebug345, ptr noundef %18, ptr noundef nonnull @.str.297) #11
  br label %return

return:                                           ; preds = %if.then6, %do.body, %while.body.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 362)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 362)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !571, !572, !573, !575, !576, !577, !578, !580, !581, !582, !584, !585, !586, !588, !590, !592, !593, !594, !595, !597, !598, !599, !601, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !615, !616, !617, !618, !620, !621, !622, !623, !625, !626, !627, !628, !630, !631, !632, !633, !635, !636, !637, !639, !640, !641, !643, !644, !645, !647, !648, !649, !650, !652, !653, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688}
!llvm.named.register.sp = !{!690}
!llvm.module.flags = !{!691, !692, !693, !694, !695, !696, !697, !698}
!llvm.ident = !{!699}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 99, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3273, i32 11}
!4 = !{ptr @tegra_dc_driver, !5, !"tegra_dc_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3271, i32 24}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3144, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra_dc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_dc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3167, i32 3}
!24 = !{ptr @tegra_dc_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_dc_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3171, i32 47}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3173, i32 3}
!30 = !{ptr @tegra_dc_probe._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_dc_probe._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3218, i32 12}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3220, i32 3}
!36 = !{ptr @tegra_dc_probe._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_dc_probe._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tegra_dc_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3232, i32 8}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3234, i32 3}
!42 = !{ptr @tegra_dc_probe._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_dc_probe._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3055, i32 47}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3057, i32 3}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tegra_dc_parse_dt._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_dc_parse_dt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3113, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tegra_dc_couple.__UNIQUE_ID_ddebug352, !52, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!56 = !{ptr @dc_client_ops, !57, !"dc_client_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2795, i32 39}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2609, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tegra_dc_init._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_dc_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2613, i32 3}
!66 = !{ptr @tegra_dc_init._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_dc_init._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2664, i32 3}
!70 = !{ptr @tegra_dc_init._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_dc_init._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2671, i32 3}
!74 = !{ptr @tegra_dc_init._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_dc_init._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 844, i32 3}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tegra_primary_plane_create._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_primary_plane_create._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tegra_plane_helper_funcs, !82, !"tegra_plane_helper_funcs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 771, i32 44}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 658, i32 3}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 690, i32 4}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 76, i32 2}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 141, i32 4}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{ptr @tegra_legacy_cursor_plane_formats, !95, !"tegra_legacy_cursor_plane_formats", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 850, i32 18}
!96 = !{ptr @tegra_cursor_plane_formats, !97, !"tegra_cursor_plane_formats", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 854, i32 18}
!98 = !{ptr @linear_modifiers, !99, !"linear_modifiers", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1095, i32 23}
!100 = !{ptr @tegra_cursor_plane_helper_funcs, !101, !"tegra_cursor_plane_helper_funcs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1085, i32 44}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 937, i32 3}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1281, i32 3}
!106 = !{ptr @tegra_dc_overlay_plane_create._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tegra_dc_overlay_plane_create._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @tegra_crtc_funcs, !109, !"tegra_crtc_funcs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1765, i32 36}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1689, i32 4}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1690, i32 4}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1691, i32 4}
!116 = !{ptr @debugfs_files, !117, !"debugfs_files", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1688, i32 29}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1630, i32 17}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1399, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1400, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1401, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1402, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1403, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1404, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1405, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1406, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1407, i32 2}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1408, i32 2}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1409, i32 2}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1410, i32 2}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1411, i32 2}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1412, i32 2}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1413, i32 2}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1414, i32 2}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1415, i32 2}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1416, i32 2}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1417, i32 2}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1418, i32 2}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1419, i32 2}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1420, i32 2}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1421, i32 2}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1422, i32 2}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1423, i32 2}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1424, i32 2}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1425, i32 2}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1426, i32 2}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1427, i32 2}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1428, i32 2}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1429, i32 2}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1430, i32 2}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1431, i32 2}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1432, i32 2}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1433, i32 2}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1434, i32 2}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1435, i32 2}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1436, i32 2}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1437, i32 2}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1438, i32 2}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1439, i32 2}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1440, i32 2}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1441, i32 2}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1442, i32 2}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1443, i32 2}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1444, i32 2}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1445, i32 2}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1446, i32 2}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1447, i32 2}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1448, i32 2}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1449, i32 2}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1450, i32 2}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1451, i32 2}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1452, i32 2}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1453, i32 2}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1454, i32 2}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1455, i32 2}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1456, i32 2}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1457, i32 2}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1458, i32 2}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1459, i32 2}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1460, i32 2}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1461, i32 2}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1462, i32 2}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1463, i32 2}
!250 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1464, i32 2}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1465, i32 2}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1466, i32 2}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1467, i32 2}
!258 = !{ptr @.str.122, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1468, i32 2}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1469, i32 2}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1470, i32 2}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1471, i32 2}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1472, i32 2}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1473, i32 2}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1474, i32 2}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1475, i32 2}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1476, i32 2}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1477, i32 2}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1478, i32 2}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1479, i32 2}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1480, i32 2}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1481, i32 2}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1482, i32 2}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1483, i32 2}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1484, i32 2}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1485, i32 2}
!294 = !{ptr @.str.140, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1486, i32 2}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1487, i32 2}
!298 = !{ptr @.str.142, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1488, i32 2}
!300 = !{ptr @.str.143, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1489, i32 2}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1490, i32 2}
!304 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1491, i32 2}
!306 = !{ptr @.str.146, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1492, i32 2}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1493, i32 2}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1494, i32 2}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1495, i32 2}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1496, i32 2}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1497, i32 2}
!318 = !{ptr @.str.152, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1498, i32 2}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1499, i32 2}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1500, i32 2}
!324 = !{ptr @.str.155, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1501, i32 2}
!326 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1502, i32 2}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1503, i32 2}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1504, i32 2}
!332 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1505, i32 2}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1506, i32 2}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1507, i32 2}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1508, i32 2}
!340 = !{ptr @.str.163, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1509, i32 2}
!342 = !{ptr @.str.164, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1510, i32 2}
!344 = !{ptr @.str.165, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1511, i32 2}
!346 = !{ptr @.str.166, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1512, i32 2}
!348 = !{ptr @.str.167, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1513, i32 2}
!350 = !{ptr @.str.168, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1514, i32 2}
!352 = !{ptr @.str.169, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1515, i32 2}
!354 = !{ptr @.str.170, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1516, i32 2}
!356 = !{ptr @.str.171, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1517, i32 2}
!358 = !{ptr @.str.172, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1518, i32 2}
!360 = !{ptr @.str.173, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1519, i32 2}
!362 = !{ptr @.str.174, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1520, i32 2}
!364 = !{ptr @.str.175, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1521, i32 2}
!366 = !{ptr @.str.176, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1522, i32 2}
!368 = !{ptr @.str.177, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1523, i32 2}
!370 = !{ptr @.str.178, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1524, i32 2}
!372 = !{ptr @.str.179, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1525, i32 2}
!374 = !{ptr @.str.180, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1526, i32 2}
!376 = !{ptr @.str.181, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1527, i32 2}
!378 = !{ptr @.str.182, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1528, i32 2}
!380 = !{ptr @.str.183, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1529, i32 2}
!382 = !{ptr @.str.184, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1530, i32 2}
!384 = !{ptr @.str.185, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1531, i32 2}
!386 = !{ptr @.str.186, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1532, i32 2}
!388 = !{ptr @.str.187, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1533, i32 2}
!390 = !{ptr @.str.188, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1534, i32 2}
!392 = !{ptr @.str.189, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1535, i32 2}
!394 = !{ptr @.str.190, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1536, i32 2}
!396 = !{ptr @.str.191, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1537, i32 2}
!398 = !{ptr @.str.192, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1538, i32 2}
!400 = !{ptr @.str.193, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1539, i32 2}
!402 = !{ptr @.str.194, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1540, i32 2}
!404 = !{ptr @.str.195, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1541, i32 2}
!406 = !{ptr @.str.196, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1542, i32 2}
!408 = !{ptr @.str.197, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1543, i32 2}
!410 = !{ptr @.str.198, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1544, i32 2}
!412 = !{ptr @.str.199, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1545, i32 2}
!414 = !{ptr @.str.200, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1546, i32 2}
!416 = !{ptr @.str.201, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1547, i32 2}
!418 = !{ptr @.str.202, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1548, i32 2}
!420 = !{ptr @.str.203, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1549, i32 2}
!422 = !{ptr @.str.204, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1550, i32 2}
!424 = !{ptr @.str.205, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1551, i32 2}
!426 = !{ptr @.str.206, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1552, i32 2}
!428 = !{ptr @.str.207, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1553, i32 2}
!430 = !{ptr @.str.208, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1554, i32 2}
!432 = !{ptr @.str.209, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1555, i32 2}
!434 = !{ptr @.str.210, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1556, i32 2}
!436 = !{ptr @.str.211, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1557, i32 2}
!438 = !{ptr @.str.212, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1558, i32 2}
!440 = !{ptr @.str.213, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1559, i32 2}
!442 = !{ptr @.str.214, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1560, i32 2}
!444 = !{ptr @.str.215, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1561, i32 2}
!446 = !{ptr @.str.216, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1562, i32 2}
!448 = !{ptr @.str.217, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1563, i32 2}
!450 = !{ptr @.str.218, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1564, i32 2}
!452 = !{ptr @.str.219, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1565, i32 2}
!454 = !{ptr @.str.220, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1566, i32 2}
!456 = !{ptr @.str.221, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1567, i32 2}
!458 = !{ptr @.str.222, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1568, i32 2}
!460 = !{ptr @.str.223, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1569, i32 2}
!462 = !{ptr @.str.224, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1570, i32 2}
!464 = !{ptr @.str.225, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1571, i32 2}
!466 = !{ptr @.str.226, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1572, i32 2}
!468 = !{ptr @.str.227, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1573, i32 2}
!470 = !{ptr @.str.228, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1574, i32 2}
!472 = !{ptr @.str.229, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1575, i32 2}
!474 = !{ptr @.str.230, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1576, i32 2}
!476 = !{ptr @.str.231, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1577, i32 2}
!478 = !{ptr @.str.232, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1578, i32 2}
!480 = !{ptr @.str.233, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1579, i32 2}
!482 = !{ptr @.str.234, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1580, i32 2}
!484 = !{ptr @.str.235, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1581, i32 2}
!486 = !{ptr @.str.236, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1582, i32 2}
!488 = !{ptr @.str.237, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1583, i32 2}
!490 = !{ptr @.str.238, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1584, i32 2}
!492 = !{ptr @.str.239, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1585, i32 2}
!494 = !{ptr @.str.240, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1586, i32 2}
!496 = !{ptr @.str.241, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1587, i32 2}
!498 = !{ptr @.str.242, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1588, i32 2}
!500 = !{ptr @.str.243, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1589, i32 2}
!502 = !{ptr @.str.244, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1590, i32 2}
!504 = !{ptr @.str.245, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1591, i32 2}
!506 = !{ptr @.str.246, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1592, i32 2}
!508 = !{ptr @.str.247, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1593, i32 2}
!510 = !{ptr @.str.248, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1594, i32 2}
!512 = !{ptr @.str.249, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1595, i32 2}
!514 = !{ptr @.str.250, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1596, i32 2}
!516 = !{ptr @.str.251, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1597, i32 2}
!518 = !{ptr @.str.252, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1598, i32 2}
!520 = !{ptr @.str.253, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1599, i32 2}
!522 = !{ptr @.str.254, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1600, i32 2}
!524 = !{ptr @.str.255, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1601, i32 2}
!526 = !{ptr @.str.256, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1602, i32 2}
!528 = !{ptr @.str.257, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1603, i32 2}
!530 = !{ptr @.str.258, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1604, i32 2}
!532 = !{ptr @.str.259, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1605, i32 2}
!534 = !{ptr @.str.260, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1606, i32 2}
!536 = !{ptr @.str.261, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1607, i32 2}
!538 = !{ptr @.str.262, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1608, i32 2}
!540 = !{ptr @.str.263, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1609, i32 2}
!542 = !{ptr @.str.264, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1610, i32 2}
!544 = !{ptr @tegra_dc_regs, !545, !"tegra_dc_regs", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1398, i32 35}
!546 = !{ptr @.str.265, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1661, i32 16}
!548 = !{ptr @.str.266, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1675, i32 16}
!550 = !{ptr @.str.267, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1676, i32 16}
!552 = !{ptr @.str.268, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1677, i32 16}
!554 = !{ptr @.str.269, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1678, i32 16}
!556 = !{ptr @.str.270, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1680, i32 16}
!558 = !{ptr @.str.271, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1681, i32 16}
!560 = !{ptr @.str.272, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1682, i32 16}
!562 = !{ptr @.str.273, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1683, i32 16}
!564 = !{ptr @tegra_crtc_helper_funcs, !565, !"tegra_crtc_helper_funcs", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2489, i32 43}
!566 = distinct !{null, !567, !"__already_done", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2393, i32 7}
!568 = !{ptr @.str.274, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2134, i32 3}
!570 = !{ptr @.str.275, !569, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @tegra_crtc_atomic_enable._entry, !569, !"_entry", i1 false, i1 false}
!572 = !{ptr @tegra_crtc_atomic_enable._entry_ptr, !569, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.276, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1893, i32 3}
!575 = !{ptr @.str.277, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @tegra_dc_set_clock_rate._entry, !574, !"_entry", i1 false, i1 false}
!577 = !{ptr @tegra_dc_set_clock_rate._entry_ptr, !574, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.279, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1906, i32 4}
!580 = !{ptr @tegra_dc_set_clock_rate._entry.278, !579, !"_entry", i1 false, i1 false}
!581 = !{ptr @tegra_dc_set_clock_rate._entry_ptr.280, !579, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.282, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1912, i32 4}
!584 = !{ptr @tegra_dc_set_clock_rate._entry.281, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @tegra_dc_set_clock_rate._entry_ptr.283, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.284, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1916, i32 2}
!588 = !{ptr @.str.285, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1918, i32 2}
!590 = !{ptr @.str.286, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1865, i32 3}
!592 = !{ptr @.str.287, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @tegra_dc_update_voltage_state._entry, !591, !"_entry", i1 false, i1 false}
!594 = !{ptr @tegra_dc_update_voltage_state._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.289, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1882, i32 3}
!597 = !{ptr @tegra_dc_update_voltage_state._entry.288, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @tegra_dc_update_voltage_state._entry_ptr.290, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.291, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2110, i32 3}
!601 = !{ptr @.str.292, !600, !"<string literal>", i1 false, i1 false}
!602 = !{ptr @tegra_crtc_atomic_disable._entry, !600, !"_entry", i1 false, i1 false}
!603 = !{ptr @tegra_crtc_atomic_disable._entry_ptr, !600, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.294, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2115, i32 4}
!606 = !{ptr @tegra_crtc_atomic_disable._entry.293, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @tegra_crtc_atomic_disable._entry_ptr.295, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.296, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1955, i32 2}
!610 = !{ptr @.str.297, !609, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @tegra_dc_wait_idle.__UNIQUE_ID_ddebug345, !609, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!612 = !{ptr @.str.298, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2539, i32 3}
!614 = !{ptr @tegra_dc_irq._rs, !613, !"_rs", i1 false, i1 false}
!615 = !{ptr @.str.299, !613, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @.str.300, !613, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @tegra_dc_irq.descriptor, !613, !"descriptor", i1 false, i1 false}
!618 = !{ptr @.str.301, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2712, i32 3}
!620 = !{ptr @.str.302, !619, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @tegra_dc_exit._entry, !619, !"_entry", i1 false, i1 false}
!622 = !{ptr @tegra_dc_exit._entry_ptr, !619, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.303, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2740, i32 3}
!625 = !{ptr @.str.304, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @tegra_dc_runtime_suspend._entry, !624, !"_entry", i1 false, i1 false}
!627 = !{ptr @tegra_dc_runtime_suspend._entry_ptr, !624, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @.str.305, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2761, i32 3}
!630 = !{ptr @.str.306, !629, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @tegra_dc_runtime_resume._entry, !629, !"_entry", i1 false, i1 false}
!632 = !{ptr @tegra_dc_runtime_resume._entry_ptr, !629, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.308, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2769, i32 4}
!635 = !{ptr @tegra_dc_runtime_resume._entry.307, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @tegra_dc_runtime_resume._entry_ptr.309, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.311, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2775, i32 4}
!639 = !{ptr @tegra_dc_runtime_resume._entry.310, !638, !"_entry", i1 false, i1 false}
!640 = !{ptr @tegra_dc_runtime_resume._entry_ptr.312, !638, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.314, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2781, i32 4}
!643 = !{ptr @tegra_dc_runtime_resume._entry.313, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @tegra_dc_runtime_resume._entry_ptr.315, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.316, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3255, i32 3}
!647 = !{ptr @.str.317, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @tegra_dc_remove._entry, !646, !"_entry", i1 false, i1 false}
!649 = !{ptr @tegra_dc_remove._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.319, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3262, i32 3}
!652 = !{ptr @tegra_dc_remove._entry.318, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @tegra_dc_remove._entry_ptr.320, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @tegra_dc_of_match, !655, !"tegra_dc_of_match", i1 false, i1 false}
!655 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3021, i32 34}
!656 = !{ptr @tegra194_dc_soc_info, !657, !"tegra194_dc_soc_info", i1 false, i1 false}
!657 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 3004, i32 39}
!658 = !{ptr @tegra194_dc_wgrps, !659, !"tegra194_dc_wgrps", i1 false, i1 false}
!659 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2970, i32 43}
!660 = !{ptr @tegra186_dc_soc_info, !661, !"tegra186_dc_soc_info", i1 false, i1 false}
!661 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2953, i32 39}
!662 = !{ptr @tegra186_dc_wgrps, !663, !"tegra186_dc_wgrps", i1 false, i1 false}
!663 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2919, i32 43}
!664 = !{ptr @tegra210_dc_soc_info, !665, !"tegra210_dc_soc_info", i1 false, i1 false}
!665 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2896, i32 39}
!666 = !{ptr @tegra114_primary_formats, !667, !"tegra114_primary_formats", i1 false, i1 false}
!667 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 552, i32 18}
!668 = !{ptr @tegra114_overlay_formats, !669, !"tegra114_overlay_formats", i1 false, i1 false}
!669 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1171, i32 18}
!670 = !{ptr @tegra124_modifiers, !671, !"tegra124_modifiers", i1 false, i1 false}
!671 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 599, i32 18}
!672 = !{ptr @tegra124_dc_soc_info, !673, !"tegra124_dc_soc_info", i1 false, i1 false}
!673 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2873, i32 39}
!674 = !{ptr @tegra124_primary_formats, !675, !"tegra124_primary_formats", i1 false, i1 false}
!675 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 574, i32 18}
!676 = !{ptr @tegra124_overlay_formats, !677, !"tegra124_overlay_formats", i1 false, i1 false}
!677 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1198, i32 18}
!678 = !{ptr @tegra114_dc_soc_info, !679, !"tegra114_dc_soc_info", i1 false, i1 false}
!679 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2850, i32 39}
!680 = !{ptr @tegra20_modifiers, !681, !"tegra20_modifiers", i1 false, i1 false}
!681 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 546, i32 18}
!682 = !{ptr @tegra30_dc_soc_info, !683, !"tegra30_dc_soc_info", i1 false, i1 false}
!683 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2827, i32 39}
!684 = !{ptr @tegra20_primary_formats, !685, !"tegra20_primary_formats", i1 false, i1 false}
!685 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 532, i32 18}
!686 = !{ptr @tegra20_overlay_formats, !687, !"tegra20_overlay_formats", i1 false, i1 false}
!687 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 1152, i32 18}
!688 = !{ptr @tegra20_dc_soc_info, !689, !"tegra20_dc_soc_info", i1 false, i1 false}
!689 = !{!"../drivers/gpu/drm/tegra/dc.c", i32 2804, i32 39}
!690 = !{!"sp"}
!691 = !{i32 1, !"wchar_size", i32 2}
!692 = !{i32 1, !"min_enum_size", i32 4}
!693 = !{i32 8, !"branch-target-enforcement", i32 0}
!694 = !{i32 8, !"sign-return-address", i32 0}
!695 = !{i32 8, !"sign-return-address-all", i32 0}
!696 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!697 = !{i32 7, !"uwtable", i32 1}
!698 = !{i32 7, !"frame-pointer", i32 2}
!699 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!700 = !{i64 2157523790}
!701 = !{i64 5983046}
!702 = !{i8 0, i8 2}
!703 = !{i64 2148811952, i64 2148811957, i64 2148811970, i64 2148812014, i64 2148812048, i64 2148812069}
!704 = !{!"branch_weights", i32 2000, i32 1}
!705 = !{i64 2157342610}
!706 = !{i64 2157342827}
!707 = !{i64 2149388038}
!708 = !{i64 2149389074}
!709 = !{!"auto-init"}
!710 = !{i64 2148329556}
!711 = !{i64 814379, i64 814404, i64 814426, i64 814442, i64 814454, i64 814474, i64 814498, i64 814514, i64 814526}
!712 = !{i64 2148329744}
!713 = !{i64 5983464}
!714 = !{i64 2157524661}
!715 = distinct !{!715, !716}
!716 = !{!"llvm.loop.peeled.count", i32 2}
!717 = !{i64 2148720671, i64 2148720951, i64 2148721285, i64 2148721619}
!718 = !{i64 2157362819}
!719 = !{i64 2157363034}
!720 = !{!"branch_weights", i32 1, i32 2000}
