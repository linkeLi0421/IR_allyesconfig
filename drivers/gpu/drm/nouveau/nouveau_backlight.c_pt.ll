; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_backlight.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.90 = type { i32, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.anon.103 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.104, i8 }
%union.anon.104 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.117, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.118, %struct.anon.125, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.117 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.125 = type { i8 }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.126, %struct.anon.127, %struct.anon.129, %union.anon.130 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.126 = type { i32, i32 }
%struct.anon.127 = type { i32, %struct.anon.128, i8 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.anon.129 = type { i32, i32 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i8 }
%struct.nouveau_backlight = type { ptr, %struct.drm_edp_backlight_info, i8, i32 }
%struct.drm_edp_backlight_info = type { i8, i8, i16, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@nouveau_backlight_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: Apple GMUX detected: not registering Nouveau backlight interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nouveau_backlight_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/nouveau_backlight.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_backlight_init._entry_ptr = internal global ptr @nouveau_backlight_init._entry, section ".printk_index", align 4
@nouveau_backlight_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 409, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Failed to retrieve a unique name for the backlight interface\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_backlight_init._entry_ptr.8 = internal global ptr @nouveau_backlight_init._entry.5, section ".printk_index", align 4
@bl_ida = internal global { %struct.ida, [44 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv40_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @nv40_set_intensity, ptr @nv40_get_intensity, ptr null }, [16 x i8] zeroinitializer }, align 32
@nv50_backlight_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: DPCD backlight controls supported on %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_backlight_init\00", [44 x i8] zeroinitializer }, align 32
@nv50_backlight_init._entry_ptr = internal global ptr @nv50_backlight_init._entry, section ".printk_index", align 4
@nv50_backlight_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 326, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to enable backlight on %s: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nv50_backlight_init._entry_ptr.13 = internal global ptr @nv50_backlight_init._entry.11, section ".printk_index", align 4
@nv50_edp_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @nv50_edp_set_brightness, ptr @nv50_edp_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@nv50_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @nv50_set_intensity, ptr @nv50_get_intensity, ptr null }, [16 x i8] zeroinitializer }, align 32
@nva3_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @nva3_set_intensity, ptr @nva3_get_intensity, ptr null }, [16 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv_backlight%d\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv_backlight\00", [19 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 8, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 364, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 409, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"bl_ida\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 42, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"nv40_bl_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 315, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 325, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"nv50_edp_bl_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 233, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"nv50_bl_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 140, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"nva3_bl_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 278, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 53, i32 42 }
@___asan_gen_.79 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/nouveau_backlight.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 55, i32 42 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 378, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nouveau_backlight_init._entry, ptr @nouveau_backlight_init._entry.5, ptr @nouveau_backlight_init._entry_ptr, ptr @nouveau_backlight_init._entry_ptr.8, ptr @nv50_backlight_init._entry, ptr @nv50_backlight_init._entry.11, ptr @nv50_backlight_init._entry_ptr, ptr @nv50_backlight_init._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @bl_ida, ptr @nv40_bl_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @nv50_edp_bl_ops, ptr @nv50_bl_ops, ptr @nva3_bl_ops, ptr @.str.14, ptr @.str.15, ptr @xa_init_flags.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_backlight_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_backlight_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_backlight_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_backlight_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_edp_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nva3_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_backlight_init(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  %current_level.i = alloca i16, align 2
  %edp_dpcd.i = alloca [3 x i8], align 1
  %current_mode.i = alloca i8, align 1
  %backlight_name = alloca [15 x i8], align 1
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %backlight_name) #7
  %4 = call ptr @memset(ptr %backlight_name, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #7
  %5 = call ptr @memset(ptr %props, i32 0, i32 28)
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %6 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connector_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 7, label %entry.if.end23_crit_edge
    i32 14, label %if.then19
  ]

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %entry.if.end23_crit_edge
  %.sink = phi i32 [ 6, %if.then19 ], [ 3, %entry.if.end23_crit_edge ]
  %call20 = tail call ptr @find_encoder(ptr noundef %connector, i32 noundef %.sink) #7
  %tobool24.not = icmp eq ptr %call20, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 16) #10
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %11, label %if.end30.fail_alloc_crit_edge [
    i8 5, label %sw.bb
    i8 6, label %if.end30.sw.bb32_crit_edge
    i8 7, label %if.end30.sw.bb32_crit_edge163
    i8 8, label %if.end30.sw.bb32_crit_edge164
    i8 9, label %if.end30.sw.bb32_crit_edge165
    i8 10, label %if.end30.sw.bb32_crit_edge166
    i8 11, label %if.end30.sw.bb32_crit_edge167
    i8 12, label %if.end30.sw.bb32_crit_edge168
    i8 13, label %if.end30.sw.bb32_crit_edge169
  ]

if.end30.sw.bb32_crit_edge169:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge168:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge167:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge166:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge165:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge164:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge163:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.sw.bb32_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

if.end30.fail_alloc_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alloc

sw.bb:                                            ; preds = %if.end30
  %13 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call20, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !49

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %18, i32 5616
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %device2.i = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3
  %call9.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i, i32 noundef 4, i64 noundef 5616) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %19, %if.then.i ], [ %call9.i, %if.else.i ]
  %and.i = and i32 %_data.0.i, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.then36.thread_crit_edge, label %if.end13.i

if.end.i.if.then36.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.thread

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %type.i = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %21 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 31, ptr %max_brightness.i, align 4
  br label %if.end41

sw.bb32:                                          ; preds = %if.end30.sw.bb32_crit_edge, %if.end30.sw.bb32_crit_edge163, %if.end30.sw.bb32_crit_edge164, %if.end30.sw.bb32_crit_edge165, %if.end30.sw.bb32_crit_edge166, %if.end30.sw.bb32_crit_edge167, %if.end30.sw.bb32_crit_edge168, %if.end30.sw.bb32_crit_edge169
  %22 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call20, align 4
  %dev_private.i.i126 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev_private.i.i126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i126, align 4
  %map.i127 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %map.i127 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i127, align 8
  %tobool.not.i128 = icmp eq ptr %27, null
  br i1 %tobool.not.i128, label %if.else.i132, label %if.then.i130, !prof !49

if.then.i130:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call20, i32 0, i32 1
  %28 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcb.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %or.i, align 1
  %32 = tail call i8 @llvm.cttz.i8(i8 %31, i1 true) #7, !range !52
  %33 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %iszero.i = icmp eq i8 %31, 0
  %.op151.i = shl nuw nsw i32 %33, 11
  %.op151.op.i = or i32 %.op151.i, 6406276
  %add.i = select i1 %iszero.i, i32 6404228, i32 %.op151.op.i
  %add.ptr.i129 = getelementptr i8, ptr %27, i32 %add.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  br label %if.end.i134

if.else.i132:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %device2.i131 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %dcb9.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call20, i32 0, i32 1
  %35 = ptrtoint ptr %dcb9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dcb9.i, align 4
  %or10.i = getelementptr inbounds %struct.dcb_output, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %or10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %or10.i, align 1
  %39 = tail call i8 @llvm.cttz.i8(i8 %38, i1 true) #7, !range !52
  %40 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %iszero12.i = icmp eq i8 %38, 0
  %.op.i = shl nuw nsw i32 %40, 11
  %.op.op.i = or i32 %.op.i, 6406276
  %41 = zext i32 %.op.op.i to i64
  %conv17.i = select i1 %iszero12.i, i64 6404228, i64 %41
  %call18.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i131, i32 noundef 4, i64 noundef %conv17.i) #7
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.else.i132, %if.then.i130
  %_data.0.i133 = phi i32 [ %34, %if.then.i130 ], [ %call18.i, %if.else.i132 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_data.0.i133)
  %tobool20.not.i = icmp eq i32 %_data.0.i133, 0
  br i1 %tobool20.not.i, label %if.end.i134.if.then36.thread_crit_edge, label %if.end22.i

if.end.i134.if.then36.thread_crit_edge:           ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.thread

if.end22.i:                                       ; preds = %if.end.i134
  %type.i135 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %42 = ptrtoint ptr %type.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %43)
  %cmp.i = icmp eq i32 %43, 71
  br i1 %cmp.i, label %if.then24.i, label %if.end22.i.if.end93.i_crit_edge

if.end22.i.if.end93.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %current_level.i) #7
  %44 = ptrtoint ptr %current_level.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %current_level.i, align 2, !annotation !54
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %edp_dpcd.i) #7
  %45 = ptrtoint ptr %edp_dpcd.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %edp_dpcd.i, align 1, !annotation !54
  %46 = getelementptr inbounds [3 x i8], ptr %edp_dpcd.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %46, align 1, !annotation !54
  %48 = getelementptr inbounds [3 x i8], ptr %edp_dpcd.i, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %48, align 1, !annotation !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_mode.i) #7
  %50 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %current_mode.i, align 1, !annotation !54
  %aux.i = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  %call25.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 1792, ptr noundef nonnull %edp_dpcd.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then24.i.if.then36_crit_edge, label %if.end29.i

if.then24.i.if.then36_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end29.i:                                       ; preds = %if.then24.i
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %46, align 1
  %53 = and i8 %52, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %53)
  %.not = icmp eq i8 %53, 5
  br i1 %.not, label %land.lhs.true35.i, label %if.end29.i.cleanup.i_crit_edge

if.end29.i.cleanup.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

land.lhs.true35.i:                                ; preds = %if.end29.i
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %48, align 1
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool39.not.i = icmp eq i8 %56, 0
  br i1 %tobool39.not.i, label %land.lhs.true35.i.cleanup.i_crit_edge, label %do.body.i

land.lhs.true35.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.body.i:                                        ; preds = %land.lhs.true35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %57 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i153.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i153.not.i, label %do.body.i.do.end56.i_crit_edge, label %do.body43.i

do.body.i.do.end56.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

do.body43.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %drm46.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %drm46.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drm46.i, align 8
  %dev47.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev47.i, align 8
  %dev48.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev48.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 12
  %name51.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %64 = ptrtoint ptr %name51.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name51.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.9, ptr noundef %name.i, ptr noundef %65) #11
  br label %do.end56.i

do.end56.i:                                       ; preds = %do.body43.i, %do.body.i.do.end56.i_crit_edge
  %edp_info.i = getelementptr inbounds %struct.nouveau_backlight, ptr %call7.i.i, i32 0, i32 1
  %call59.i = call i32 @drm_edp_backlight_init(ptr noundef %aux.i, ptr noundef %edp_info.i, i16 noundef zeroext 0, ptr noundef nonnull %edp_dpcd.i, ptr noundef nonnull %current_level.i, ptr noundef nonnull %current_mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %do.end56.i.if.then36_crit_edge, label %if.end63.i

do.end56.i.if.then36_crit_edge:                   ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end63.i:                                       ; preds = %do.end56.i
  %66 = ptrtoint ptr %current_level.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %current_level.i, align 2
  %call66.i = call i32 @drm_edp_backlight_enable(ptr noundef %aux.i, ptr noundef %edp_info.i, i16 noundef zeroext %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %do.body70.i, label %sw.epilog

do.body70.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %drm76.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %drm76.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %drm76.i, align 8
  %dev77.i = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev77.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev77.i, align 8
  %dev78.i = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev78.i, align 4
  %name79.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 12
  %name82.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %74 = ptrtoint ptr %name82.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name82.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.12, ptr noundef %name79.i, ptr noundef %75, i32 noundef %call66.i) #11
  br label %if.then36

cleanup.i:                                        ; preds = %land.lhs.true35.i.cleanup.i_crit_edge, %if.end29.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %edp_dpcd.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %current_level.i) #7
  br label %if.end93.i

if.end93.i:                                       ; preds = %cleanup.i, %if.end22.i.if.end93.i_crit_edge
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 1, i32 2
  %76 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 161, i16 %77)
  %cmp97.i = icmp ult i16 %77, 161
  call void @__sanitizer_cov_trace_const_cmp2(i16 170, i16 %77)
  %cmp104.i = icmp eq i16 %77, 170
  %or.cond.i = or i1 %cmp97.i, %cmp104.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 172, i16 %77)
  %cmp112.i = icmp eq i16 %77, 172
  %or.cond152.i = or i1 %cmp112.i, %or.cond.i
  %storemerge.i = select i1 %or.cond152.i, ptr @nv50_bl_ops, ptr @nva3_bl_ops
  %type117.i = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %78 = ptrtoint ptr %type117.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %type117.i, align 4
  %max_brightness118.i = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %79 = ptrtoint ptr %max_brightness118.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 100, ptr %max_brightness118.i, align 4
  br label %if.end41

sw.epilog:                                        ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %current_level.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %current_level.i, align 2
  %conv86.i = zext i16 %81 to i32
  %82 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv86.i, ptr %props, align 4
  %max.i = getelementptr inbounds %struct.nouveau_backlight, ptr %call7.i.i, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %max.i, align 2
  %conv88.i = zext i16 %84 to i32
  %max_brightness.i136 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %85 = ptrtoint ptr %max_brightness.i136 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv88.i, ptr %max_brightness.i136, align 4
  %uses_dpcd.i = getelementptr inbounds %struct.nouveau_backlight, ptr %call7.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %uses_dpcd.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i = load i8, ptr %uses_dpcd.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uses_dpcd.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %edp_dpcd.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %current_level.i) #7
  br label %if.end41

if.then36:                                        ; preds = %do.body70.i, %do.end56.i.if.then36_crit_edge, %if.then24.i.if.then36_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %call66.i, %do.body70.i ], [ %call25.i, %if.then24.i.if.then36_crit_edge ], [ %call59.i, %do.end56.i.if.then36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %edp_dpcd.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %current_level.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.ph.i.ph)
  %cmp37 = icmp eq i32 %retval.0.ph.i.ph, -19
  br i1 %cmp37, label %if.then36.if.then36.thread_crit_edge, label %if.then36.fail_alloc_crit_edge

if.then36.fail_alloc_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alloc

if.then36.if.then36.thread_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.thread

if.then36.thread:                                 ; preds = %if.then36.if.then36.thread_crit_edge, %if.end.i134.if.then36.thread_crit_edge, %if.end.i.if.then36.thread_crit_edge
  br label %fail_alloc

if.end41:                                         ; preds = %sw.epilog, %if.end93.i, %if.end13.i
  %ops.3149 = phi ptr [ @nv50_edp_bl_ops, %sw.epilog ], [ %storemerge.i, %if.end93.i ], [ @nv40_bl_ops, %if.end13.i ]
  %call.i = call i32 @ida_alloc_range(ptr noundef nonnull @bl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call.i)
  %87 = icmp ugt i32 %call.i, 99
  br i1 %87, label %do.body45, label %if.end.i137

if.end.i137:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.else.i138, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %backlight_name, i32 noundef 15, ptr noundef nonnull @.str.14, i32 noundef %call.i) #7
  br label %if.end58

if.else.i138:                                     ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  %88 = call ptr @memcpy(ptr %backlight_name, ptr @.str.15, i32 13)
  br label %if.end58

do.body45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %drm51 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %drm51 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %drm51, align 8
  %dev52 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev52, align 8
  %dev53 = getelementptr inbounds %struct.drm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev53, align 4
  %name54 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.6, ptr noundef %name54) #11
  br label %fail_alloc

if.end58:                                         ; preds = %if.else.i138, %if.then3.i
  %id.i = getelementptr inbounds %struct.nouveau_backlight, ptr %call7.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call.i, ptr %id.i, align 4
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 1
  %96 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %kdev, align 4
  %call60 = call ptr @backlight_device_register(ptr noundef nonnull %backlight_name, ptr noundef %97, ptr noundef nonnull %call20, ptr noundef nonnull %ops.3149, ptr noundef nonnull %props) #7
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call60, ptr %call7.i.i, align 8
  %cmp.i140 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then64, label %if.end72

if.then64:                                        ; preds = %if.end58
  %99 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp65 = icmp sgt i32 %100, -1
  br i1 %cmp65, label %if.then67, label %if.then64.if.end69_crit_edge

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  call void @ida_free(ptr noundef nonnull @bl_ida, i32 noundef %100) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then64.if.end69_crit_edge
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  %103 = ptrtoint ptr %102 to i32
  br label %fail_alloc

if.end72:                                         ; preds = %if.end58
  %backlight = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 11
  %104 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i, ptr %backlight, align 4
  %105 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool76.not = icmp eq i32 %106, 0
  br i1 %tobool76.not, label %if.then77, label %if.end72.if.end85_crit_edge

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %ops79 = getelementptr inbounds %struct.backlight_device, ptr %call60, i32 0, i32 3
  %107 = ptrtoint ptr %ops79 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops79, align 4
  %get_brightness = getelementptr inbounds %struct.backlight_ops, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %get_brightness to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %get_brightness, align 4
  %call81 = call i32 %110(ptr noundef %call60) #7
  %111 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call7.i.i, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call81, ptr %112, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %if.end72.if.end85_crit_edge
  %114 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call7.i.i, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %115, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops.i, align 4
  %tobool.not.i141 = icmp eq ptr %117, null
  br i1 %tobool.not.i141, label %if.end85.backlight_update_status.exit_crit_edge, label %land.lhs.true.i142

if.end85.backlight_update_status.exit_crit_edge:  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

land.lhs.true.i142:                               ; preds = %if.end85
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %119, null
  br i1 %tobool2.not.i, label %land.lhs.true.i142.backlight_update_status.exit_crit_edge, label %if.then.i144

land.lhs.true.i142.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

if.then.i144:                                     ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #9
  %call.i143 = call i32 %119(ptr noundef %115) #7
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i144, %land.lhs.true.i142.backlight_update_status.exit_crit_edge, %if.end85.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %cleanup

fail_alloc:                                       ; preds = %if.end69, %do.body45, %if.then36.thread, %if.then36.fail_alloc_crit_edge, %if.end30.fail_alloc_crit_edge
  %ret.1 = phi i32 [ %103, %if.end69 ], [ 0, %do.body45 ], [ 0, %if.end30.fail_alloc_crit_edge ], [ 0, %if.then36.thread ], [ %retval.0.ph.i.ph, %if.then36.fail_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_alloc, %backlight_update_status.exit, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %fail_alloc ], [ 0, %backlight_update_status.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %backlight_name) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_backlight_fini(ptr nocapture noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backlight = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 11
  %0 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlight, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.nouveau_backlight, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ida_free(ptr noundef nonnull @bl_ida, i32 noundef %3) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @backlight_device_unregister(ptr noundef %5) #7
  %6 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %backlight, align 4
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_backlight_ctor() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @bl_ida, ptr noundef nonnull @.str.16, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  store i32 67108869, ptr getelementptr inbounds (%struct.ida, ptr @bl_ida, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.ida, ptr @bl_ida, i32 0, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_backlight_dtor() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_destroy(ptr noundef nonnull @bl_ida) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_set_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd, align 8
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %9, i32 5616
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef 5616) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %10, %if.then ], [ %call10, %if.else ]
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.else26, label %do.body, !prof !49

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %7, 16
  %and = and i32 %_data.0, -2031617
  %or = or i32 %and, %shl
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %add.ptr25 = getelementptr i8, ptr %14, i32 5616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or) #7, !srcloc !57
  br label %if.end30

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl27 = shl i32 %7, 16
  %and28 = and i32 %_data.0, -2031617
  %or29 = or i32 %and28, %shl27
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 5616, i32 noundef %or29) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_get_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %7, i32 5616
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %call10 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef 5616) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %8, %if.then ], [ %call10, %if.else ]
  %and = lshr i32 %_data.0, 16
  %shr = and i32 %and, 31
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_init(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_enable(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_edp_set_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %aux4 = getelementptr inbounds %struct.nouveau_connector, ptr %3, i32 0, i32 5
  %backlight = getelementptr inbounds %struct.nouveau_connector, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlight, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #7
  %8 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #7
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  br label %retry

retry:                                            ; preds = %deadlock, %entry
  %call5 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call5)
  %cmp = icmp eq i32 %call5, -35
  br i1 %cmp, label %retry.deadlock_crit_edge, label %if.else

retry.deadlock_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.else:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.else.out_crit_edge, label %if.end8

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.else
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  %crtc9 = getelementptr inbounds %struct.drm_connector_state, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %crtc9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc9, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end8
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 4
  %call12 = call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call12)
  %cmp13 = icmp eq i32 %call12, -35
  br i1 %cmp13, label %if.end11.deadlock_crit_edge, label %if.else15

if.end11.deadlock_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.else15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp16 = icmp slt i32 %call12, 0
  br i1 %cmp16, label %if.else15.out_crit_edge, label %if.end19

if.else15.out_crit_edge:                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.else15
  %state20 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state20, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %if.end19.out_crit_edge, label %if.then22

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %edp_info = getelementptr inbounds %struct.nouveau_backlight, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bd, align 8
  %conv = trunc i32 %18 to i16
  %call23 = call i32 @drm_edp_backlight_set_level(ptr noundef %aux4, ptr noundef %edp_info, i16 noundef zeroext %conv) #7
  br label %out

out:                                              ; preds = %if.then22, %if.end19.out_crit_edge, %if.else15.out_crit_edge, %if.end8.out_crit_edge, %if.else.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.else15.out_crit_edge ], [ %call23, %if.then22 ], [ %call12, %if.end19.out_crit_edge ], [ %call5, %if.else.out_crit_edge ], [ %call5, %if.end8.out_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #7
  ret i32 %ret.0

deadlock:                                         ; preds = %if.end11.deadlock_crit_edge, %retry.deadlock_crit_edge
  %call25 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #7
  br label %retry
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_edp_get_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #7
  %6 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #7
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  br label %retry

retry:                                            ; preds = %deadlock, %entry
  %call3 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call3)
  %cmp = icmp eq i32 %call3, -35
  br i1 %cmp, label %retry.deadlock_crit_edge, label %if.else

retry.deadlock_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.else:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.else.out_crit_edge, label %if.end6

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.else
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %crtc7 = getelementptr inbounds %struct.drm_connector_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc7, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end6
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 4
  %call10 = call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -35
  br i1 %cmp11, label %if.end9.deadlock_crit_edge, label %if.else13

if.end9.deadlock_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.else13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp14 = icmp slt i32 %call10, 0
  br i1 %cmp14, label %if.else13.out_crit_edge, label %if.end17

if.else13.out_crit_edge:                          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.else13
  %state18 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state18, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bd, align 8
  br label %out

out:                                              ; preds = %if.end21, %if.end17.out_crit_edge, %if.else13.out_crit_edge, %if.end6.out_crit_edge, %if.else.out_crit_edge
  %ret.0 = phi i32 [ %call10, %if.else13.out_crit_edge ], [ %16, %if.end21 ], [ %call10, %if.end17.out_crit_edge ], [ %call3, %if.else.out_crit_edge ], [ %call3, %if.end6.out_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #7
  ret i32 %ret.0

deadlock:                                         ; preds = %if.end9.deadlock_crit_edge, %retry.deadlock_crit_edge
  %call22 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #7
  br label %retry
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_set_level(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_set_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %or4 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %or4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or4, align 1
  %10 = tail call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !52
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %iszero = icmp eq i8 %9, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %12 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd, align 8
  %mul = mul i32 %13, 1025
  %div5 = udiv i32 %mul, 100
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !49

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %or8 = or i32 %div5, -2147483648
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %mul11 = shl nsw i32 %sub, 11
  %add = add nsw i32 %mul11, 6406276
  %add.ptr = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or8) #7, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %mul12 = shl nsw i32 %sub, 11
  %add13 = add nsw i32 %mul12, 6406276
  %conv14 = sext i32 %add13 to i64
  %or15 = or i32 %div5, -2147483648
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef %conv14, i32 noundef %or15) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_get_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %or4 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %or4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or4, align 1
  %10 = tail call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !52
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %iszero = icmp eq i8 %9, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nsw i32 %sub, 11
  %add = add nsw i32 %mul, 6406276
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %mul11 = shl nsw i32 %sub, 11
  %add12 = add nsw i32 %mul11, 6406276
  %conv13 = sext i32 %add12 to i64
  %call14 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef %conv13) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %14, %if.then ], [ %call14, %if.else ]
  %and = and i32 %_data.0, 2047
  %mul16 = mul nuw nsw i32 %and, 100
  %add18 = add nuw nsw i32 %mul16, 512
  %div19 = udiv i32 %add18, 1025
  ret i32 %div19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nva3_set_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %or4 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %or4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or4, align 1
  %10 = tail call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !52
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %iszero = icmp eq i8 %9, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %13, null
  %mul11 = shl nsw i32 %sub, 11
  %add12 = add nsw i32 %mul11, 6406272
  br i1 %tobool.not, label %if.else, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %13, i32 %add12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = sext i32 %add12 to i64
  %call14 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef %conv13) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %14, %if.then ], [ %call14, %if.else ]
  %15 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bd, align 8
  %mul16 = mul i32 %16, %_data.0
  %div17 = udiv i32 %mul16, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_data.0)
  %tobool18.not = icmp eq i32 %_data.0, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %if.else38, label %do.body, !prof !49

do.body:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %or32 = or i32 %div17, -1073741824
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %mul35 = shl nsw i32 %sub, 11
  %add36 = add nsw i32 %mul35, 6406276
  %add.ptr37 = getelementptr i8, ptr %20, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %or32) #7, !srcloc !57
  br label %cleanup

if.else38:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %mul39 = shl nsw i32 %sub, 11
  %add40 = add nsw i32 %mul39, 6406276
  %conv41 = sext i32 %add40 to i64
  %or43 = or i32 %div17, -1073741824
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef %conv41, i32 noundef %or43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %do.body, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else38 ], [ 0, %do.body ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nva3_get_intensity(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %or4 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %or4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or4, align 1
  %10 = tail call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !52
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %iszero = icmp eq i8 %9, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %13, null
  %mul11 = shl nsw i32 %sub, 11
  %add12 = add nsw i32 %mul11, 6406272
  br i1 %tobool.not, label %if.else, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %13, i32 %add12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = sext i32 %add12 to i64
  %call14 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef %conv13) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %14, %if.then ], [ %call14, %if.else ]
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 8
  %tobool21.not = icmp eq ptr %16, null
  %mul38 = shl nsw i32 %sub, 11
  %add39 = add nsw i32 %mul38, 6406276
  br i1 %tobool21.not, label %if.else37, label %if.then28, !prof !49

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr34 = getelementptr i8, ptr %16, i32 %add39
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %if.end42

if.else37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv40 = sext i32 %add39 to i64
  %call41 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef %conv40) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then28
  %_data18.0 = phi i32 [ %17, %if.then28 ], [ %call41, %if.else37 ]
  %and = and i32 %_data18.0, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_data.0)
  %tobool44.not = icmp eq i32 %_data.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %_data.0, i32 %and)
  %cmp.not = icmp ult i32 %_data.0, %and
  %or.cond = select i1 %tobool44.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end42.cleanup_crit_edge, label %if.then46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %mul47 = mul nuw nsw i32 %and, 100
  %div4872 = lshr i32 %_data.0, 1
  %add49 = add nuw i32 %mul47, %div4872
  %div50 = udiv i32 %add49, %_data.0
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ %div50, %if.then46 ], [ 100, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !{null, !1, !"__print_once", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 364, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nouveau_backlight_init._entry, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @nouveau_backlight_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 409, i32 3}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nouveau_backlight_init._entry.5, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @nouveau_backlight_init._entry_ptr.8, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @bl_ida, !15, !"bl_ida", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 42, i32 19}
!16 = !{ptr @nv40_bl_ops, !17, !"nv40_bl_ops", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 87, i32 35}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 315, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nv50_backlight_init._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @nv50_backlight_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 325, i32 5}
!25 = !{ptr @nv50_backlight_init._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nv50_backlight_init._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @nv50_edp_bl_ops, !28, !"nv50_edp_bl_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 233, i32 35}
!29 = !{ptr @nv50_bl_ops, !30, !"nv50_bl_ops", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 140, i32 35}
!31 = !{ptr @nva3_bl_ops, !32, !"nva3_bl_ops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 278, i32 35}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 53, i32 42}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nouveau_backlight.c", i32 55, i32 42}
!37 = !{ptr @xa_init_flags.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 5993761}
!51 = !{i64 2157831430}
!52 = !{i8 0, i8 9}
!53 = !{i64 2157840491}
!54 = !{!"auto-init"}
!55 = !{i64 2157829136}
!56 = !{i64 2157830195}
!57 = !{i64 5993343}
!58 = !{i64 2157828004}
!59 = !{i8 0, i8 2}
!60 = !{i64 2157833842}
!61 = !{i64 2157832716}
!62 = !{i64 2157837739}
!63 = !{i64 2157838880}
!64 = !{i64 2157835221}
!65 = !{i64 2157836456}
