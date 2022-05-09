; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/hub.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/hub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.tegra_display_hub_soc = type { i32, i8 }
%struct.tegra_display_hub = type { %struct.drm_private_obj, %struct.host1x_client, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_windowgroup = type { i32, %struct.mutex, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.96, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.96 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.tegra_shared_plane = type { %struct.tegra_plane, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.tegra_display_hub_state = type { %struct.drm_private_state, ptr, i32, ptr }
%struct.drm_private_state = type { ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@tegra_shared_plane_formats = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 892424769, i32 909199186, i32 892420434, i32 875713089, i32 875708993, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875713112, i32 875709016, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], [52 x i8] zeroinitializer }, align 32
@tegra_shared_plane_modifiers = internal constant { [14 x i64], [48 x i8] } { [14 x i64] [i64 0, i64 216172782113783824, i64 216172782113783825, i64 216172782113783826, i64 216172782113783827, i64 216172782113783828, i64 216172782113783829, i64 216172782117978128, i64 216172782117978129, i64 216172782117978130, i64 216172782117978131, i64 216172782117978132, i64 216172782117978133, i64 72057594037927935], [48 x i8] zeroinitializer }, align 32
@tegra_plane_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@tegra_shared_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_shared_plane_atomic_check, ptr @tegra_shared_plane_atomic_update, ptr @tegra_shared_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_display_hub_atomic_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 918, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set rate of %pC to %lu Hz\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_display_hub_atomic_commit\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/hub.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_display_hub_atomic_commit._entry_ptr = internal global ptr @tegra_display_hub_atomic_commit._entry, section ".printk_index", align 4
@tegra_display_hub_atomic_commit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set parent of %pC to %pC: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_display_hub_atomic_commit._entry_ptr.7 = internal global ptr @tegra_display_hub_atomic_commit._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra-display-hub\00", [46 x i8] zeroinitializer }, align 32
@tegra_display_hub_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_display_hub }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_display_hub }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_display_hub_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_display_hub_probe, ptr @tegra_display_hub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_display_hub_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_windowgroup_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_windowgroup_enable\00", [39 x i8] zeroinitializer }, align 32
@tegra_windowgroup_enable._entry_ptr = internal global ptr @tegra_windowgroup_enable._entry, section ".printk_index", align 4
@tegra_windowgroup_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to assert reset for window group %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_windowgroup_disable\00", [38 x i8] zeroinitializer }, align 32
@tegra_windowgroup_disable._entry_ptr = internal global ptr @tegra_windowgroup_disable._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hardware doesn't support block linear mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hardware doesn't support GPU sector layout\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported UV-plane configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_shared_plane_atomic_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_shared_plane_atomic_update\00", [63 x i8] zeroinitializer }, align 32
@tegra_shared_plane_atomic_update._entry_ptr = internal global ptr @tegra_shared_plane_atomic_update._entry, section ".printk_index", align 4
@tegra_shared_plane_atomic_update._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid minimum width: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_shared_plane_atomic_update._entry_ptr.19 = internal global ptr @tegra_shared_plane_atomic_update._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s %s: head %u owns window %u but is not attached\0A\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s: window %u owned by head %u\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_shared_plane_set_owner.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_shared_plane_set_owner\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"window %u not owned by head %u but %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_shared_plane_setup_scaler.coeffs = internal constant { [192 x i32], [192 x i8] } { [192 x i32] [i32 0, i32 1014031360, i32 1001404388, i32 206687388, i32 1048577, i32 1005640698, i32 1023472646, i32 1071645695, i32 3145730, i32 998296565, i32 1033962509, i32 1068499966, i32 4194306, i32 992002033, i32 1045499925, i32 1066402812, i32 5242882, i32 986756077, i32 1059135517, i32 1062208507, i32 5242883, i32 983606249, i32 1072771110, i32 1059063801, i32 5243907, i32 980457446, i32 14762031, i32 1054869495, i32 5243907, i32 979405796, i32 30493752, i32 1050676214, i32 5243907, i32 978354146, i32 48323650, i32 1045434356, i32 5243906, i32 979399649, i32 66153549, i32 1040191474, i32 4195330, i32 980446176, i32 85031000, i32 1034949616, i32 3146754, i32 982540256, i32 103909475, i32 1029707758, i32 3146754, i32 984635360, i32 124885102, i32 1023417323, i32 2097153, i32 988827617, i32 144811130, i32 1018176489, i32 1048577, i32 991971298, i32 165786757, i32 1012934631, i32 1048576, i32 997212130, i32 185712785, i32 1006645222, i32 1059076096, i32 59838527, i32 1072734228, i32 135356524, i32 1059076095, i32 55642172, i32 65083458, i32 1059077120, i32 1060122623, i32 50398265, i32 70327365, i32 1058030593, i32 1060122623, i32 46201909, i32 75572296, i32 1058031618, i32 1061169151, i32 40958002, i32 79767627, i32 1059082243, i32 1061168127, i32 36761648, i32 85012558, i32 1059083267, i32 1063264255, i32 32565293, i32 90256465, i32 1059085316, i32 1064311806, i32 28368938, i32 94452820, i32 1060134918, i32 1064310782, i32 24172583, i32 99696727, i32 1061185543, i32 1065359359, i32 21025828, i32 104940634, i32 1061186568, i32 1067455487, i32 16829474, i32 109135965, i32 1062237193, i32 1067454463, i32 13681695, i32 114379872, i32 1063287819, i32 1069551615, i32 9485340, i32 118575203, i32 1065387020, i32 1070599167, i32 7386138, i32 122770533, i32 1066437646, i32 1071646719, i32 4239384, i32 126965864, i32 1068535823, i32 1072694272, i32 1091606, i32 131161194, i32 1070635025, i32 10505230, i32 73462850, i32 37791783, i32 96557145, i32 9454605, i32 71364672, i32 75562051, i32 11554832, i32 8405004, i32 68217918, i32 76611652, i32 13653009, i32 7354379, i32 66119741, i32 78710854, i32 14702610, i32 6304778, i32 64021563, i32 80809032, i32 15753235, i32 5255177, i32 61923385, i32 81859657, i32 17851413, i32 4205576, i32 59824184, i32 83958859, i32 18902038, i32 3155975, i32 57726006, i32 85008460, i32 21000216, i32 3154950, i32 54579252, i32 87106638, i32 22049817, i32 2105349, i32 52481074, i32 88157264, i32 24149019, i32 1055748, i32 50381873, i32 90256465, i32 25198621, i32 1054723, i32 48283695, i32 91306067, i32 27297822, i32 1052674, i32 45136941, i32 92356692, i32 29396000, i32 3074, i32 44087340, i32 93406293, i32 31495201, i32 2049, i32 41988138, i32 94456919, i32 33594403, i32 1024, i32 39889960, i32 95507544, i32 35692581], [192 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_shared_plane_atomic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_shared_plane_atomic_disable\00", [62 x i8] zeroinitializer }, align 32
@tegra_shared_plane_atomic_disable._entry_ptr = internal global ptr @tegra_shared_plane_atomic_disable._entry, section ".printk_index", align 4
@tegra_display_hub_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.30, ptr @.str.2, i32 883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_display_hub_update\00", [39 x i8] zeroinitializer }, align 32
@tegra_display_hub_update._entry_ptr = internal global ptr @tegra_display_hub_update._entry, section ".printk_index", align 4
@tegra_display_hub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1052, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_display_hub_probe\00", [40 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry_ptr = internal global ptr @tegra_display_hub_probe._entry, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsc\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wgrp%u\00", [25 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wgrp->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 1122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to find node for head %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry_ptr.41 = internal global ptr @tegra_display_hub_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.32, ptr @.str.2, i32 1129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get clock for head %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry_ptr.45 = internal global ptr @tegra_display_hub_probe._entry.43, section ".printk_index", align 4
@tegra_display_hub_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_display_hub_init, ptr @tegra_display_hub_exit, ptr null, ptr @tegra_display_hub_runtime_suspend, ptr @tegra_display_hub_runtime_resume }, [40 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_display_hub_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.2, i32 1154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_display_hub_probe._entry_ptr.49 = internal global ptr @tegra_display_hub_probe._entry.47, section ".printk_index", align 4
@tegra_display_hub_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @tegra_display_hub_duplicate_state, ptr @tegra_display_hub_destroy_state }, [24 x i8] zeroinitializer }, align 32
@tegra_display_hub_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 992, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_display_hub_runtime_resume\00", [63 x i8] zeroinitializer }, align 32
@tegra_display_hub_runtime_resume._entry_ptr = internal global ptr @tegra_display_hub_runtime_resume._entry, section ".printk_index", align 4
@tegra_display_hub_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_display_hub_remove\00", [39 x i8] zeroinitializer }, align 32
@tegra_display_hub_remove._entry_ptr = internal global ptr @tegra_display_hub_remove._entry, section ".printk_index", align 4
@tegra194_display_hub = internal constant { %struct.tegra_display_hub_soc, [24 x i8] } { %struct.tegra_display_hub_soc { i32 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tegra186_display_hub = internal constant { %struct.tegra_display_hub_soc, [24 x i8] } { %struct.tegra_display_hub_soc { i32 6, i8 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"tegra_shared_plane_formats\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 28, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant [29 x i8] c"tegra_shared_plane_modifiers\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 52, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"tegra_shared_plane_helper_funcs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 739, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 917, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 922, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1216, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"tegra_display_hub_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1201, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"tegra_display_hub_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1214, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 119, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 142, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 449, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 455, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 466, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 558, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 595, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 249, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 30, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 108, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 270, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 280, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"coeffs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 299, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 498, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 883, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1052, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1062, i32 43 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1069, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1076, i32 42 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1082, i32 48 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1097, i32 28 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1098, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1121, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1126, i32 52 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1128, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"tegra_display_hub_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1034, i32 39 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1151, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1153, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"tegra_display_hub_state_funcs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 819, i32 45 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 992, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1176, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"tegra194_display_hub\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1196, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"tegra186_display_hub\00", align 1
@___asan_gen_.256 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/hub.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1191, i32 43 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @tegra_display_hub_atomic_commit._entry, ptr @tegra_display_hub_atomic_commit._entry.5, ptr @tegra_display_hub_atomic_commit._entry_ptr, ptr @tegra_display_hub_atomic_commit._entry_ptr.7, ptr @tegra_display_hub_probe._entry, ptr @tegra_display_hub_probe._entry.39, ptr @tegra_display_hub_probe._entry.43, ptr @tegra_display_hub_probe._entry.47, ptr @tegra_display_hub_probe._entry_ptr, ptr @tegra_display_hub_probe._entry_ptr.41, ptr @tegra_display_hub_probe._entry_ptr.45, ptr @tegra_display_hub_probe._entry_ptr.49, ptr @tegra_display_hub_remove._entry, ptr @tegra_display_hub_remove._entry_ptr, ptr @tegra_display_hub_runtime_resume._entry, ptr @tegra_display_hub_runtime_resume._entry_ptr, ptr @tegra_display_hub_update._entry, ptr @tegra_display_hub_update._entry_ptr, ptr @tegra_shared_plane_atomic_disable._entry, ptr @tegra_shared_plane_atomic_disable._entry_ptr, ptr @tegra_shared_plane_atomic_update._entry, ptr @tegra_shared_plane_atomic_update._entry.17, ptr @tegra_shared_plane_atomic_update._entry_ptr, ptr @tegra_shared_plane_atomic_update._entry_ptr.19, ptr @tegra_windowgroup_disable._entry, ptr @tegra_windowgroup_disable._entry_ptr, ptr @tegra_windowgroup_enable._entry, ptr @tegra_windowgroup_enable._entry_ptr, ptr @tegra_shared_plane_formats, ptr @tegra_shared_plane_modifiers, ptr @tegra_shared_plane_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @tegra_display_hub_of_match, ptr @tegra_display_hub_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @tegra_shared_plane_setup_scaler.coeffs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tegra_display_hub_probe.__key, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @tegra_display_hub_ops, ptr @tegra_display_hub_probe.__key.46, ptr @.str.48, ptr @tegra_display_hub_state_funcs, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @tegra194_display_hub, ptr @tegra186_display_hub], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_formats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_modifiers to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_atomic_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_atomic_commit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_windowgroup_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_windowgroup_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_atomic_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_atomic_update._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_setup_scaler.coeffs to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_shared_plane_atomic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_display_hub_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_display_hub to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_display_hub to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_display_hub_prepare(ptr nocapture noundef readonly %hub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_display_hub, ptr %hub, i32 0, i32 8
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wgrps = getelementptr inbounds %struct.tegra_display_hub, ptr %hub, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wgrps, align 4
  %parent = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 3
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06
  %lock.i = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end5.i_crit_edge

if.then.if.end5.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @host1x_client_resume(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef %call.i) #13
  br label %tegra_windowgroup_enable.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %rst.i = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 4
  %16 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst.i, align 4
  %call4.i = tail call i32 @reset_control_deassert(ptr noundef %17) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.then.if.end5.i_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %arrayidx, align 4
  br label %tegra_windowgroup_enable.exit

tegra_windowgroup_enable.exit:                    ; preds = %if.end5.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %if.end

if.end:                                           ; preds = %tegra_windowgroup_enable.exit, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.06, 1
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_display_hub_cleanup(ptr nocapture noundef readonly %hub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_display_hub, ptr %hub, i32 0, i32 8
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wgrps = getelementptr inbounds %struct.tegra_display_hub, ptr %hub, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wgrps, align 4
  %parent = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 3
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06
  %lock.i = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.tegra_windowgroup_disable.exit_crit_edge

if.then.tegra_windowgroup_disable.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_windowgroup_disable.exit

if.then.i:                                        ; preds = %if.then
  %rst.i = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 4
  %10 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr %struct.tegra_windowgroup, ptr %5, i32 %i.06, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %13) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 4
  %call4.i = tail call i32 @host1x_client_suspend(ptr noundef %15) #10
  br label %tegra_windowgroup_disable.exit

tegra_windowgroup_disable.exit:                   ; preds = %if.end.i, %if.then.tegra_windowgroup_disable.exit_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %if.end

if.end:                                           ; preds = %tegra_windowgroup_disable.exit, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.06, 1
  %18 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_shared_plane_create(ptr noundef %drm, ptr noundef %dc, i32 noundef %wgrp, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %hub1 = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hub1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hub1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 560) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %index, 768
  %add = add i32 %mul, 2560
  %offset = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %offset, align 4
  %index4 = getelementptr inbounds %struct.tegra_plane, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %index4, align 8
  %wgrps = getelementptr inbounds %struct.tegra_display_hub, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wgrps, align 4
  %arrayidx = getelementptr %struct.tegra_windowgroup, ptr %8, i32 %wgrp
  %wgrp5 = getelementptr inbounds %struct.tegra_shared_plane, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %wgrp5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %wgrp5, align 8
  %parent = getelementptr %struct.tegra_windowgroup, ptr %8, i32 %wgrp, i32 3
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dc, ptr %parent, align 4
  %num_crtcs = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_crtcs, align 8
  %notmask = shl nsw i32 -1, %12
  %sub = xor i32 %notmask, -1
  %call9 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i, i32 noundef %sub, ptr noundef nonnull @tegra_plane_funcs, ptr noundef nonnull @tegra_shared_plane_formats, i32 noundef 19, ptr noundef nonnull @tegra_shared_plane_modifiers, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %13 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_shared_plane_helper_funcs, ptr %helper_private.i, align 8
  %call13 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 255) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then10 ], [ %call7.i.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_display_hub_atomic_check(ptr nocapture noundef readonly %drm, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hub, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef nonnull %3) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %num_crtc59 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 19
  %6 = ptrtoint ptr %num_crtc59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp60.not = icmp eq i32 %7, 0
  br i1 %cmp60.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %clk = getelementptr inbounds %struct.tegra_display_hub_state, ptr %call.i, i32 0, i32 3
  %rate = getelementptr inbounds %struct.tegra_display_hub_state, ptr %call.i, i32 0, i32 2
  %dc23 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %call.i, i32 0, i32 1
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %10, i32 %i.061
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %10, i32 %i.061, i32 3
  %13 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new_state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.then17.if.then20_crit_edge, label %lor.lhs.false

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then17
  %pclk = getelementptr inbounds %struct.tegra_dc_state, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pclk, align 4
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp19 = icmp ugt i32 %20, %22
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then17.if.then20_crit_edge
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %24, null
  %add.ptr.i = getelementptr i8, ptr %24, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %25 = ptrtoint ptr %dc23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select.i, ptr %dc23, align 4
  %clk25 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 6
  %26 = ptrtoint ptr %clk25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk25, align 8
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %clk, align 4
  %pclk27 = getelementptr inbounds %struct.tegra_dc_state, ptr %14, i32 0, i32 2
  %29 = ptrtoint ptr %pclk27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pclk27, align 4
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.061, 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 19
  %34 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_crtc, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_display_hub_atomic_commit(ptr nocapture noundef readonly %drm, ptr nocapture noundef readnone %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %hub1 = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hub1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hub1, align 4
  %dev2 = getelementptr inbounds %struct.tegra_display_hub, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %state3 = getelementptr inbounds %struct.drm_private_obj, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state3, align 4
  %clk = getelementptr inbounds %struct.tegra_display_hub_state, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %rate = getelementptr inbounds %struct.tegra_display_hub_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %15) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %clk_disp = getelementptr inbounds %struct.tegra_display_hub, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %clk_disp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_disp, align 4
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %clk_disp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_disp, align 4
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef %21, ptr noundef %23, i32 noundef %call10) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end15, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %dc = getelementptr inbounds %struct.tegra_display_hub_state, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc, align 4
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  %call.i = tail call i32 @host1x_client_resume(ptr noundef nonnull %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %call.i) #13
  br label %if.end23

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 416
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !143
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %33, i32 noundef 104, i32 noundef %31) #10
  %and.i = and i32 %31, -9
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %35, i32 noundef 104, i32 noundef %and.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %38, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %36) #10, !srcloc !146
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %40, i32 4420
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #10, !srcloc !143
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %44, i32 noundef 1105, i32 noundef %42) #10
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %46, i32 noundef 1105, i32 noundef 257) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %48, i32 4420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 16842752) #10, !srcloc !146
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %50, i32 noundef 65, i32 noundef 131072) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %52, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 512) #10, !srcloc !146
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %54, i32 260
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #10, !srcloc !143
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %58, i32 noundef 65, i32 noundef %56) #10
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %60, i32 noundef 65, i32 noundef 65536) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %62, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 256) #10, !srcloc !146
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %64, i32 260
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #10, !srcloc !143
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %67 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %68, i32 noundef 65, i32 noundef %66) #10
  %call6.i = tail call i32 @host1x_client_suspend(ptr noundef nonnull %25) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %do.end.i, %if.end19.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %id = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool2.not.i = icmp eq i64 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_mask.exit_crit_edge

land.lhs.true.i.dma_get_mask.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_mask.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %dma_get_mask.exit

dma_get_mask.exit:                                ; preds = %if.end.i, %land.lhs.true.i.dma_get_mask.exit_crit_edge
  %retval.0.i = phi i64 [ 4294967295, %if.end.i ], [ %5, %land.lhs.true.i.dma_get_mask.exit_crit_edge ]
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i240 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %6 = ptrtoint ptr %dma_mask.i240 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i240, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %retval.0.i) #10
  br label %if.end

dma_coerce_mask_and_coherent.exit:                ; preds = %dma_get_mask.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %dma_coerce_mask_and_coherent.exit.if.end_crit_edge

dma_coerce_mask_and_coherent.exit.if.end_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call.i.i) #13
  br label %cleanup143

if.end:                                           ; preds = %dma_coerce_mask_and_coherent.exit.if.end_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 396, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup143_crit_edge, label %if.end7

if.end.cleanup143_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %soc = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %soc, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  %clk_disp = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk_disp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %clk_disp, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call11 to i32
  br label %cleanup143

if.end17:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %supports_dsc = getelementptr inbounds %struct.tegra_display_hub_soc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %supports_dsc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supports_dsc, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %if.then20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then20:                                        ; preds = %if.end17
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  %clk_dsc = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clk_dsc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %clk_dsc, align 4
  %cmp.i241 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then25, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call22 to i32
  br label %cleanup143

if.end29:                                         ; preds = %if.then20.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  %clk_hub = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %clk_hub to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %clk_hub, align 4
  %cmp.i242 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call31 to i32
  br label %cleanup143

if.end37:                                         ; preds = %if.end29
  %call.i.i243 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %rst = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i243, ptr %rst, align 4
  %cmp.i244 = icmp ugt ptr %call.i.i243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call.i.i243 to i32
  br label %cleanup143

if.end45:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 108) #10
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !147

devm_kcalloc.exit.thread:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %wgrps254 = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %wgrps254 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wgrps254, align 4
  br label %cleanup143

devm_kcalloc.exit:                                ; preds = %if.end45
  %27 = extractvalue { i32, i1 } %24, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %27, i32 noundef 3520) #10
  %wgrps = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %wgrps to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %wgrps, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup143_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup143_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp55267.not = icmp eq i32 %32, 0
  br i1 %cmp55267.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %i.0268, 1
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %cmp55 = icmp ult i32 %inc, %36
  br i1 %cmp55, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0268 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %37 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wgrps, align 4
  %arrayidx = getelementptr %struct.tegra_windowgroup, ptr %38, i32 %i.0268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id) #10
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %id, align 8
  %call57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %id, i32 noundef 8, ptr noundef nonnull @.str.37, i32 noundef %i.0268)
  %lock = getelementptr %struct.tegra_windowgroup, ptr %38, i32 %i.0268, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @tegra_display_hub_probe.__key) #10
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx, align 4
  %index = getelementptr %struct.tegra_windowgroup, ptr %38, i32 %i.0268, i32 2
  %41 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.0268, ptr %index, align 4
  %call.i.i245 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull %id, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %rst64 = getelementptr %struct.tegra_windowgroup, ptr %38, i32 %i.0268, i32 4
  %42 = ptrtoint ptr %rst64 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i245, ptr %rst64, align 4
  %cmp.i246 = icmp ugt ptr %call.i.i245, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call.i.i245 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #10
  br label %cleanup143

cleanup:                                          ; preds = %for.body
  %call72 = call i32 @reset_control_assert(ptr noundef %call.i.i245) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #10
  br i1 %cmp73, label %cleanup.cleanup143_crit_edge, label %for.cond

cleanup.cleanup143_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %call78 = call fastcc i32 @of_get_child_count(ptr noundef %45)
  %num_heads = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %num_heads to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call78, ptr %num_heads, align 4
  %47 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call78, i32 4) #10
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %devm_kcalloc.exit250.thread, label %devm_kcalloc.exit250, !prof !147

devm_kcalloc.exit250.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk_heads259 = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %clk_heads259 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %clk_heads259, align 4
  br label %cleanup143

devm_kcalloc.exit250:                             ; preds = %for.end
  %50 = extractvalue { i32, i1 } %47, 0
  %call5.i.i247 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %50, i32 noundef 3520) #10
  %clk_heads = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %clk_heads to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i247, ptr %clk_heads, align 4
  %tobool83.not = icmp eq ptr %call5.i.i247, null
  br i1 %tobool83.not, label %devm_kcalloc.exit250.cleanup143_crit_edge, label %for.cond86.preheader

devm_kcalloc.exit250.cleanup143_crit_edge:        ; preds = %devm_kcalloc.exit250
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

for.cond86.preheader:                             ; preds = %devm_kcalloc.exit250
  %52 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_heads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp88270.not = icmp eq i32 %53, 0
  br i1 %cmp88270.not, label %for.cond86.preheader.for.end114_crit_edge, label %for.cond86.preheader.for.body89_crit_edge

for.cond86.preheader.for.body89_crit_edge:        ; preds = %for.cond86.preheader
  br label %for.body89

for.cond86.preheader.for.end114_crit_edge:        ; preds = %for.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end114

for.body89:                                       ; preds = %if.end109.for.body89_crit_edge, %for.cond86.preheader.for.body89_crit_edge
  %i.1272 = phi i32 [ %inc113, %if.end109.for.body89_crit_edge ], [ 0, %for.cond86.preheader.for.body89_crit_edge ]
  %child.0271 = phi ptr [ %call92, %if.end109.for.body89_crit_edge ], [ null, %for.cond86.preheader.for.body89_crit_edge ]
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call92 = call ptr @of_get_next_child(ptr noundef %55, ptr noundef %child.0271) #10
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %do.end97, label %if.end99

do.end97:                                         ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %i.1272) #13
  br label %cleanup143

if.end99:                                         ; preds = %for.body89
  %call101 = call ptr @devm_get_clk_from_child(ptr noundef %dev, ptr noundef nonnull %call92, ptr noundef nonnull @.str.42) #10
  %cmp.i251 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end106, label %if.end109

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %i.1272) #13
  call void @of_node_put(ptr noundef nonnull %call92) #10
  %56 = ptrtoint ptr %call101 to i32
  br label %cleanup143

if.end109:                                        ; preds = %if.end99
  %57 = ptrtoint ptr %clk_heads to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_heads, align 4
  %arrayidx111 = getelementptr ptr, ptr %58, i32 %i.1272
  %59 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call101, ptr %arrayidx111, align 4
  %inc113 = add nuw i32 %i.1272, 1
  %60 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_heads, align 4
  %cmp88 = icmp ult i32 %inc113, %61
  br i1 %cmp88, label %if.end109.for.body89_crit_edge, label %if.end109.for.end114_crit_edge

if.end109.for.end114_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end114

if.end109.for.body89_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body89

for.end114:                                       ; preds = %if.end109.for.end114_crit_edge, %for.cond86.preheader.for.end114_crit_edge
  %child.0.lcssa = phi ptr [ null, %for.cond86.preheader.for.end114_crit_edge ], [ %call92, %if.end109.for.end114_crit_edge ]
  call void @of_node_put(ptr noundef %child.0.lcssa) #10
  %62 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rst, align 4
  %call116 = call i32 @reset_control_assert(ptr noundef %63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %for.end114.cleanup143_crit_edge, label %if.end119

for.end114.cleanup143_crit_edge:                  ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

if.end119:                                        ; preds = %for.end114
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %client = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 1
  %65 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %client, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @tegra_display_hub_ops, ptr %ops, align 4
  %dev124 = getelementptr inbounds %struct.tegra_display_hub, ptr %call.i, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %dev124 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev, ptr %dev124, align 4
  call void @__host1x_client_init(ptr noundef %client, ptr noundef nonnull @tegra_display_hub_probe.__key.46) #10
  %call127 = call i32 @__host1x_client_register(ptr noundef %client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %do.end132, label %if.end119.if.end134_crit_edge

if.end119.if.end134_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

do.end132:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %call127) #13
  br label %if.end134

if.end134:                                        ; preds = %do.end132, %if.end119.if.end134_crit_edge
  %call136 = call i32 @devm_of_platform_populate(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %unregister, label %if.end134.cleanup143_crit_edge

if.end134.cleanup143_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

unregister:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %call141 = call i32 @host1x_client_unregister(ptr noundef %client) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup143

cleanup143:                                       ; preds = %unregister, %if.end134.cleanup143_crit_edge, %for.end114.cleanup143_crit_edge, %do.end106, %do.end97, %devm_kcalloc.exit250.cleanup143_crit_edge, %devm_kcalloc.exit250.thread, %cleanup.cleanup143_crit_edge, %cleanup.thread, %devm_kcalloc.exit.cleanup143_crit_edge, %devm_kcalloc.exit.thread, %if.then42, %if.then34, %if.then25, %if.then14, %if.end.cleanup143_crit_edge, %do.end
  %retval.2 = phi i32 [ %call.i.i, %do.end ], [ %9, %if.then14 ], [ %15, %if.then25 ], [ %17, %if.then34 ], [ %19, %if.then42 ], [ %56, %do.end106 ], [ -19, %do.end97 ], [ %call136, %unregister ], [ -12, %if.end.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit250.cleanup143_crit_edge ], [ %call116, %for.end114.cleanup143_crit_edge ], [ %call136, %if.end134.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %43, %cleanup.thread ], [ -12, %devm_kcalloc.exit250.thread ], [ %call72, %cleanup.cleanup143_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.tegra_display_hub, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %soc = getelementptr inbounds %struct.tegra_display_hub, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp212.not = icmp eq i32 %5, 0
  br i1 %cmp212.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %wgrps = getelementptr inbounds %struct.tegra_display_hub, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %wgrps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wgrps, align 4
  %lock = getelementptr %struct.tegra_windowgroup, ptr %7, i32 %i.013, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #10
  %inc = add nuw i32 %i.013, 1
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %cmp2 = icmp ult i32 %inc, %11
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev3, i1 noundef zeroext true) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_plane_cleanup_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_shared_plane_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tiling3 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %format9 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 4
  %swap = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 5
  %call10 = tail call i32 @tegra_plane_format(i32 noundef %13, ptr noundef %format9, ptr noundef %swap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb, align 4
  %call14 = tail call i32 @tegra_fb_get_tiling(ptr noundef %15, ptr noundef %tiling3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %tiling3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tiling3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp18 = icmp eq i32 %17, 2
  br i1 %cmp18, label %land.lhs.true, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end17
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %18 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc, align 8
  %supports_block_linear = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %supports_block_linear to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %supports_block_linear, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %sector_layout = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %sector_layout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sector_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp22 = icmp eq i32 %23, 1
  br i1 %cmp22, label %land.lhs.true23, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true23:                                  ; preds = %if.end21
  %soc24 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %24 = ptrtoint ptr %soc24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc24, align 8
  %supports_sector_layout = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %supports_sector_layout to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %supports_sector_layout, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not = icmp eq i8 %27, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true23.if.end27_crit_edge

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true23.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  %28 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb, align 4
  %format29 = getelementptr inbounds %struct.drm_framebuffer, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %format29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format29, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp30 = icmp ugt i8 %33, 2
  br i1 %cmp30, label %if.then32, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then32:                                        ; preds = %if.end27
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %29, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 8
  %arrayidx36 = getelementptr %struct.drm_framebuffer, ptr %29, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp37.not = icmp eq i32 %35, %37
  br i1 %cmp37.not, label %if.then32.if.end41_crit_edge, label %if.then39

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end41:                                         ; preds = %if.then32.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %call42 = tail call i32 @tegra_plane_state_add(ptr noundef %plane, ptr noundef %5) #10
  %38 = tail call i32 @llvm.smin.i32(i32 %call42, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then39, %if.then26, %if.then20, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then39 ], [ -22, %if.then26 ], [ -22, %if.then20 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %38, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_shared_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %bpc = alloca i32, align 4
  %planar = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %normalized_zpos, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpc) #10
  %12 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bpc, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %planar) #10
  %13 = ptrtoint ptr %planar to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %planar, align 1, !annotation !148
  %tobool7.not = icmp eq ptr %11, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %14 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %visible, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tegra_shared_plane_atomic_disable(ptr noundef %plane, ptr noundef %state)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @host1x_client_resume(ptr noundef %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef %call11) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %format = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  %call14 = call zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %19, ptr noundef nonnull %planar, ptr noundef nonnull %bpc) #10
  %dev1.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %20 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i.i, align 4
  %offset10.i.i.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 2
  %22 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.i.i = add i32 %23, 386
  %regs.i.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %24 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i.i, align 8
  %shl.i.i.i.i = shl i32 %add42.i.i.i.i, 2
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i.i
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !143
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %28 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %29, i32 noundef %add42.i.i.i.i, i32 noundef %27) #10
  %and.i.i.i = and i32 %27, 15
  %pipe.i.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %30 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pipe.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %31)
  %cmp.i.i = icmp eq i32 %and.i.i.i, %31
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i.i:                                      ; preds = %if.end13
  %dc2.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %32 = ptrtoint ptr %dc2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dc2.i.i, align 8
  %cmp3.i.i = icmp eq ptr %33, %spec.select.i
  br i1 %cmp3.i.i, label %if.then.i.i.if.end3.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end3.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

do.end.i.i:                                       ; preds = %if.then.i.i
  %call9.i.i = call ptr @dev_driver_string(ptr noundef %21) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %37, %if.end.i.i.i ], [ %35, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  %38 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pipe.i.i, align 4
  %index.i.i305 = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %40 = ptrtoint ptr %index.i.i305 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i305, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call9.i.i, ptr noundef %retval.0.i.i.i, i32 noundef %39, i32 noundef %41) #10
  br label %if.then.i

if.then.i:                                        ; preds = %dev_name.exit.i.i, %if.end13.if.then.i_crit_edge
  %call1.i = call fastcc i32 @tegra_shared_plane_set_owner(ptr noundef %plane, ptr noundef %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i.tegra_dc_assign_shared_plane.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i.tegra_dc_assign_shared_plane.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dc_assign_shared_plane.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then.i.i.if.end3.i_crit_edge
  %dc.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %42 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dc.i.i, align 8
  %44 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.i = add i32 %45, 99
  %regs.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i.i, align 8
  %shl.i.i.i = shl i32 %add42.i.i.i, 2
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 %shl.i.i.i
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !143
  %49 = call i32 @llvm.bswap.i32(i32 %48) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i.i = getelementptr inbounds %struct.tegra_dc, ptr %43, i32 0, i32 2
  %50 = ptrtoint ptr %dev.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i3.i.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %51, i32 noundef %add42.i.i.i, i32 noundef %49) #10
  %or.i = or i32 %49, 16384
  %52 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dc.i.i, align 8
  %54 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i51.i = add i32 %55, 99
  %dev.i2.i.i = getelementptr inbounds %struct.tegra_dc, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %dev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i2.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %57, i32 noundef %add42.i.i51.i, i32 noundef %or.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %58 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %regs.i.i52.i = getelementptr inbounds %struct.tegra_dc, ptr %53, i32 0, i32 8
  %59 = ptrtoint ptr %regs.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i52.i, align 8
  %shl.i.i53.i = shl i32 %add42.i.i51.i, 2
  %add.ptr.i.i54.i = getelementptr i8, ptr %60, i32 %shl.i.i53.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54.i, i32 %58) #10, !srcloc !146
  %61 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dc.i.i, align 8
  %63 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i57.i = add i32 %64, 98
  %regs.i.i58.i = getelementptr inbounds %struct.tegra_dc, ptr %62, i32 0, i32 8
  %65 = ptrtoint ptr %regs.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i58.i, align 8
  %shl.i.i59.i = shl i32 %add42.i.i57.i, 2
  %add.ptr.i.i60.i = getelementptr i8, ptr %66, i32 %shl.i.i59.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60.i) #10, !srcloc !143
  %68 = call i32 @llvm.bswap.i32(i32 %67) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i61.i = getelementptr inbounds %struct.tegra_dc, ptr %62, i32 0, i32 2
  %69 = ptrtoint ptr %dev.i3.i61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i3.i61.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %70, i32 noundef %add42.i.i57.i, i32 noundef %68) #10
  %71 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dc.i.i, align 8
  %73 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i64.i = add i32 %74, 98
  %dev.i2.i65.i = getelementptr inbounds %struct.tegra_dc, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %dev.i2.i65.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i2.i65.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %76, i32 noundef %add42.i.i64.i, i32 noundef 1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i66.i = getelementptr inbounds %struct.tegra_dc, ptr %72, i32 0, i32 8
  %77 = ptrtoint ptr %regs.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i66.i, align 8
  %shl.i.i67.i = shl i32 %add42.i.i64.i, 2
  %add.ptr.i.i68.i = getelementptr i8, ptr %78, i32 %shl.i.i67.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68.i, i32 16777216) #10, !srcloc !146
  %79 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dc.i.i, align 8
  %81 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i71.i = add i32 %82, 67
  %regs.i.i72.i = getelementptr inbounds %struct.tegra_dc, ptr %80, i32 0, i32 8
  %83 = ptrtoint ptr %regs.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i72.i, align 8
  %shl.i.i73.i = shl i32 %add42.i.i71.i, 2
  %add.ptr.i.i74.i = getelementptr i8, ptr %84, i32 %shl.i.i73.i
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74.i) #10, !srcloc !143
  %86 = call i32 @llvm.bswap.i32(i32 %85) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i75.i = getelementptr inbounds %struct.tegra_dc, ptr %80, i32 0, i32 2
  %87 = ptrtoint ptr %dev.i3.i75.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i3.i75.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %88, i32 noundef %add42.i.i71.i, i32 noundef %86) #10
  %and.i = and i32 %86, -5
  %89 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dc.i.i, align 8
  %91 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i78.i = add i32 %92, 67
  %dev.i2.i79.i = getelementptr inbounds %struct.tegra_dc, ptr %90, i32 0, i32 2
  %93 = ptrtoint ptr %dev.i2.i79.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i2.i79.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %94, i32 noundef %add42.i.i78.i, i32 noundef %and.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %95 = call i32 @llvm.bswap.i32(i32 %and.i) #10
  %regs.i.i80.i = getelementptr inbounds %struct.tegra_dc, ptr %90, i32 0, i32 8
  %96 = ptrtoint ptr %regs.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i80.i, align 8
  %shl.i.i81.i = shl i32 %add42.i.i78.i, 2
  %add.ptr.i.i82.i = getelementptr i8, ptr %97, i32 %shl.i.i81.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82.i, i32 %95) #10, !srcloc !146
  %98 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dc.i.i, align 8
  %100 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i85.i = add i32 %101, 68
  %regs.i.i86.i = getelementptr inbounds %struct.tegra_dc, ptr %99, i32 0, i32 8
  %102 = ptrtoint ptr %regs.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i86.i, align 8
  %shl.i.i87.i = shl i32 %add42.i.i85.i, 2
  %add.ptr.i.i88.i = getelementptr i8, ptr %103, i32 %shl.i.i87.i
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.i) #10, !srcloc !143
  %105 = call i32 @llvm.bswap.i32(i32 %104) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i89.i = getelementptr inbounds %struct.tegra_dc, ptr %99, i32 0, i32 2
  %106 = ptrtoint ptr %dev.i3.i89.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i3.i89.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %107, i32 noundef %add42.i.i85.i, i32 noundef %105) #10
  %or8.i = or i32 %105, 536870911
  %108 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dc.i.i, align 8
  %110 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i92.i = add i32 %111, 68
  %dev.i2.i93.i = getelementptr inbounds %struct.tegra_dc, ptr %109, i32 0, i32 2
  %112 = ptrtoint ptr %dev.i2.i93.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i2.i93.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %113, i32 noundef %add42.i.i92.i, i32 noundef %or8.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %114 = call i32 @llvm.bswap.i32(i32 %or8.i) #10
  %regs.i.i94.i = getelementptr inbounds %struct.tegra_dc, ptr %109, i32 0, i32 8
  %115 = ptrtoint ptr %regs.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i94.i, align 8
  %shl.i.i95.i = shl i32 %add42.i.i92.i, 2
  %add.ptr.i.i96.i = getelementptr i8, ptr %116, i32 %shl.i.i95.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96.i, i32 %114) #10, !srcloc !146
  %117 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dc.i.i, align 8
  %119 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i99.i = add i32 %120, 96
  %regs.i.i100.i = getelementptr inbounds %struct.tegra_dc, ptr %118, i32 0, i32 8
  %121 = ptrtoint ptr %regs.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i.i100.i, align 8
  %shl.i.i101.i = shl i32 %add42.i.i99.i, 2
  %add.ptr.i.i102.i = getelementptr i8, ptr %122, i32 %shl.i.i101.i
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i102.i) #10, !srcloc !143
  %124 = call i32 @llvm.bswap.i32(i32 %123) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i103.i = getelementptr inbounds %struct.tegra_dc, ptr %118, i32 0, i32 2
  %125 = ptrtoint ptr %dev.i3.i103.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i3.i103.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %126, i32 noundef %add42.i.i99.i, i32 noundef %124) #10
  %127 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dc.i.i, align 8
  %129 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i106.i = add i32 %130, 96
  %dev.i2.i107.i = getelementptr inbounds %struct.tegra_dc, ptr %128, i32 0, i32 2
  %131 = ptrtoint ptr %dev.i2.i107.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i2.i107.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %132, i32 noundef %add42.i.i106.i, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i108.i = getelementptr inbounds %struct.tegra_dc, ptr %128, i32 0, i32 8
  %133 = ptrtoint ptr %regs.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i108.i, align 8
  %shl.i.i109.i = shl i32 %add42.i.i106.i, 2
  %add.ptr.i.i110.i = getelementptr i8, ptr %134, i32 %shl.i.i109.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110.i, i32 0) #10, !srcloc !146
  %135 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dc.i.i, align 8
  %137 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i113.i = add i32 %138, 97
  %regs.i.i114.i = getelementptr inbounds %struct.tegra_dc, ptr %136, i32 0, i32 8
  %139 = ptrtoint ptr %regs.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i.i114.i, align 8
  %shl.i.i115.i = shl i32 %add42.i.i113.i, 2
  %add.ptr.i.i116.i = getelementptr i8, ptr %140, i32 %shl.i.i115.i
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116.i) #10, !srcloc !143
  %142 = call i32 @llvm.bswap.i32(i32 %141) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i117.i = getelementptr inbounds %struct.tegra_dc, ptr %136, i32 0, i32 2
  %143 = ptrtoint ptr %dev.i3.i117.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i3.i117.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %144, i32 noundef %add42.i.i113.i, i32 noundef %142) #10
  %145 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dc.i.i, align 8
  %147 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i120.i = add i32 %148, 97
  %dev.i2.i121.i = getelementptr inbounds %struct.tegra_dc, ptr %146, i32 0, i32 2
  %149 = ptrtoint ptr %dev.i2.i121.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i2.i121.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %150, i32 noundef %add42.i.i120.i, i32 noundef 817) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i122.i = getelementptr inbounds %struct.tegra_dc, ptr %146, i32 0, i32 8
  %151 = ptrtoint ptr %regs.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i122.i, align 8
  %shl.i.i123.i = shl i32 %add42.i.i120.i, 2
  %add.ptr.i.i124.i = getelementptr i8, ptr %152, i32 %shl.i.i123.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i, i32 822280192) #10, !srcloc !146
  %153 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dc.i.i, align 8
  %155 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i127.i = add i32 %156, 104
  %regs.i.i128.i = getelementptr inbounds %struct.tegra_dc, ptr %154, i32 0, i32 8
  %157 = ptrtoint ptr %regs.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i128.i, align 8
  %shl.i.i129.i = shl i32 %add42.i.i127.i, 2
  %add.ptr.i.i130.i = getelementptr i8, ptr %158, i32 %shl.i.i129.i
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130.i) #10, !srcloc !143
  %160 = call i32 @llvm.bswap.i32(i32 %159) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i131.i = getelementptr inbounds %struct.tegra_dc, ptr %154, i32 0, i32 2
  %161 = ptrtoint ptr %dev.i3.i131.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i3.i131.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %162, i32 noundef %add42.i.i127.i, i32 noundef %160) #10
  %and12.i = and i32 %160, -64
  %163 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %index.i.i, align 4
  %and13.i = shl i32 %164, 1
  %shl.i = and i32 %and13.i, 62
  %or14.i = or i32 %and12.i, %shl.i
  %or15.i = or i32 %or14.i, 1
  %165 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dc.i.i, align 8
  %167 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i134.i = add i32 %168, 104
  %dev.i2.i135.i = getelementptr inbounds %struct.tegra_dc, ptr %166, i32 0, i32 2
  %169 = ptrtoint ptr %dev.i2.i135.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i2.i135.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %170, i32 noundef %add42.i.i134.i, i32 noundef %or15.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %171 = call i32 @llvm.bswap.i32(i32 %or15.i) #10
  %regs.i.i136.i = getelementptr inbounds %struct.tegra_dc, ptr %166, i32 0, i32 8
  %172 = ptrtoint ptr %regs.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i136.i, align 8
  %shl.i.i137.i = shl i32 %add42.i.i134.i, 2
  %add.ptr.i.i138.i = getelementptr i8, ptr %173, i32 %shl.i.i137.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i, i32 %171) #10, !srcloc !146
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge, %if.end3.i
  %ratio.027.i.i = phi i32 [ 0, %if.end3.i ], [ %inc16.i.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %shl.i.i = shl i32 %ratio.027.i.i, 6
  br label %for.cond4.preheader.i.i

for.cond4.preheader.i.i:                          ; preds = %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge, %for.cond1.preheader.i.i
  %row.026.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc13.i.i, %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge ]
  %shl7.i.i = shl i32 %row.026.i.i, 2
  %add.i.i = add nuw nsw i32 %shl7.i.i, %shl.i.i
  %and.i.i = shl i32 %add.i.i, 15
  %arrayidx.i.i = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %add.i.i
  %174 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i.i, align 4
  %and10.i.i = and i32 %175, 1023
  %or.i.i = or i32 %and.i.i, %and10.i.i
  %176 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dc.i.i, align 8
  %178 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.i140.i = add i32 %179, 399
  %dev.i2.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %177, i32 0, i32 2
  %180 = ptrtoint ptr %dev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i2.i.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %181, i32 noundef %add42.i.i.i140.i, i32 noundef %or.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %182 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %regs.i.i.i141.i = getelementptr inbounds %struct.tegra_dc, ptr %177, i32 0, i32 8
  %183 = ptrtoint ptr %regs.i.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i.i141.i, align 8
  %shl.i.i.i142.i = shl i32 %add42.i.i.i140.i, 2
  %add.ptr.i.i.i143.i = getelementptr i8, ptr %184, i32 %shl.i.i.i142.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i143.i, i32 %182) #10, !srcloc !146
  %add8.1.i.i = or i32 %add.i.i, 1
  %and.1.i.i = shl i32 %add8.1.i.i, 15
  %arrayidx.1.i.i = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %add8.1.i.i
  %185 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.1.i.i, align 4
  %and10.1.i.i = and i32 %186, 1023
  %or.1.i.i = or i32 %and10.1.i.i, %and.1.i.i
  %187 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dc.i.i, align 8
  %189 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.1.i.i = add i32 %190, 399
  %dev.i2.i.1.i.i = getelementptr inbounds %struct.tegra_dc, ptr %188, i32 0, i32 2
  %191 = ptrtoint ptr %dev.i2.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i2.i.1.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %192, i32 noundef %add42.i.i.1.i.i, i32 noundef %or.1.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %193 = call i32 @llvm.bswap.i32(i32 %or.1.i.i) #10
  %regs.i.i.1.i.i = getelementptr inbounds %struct.tegra_dc, ptr %188, i32 0, i32 8
  %194 = ptrtoint ptr %regs.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i.1.i.i, align 8
  %shl.i.i.1.i.i = shl i32 %add42.i.i.1.i.i, 2
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %195, i32 %shl.i.i.1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i, i32 %193) #10, !srcloc !146
  %add8.2.i.i = or i32 %add.i.i, 2
  %and.2.i.i = shl i32 %add8.2.i.i, 15
  %arrayidx.2.i.i = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %add8.2.i.i
  %196 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.2.i.i, align 4
  %and10.2.i.i = and i32 %197, 1023
  %or.2.i.i = or i32 %and10.2.i.i, %and.2.i.i
  %198 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dc.i.i, align 8
  %200 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.2.i.i = add i32 %201, 399
  %dev.i2.i.2.i.i = getelementptr inbounds %struct.tegra_dc, ptr %199, i32 0, i32 2
  %202 = ptrtoint ptr %dev.i2.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i2.i.2.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %203, i32 noundef %add42.i.i.2.i.i, i32 noundef %or.2.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %204 = call i32 @llvm.bswap.i32(i32 %or.2.i.i) #10
  %regs.i.i.2.i.i = getelementptr inbounds %struct.tegra_dc, ptr %199, i32 0, i32 8
  %205 = ptrtoint ptr %regs.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i.i.2.i.i, align 8
  %shl.i.i.2.i.i = shl i32 %add42.i.i.2.i.i, 2
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %206, i32 %shl.i.i.2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i.i, i32 %204) #10, !srcloc !146
  %add8.3.i.i = or i32 %add.i.i, 3
  %and.3.i.i = shl i32 %add8.3.i.i, 15
  %arrayidx.3.i.i = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %add8.3.i.i
  %207 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.3.i.i, align 4
  %and10.3.i.i = and i32 %208, 1023
  %or.3.i.i = or i32 %and10.3.i.i, %and.3.i.i
  %209 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dc.i.i, align 8
  %211 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i.3.i.i = add i32 %212, 399
  %dev.i2.i.3.i.i = getelementptr inbounds %struct.tegra_dc, ptr %210, i32 0, i32 2
  %213 = ptrtoint ptr %dev.i2.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev.i2.i.3.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %214, i32 noundef %add42.i.i.3.i.i, i32 noundef %or.3.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %215 = call i32 @llvm.bswap.i32(i32 %or.3.i.i) #10
  %regs.i.i.3.i.i = getelementptr inbounds %struct.tegra_dc, ptr %210, i32 0, i32 8
  %216 = ptrtoint ptr %regs.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i.3.i.i, align 8
  %shl.i.i.3.i.i = shl i32 %add42.i.i.3.i.i, 2
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %217, i32 %shl.i.i.3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i.i, i32 %215) #10, !srcloc !146
  %inc13.i.i = add nuw nsw i32 %row.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc15.i.i, label %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge

for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i.i

for.inc15.i.i:                                    ; preds = %for.cond4.preheader.i.i
  %inc16.i.i = add nuw nsw i32 %ratio.027.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc16.i.i, 3
  br i1 %exitcond28.not.i.i, label %tegra_shared_plane_setup_scaler.exit.i, label %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge

for.inc15.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i.i

tegra_shared_plane_setup_scaler.exit.i:           ; preds = %for.inc15.i.i
  %218 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dc.i.i, align 8
  %220 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %index.i.i, align 4
  %shl.i145.i = shl i32 512, %221
  %or.i146.i = or i32 %shl.i145.i, 131072
  %dev.i.i.i = getelementptr inbounds %struct.tegra_dc, ptr %219, i32 0, i32 2
  %222 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev.i.i.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %223, i32 noundef 65, i32 noundef %or.i146.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %224 = call i32 @llvm.bswap.i32(i32 %or.i146.i) #10
  %regs.i.i147.i = getelementptr inbounds %struct.tegra_dc, ptr %219, i32 0, i32 8
  %225 = ptrtoint ptr %regs.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i.i147.i, align 8
  %add.ptr.i.i148.i = getelementptr i8, ptr %226, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148.i, i32 %224) #10, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %227
  %228 = load volatile i32, ptr @jiffies, align 128
  %sub10.i.i = add i32 %add.neg.i.i, %228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i.i)
  %cmp11.i.i = icmp slt i32 %sub10.i.i, 0
  br i1 %cmp11.i.i, label %tegra_shared_plane_setup_scaler.exit.i.while.body.i.i_crit_edge, label %tegra_shared_plane_setup_scaler.exit.i.tegra_shared_plane_update.exit.i_crit_edge

tegra_shared_plane_setup_scaler.exit.i.tegra_shared_plane_update.exit.i_crit_edge: ; preds = %tegra_shared_plane_setup_scaler.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_shared_plane_update.exit.i

tegra_shared_plane_setup_scaler.exit.i.while.body.i.i_crit_edge: ; preds = %tegra_shared_plane_setup_scaler.exit.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %tegra_shared_plane_setup_scaler.exit.i.while.body.i.i_crit_edge
  %229 = ptrtoint ptr %regs.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i.i147.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %230, i32 260
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #10, !srcloc !143
  %232 = call i32 @llvm.bswap.i32(i32 %231) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %233 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i.i.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %234, i32 noundef 65, i32 noundef %232) #10
  %and.i149.i = and i32 %232, %or.i146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149.i)
  %cmp3.i150.i = icmp eq i32 %and.i149.i, 0
  br i1 %cmp3.i150.i, label %while.body.i.i.tegra_shared_plane_update.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.tegra_shared_plane_update.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_shared_plane_update.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 400, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %235 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %235, %add.neg.i.i
  %cmp.i151.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i151.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.tegra_shared_plane_update.exit.i_crit_edge

if.end.i.i.tegra_shared_plane_update.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_shared_plane_update.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

tegra_shared_plane_update.exit.i:                 ; preds = %if.end.i.i.tegra_shared_plane_update.exit.i_crit_edge, %while.body.i.i.tegra_shared_plane_update.exit.i_crit_edge, %tegra_shared_plane_setup_scaler.exit.i.tegra_shared_plane_update.exit.i_crit_edge
  %236 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dc.i.i, align 8
  %238 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %index.i.i, align 4
  %shl.i154.i = shl i32 2, %239
  %or.i155.i = or i32 %shl.i154.i, 65536
  %dev.i.i156.i = getelementptr inbounds %struct.tegra_dc, ptr %237, i32 0, i32 2
  %240 = ptrtoint ptr %dev.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev.i.i156.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %241, i32 noundef 65, i32 noundef %or.i155.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %242 = call i32 @llvm.bswap.i32(i32 %or.i155.i) #10
  %regs.i.i157.i = getelementptr inbounds %struct.tegra_dc, ptr %237, i32 0, i32 8
  %243 = ptrtoint ptr %regs.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i.i157.i, align 8
  %add.ptr.i.i158.i = getelementptr i8, ptr %244, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158.i, i32 %242) #10, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %245 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i159.i = sub i32 -100, %245
  %246 = load volatile i32, ptr @jiffies, align 128
  %sub10.i160.i = add i32 %add.neg.i159.i, %246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i160.i)
  %cmp11.i161.i = icmp slt i32 %sub10.i160.i, 0
  br i1 %cmp11.i161.i, label %tegra_shared_plane_update.exit.i.while.body.i165.i_crit_edge, label %tegra_shared_plane_update.exit.i.tegra_dc_assign_shared_plane.exit_crit_edge

tegra_shared_plane_update.exit.i.tegra_dc_assign_shared_plane.exit_crit_edge: ; preds = %tegra_shared_plane_update.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dc_assign_shared_plane.exit

tegra_shared_plane_update.exit.i.while.body.i165.i_crit_edge: ; preds = %tegra_shared_plane_update.exit.i
  br label %while.body.i165.i

while.body.i165.i:                                ; preds = %if.end.i168.i.while.body.i165.i_crit_edge, %tegra_shared_plane_update.exit.i.while.body.i165.i_crit_edge
  %247 = ptrtoint ptr %regs.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs.i.i157.i, align 8
  %add.ptr.i8.i162.i = getelementptr i8, ptr %248, i32 260
  %249 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i162.i) #10, !srcloc !143
  %250 = call i32 @llvm.bswap.i32(i32 %249) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %251 = ptrtoint ptr %dev.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev.i.i156.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %252, i32 noundef 65, i32 noundef %250) #10
  %and.i163.i = and i32 %250, %or.i155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163.i)
  %cmp3.i164.i = icmp eq i32 %and.i163.i, 0
  br i1 %cmp3.i164.i, label %while.body.i165.i.tegra_dc_assign_shared_plane.exit_crit_edge, label %if.end.i168.i

while.body.i165.i.tegra_dc_assign_shared_plane.exit_crit_edge: ; preds = %while.body.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dc_assign_shared_plane.exit

if.end.i168.i:                                    ; preds = %while.body.i165.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 400, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %253 = load volatile i32, ptr @jiffies, align 128
  %sub.i166.i = add i32 %253, %add.neg.i159.i
  %cmp.i167.i = icmp slt i32 %sub.i166.i, 0
  br i1 %cmp.i167.i, label %if.end.i168.i.while.body.i165.i_crit_edge, label %if.end.i168.i.tegra_dc_assign_shared_plane.exit_crit_edge

if.end.i168.i.tegra_dc_assign_shared_plane.exit_crit_edge: ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_dc_assign_shared_plane.exit

if.end.i168.i.while.body.i165.i_crit_edge:        ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i165.i

tegra_dc_assign_shared_plane.exit:                ; preds = %if.end.i168.i.tegra_dc_assign_shared_plane.exit_crit_edge, %while.body.i165.i.tegra_dc_assign_shared_plane.exit_crit_edge, %tegra_shared_plane_update.exit.i.tegra_dc_assign_shared_plane.exit_crit_edge, %if.then.i.tegra_dc_assign_shared_plane.exit_crit_edge
  %dc.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %254 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dc.i, align 8
  %256 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i = add i32 %257, 14
  %dev.i2.i = getelementptr inbounds %struct.tegra_dc, ptr %255, i32 0, i32 2
  %258 = ptrtoint ptr %dev.i2.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev.i2.i, align 4
  call fastcc void @trace_dc_writel(ptr noundef %259, i32 noundef %add42.i.i, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %255, i32 0, i32 8
  %260 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i.i, align 8
  %shl.i.i307 = shl i32 %add42.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %261, i32 %shl.i.i307
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !146
  %262 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dc.i, align 8
  %264 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i310 = add i32 %265, 407
  %dev.i2.i311 = getelementptr inbounds %struct.tegra_dc, ptr %263, i32 0, i32 2
  %266 = ptrtoint ptr %dev.i2.i311 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev.i2.i311, align 4
  call fastcc void @trace_dc_writel(ptr noundef %267, i32 noundef %add42.i.i310, i32 noundef 613) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i312 = getelementptr inbounds %struct.tegra_dc, ptr %263, i32 0, i32 8
  %268 = ptrtoint ptr %regs.i.i312 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regs.i.i312, align 8
  %shl.i.i313 = shl i32 %add42.i.i310, 2
  %add.ptr.i.i314 = getelementptr i8, ptr %269, i32 %shl.i.i313
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i314, i32 1694629888) #10, !srcloc !146
  %270 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dc.i, align 8
  %272 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i318 = add i32 %273, 408
  %dev.i2.i319 = getelementptr inbounds %struct.tegra_dc, ptr %271, i32 0, i32 2
  %274 = ptrtoint ptr %dev.i2.i319 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev.i2.i319, align 4
  call fastcc void @trace_dc_writel(ptr noundef %275, i32 noundef %add42.i.i318, i32 noundef 613) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i320 = getelementptr inbounds %struct.tegra_dc, ptr %271, i32 0, i32 8
  %276 = ptrtoint ptr %regs.i.i320 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regs.i.i320, align 8
  %shl.i.i321 = shl i32 %add42.i.i318, 2
  %add.ptr.i.i322 = getelementptr i8, ptr %277, i32 %shl.i.i321
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i322, i32 1694629888) #10, !srcloc !146
  %sub = sub i32 255, %9
  %and = and i32 %sub, 255
  %or = or i32 %and, 16776960
  %278 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dc.i, align 8
  %280 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i326 = add i32 %281, 406
  %dev.i2.i327 = getelementptr inbounds %struct.tegra_dc, ptr %279, i32 0, i32 2
  %282 = ptrtoint ptr %dev.i2.i327 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev.i2.i327, align 4
  call fastcc void @trace_dc_writel(ptr noundef %283, i32 noundef %add42.i.i326, i32 noundef %or) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %284 = call i32 @llvm.bswap.i32(i32 %or) #10
  %regs.i.i328 = getelementptr inbounds %struct.tegra_dc, ptr %279, i32 0, i32 8
  %285 = ptrtoint ptr %regs.i.i328 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs.i.i328, align 8
  %shl.i.i329 = shl i32 %add42.i.i326, 2
  %add.ptr.i.i330 = getelementptr i8, ptr %286, i32 %shl.i.i329
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i330, i32 %284) #10, !srcloc !146
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %287 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %288, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %289 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %crtc_w, align 4
  %291 = call i32 @llvm.umin.i32(i32 %shr, i32 %290)
  %292 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dc.i, align 8
  %294 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i334 = add i32 %295, 2
  %regs.i.i335 = getelementptr inbounds %struct.tegra_dc, ptr %293, i32 0, i32 8
  %296 = ptrtoint ptr %regs.i.i335 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs.i.i335, align 8
  %shl.i.i336 = shl i32 %add42.i.i334, 2
  %add.ptr.i.i337 = getelementptr i8, ptr %297, i32 %shl.i.i336
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i337) #10, !srcloc !143
  %299 = call i32 @llvm.bswap.i32(i32 %298) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i = getelementptr inbounds %struct.tegra_dc, ptr %293, i32 0, i32 2
  %300 = ptrtoint ptr %dev.i3.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev.i3.i, align 4
  call fastcc void @trace_dc_readl(ptr noundef %301, i32 noundef %add42.i.i334, i32 noundef %299) #10
  %and17 = and i32 %299, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %291, i32 %and17)
  %cmp18 = icmp ult i32 %291, %and17
  br i1 %cmp18, label %tegra_dc_assign_shared_plane.exit.if.end30_crit_edge, label %if.else

tegra_dc_assign_shared_plane.exit.if.end30_crit_edge: ; preds = %tegra_dc_assign_shared_plane.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %tegra_dc_assign_shared_plane.exit
  %302 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dc.i, align 8
  %304 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i341 = add i32 %305, 4
  %regs.i.i342 = getelementptr inbounds %struct.tegra_dc, ptr %303, i32 0, i32 8
  %306 = ptrtoint ptr %regs.i.i342 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i.i342, align 8
  %shl.i.i343 = shl i32 %add42.i.i341, 2
  %add.ptr.i.i344 = getelementptr i8, ptr %307, i32 %shl.i.i343
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i344) #10, !srcloc !143
  %309 = call i32 @llvm.bswap.i32(i32 %308) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i345 = getelementptr inbounds %struct.tegra_dc, ptr %303, i32 0, i32 2
  %310 = ptrtoint ptr %dev.i3.i345 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i3.i345, align 4
  call fastcc void @trace_dc_readl(ptr noundef %311, i32 noundef %add42.i.i341, i32 noundef %309) #10
  %and21 = and i32 %309, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %291, i32 %and21)
  %cmp22 = icmp ult i32 %291, %and21
  br i1 %cmp22, label %if.else.if.end30_crit_edge, label %do.end27

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %313, ptr noundef nonnull @.str.18, i32 noundef %291) #13
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.else.if.end30_crit_edge, %tegra_dc_assign_shared_plane.exit.if.end30_crit_edge
  %314 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dc.i, align 8
  %316 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i349 = add i32 %317, 398
  %dev.i2.i350 = getelementptr inbounds %struct.tegra_dc, ptr %315, i32 0, i32 2
  %318 = ptrtoint ptr %dev.i2.i350 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev.i2.i350, align 4
  call fastcc void @trace_dc_writel(ptr noundef %319, i32 noundef %add42.i.i349, i32 noundef 36) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i351 = getelementptr inbounds %struct.tegra_dc, ptr %315, i32 0, i32 8
  %320 = ptrtoint ptr %regs.i.i351 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i.i351, align 8
  %shl.i.i352 = shl i32 %add42.i.i349, 2
  %add.ptr.i.i353 = getelementptr i8, ptr %321, i32 %shl.i.i352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i353, i32 603979776) #10, !srcloc !146
  %322 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %src_w, align 4
  %324 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %crtc_w, align 4
  %shl33 = shl i32 %325, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %323, i32 %shl33)
  %cmp34.not = icmp eq i32 %323, %shl33
  br i1 %cmp34.not, label %if.end30.if.end45_crit_edge, label %if.then35

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then35:                                        ; preds = %if.end30
  %326 = lshr i32 %323, 16
  %conv.i = zext i32 %326 to i64
  %shl.i354 = shl nuw nsw i64 %conv.i, 24
  %327 = lshr i32 %325, 1
  %shr2.i = zext i32 %327 to i64
  %add.i = add nuw nsw i64 %shl.i354, %shr2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp173.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !149

if.then177.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %conv178.i = trunc i64 %add.i to i32
  %div181.i = udiv i32 %conv178.i, %325
  br label %compute_phase_incr.exit

if.else183.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %328 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %325, i64 %add.i) #15, !srcloc !150
  %asmresult1.i.i = extractvalue { i64, i64 } %328, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %compute_phase_incr.exit

compute_phase_incr.exit:                          ; preds = %if.else183.i, %if.then177.i
  %tmp1.0.off0.i = phi i32 [ %div181.i, %if.then177.i ], [ %extract.t296.i, %if.else183.i ]
  %and41 = and i32 %tmp1.0.off0.i, -2
  %shr42 = lshr i32 %tmp1.0.off0.i, 1
  %add = add nuw i32 %shr42, 8388608
  %329 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dc.i, align 8
  %331 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i361 = add i32 %332, 395
  %dev.i2.i362 = getelementptr inbounds %struct.tegra_dc, ptr %330, i32 0, i32 2
  %333 = ptrtoint ptr %dev.i2.i362 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev.i2.i362, align 4
  call fastcc void @trace_dc_writel(ptr noundef %334, i32 noundef %add42.i.i361, i32 noundef %and41) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %335 = call i32 @llvm.bswap.i32(i32 %and41) #10
  %regs.i.i363 = getelementptr inbounds %struct.tegra_dc, ptr %330, i32 0, i32 8
  %336 = ptrtoint ptr %regs.i.i363 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i363, align 8
  %shl.i.i364 = shl i32 %add42.i.i361, 2
  %add.ptr.i.i365 = getelementptr i8, ptr %337, i32 %shl.i.i364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i365, i32 %335) #10, !srcloc !146
  %338 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dc.i, align 8
  %340 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i369 = add i32 %341, 391
  %dev.i2.i370 = getelementptr inbounds %struct.tegra_dc, ptr %339, i32 0, i32 2
  %342 = ptrtoint ptr %dev.i2.i370 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev.i2.i370, align 4
  call fastcc void @trace_dc_writel(ptr noundef %343, i32 noundef %add42.i.i369, i32 noundef %add) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %344 = call i32 @llvm.bswap.i32(i32 %add) #10
  %regs.i.i371 = getelementptr inbounds %struct.tegra_dc, ptr %339, i32 0, i32 8
  %345 = ptrtoint ptr %regs.i.i371 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i.i371, align 8
  %shl.i.i372 = shl i32 %add42.i.i369, 2
  %add.ptr.i.i373 = getelementptr i8, ptr %346, i32 %shl.i.i372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i373, i32 %344) #10, !srcloc !146
  br label %if.end45

if.end45:                                         ; preds = %compute_phase_incr.exit, %if.end30.if.end45_crit_edge
  %bypass.0 = phi i32 [ 0, %compute_phase_incr.exit ], [ 1, %if.end30.if.end45_crit_edge ]
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %347 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %src_h, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %349 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %crtc_h, align 4
  %shl46 = shl i32 %350, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %348, i32 %shl46)
  %cmp47.not = icmp eq i32 %348, %shl46
  br i1 %cmp47.not, label %if.else60, label %if.then48

if.then48:                                        ; preds = %if.end45
  %351 = lshr i32 %348, 16
  %conv.i375 = zext i32 %351 to i64
  %shl.i377 = shl nuw nsw i64 %conv.i375, 24
  %352 = lshr i32 %350, 1
  %shr2.i378 = zext i32 %352 to i64
  %add.i379 = add nuw nsw i64 %shl.i377, %shr2.i378
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i379)
  %cmp173.i485 = icmp ult i64 %add.i379, 4294967296
  br i1 %cmp173.i485, label %if.then177.i489, label %if.else183.i492, !prof !149

if.then177.i489:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %conv178.i487 = trunc i64 %add.i379 to i32
  %div181.i488 = udiv i32 %conv178.i487, %350
  br label %compute_phase_incr.exit494

if.else183.i492:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %353 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %350, i64 %add.i379) #15, !srcloc !150
  %asmresult1.i.i490 = extractvalue { i64, i64 } %353, 1
  %extract.t296.i491 = trunc i64 %asmresult1.i.i490 to i32
  br label %compute_phase_incr.exit494

compute_phase_incr.exit494:                       ; preds = %if.else183.i492, %if.then177.i489
  %tmp1.0.off0.i493 = phi i32 [ %div181.i488, %if.then177.i489 ], [ %extract.t296.i491, %if.else183.i492 ]
  %and56 = and i32 %tmp1.0.off0.i493, -2
  %shr58 = lshr i32 %tmp1.0.off0.i493, 1
  %add59 = add nuw i32 %shr58, 8388608
  %354 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dc.i, align 8
  %356 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i498 = add i32 %357, 396
  %dev.i2.i499 = getelementptr inbounds %struct.tegra_dc, ptr %355, i32 0, i32 2
  %358 = ptrtoint ptr %dev.i2.i499 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev.i2.i499, align 4
  call fastcc void @trace_dc_writel(ptr noundef %359, i32 noundef %add42.i.i498, i32 noundef %and56) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %360 = call i32 @llvm.bswap.i32(i32 %and56) #10
  %regs.i.i500 = getelementptr inbounds %struct.tegra_dc, ptr %355, i32 0, i32 8
  %361 = ptrtoint ptr %regs.i.i500 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %regs.i.i500, align 8
  %shl.i.i501 = shl i32 %add42.i.i498, 2
  %add.ptr.i.i502 = getelementptr i8, ptr %362, i32 %shl.i.i501
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i502, i32 %360) #10, !srcloc !146
  %363 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dc.i, align 8
  %365 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i506 = add i32 %366, 392
  %dev.i2.i507 = getelementptr inbounds %struct.tegra_dc, ptr %364, i32 0, i32 2
  %367 = ptrtoint ptr %dev.i2.i507 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dev.i2.i507, align 4
  call fastcc void @trace_dc_writel(ptr noundef %368, i32 noundef %add42.i.i506, i32 noundef %add59) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %369 = call i32 @llvm.bswap.i32(i32 %add59) #10
  %regs.i.i508 = getelementptr inbounds %struct.tegra_dc, ptr %364, i32 0, i32 8
  %370 = ptrtoint ptr %regs.i.i508 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %regs.i.i508, align 8
  %shl.i.i509 = shl i32 %add42.i.i506, 2
  %add.ptr.i.i510 = getelementptr i8, ptr %371, i32 %shl.i.i509
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i510, i32 %369) #10, !srcloc !146
  br label %if.end62

if.else60:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %or61 = or i32 %bypass.0, 2
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %compute_phase_incr.exit494
  %bypass.1 = phi i32 [ %bypass.0, %compute_phase_incr.exit494 ], [ %or61, %if.else60 ]
  %372 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dc.i, align 8
  %374 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i514 = add i32 %375, 401
  %dev.i2.i515 = getelementptr inbounds %struct.tegra_dc, ptr %373, i32 0, i32 2
  %376 = ptrtoint ptr %dev.i2.i515 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev.i2.i515, align 4
  call fastcc void @trace_dc_writel(ptr noundef %377, i32 noundef %add42.i.i514, i32 noundef %bypass.1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %378 = call i32 @llvm.bswap.i32(i32 %bypass.1) #10
  %regs.i.i516 = getelementptr inbounds %struct.tegra_dc, ptr %373, i32 0, i32 8
  %379 = ptrtoint ptr %regs.i.i516 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %regs.i.i516, align 8
  %shl.i.i517 = shl i32 %add42.i.i514, 2
  %add.ptr.i.i518 = getelementptr i8, ptr %380, i32 %shl.i.i517
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i518, i32 %378) #10, !srcloc !146
  %381 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %dc.i, align 8
  %383 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i521 = add i32 %384, 495
  %dev.i2.i522 = getelementptr inbounds %struct.tegra_dc, ptr %382, i32 0, i32 2
  %385 = ptrtoint ptr %dev.i2.i522 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev.i2.i522, align 4
  call fastcc void @trace_dc_writel(ptr noundef %386, i32 noundef %add42.i.i521, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i523 = getelementptr inbounds %struct.tegra_dc, ptr %382, i32 0, i32 8
  %387 = ptrtoint ptr %regs.i.i523 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %regs.i.i523, align 8
  %shl.i.i524 = shl i32 %add42.i.i521, 2
  %add.ptr.i.i525 = getelementptr i8, ptr %388, i32 %shl.i.i524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i525, i32 0) #10, !srcloc !146
  %iova = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 2
  %389 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %iova, align 4
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 7
  %391 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %offsets, align 8
  %add64 = add i32 %392, %390
  %393 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %format, align 4
  %395 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dc.i, align 8
  %397 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i529 = add i32 %398, 387
  %dev.i2.i530 = getelementptr inbounds %struct.tegra_dc, ptr %396, i32 0, i32 2
  %399 = ptrtoint ptr %dev.i2.i530 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev.i2.i530, align 4
  call fastcc void @trace_dc_writel(ptr noundef %400, i32 noundef %add42.i.i529, i32 noundef %394) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %401 = call i32 @llvm.bswap.i32(i32 %394) #10
  %regs.i.i531 = getelementptr inbounds %struct.tegra_dc, ptr %396, i32 0, i32 8
  %402 = ptrtoint ptr %regs.i.i531 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %regs.i.i531, align 8
  %shl.i.i532 = shl i32 %add42.i.i529, 2
  %add.ptr.i.i533 = getelementptr i8, ptr %403, i32 %shl.i.i532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i533, i32 %401) #10, !srcloc !146
  %404 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %dc.i, align 8
  %406 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i537 = add i32 %407, 420
  %dev.i2.i538 = getelementptr inbounds %struct.tegra_dc, ptr %405, i32 0, i32 2
  %408 = ptrtoint ptr %dev.i2.i538 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dev.i2.i538, align 4
  call fastcc void @trace_dc_writel(ptr noundef %409, i32 noundef %add42.i.i537, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i539 = getelementptr inbounds %struct.tegra_dc, ptr %405, i32 0, i32 8
  %410 = ptrtoint ptr %regs.i.i539 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs.i.i539, align 8
  %shl.i.i540 = shl i32 %add42.i.i537, 2
  %add.ptr.i.i541 = getelementptr i8, ptr %411, i32 %shl.i.i540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i541, i32 0) #10, !srcloc !146
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %412 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %crtc_y, align 4
  %and67 = shl i32 %413, 16
  %shl68 = and i32 %and67, 536805376
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %414 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %crtc_x, align 4
  %and69 = and i32 %415, 8191
  %or71 = or i32 %shl68, %and69
  %416 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dc.i, align 8
  %418 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i545 = add i32 %419, 388
  %dev.i2.i546 = getelementptr inbounds %struct.tegra_dc, ptr %417, i32 0, i32 2
  %420 = ptrtoint ptr %dev.i2.i546 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev.i2.i546, align 4
  call fastcc void @trace_dc_writel(ptr noundef %421, i32 noundef %add42.i.i545, i32 noundef %or71) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %422 = call i32 @llvm.bswap.i32(i32 %or71) #10
  %regs.i.i547 = getelementptr inbounds %struct.tegra_dc, ptr %417, i32 0, i32 8
  %423 = ptrtoint ptr %regs.i.i547 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs.i.i547, align 8
  %shl.i.i548 = shl i32 %add42.i.i545, 2
  %add.ptr.i.i549 = getelementptr i8, ptr %424, i32 %shl.i.i548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i549, i32 %422) #10, !srcloc !146
  %425 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %crtc_h, align 4
  %and73 = shl i32 %426, 16
  %shl74 = and i32 %and73, 536805376
  %427 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %crtc_w, align 4
  %and76 = and i32 %428, 8191
  %or78 = or i32 %shl74, %and76
  %429 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dc.i, align 8
  %431 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i553 = add i32 %432, 389
  %dev.i2.i554 = getelementptr inbounds %struct.tegra_dc, ptr %430, i32 0, i32 2
  %433 = ptrtoint ptr %dev.i2.i554 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev.i2.i554, align 4
  call fastcc void @trace_dc_writel(ptr noundef %434, i32 noundef %add42.i.i553, i32 noundef %or78) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %435 = call i32 @llvm.bswap.i32(i32 %or78) #10
  %regs.i.i555 = getelementptr inbounds %struct.tegra_dc, ptr %430, i32 0, i32 8
  %436 = ptrtoint ptr %regs.i.i555 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %regs.i.i555, align 8
  %shl.i.i556 = shl i32 %add42.i.i553, 2
  %add.ptr.i.i557 = getelementptr i8, ptr %437, i32 %shl.i.i556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i557, i32 %435) #10, !srcloc !146
  %438 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %dc.i, align 8
  %440 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i561 = add i32 %441, 384
  %dev.i2.i562 = getelementptr inbounds %struct.tegra_dc, ptr %439, i32 0, i32 2
  %442 = ptrtoint ptr %dev.i2.i562 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev.i2.i562, align 4
  call fastcc void @trace_dc_writel(ptr noundef %443, i32 noundef %add42.i.i561, i32 noundef 1073741888) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i563 = getelementptr inbounds %struct.tegra_dc, ptr %439, i32 0, i32 8
  %444 = ptrtoint ptr %regs.i.i563 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %regs.i.i563, align 8
  %shl.i.i564 = shl i32 %add42.i.i561, 2
  %add.ptr.i.i565 = getelementptr i8, ptr %445, i32 %shl.i.i564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i565, i32 1073741888) #10, !srcloc !146
  %446 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %src_h, align 4
  %and81 = and i32 %447, 536805376
  %448 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %src_w, align 4
  %shr84 = lshr i32 %449, 16
  %and85 = and i32 %shr84, 8191
  %or87 = or i32 %and85, %and81
  %450 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dc.i, align 8
  %452 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i569 = add i32 %453, 390
  %dev.i2.i570 = getelementptr inbounds %struct.tegra_dc, ptr %451, i32 0, i32 2
  %454 = ptrtoint ptr %dev.i2.i570 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %dev.i2.i570, align 4
  call fastcc void @trace_dc_writel(ptr noundef %455, i32 noundef %add42.i.i569, i32 noundef %or87) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %456 = call i32 @llvm.bswap.i32(i32 %or87) #10
  %regs.i.i571 = getelementptr inbounds %struct.tegra_dc, ptr %451, i32 0, i32 8
  %457 = ptrtoint ptr %regs.i.i571 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %regs.i.i571, align 8
  %shl.i.i572 = shl i32 %add42.i.i569, 2
  %add.ptr.i.i573 = getelementptr i8, ptr %458, i32 %shl.i.i572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i573, i32 %456) #10, !srcloc !146
  %459 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %dc.i, align 8
  %461 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i577 = add i32 %462, 461
  %dev.i2.i578 = getelementptr inbounds %struct.tegra_dc, ptr %460, i32 0, i32 2
  %463 = ptrtoint ptr %dev.i2.i578 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %dev.i2.i578, align 4
  call fastcc void @trace_dc_writel(ptr noundef %464, i32 noundef %add42.i.i577, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i579 = getelementptr inbounds %struct.tegra_dc, ptr %460, i32 0, i32 8
  %465 = ptrtoint ptr %regs.i.i579 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %regs.i.i579, align 8
  %shl.i.i580 = shl i32 %add42.i.i577, 2
  %add.ptr.i.i581 = getelementptr i8, ptr %466, i32 %shl.i.i580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i581, i32 0) #10, !srcloc !146
  %467 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %dc.i, align 8
  %469 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i585 = add i32 %470, 448
  %dev.i2.i586 = getelementptr inbounds %struct.tegra_dc, ptr %468, i32 0, i32 2
  %471 = ptrtoint ptr %dev.i2.i586 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %dev.i2.i586, align 4
  call fastcc void @trace_dc_writel(ptr noundef %472, i32 noundef %add42.i.i585, i32 noundef %add64) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %473 = call i32 @llvm.bswap.i32(i32 %add64) #10
  %regs.i.i587 = getelementptr inbounds %struct.tegra_dc, ptr %468, i32 0, i32 8
  %474 = ptrtoint ptr %regs.i.i587 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %regs.i.i587, align 8
  %shl.i.i588 = shl i32 %add42.i.i585, 2
  %add.ptr.i.i589 = getelementptr i8, ptr %475, i32 %shl.i.i588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i589, i32 %473) #10, !srcloc !146
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %476 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %pitches, align 8
  %shr92 = lshr i32 %477, 6
  %and93 = and i32 %shr92, 8191
  %478 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dc.i, align 8
  %480 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i593 = add i32 %481, 393
  %dev.i2.i594 = getelementptr inbounds %struct.tegra_dc, ptr %479, i32 0, i32 2
  %482 = ptrtoint ptr %dev.i2.i594 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %dev.i2.i594, align 4
  call fastcc void @trace_dc_writel(ptr noundef %483, i32 noundef %add42.i.i593, i32 noundef %and93) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %484 = call i32 @llvm.bswap.i32(i32 %and93) #10
  %regs.i.i595 = getelementptr inbounds %struct.tegra_dc, ptr %479, i32 0, i32 8
  %485 = ptrtoint ptr %regs.i.i595 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %regs.i.i595, align 8
  %shl.i.i596 = shl i32 %add42.i.i593, 2
  %add.ptr.i.i597 = getelementptr i8, ptr %486, i32 %shl.i.i596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i597, i32 %484) #10, !srcloc !146
  br i1 %call14, label %land.lhs.true, label %if.else137.critedge

land.lhs.true:                                    ; preds = %if.end62
  %487 = ptrtoint ptr %planar to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %planar, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %tobool95.not = icmp eq i8 %488, 0
  br i1 %tobool95.not, label %if.then129.critedge304, label %if.then96

if.then96:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx98 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 1
  %489 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx98, align 4
  %arrayidx100 = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 7, i32 1
  %491 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %492, %490
  %493 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %dc.i, align 8
  %495 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i601 = add i32 %496, 463
  %dev.i2.i602 = getelementptr inbounds %struct.tegra_dc, ptr %494, i32 0, i32 2
  %497 = ptrtoint ptr %dev.i2.i602 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %dev.i2.i602, align 4
  call fastcc void @trace_dc_writel(ptr noundef %498, i32 noundef %add42.i.i601, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i603 = getelementptr inbounds %struct.tegra_dc, ptr %494, i32 0, i32 8
  %499 = ptrtoint ptr %regs.i.i603 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %regs.i.i603, align 8
  %shl.i.i604 = shl i32 %add42.i.i601, 2
  %add.ptr.i.i605 = getelementptr i8, ptr %500, i32 %shl.i.i604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i605, i32 0) #10, !srcloc !146
  %501 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %dc.i, align 8
  %503 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i609 = add i32 %504, 450
  %dev.i2.i610 = getelementptr inbounds %struct.tegra_dc, ptr %502, i32 0, i32 2
  %505 = ptrtoint ptr %dev.i2.i610 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %dev.i2.i610, align 4
  call fastcc void @trace_dc_writel(ptr noundef %506, i32 noundef %add42.i.i609, i32 noundef %add101) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %507 = call i32 @llvm.bswap.i32(i32 %add101) #10
  %regs.i.i611 = getelementptr inbounds %struct.tegra_dc, ptr %502, i32 0, i32 8
  %508 = ptrtoint ptr %regs.i.i611 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %regs.i.i611, align 8
  %shl.i.i612 = shl i32 %add42.i.i609, 2
  %add.ptr.i.i613 = getelementptr i8, ptr %509, i32 %shl.i.i612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i613, i32 %507) #10, !srcloc !146
  %arrayidx107 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 2
  %510 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx107, align 4
  %arrayidx109 = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 7, i32 2
  %512 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx109, align 8
  %add110 = add i32 %513, %511
  %514 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %dc.i, align 8
  %516 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i617 = add i32 %517, 465
  %dev.i2.i618 = getelementptr inbounds %struct.tegra_dc, ptr %515, i32 0, i32 2
  %518 = ptrtoint ptr %dev.i2.i618 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %dev.i2.i618, align 4
  call fastcc void @trace_dc_writel(ptr noundef %519, i32 noundef %add42.i.i617, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i619 = getelementptr inbounds %struct.tegra_dc, ptr %515, i32 0, i32 8
  %520 = ptrtoint ptr %regs.i.i619 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %regs.i.i619, align 8
  %shl.i.i620 = shl i32 %add42.i.i617, 2
  %add.ptr.i.i621 = getelementptr i8, ptr %521, i32 %shl.i.i620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i621, i32 0) #10, !srcloc !146
  %522 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %dc.i, align 8
  %524 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i625 = add i32 %525, 452
  %dev.i2.i626 = getelementptr inbounds %struct.tegra_dc, ptr %523, i32 0, i32 2
  %526 = ptrtoint ptr %dev.i2.i626 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dev.i2.i626, align 4
  call fastcc void @trace_dc_writel(ptr noundef %527, i32 noundef %add42.i.i625, i32 noundef %add110) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %528 = call i32 @llvm.bswap.i32(i32 %add110) #10
  %regs.i.i627 = getelementptr inbounds %struct.tegra_dc, ptr %523, i32 0, i32 8
  %529 = ptrtoint ptr %regs.i.i627 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %regs.i.i627, align 8
  %shl.i.i628 = shl i32 %add42.i.i625, 2
  %add.ptr.i.i629 = getelementptr i8, ptr %530, i32 %shl.i.i628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i629, i32 %528) #10, !srcloc !146
  %arrayidx116 = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 6, i32 2
  %531 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx116, align 8
  %shr117 = lshr i32 %532, 6
  %and118 = and i32 %shr117, 8191
  %or125 = mul nuw nsw i32 %and118, 65537
  %533 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %dc.i, align 8
  %535 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i633 = add i32 %536, 394
  %dev.i2.i634 = getelementptr inbounds %struct.tegra_dc, ptr %534, i32 0, i32 2
  %537 = ptrtoint ptr %dev.i2.i634 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %dev.i2.i634, align 4
  call fastcc void @trace_dc_writel(ptr noundef %538, i32 noundef %add42.i.i633, i32 noundef %or125) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %539 = call i32 @llvm.bswap.i32(i32 %or125) #10
  %regs.i.i635 = getelementptr inbounds %struct.tegra_dc, ptr %534, i32 0, i32 8
  %540 = ptrtoint ptr %regs.i.i635 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %regs.i.i635, align 8
  %shl.i.i636 = shl i32 %add42.i.i633, 2
  %add.ptr.i.i637 = getelementptr i8, ptr %541, i32 %shl.i.i636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i637, i32 %539) #10, !srcloc !146
  br label %if.then129

if.then129.critedge304:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %542 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %dc.i, align 8
  %544 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i641 = add i32 %545, 450
  %dev.i2.i642 = getelementptr inbounds %struct.tegra_dc, ptr %543, i32 0, i32 2
  %546 = ptrtoint ptr %dev.i2.i642 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %dev.i2.i642, align 4
  call fastcc void @trace_dc_writel(ptr noundef %547, i32 noundef %add42.i.i641, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i643 = getelementptr inbounds %struct.tegra_dc, ptr %543, i32 0, i32 8
  %548 = ptrtoint ptr %regs.i.i643 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %regs.i.i643, align 8
  %shl.i.i644 = shl i32 %add42.i.i641, 2
  %add.ptr.i.i645 = getelementptr i8, ptr %549, i32 %shl.i.i644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i645, i32 0) #10, !srcloc !146
  %550 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %dc.i, align 8
  %552 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i649 = add i32 %553, 463
  %dev.i2.i650 = getelementptr inbounds %struct.tegra_dc, ptr %551, i32 0, i32 2
  %554 = ptrtoint ptr %dev.i2.i650 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %dev.i2.i650, align 4
  call fastcc void @trace_dc_writel(ptr noundef %555, i32 noundef %add42.i.i649, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i651 = getelementptr inbounds %struct.tegra_dc, ptr %551, i32 0, i32 8
  %556 = ptrtoint ptr %regs.i.i651 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %regs.i.i651, align 8
  %shl.i.i652 = shl i32 %add42.i.i649, 2
  %add.ptr.i.i653 = getelementptr i8, ptr %557, i32 %shl.i.i652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i653, i32 0) #10, !srcloc !146
  %558 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %dc.i, align 8
  %560 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i657 = add i32 %561, 452
  %dev.i2.i658 = getelementptr inbounds %struct.tegra_dc, ptr %559, i32 0, i32 2
  %562 = ptrtoint ptr %dev.i2.i658 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %dev.i2.i658, align 4
  call fastcc void @trace_dc_writel(ptr noundef %563, i32 noundef %add42.i.i657, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i659 = getelementptr inbounds %struct.tegra_dc, ptr %559, i32 0, i32 8
  %564 = ptrtoint ptr %regs.i.i659 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %regs.i.i659, align 8
  %shl.i.i660 = shl i32 %add42.i.i657, 2
  %add.ptr.i.i661 = getelementptr i8, ptr %565, i32 %shl.i.i660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i661, i32 0) #10, !srcloc !146
  %566 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dc.i, align 8
  %568 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i665 = add i32 %569, 465
  %dev.i2.i666 = getelementptr inbounds %struct.tegra_dc, ptr %567, i32 0, i32 2
  %570 = ptrtoint ptr %dev.i2.i666 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %dev.i2.i666, align 4
  call fastcc void @trace_dc_writel(ptr noundef %571, i32 noundef %add42.i.i665, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i667 = getelementptr inbounds %struct.tegra_dc, ptr %567, i32 0, i32 8
  %572 = ptrtoint ptr %regs.i.i667 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %regs.i.i667, align 8
  %shl.i.i668 = shl i32 %add42.i.i665, 2
  %add.ptr.i.i669 = getelementptr i8, ptr %573, i32 %shl.i.i668
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i669, i32 0) #10, !srcloc !146
  %574 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %dc.i, align 8
  %576 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i673 = add i32 %577, 394
  %dev.i2.i674 = getelementptr inbounds %struct.tegra_dc, ptr %575, i32 0, i32 2
  %578 = ptrtoint ptr %dev.i2.i674 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %dev.i2.i674, align 4
  call fastcc void @trace_dc_writel(ptr noundef %579, i32 noundef %add42.i.i673, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i675 = getelementptr inbounds %struct.tegra_dc, ptr %575, i32 0, i32 8
  %580 = ptrtoint ptr %regs.i.i675 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %regs.i.i675, align 8
  %shl.i.i676 = shl i32 %add42.i.i673, 2
  %add.ptr.i.i677 = getelementptr i8, ptr %581, i32 %shl.i.i676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i677, i32 0) #10, !srcloc !146
  br label %if.then129

if.then129:                                       ; preds = %if.then129.critedge304, %if.then96
  %582 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %bpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %583)
  %cmp130 = icmp ult i32 %583, 12
  %. = select i1 %cmp130, i32 51968, i32 60160
  br label %if.end143

if.else137.critedge:                              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %584 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %dc.i, align 8
  %586 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i681 = add i32 %587, 450
  %dev.i2.i682 = getelementptr inbounds %struct.tegra_dc, ptr %585, i32 0, i32 2
  %588 = ptrtoint ptr %dev.i2.i682 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %dev.i2.i682, align 4
  call fastcc void @trace_dc_writel(ptr noundef %589, i32 noundef %add42.i.i681, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i683 = getelementptr inbounds %struct.tegra_dc, ptr %585, i32 0, i32 8
  %590 = ptrtoint ptr %regs.i.i683 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %regs.i.i683, align 8
  %shl.i.i684 = shl i32 %add42.i.i681, 2
  %add.ptr.i.i685 = getelementptr i8, ptr %591, i32 %shl.i.i684
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i685, i32 0) #10, !srcloc !146
  %592 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %dc.i, align 8
  %594 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i689 = add i32 %595, 463
  %dev.i2.i690 = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 2
  %596 = ptrtoint ptr %dev.i2.i690 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %dev.i2.i690, align 4
  call fastcc void @trace_dc_writel(ptr noundef %597, i32 noundef %add42.i.i689, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i691 = getelementptr inbounds %struct.tegra_dc, ptr %593, i32 0, i32 8
  %598 = ptrtoint ptr %regs.i.i691 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %regs.i.i691, align 8
  %shl.i.i692 = shl i32 %add42.i.i689, 2
  %add.ptr.i.i693 = getelementptr i8, ptr %599, i32 %shl.i.i692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i693, i32 0) #10, !srcloc !146
  %600 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dc.i, align 8
  %602 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i697 = add i32 %603, 452
  %dev.i2.i698 = getelementptr inbounds %struct.tegra_dc, ptr %601, i32 0, i32 2
  %604 = ptrtoint ptr %dev.i2.i698 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %dev.i2.i698, align 4
  call fastcc void @trace_dc_writel(ptr noundef %605, i32 noundef %add42.i.i697, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i699 = getelementptr inbounds %struct.tegra_dc, ptr %601, i32 0, i32 8
  %606 = ptrtoint ptr %regs.i.i699 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %regs.i.i699, align 8
  %shl.i.i700 = shl i32 %add42.i.i697, 2
  %add.ptr.i.i701 = getelementptr i8, ptr %607, i32 %shl.i.i700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i701, i32 0) #10, !srcloc !146
  %608 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %dc.i, align 8
  %610 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i705 = add i32 %611, 465
  %dev.i2.i706 = getelementptr inbounds %struct.tegra_dc, ptr %609, i32 0, i32 2
  %612 = ptrtoint ptr %dev.i2.i706 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev.i2.i706, align 4
  call fastcc void @trace_dc_writel(ptr noundef %613, i32 noundef %add42.i.i705, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i707 = getelementptr inbounds %struct.tegra_dc, ptr %609, i32 0, i32 8
  %614 = ptrtoint ptr %regs.i.i707 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %regs.i.i707, align 8
  %shl.i.i708 = shl i32 %add42.i.i705, 2
  %add.ptr.i.i709 = getelementptr i8, ptr %615, i32 %shl.i.i708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i709, i32 0) #10, !srcloc !146
  %616 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %dc.i, align 8
  %618 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i713 = add i32 %619, 394
  %dev.i2.i714 = getelementptr inbounds %struct.tegra_dc, ptr %617, i32 0, i32 2
  %620 = ptrtoint ptr %dev.i2.i714 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %dev.i2.i714, align 4
  call fastcc void @trace_dc_writel(ptr noundef %621, i32 noundef %add42.i.i713, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %regs.i.i715 = getelementptr inbounds %struct.tegra_dc, ptr %617, i32 0, i32 8
  %622 = ptrtoint ptr %regs.i.i715 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %regs.i.i715, align 8
  %shl.i.i716 = shl i32 %add42.i.i713, 2
  %add.ptr.i.i717 = getelementptr i8, ptr %623, i32 %shl.i.i716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i717, i32 0) #10, !srcloc !146
  %624 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %format, align 4
  %call139 = call zeroext i1 @tegra_plane_format_is_indexed(i32 noundef %625) #10
  %spec.select = select i1 %call139, i32 34816, i32 43008
  br label %if.end143

if.end143:                                        ; preds = %if.else137.critedge, %if.then129
  %value.1 = phi i32 [ %., %if.then129 ], [ %spec.select, %if.else137.critedge ]
  %626 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %dc.i, align 8
  %628 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i721 = add i32 %629, 397
  %dev.i2.i722 = getelementptr inbounds %struct.tegra_dc, ptr %627, i32 0, i32 2
  %630 = ptrtoint ptr %dev.i2.i722 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %dev.i2.i722, align 4
  call fastcc void @trace_dc_writel(ptr noundef %631, i32 noundef %add42.i.i721, i32 noundef %value.1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %632 = shl nuw nsw i32 %value.1, 8
  %regs.i.i723 = getelementptr inbounds %struct.tegra_dc, ptr %627, i32 0, i32 8
  %633 = ptrtoint ptr %regs.i.i723 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %regs.i.i723, align 8
  %shl.i.i724 = shl i32 %add42.i.i721, 2
  %add.ptr.i.i725 = getelementptr i8, ptr %634, i32 %shl.i.i724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i725, i32 %632) #10, !srcloc !146
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %635 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %src_y, align 4
  %shr144 = lshr i32 %636, 16
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %637 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %src_x, align 4
  %shr147 = and i32 %638, -65536
  %or150 = or i32 %shr147, %shr144
  %639 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %dc.i, align 8
  %641 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i729 = add i32 %642, 454
  %dev.i2.i730 = getelementptr inbounds %struct.tegra_dc, ptr %640, i32 0, i32 2
  %643 = ptrtoint ptr %dev.i2.i730 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %dev.i2.i730, align 4
  call fastcc void @trace_dc_writel(ptr noundef %644, i32 noundef %add42.i.i729, i32 noundef %or150) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %645 = call i32 @llvm.bswap.i32(i32 %or150) #10
  %regs.i.i731 = getelementptr inbounds %struct.tegra_dc, ptr %640, i32 0, i32 8
  %646 = ptrtoint ptr %regs.i.i731 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %regs.i.i731, align 8
  %shl.i.i732 = shl i32 %add42.i.i729, 2
  %add.ptr.i.i733 = getelementptr i8, ptr %647, i32 %shl.i.i732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i733, i32 %645) #10, !srcloc !146
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %648 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %soc, align 8
  %supports_block_linear = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %649, i32 0, i32 3
  %650 = ptrtoint ptr %supports_block_linear to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %supports_block_linear, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %tobool151.not = icmp eq i8 %651, 0
  br i1 %tobool151.not, label %if.end143.if.end161_crit_edge, label %if.then152

if.end143.if.end161_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then152:                                       ; preds = %if.end143
  %tiling = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3
  %652 = ptrtoint ptr %tiling to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %tiling, align 4
  %654 = zext i32 %653 to i64
  call void @__sanitizer_cov_trace_switch(i64 %654, ptr @__sancov_gen_cov_switch_values)
  switch i32 %653, label %if.then152.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb156
    i32 2, label %sw.bb157
  ]

if.then152.sw.epilog_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  %value154 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3, i32 1
  %655 = ptrtoint ptr %value154 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %value154, align 4
  %and158 = shl i32 %656, 4
  %shl159 = and i32 %and158, 112
  %or160 = or i32 %shl159, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb157, %sw.bb156, %sw.bb, %if.then152.sw.epilog_crit_edge
  %value.2 = phi i32 [ %or150, %if.then152.sw.epilog_crit_edge ], [ %or160, %sw.bb157 ], [ %653, %sw.bb156 ], [ %653, %sw.bb ]
  %657 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %dc.i, align 8
  %659 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i737 = add i32 %660, 459
  %dev.i2.i738 = getelementptr inbounds %struct.tegra_dc, ptr %658, i32 0, i32 2
  %661 = ptrtoint ptr %dev.i2.i738 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %dev.i2.i738, align 4
  call fastcc void @trace_dc_writel(ptr noundef %662, i32 noundef %add42.i.i737, i32 noundef %value.2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %663 = call i32 @llvm.bswap.i32(i32 %value.2) #10
  %regs.i.i739 = getelementptr inbounds %struct.tegra_dc, ptr %658, i32 0, i32 8
  %664 = ptrtoint ptr %regs.i.i739 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %regs.i.i739, align 8
  %shl.i.i740 = shl i32 %add42.i.i737, 2
  %add.ptr.i.i741 = getelementptr i8, ptr %665, i32 %shl.i.i740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i741, i32 %663) #10, !srcloc !146
  br label %if.end161

if.end161:                                        ; preds = %sw.epilog, %if.end143.if.end161_crit_edge
  %666 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %dc.i, align 8
  %668 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i745 = add i32 %669, 432
  %regs.i.i746 = getelementptr inbounds %struct.tegra_dc, ptr %667, i32 0, i32 8
  %670 = ptrtoint ptr %regs.i.i746 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %regs.i.i746, align 8
  %shl.i.i747 = shl i32 %add42.i.i745, 2
  %add.ptr.i.i748 = getelementptr i8, ptr %671, i32 %shl.i.i747
  %672 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i748) #10, !srcloc !143
  %673 = call i32 @llvm.bswap.i32(i32 %672) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i749 = getelementptr inbounds %struct.tegra_dc, ptr %667, i32 0, i32 2
  %674 = ptrtoint ptr %dev.i3.i749 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %dev.i3.i749, align 4
  call fastcc void @trace_dc_readl(ptr noundef %675, i32 noundef %add42.i.i745, i32 noundef %673) #10
  %and163 = and i32 %673, -33
  %676 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %dc.i, align 8
  %678 = ptrtoint ptr %offset10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %offset10.i.i.i.i, align 4
  %add42.i.i753 = add i32 %679, 432
  %dev.i2.i754 = getelementptr inbounds %struct.tegra_dc, ptr %677, i32 0, i32 2
  %680 = ptrtoint ptr %dev.i2.i754 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %dev.i2.i754, align 4
  call fastcc void @trace_dc_writel(ptr noundef %681, i32 noundef %add42.i.i753, i32 noundef %and163) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %682 = call i32 @llvm.bswap.i32(i32 %and163) #10
  %regs.i.i755 = getelementptr inbounds %struct.tegra_dc, ptr %677, i32 0, i32 8
  %683 = ptrtoint ptr %regs.i.i755 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %regs.i.i755, align 8
  %shl.i.i756 = shl i32 %add42.i.i753, 2
  %add.ptr.i.i757 = getelementptr i8, ptr %684, i32 %shl.i.i756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i757, i32 %682) #10, !srcloc !146
  %call165 = call i32 @host1x_client_suspend(ptr noundef %spec.select.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end, %if.then9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %planar) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_shared_plane_atomic_disable(ptr nocapture noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %7, i32 -248
  %call5 = tail call i32 @host1x_client_resume(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %call5) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dc8 = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %10 = ptrtoint ptr %dc8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dc8, align 8
  %cmp9 = icmp eq ptr %11, null
  br i1 %cmp9, label %do.end21, label %if.end7.if.end37_crit_edge, !prof !147

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  %12 = ptrtoint ptr %dc8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %dc8, align 8
  br label %if.end37

if.end37:                                         ; preds = %do.end21, %if.end7.if.end37_crit_edge
  %13 = ptrtoint ptr %dc8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc8, align 8
  %offset10.i.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 2
  %15 = ptrtoint ptr %offset10.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset10.i.i, align 4
  %add42.i.i = add i32 %16, 384
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 8
  %shl.i.i = shl i32 %add42.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %shl.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !143
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dev.i3.i = getelementptr inbounds %struct.tegra_dc, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i3.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %22, i32 noundef %add42.i.i, i32 noundef %20) #10
  %and = and i32 %20, -1073741825
  %23 = ptrtoint ptr %dc8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dc8, align 8
  %25 = ptrtoint ptr %offset10.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset10.i.i, align 4
  %add42.i.i61 = add i32 %26, 384
  %dev.i2.i = getelementptr inbounds %struct.tegra_dc, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i2.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %28, i32 noundef %add42.i.i61, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %regs.i.i62 = getelementptr inbounds %struct.tegra_dc, ptr %24, i32 0, i32 8
  %30 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i62, align 8
  %shl.i.i63 = shl i32 %add42.i.i61, 2
  %add.ptr.i.i64 = getelementptr i8, ptr %31, i32 %shl.i.i63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 %29) #10, !srcloc !146
  %call.i = tail call fastcc i32 @tegra_shared_plane_set_owner(ptr noundef %plane, ptr noundef null) #10
  %call40 = tail call i32 @host1x_client_suspend(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_format(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fb_get_tiling(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_state_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_indexed(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_shared_plane_set_owner(ptr nocapture noundef %plane, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset10.i = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 2
  %0 = ptrtoint ptr %offset10.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset10.i, align 4
  %add42.i = add i32 %1, 386
  %dc = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 8
  %tobool.not = icmp eq ptr %new, null
  %.new = select i1 %tobool.not, ptr %3, ptr %new
  %cond8.in = getelementptr inbounds %struct.tegra_dc, ptr %.new, i32 0, i32 2
  %4 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond8 = load ptr, ptr %cond8.in, align 4
  %index9 = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %5 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index9, align 8
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %.new, i32 0, i32 8
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %add42.i, 2
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shl.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !143
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %11 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond8.in, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %12, i32 noundef %add42.i, i32 noundef %10) #10
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end32_crit_edge, label %land.lhs.true12

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true12:                                  ; preds = %entry
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %new, i32 0, i32 5
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %14)
  %cmp13.not = icmp eq i32 %and, %14
  br i1 %cmp13.not, label %land.lhs.true12.if.end32_crit_edge, label %do.end

land.lhs.true12.if.end32_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end:                                           ; preds = %land.lhs.true12
  %call19 = tail call ptr @dev_driver_string(ptr noundef %cond8) #10
  %init_name.i = getelementptr inbounds %struct.device, ptr %cond8, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cond8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cond8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i98 = phi ptr [ %18, %if.end.i ], [ %16, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call19, ptr noundef %retval.0.i98, i32 noundef %6, i32 noundef %and) #10
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true12.if.end32_crit_edge, %entry.if.end32_crit_edge
  %tobool33.not = icmp ne ptr %3, null
  %or.cond97 = select i1 %tobool33.not, i1 %cmp.not, i1 false
  br i1 %or.cond97, label %do.body37, label %if.end32.if.end54_crit_edge

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_shared_plane_set_owner.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_shared_plane_set_owner, %if.end54)) #10
          to label %if.then49 [label %if.end54], !srcloc !151

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %pipe50 = getelementptr inbounds %struct.tegra_dc, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %pipe50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_shared_plane_set_owner.__UNIQUE_ID_ddebug341, ptr noundef %cond8, ptr noundef nonnull @.str.28, i32 noundef %6, i32 noundef %20, i32 noundef 15) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %do.body37, %if.end32.if.end54_crit_edge
  br i1 %tobool.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %and55 = and i32 %10, -16
  %pipe58 = getelementptr inbounds %struct.tegra_dc, ptr %new, i32 0, i32 5
  %21 = ptrtoint ptr %pipe58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe58, align 4
  %and59 = and i32 %22, 15
  %or = or i32 %and59, %and55
  br label %if.end61

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %or60 = or i32 %10, 15
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then57
  %value.0 = phi i32 [ %or, %if.then57 ], [ %or60, %if.else ]
  %23 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond8.in, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %24, i32 noundef %add42.i, i32 noundef %value.0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %value.0) #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i102 = getelementptr i8, ptr %27, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %25) #10, !srcloc !146
  %28 = ptrtoint ptr %dc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %new, ptr %dc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %dev_name.exit
  %retval.0 = phi i32 [ -16, %dev_name.exit ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !152
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 32, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 29, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_child_count(ptr noundef %np) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #10
  %cmp.not5 = icmp eq ptr %call, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %num.07, 1
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %client, i32 -124
  tail call void @drm_atomic_private_obj_init(ptr noundef %3, ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra_display_hub_state_funcs) #10
  %hub4 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %hub4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %hub4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_exit(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hub, align 4
  tail call void @drm_atomic_private_obj_fini(ptr noundef %7) #10
  %8 = ptrtoint ptr %hub to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hub, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_runtime_suspend(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %num_heads = getelementptr i8, ptr %client, i32 256
  %2 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_heads, align 4
  %rst = getelementptr i8, ptr %client, i32 252
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not15 = icmp eq i32 %3, 0
  br i1 %tobool.not15, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %clk_heads = getelementptr i8, ptr %client, i32 260
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.016 = phi i32 [ %3, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %i.016, -1
  %6 = ptrtoint ptr %clk_heads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_heads, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %dec
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %clk_hub = getelementptr i8, ptr %client, i32 248
  %10 = ptrtoint ptr %clk_hub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_hub, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %clk_dsc = getelementptr i8, ptr %client, i32 244
  %12 = ptrtoint ptr %clk_dsc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_dsc, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %clk_disp = getelementptr i8, ptr %client, i32 240
  %14 = ptrtoint ptr %clk_disp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_disp, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_runtime_resume(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !159
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !160
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_disp = getelementptr i8, ptr %client, i32 240
  %3 = ptrtoint ptr %clk_disp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_disp, align 4
  %call.i57 = tail call i32 @clk_prepare(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %4) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i58 = phi i32 [ %call.i57, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i58)
  %cmp4 = icmp slt i32 %retval.0.i58, 0
  br i1 %cmp4, label %clk_prepare_enable.exit.put_rpm_crit_edge, label %clk_prepare_enable.exit.if.end6_crit_edge

clk_prepare_enable.exit.if.end6_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

clk_prepare_enable.exit.put_rpm_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_rpm

if.end6:                                          ; preds = %clk_prepare_enable.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %clk_dsc = getelementptr i8, ptr %client, i32 244
  %5 = ptrtoint ptr %clk_dsc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_dsc, align 4
  %call.i59 = tail call i32 @clk_prepare(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %if.end.i63, label %if.end6.clk_prepare_enable.exit66_crit_edge

if.end6.clk_prepare_enable.exit66_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit66

if.end.i63:                                       ; preds = %if.end6
  %call1.i61 = tail call i32 @clk_enable(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool2.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool2.not.i62, label %if.end.i63.if.end10_crit_edge, label %if.then3.i64

if.end.i63.if.end10_crit_edge:                    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3.i64:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %clk_prepare_enable.exit66

clk_prepare_enable.exit66:                        ; preds = %if.then3.i64, %if.end6.clk_prepare_enable.exit66_crit_edge
  %retval.0.i65 = phi i32 [ %call.i59, %if.end6.clk_prepare_enable.exit66_crit_edge ], [ %call1.i61, %if.then3.i64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i65)
  %cmp8 = icmp slt i32 %retval.0.i65, 0
  br i1 %cmp8, label %clk_prepare_enable.exit66.disable_disp_crit_edge, label %clk_prepare_enable.exit66.if.end10_crit_edge

clk_prepare_enable.exit66.if.end10_crit_edge:     ; preds = %clk_prepare_enable.exit66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

clk_prepare_enable.exit66.disable_disp_crit_edge: ; preds = %clk_prepare_enable.exit66
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_disp

if.end10:                                         ; preds = %clk_prepare_enable.exit66.if.end10_crit_edge, %if.end.i63.if.end10_crit_edge
  %clk_hub = getelementptr i8, ptr %client, i32 248
  %7 = ptrtoint ptr %clk_hub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_hub, align 4
  %call.i67 = tail call i32 @clk_prepare(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i71, label %if.end10.clk_prepare_enable.exit74_crit_edge

if.end10.clk_prepare_enable.exit74_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit74

if.end.i71:                                       ; preds = %if.end10
  %call1.i69 = tail call i32 @clk_enable(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool2.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool2.not.i70, label %if.end.i71.for.cond.preheader_crit_edge, label %if.then3.i72

if.end.i71.for.cond.preheader_crit_edge:          ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then3.i72:                                     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %8) #10
  br label %clk_prepare_enable.exit74

clk_prepare_enable.exit74:                        ; preds = %if.then3.i72, %if.end10.clk_prepare_enable.exit74_crit_edge
  %retval.0.i73 = phi i32 [ %call.i67, %if.end10.clk_prepare_enable.exit74_crit_edge ], [ %call1.i69, %if.then3.i72 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i73)
  %cmp12 = icmp slt i32 %retval.0.i73, 0
  br i1 %cmp12, label %clk_prepare_enable.exit74.disable_dsc_crit_edge, label %clk_prepare_enable.exit74.for.cond.preheader_crit_edge

clk_prepare_enable.exit74.for.cond.preheader_crit_edge: ; preds = %clk_prepare_enable.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

clk_prepare_enable.exit74.disable_dsc_crit_edge:  ; preds = %clk_prepare_enable.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_dsc

for.cond.preheader:                               ; preds = %clk_prepare_enable.exit74.for.cond.preheader_crit_edge, %if.end.i71.for.cond.preheader_crit_edge
  %num_heads = getelementptr i8, ptr %client, i32 256
  %9 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_heads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1595.not = icmp eq i32 %10, 0
  br i1 %cmp1595.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clk_heads = getelementptr i8, ptr %client, i32 260
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %clk_heads to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_heads, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.096
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i75 = tail call i32 @clk_prepare(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i79, label %for.body.clk_prepare_enable.exit82_crit_edge

for.body.clk_prepare_enable.exit82_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit82

if.end.i79:                                       ; preds = %for.body
  %call1.i77 = tail call i32 @clk_enable(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool2.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool2.not.i78, label %if.end.i79.for.inc_crit_edge, label %if.then3.i80

if.end.i79.for.inc_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3.i80:                                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %14) #10
  br label %clk_prepare_enable.exit82

clk_prepare_enable.exit82:                        ; preds = %if.then3.i80, %for.body.clk_prepare_enable.exit82_crit_edge
  %retval.0.i81 = phi i32 [ %call.i75, %for.body.clk_prepare_enable.exit82_crit_edge ], [ %call1.i77, %if.then3.i80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81)
  %cmp17 = icmp slt i32 %retval.0.i81, 0
  br i1 %cmp17, label %clk_prepare_enable.exit82.disable_heads_crit_edge, label %clk_prepare_enable.exit82.for.inc_crit_edge

clk_prepare_enable.exit82.for.inc_crit_edge:      ; preds = %clk_prepare_enable.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

clk_prepare_enable.exit82.disable_heads_crit_edge: ; preds = %clk_prepare_enable.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_heads

for.inc:                                          ; preds = %clk_prepare_enable.exit82.for.inc_crit_edge, %if.end.i79.for.inc_crit_edge
  %inc = add nuw i32 %i.096, 1
  %15 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_heads, align 4
  %cmp15 = icmp ult i32 %inc, %16
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %rst = getelementptr i8, ptr %client, i32 252
  %17 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rst, align 4
  %call20 = tail call i32 @reset_control_deassert(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %for.end.disable_heads_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.disable_heads_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_heads

disable_heads:                                    ; preds = %for.end.disable_heads_crit_edge, %clk_prepare_enable.exit82.disable_heads_crit_edge
  %i.094 = phi i32 [ %i.0.lcssa, %for.end.disable_heads_crit_edge ], [ %i.096, %clk_prepare_enable.exit82.disable_heads_crit_edge ]
  %err.0 = phi i32 [ %call20, %for.end.disable_heads_crit_edge ], [ %retval.0.i81, %clk_prepare_enable.exit82.disable_heads_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.094)
  %tobool.not98 = icmp eq i32 %i.094, 0
  br i1 %tobool.not98, label %disable_heads.while.end_crit_edge, label %while.body.lr.ph

disable_heads.while.end_crit_edge:                ; preds = %disable_heads
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %disable_heads
  %clk_heads24 = getelementptr i8, ptr %client, i32 260
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.199 = phi i32 [ %i.094, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %i.199, -1
  %19 = ptrtoint ptr %clk_heads24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_heads24, align 4
  %arrayidx25 = getelementptr ptr, ptr %20, i32 %dec
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  tail call void @clk_disable(ptr noundef %22) #10
  tail call void @clk_unprepare(ptr noundef %22) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %disable_heads.while.end_crit_edge
  %23 = ptrtoint ptr %clk_hub to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_hub, align 4
  tail call void @clk_disable(ptr noundef %24) #10
  tail call void @clk_unprepare(ptr noundef %24) #10
  br label %disable_dsc

disable_dsc:                                      ; preds = %while.end, %clk_prepare_enable.exit74.disable_dsc_crit_edge
  %err.1 = phi i32 [ %retval.0.i73, %clk_prepare_enable.exit74.disable_dsc_crit_edge ], [ %err.0, %while.end ]
  %25 = ptrtoint ptr %clk_dsc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_dsc, align 4
  tail call void @clk_disable(ptr noundef %26) #10
  tail call void @clk_unprepare(ptr noundef %26) #10
  br label %disable_disp

disable_disp:                                     ; preds = %disable_dsc, %clk_prepare_enable.exit66.disable_disp_crit_edge
  %err.2 = phi i32 [ %retval.0.i65, %clk_prepare_enable.exit66.disable_disp_crit_edge ], [ %err.1, %disable_dsc ]
  %27 = ptrtoint ptr %clk_disp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_disp, align 4
  tail call void @clk_disable(ptr noundef %28) #10
  tail call void @clk_unprepare(ptr noundef %28) #10
  br label %put_rpm

put_rpm:                                          ; preds = %disable_disp, %clk_prepare_enable.exit.put_rpm_crit_edge
  %err.3 = phi i32 [ %retval.0.i58, %clk_prepare_enable.exit.put_rpm_crit_edge ], [ %err.2, %disable_disp ]
  %call.i83 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %put_rpm, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.3, %put_rpm ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_display_hub_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 16, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_display_hub_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 917, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_display_hub_atomic_commit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_display_hub_atomic_commit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 922, i32 4}
!10 = !{ptr @tegra_display_hub_atomic_commit._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_display_hub_atomic_commit._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1216, i32 11}
!14 = !{ptr @tegra_display_hub_driver, !15, !"tegra_display_hub_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1214, i32 24}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 119, i32 4}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tegra_windowgroup_enable._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra_windowgroup_enable._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 142, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_windowgroup_disable._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_windowgroup_disable._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tegra_shared_plane_formats, !27, !"tegra_shared_plane_formats", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 28, i32 18}
!28 = !{ptr @tegra_shared_plane_modifiers, !29, !"tegra_shared_plane_modifiers", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 52, i32 18}
!30 = !{ptr @tegra_shared_plane_helper_funcs, !31, !"tegra_shared_plane_helper_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 739, i32 44}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 449, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 455, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 466, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 558, i32 3}
!40 = !{ptr @tegra_shared_plane_atomic_update._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_shared_plane_atomic_update._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 595, i32 4}
!44 = !{ptr @tegra_shared_plane_atomic_update._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_shared_plane_atomic_update._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 249, i32 3}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 93, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 270, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 280, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tegra_shared_plane_set_owner.__UNIQUE_ID_ddebug341, !61, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @tegra_shared_plane_setup_scaler.coeffs, !69, !"coeffs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 299, i32 28}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 498, i32 3}
!72 = !{ptr @tegra_shared_plane_atomic_disable._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra_shared_plane_atomic_disable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 883, i32 3}
!76 = !{ptr @tegra_display_hub_update._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tegra_display_hub_update._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1052, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tegra_display_hub_probe._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_display_hub_probe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1062, i32 43}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1069, i32 43}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1076, i32 42}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1082, i32 48}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1097, i32 28}
!93 = !{ptr @tegra_display_hub_probe.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1098, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1121, i32 4}
!98 = !{ptr @tegra_display_hub_probe._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_display_hub_probe._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1126, i32 52}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1128, i32 4}
!104 = !{ptr @tegra_display_hub_probe._entry.43, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @tegra_display_hub_probe._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @tegra_display_hub_probe.__key.46, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1151, i32 8}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1153, i32 3}
!110 = !{ptr @tegra_display_hub_probe._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tegra_display_hub_probe._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @tegra_display_hub_ops, !113, !"tegra_display_hub_ops", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1034, i32 39}
!114 = !{ptr @tegra_display_hub_state_funcs, !115, !"tegra_display_hub_state_funcs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 819, i32 45}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 992, i32 3}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @tegra_display_hub_runtime_resume._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @tegra_display_hub_runtime_resume._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1176, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @tegra_display_hub_remove._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @tegra_display_hub_remove._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @tegra_display_hub_of_match, !127, !"tegra_display_hub_of_match", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1201, i32 34}
!128 = !{ptr @tegra194_display_hub, !129, !"tegra194_display_hub", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1196, i32 43}
!130 = !{ptr @tegra186_display_hub, !131, !"tegra186_display_hub", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/tegra/hub.c", i32 1191, i32 43}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{i64 7131493}
!144 = !{i64 2157312042}
!145 = !{i64 2157311171}
!146 = !{i64 7131075}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{!"auto-init"}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2148662091, i64 2148662371, i64 2148662705, i64 2148663039}
!151 = !{i64 2148753372, i64 2148753377, i64 2148753390, i64 2148753434, i64 2148753468, i64 2148753489}
!152 = !{i64 2157122823}
!153 = !{i64 2157123038}
!154 = !{i64 2149329458}
!155 = !{i64 2149330494}
!156 = !{i64 2157106675}
!157 = !{i64 2157106892}
!158 = !{i64 2148270976}
!159 = !{i64 755799, i64 755824, i64 755846, i64 755862, i64 755874, i64 755894, i64 755918, i64 755934, i64 755946}
!160 = !{i64 2148271164}
