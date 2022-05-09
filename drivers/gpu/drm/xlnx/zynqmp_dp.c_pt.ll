; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/xlnx/zynqmp_dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/xlnx/zynqmp_dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zynqmp_dp = type { %struct.drm_encoder, %struct.drm_connector, ptr, ptr, ptr, ptr, ptr, i32, %struct.zynqmp_dp_config, %struct.drm_dp_aux, [2 x ptr], i8, %struct.delayed_work, i32, i8, [15 x i8], %struct.zynqmp_dp_link_config, %struct.zynqmp_dp_mode, [2 x i8] }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.zynqmp_dp_config = type { i8, i8, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.zynqmp_dp_link_config = type { i32, i8 }
%struct.zynqmp_dp_mode = type { i8, i8, i32, ptr }
%struct.zynqmp_dpsub = type { %struct.drm_device, ptr, ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@__param_str_aux_timeout_ms = internal constant [28 x i8] c"zynqmp_dpsub.aux_timeout_ms\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@zynqmp_dp_aux_timeout_ms = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_aux_timeout_ms = internal constant %struct.kernel_param { ptr @__param_str_aux_timeout_ms, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @zynqmp_dp_aux_timeout_ms } }, section "__param", align 4
@__UNIQUE_ID_aux_timeout_mstype308 = internal constant [42 x i8] c"zynqmp_dpsub.parmtype=aux_timeout_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_aux_timeout_ms309 = internal constant [76 x i8] c"zynqmp_dpsub.parm=aux_timeout_ms:DP aux timeout value in msec (default: 50)\00", section ".modinfo", align 1
@__param_str_power_on_delay_ms = internal constant [31 x i8] c"zynqmp_dpsub.power_on_delay_ms\00", align 1
@zynqmp_dp_power_on_delay_ms = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_power_on_delay_ms = internal constant %struct.kernel_param { ptr @__param_str_power_on_delay_ms, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @zynqmp_dp_power_on_delay_ms } }, section "__param", align 4
@__UNIQUE_ID_power_on_delay_mstype310 = internal constant [45 x i8] c"zynqmp_dpsub.parmtype=power_on_delay_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_power_on_delay_ms311 = internal constant [75 x i8] c"zynqmp_dpsub.parm=power_on_delay_ms:DP power on delay in msec (default: 4)\00", section ".modinfo", align 1
@zynqmp_dp_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_dp_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @zynqmp_dp_encoder_disable, ptr @zynqmp_dp_encoder_enable, ptr @zynqmp_dp_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@zynqmp_dp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @zynqmp_dp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zynqmp_dp_drm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create the DRM connector\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zynqmp_dp_drm_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/xlnx/zynqmp_dp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_dp_drm_init._entry_ptr = internal global ptr @zynqmp_dp_drm_init._entry, section ".printk_index", align 4
@zynqmp_dp_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @zynqmp_dp_connector_get_modes, ptr null, ptr @zynqmp_dp_connector_mode_valid, ptr null, ptr @zynqmp_dp_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@zynqmp_dp_drm_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize DP aux\0A\00", [35 x i8] zeroinitializer }, align 32
@zynqmp_dp_drm_init._entry_ptr.7 = internal global ptr @zynqmp_dp_drm_init._entry.5, section ".printk_index", align 4
@zynqmp_dp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&dp->hpd_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@zynqmp_dp_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&dp->hpd_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dp\00", [29 x i8] zeroinitializer }, align 32
@zynqmp_dp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynqmp_dp_probe\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_dp_probe._entry_ptr = internal global ptr @zynqmp_dp_probe._entry, section ".printk_index", align 4
@zynqmp_dp_probe.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zynqmp_dpsub\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ZynqMP DisplayPort Tx probed with %u lanes\0A\00", [52 x i8] zeroinitializer }, align 32
@zynqmp_dp_set_format.display = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zynqmp_dp_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid colormetry in DT\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zynqmp_dp_set_format\00", [43 x i8] zeroinitializer }, align 32
@zynqmp_dp_set_format._entry_ptr = internal global ptr @zynqmp_dp_set_format._entry, section ".printk_index", align 4
@zynqmp_dp_set_format._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1151, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"downgrading requested %ubpc to display limit %ubpc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zynqmp_dp_set_format._entry_ptr.21 = internal global ptr @zynqmp_dp_set_format._entry.18, section ".printk_index", align 4
@zynqmp_dp_set_format._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 1175, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Not supported bpc (%u). fall back to 8bpc\0A\00", [53 x i8] zeroinitializer }, align 32
@zynqmp_dp_set_format._entry_ptr.24 = internal global ptr @zynqmp_dp_set_format._entry.22, section ".printk_index", align 4
@zynqmp_dp_encoder_atomic_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"the mode, %s,has too high pixel rate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"zynqmp_dp_encoder_atomic_mode_set\00", [62 x i8] zeroinitializer }, align 32
@zynqmp_dp_encoder_atomic_mode_set._entry_ptr = internal global ptr @zynqmp_dp_encoder_atomic_mode_set._entry, section ".printk_index", align 4
@zynqmp_dp_mode_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can't downshift. already lowest link rate\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynqmp_dp_mode_configure\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_dp_mode_configure._entry_ptr = internal global ptr @zynqmp_dp_mode_configure._entry, section ".printk_index", align 4
@zynqmp_dp_mode_configure._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 601, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to configure link values\0A\00", [63 x i8] zeroinitializer }, align 32
@zynqmp_dp_mode_configure._entry_ptr.31 = internal global ptr @zynqmp_dp_mode_configure._entry.29, section ".printk_index", align 4
@zynqmp_dp_encoder_mode_set_stream.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"zynqmp_dp_encoder_mode_set_stream\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Audio rate: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_dp_encoder_enable.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynqmp_dp_encoder_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DP aux failed\0A\00", [17 x i8] zeroinitializer }, align 32
@zynqmp_dp_train_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to train the DP link\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zynqmp_dp_train_loop\00", [43 x i8] zeroinitializer }, align 32
@zynqmp_dp_train_loop._entry_ptr = internal global ptr @zynqmp_dp_train_loop._entry, section ".printk_index", align 4
@zynqmp_dp_train._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set lane count\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynqmp_dp_train\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_dp_train._entry_ptr = internal global ptr @zynqmp_dp_train._entry, section ".printk_index", align 4
@zynqmp_dp_train._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 833, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set ANSI 8B/10B encoding\0A\00", [60 x i8] zeroinitializer }, align 32
@zynqmp_dp_train._entry_ptr.42 = internal global ptr @zynqmp_dp_train._entry.40, section ".printk_index", align 4
@zynqmp_dp_train._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DP bandwidth\0A\00", [36 x i8] zeroinitializer }, align 32
@zynqmp_dp_train._entry_ptr.45 = internal global ptr @zynqmp_dp_train._entry.43, section ".printk_index", align 4
@zynqmp_dp_train._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to disable training pattern\0A\00", [60 x i8] zeroinitializer }, align 32
@zynqmp_dp_train._entry_ptr.48 = internal global ptr @zynqmp_dp_train._entry.46, section ".printk_index", align 4
@zynqmp_dp_phy_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 520, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY isn't ready\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zynqmp_dp_phy_ready\00", [44 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_ready._entry_ptr = internal global ptr @zynqmp_dp_phy_ready._entry, section ".printk_index", align 4
@zynqmp_dp_encoder_atomic_check.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zynqmp_dp_encoder_atomic_check\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hbackporch adjusted: %d to %d\00", [34 x i8] zeroinitializer }, align 32
@zynqmp_dp_connector_detect.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"zynqmp_dp_connector_detect\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DPCD read failed\00", [47 x i8] zeroinitializer }, align 32
@zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zynqmp_dp_connector_mode_valid\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"filtered the mode, %s,for high pixel rate\0A\00", [53 x i8] zeroinitializer }, align 32
@zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@zynqmp_dp_aux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1056, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aclk frequency too high\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zynqmp_dp_aux_init\00", [45 x i8] zeroinitializer }, align 32
@zynqmp_dp_aux_init._entry_ptr = internal global ptr @zynqmp_dp_aux_init._entry, section ".printk_index", align 4
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ZynqMP DP AUX\00", [18 x i8] zeroinitializer }, align 32
@zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_dp_aux_transfer\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aux %d retries\0A\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no connected aux device\0A\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to do aux transfer (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zynqmp_dp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset %s timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynqmp_dp_reset\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_dp_reset._entry_ptr = internal global ptr @zynqmp_dp_reset._entry, section ".printk_index", align 4
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assert\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deassert\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dp-phy%d\00", [23 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zynqmp_dp_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_probe._entry_ptr = internal global ptr @zynqmp_dp_phy_probe._entry, section ".printk_index", align 4
@zynqmp_dp_phy_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get PHY lane %u\0A\00", [37 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_probe._entry_ptr.73 = internal global ptr @zynqmp_dp_phy_probe._entry.71, section ".printk_index", align 4
@zynqmp_dp_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init phy lane %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zynqmp_dp_phy_init\00", [45 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_init._entry_ptr = internal global ptr @zynqmp_dp_phy_init._entry, section ".printk_index", align 4
@zynqmp_dp_phy_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power on phy lane %d\0A\00", [32 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_init._entry_ptr.78 = internal global ptr @zynqmp_dp_phy_init._entry.76, section ".printk_index", align 4
@zynqmp_dp_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@zynqmp_dp_irq_handler.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynqmp_dp_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"underflow interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@zynqmp_dp_irq_handler._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@zynqmp_dp_irq_handler.descriptor.83 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.80, ptr @.str.2, ptr @.str.84, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"overflow interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@zynqmp_dp_phy_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power off phy(%d) %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zynqmp_dp_phy_exit\00", [45 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_exit._entry_ptr = internal global ptr @zynqmp_dp_phy_exit._entry, section ".printk_index", align 4
@zynqmp_dp_phy_exit._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to exit phy(%d) %d\0A\00", [37 x i8] zeroinitializer }, align 32
@zynqmp_dp_phy_exit._entry_ptr.89 = internal global ptr @zynqmp_dp_phy_exit._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 8, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 10, i64 20]
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"zynqmp_dp_aux_timeout_ms\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 38, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"zynqmp_dp_power_on_delay_ms\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 45, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"zynqmp_dp_encoder_helper_funcs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1510, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"zynqmp_dp_connector_funcs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1382, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1621, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [33 x i8] c"zynqmp_dp_connector_helper_funcs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1392, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1632, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1658, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1663, i32 59 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1675, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1712, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1114, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1143, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1149, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1174, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1467, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 579, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 601, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1264, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1426, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 915, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 826, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 833, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 839, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 875, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 520, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1499, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1309, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1364, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1056, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1064, i32 17 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1016, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1021, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1028, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 379, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 469, i32 40 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 478, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 485, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 400, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 414, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1565, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1567, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 436, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [36 x i8] c"../drivers/gpu/drm/xlnx/zynqmp_dp.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 443, i32 4 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_aux_timeout_ms309, ptr @__UNIQUE_ID_aux_timeout_mstype308, ptr @__UNIQUE_ID_power_on_delay_ms311, ptr @__UNIQUE_ID_power_on_delay_mstype310, ptr @__param_aux_timeout_ms, ptr @__param_power_on_delay_ms, ptr @zynqmp_dp_aux_init._entry, ptr @zynqmp_dp_aux_init._entry_ptr, ptr @zynqmp_dp_drm_init._entry, ptr @zynqmp_dp_drm_init._entry.5, ptr @zynqmp_dp_drm_init._entry_ptr, ptr @zynqmp_dp_drm_init._entry_ptr.7, ptr @zynqmp_dp_encoder_atomic_mode_set._entry, ptr @zynqmp_dp_encoder_atomic_mode_set._entry_ptr, ptr @zynqmp_dp_mode_configure._entry, ptr @zynqmp_dp_mode_configure._entry.29, ptr @zynqmp_dp_mode_configure._entry_ptr, ptr @zynqmp_dp_mode_configure._entry_ptr.31, ptr @zynqmp_dp_phy_exit._entry, ptr @zynqmp_dp_phy_exit._entry.87, ptr @zynqmp_dp_phy_exit._entry_ptr, ptr @zynqmp_dp_phy_exit._entry_ptr.89, ptr @zynqmp_dp_phy_init._entry, ptr @zynqmp_dp_phy_init._entry.76, ptr @zynqmp_dp_phy_init._entry_ptr, ptr @zynqmp_dp_phy_init._entry_ptr.78, ptr @zynqmp_dp_phy_probe._entry, ptr @zynqmp_dp_phy_probe._entry.71, ptr @zynqmp_dp_phy_probe._entry_ptr, ptr @zynqmp_dp_phy_probe._entry_ptr.73, ptr @zynqmp_dp_phy_ready._entry, ptr @zynqmp_dp_phy_ready._entry_ptr, ptr @zynqmp_dp_probe._entry, ptr @zynqmp_dp_probe._entry_ptr, ptr @zynqmp_dp_reset._entry, ptr @zynqmp_dp_reset._entry_ptr, ptr @zynqmp_dp_set_format._entry, ptr @zynqmp_dp_set_format._entry.18, ptr @zynqmp_dp_set_format._entry.22, ptr @zynqmp_dp_set_format._entry_ptr, ptr @zynqmp_dp_set_format._entry_ptr.21, ptr @zynqmp_dp_set_format._entry_ptr.24, ptr @zynqmp_dp_train._entry, ptr @zynqmp_dp_train._entry.40, ptr @zynqmp_dp_train._entry.43, ptr @zynqmp_dp_train._entry.46, ptr @zynqmp_dp_train._entry_ptr, ptr @zynqmp_dp_train._entry_ptr.42, ptr @zynqmp_dp_train._entry_ptr.45, ptr @zynqmp_dp_train._entry_ptr.48, ptr @zynqmp_dp_train_loop._entry, ptr @zynqmp_dp_train_loop._entry_ptr, ptr @zynqmp_dp_aux_timeout_ms, ptr @zynqmp_dp_power_on_delay_ms, ptr @zynqmp_dp_encoder_helper_funcs, ptr @zynqmp_dp_connector_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @zynqmp_dp_connector_helper_funcs, ptr @.str.6, ptr @zynqmp_dp_probe.__key, ptr @.str.8, ptr @zynqmp_dp_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @zynqmp_dp_set_format.display, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @zynqmp_dp_irq_handler._rs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @zynqmp_dp_irq_handler._rs.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_aux_timeout_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_power_on_delay_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_drm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_drm_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_set_format.display to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_set_format._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_set_format._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_encoder_atomic_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_mode_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_mode_configure._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_train_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_train._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_train._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_train._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_train._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_aux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_irq_handler._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_dp_phy_exit._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zynqmp_dp_enable_vblank(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 5
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097152) #7, !srcloc !202
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zynqmp_dp_disable_vblank(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 5
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097152) #7, !srcloc !202
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynqmp_dp_drm_init(ptr nocapture noundef readonly %dpsub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 4
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 4
  %connector3 = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 1
  %config = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 8
  %4 = and i8 %3, -2
  store i8 %4, ptr %config, align 8
  tail call fastcc void @zynqmp_dp_set_format(ptr noundef %1)
  %disp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 3
  %5 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disp, align 4
  %call5 = tail call i32 @zynqmp_disp_get_crtc_mask(ptr noundef %6) #7
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_crtcs, align 4
  %or = or i32 %8, %call5
  store i32 %or, ptr %possible_crtcs, align 4
  %drm = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm, align 8
  %call6 = tail call i32 @drm_simple_encoder_init(ptr noundef %10, ptr noundef %1, i32 noundef 2) #7
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @zynqmp_dp_encoder_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 1, i32 33
  %12 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %polled, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @drm_connector_init(ptr noundef %14, ptr noundef %connector3, ptr noundef nonnull @zynqmp_dp_connector_funcs, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_private.i42 = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 1, i32 35
  %17 = ptrtoint ptr %helper_private.i42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @zynqmp_dp_connector_helper_funcs, ptr %helper_private.i42, align 4
  %call9 = tail call i32 @drm_connector_register(ptr noundef %connector3) #7
  %call10 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector3, ptr noundef %1) #7
  %dpsub.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dpsub.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dpsub.i, align 4
  %apb_clk.i = getelementptr inbounds %struct.zynqmp_dpsub, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %apb_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %21) #7
  %mul.i = shl i32 %call.i, 2
  %sub.i = add i32 %mul.i, 79999999
  %div.i = udiv i32 %sub.i, 80000000
  %mul1.i = shl nuw nsw i32 %div.i, 3
  %mul2.i = mul i32 %call.i, 6
  %div3.i = udiv i32 %mul2.i, 10000000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %div3.i)
  %cmp.i = icmp ugt i32 %mul1.i, %div3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 559999999, i32 %sub.i)
  %cmp4.i = icmp ugt i32 %sub.i, 559999999
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %zynqmp_dp_aux_init.exit.thread, label %zynqmp_dp_aux_init.exit

zynqmp_dp_aux_init.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.57) #10
  br label %do.end16

zynqmp_dp_aux_init.exit:                          ; preds = %if.end
  %shl.i = shl nuw nsw i32 %div.i, 11
  %div5.i = udiv i32 %call.i, 1000000
  %or.i = or i32 %shl.i, %div5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %iomem.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !202
  %aux.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %aux.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.59, ptr %aux.i, align 8
  %dev6.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev6.i, align 8
  %dev8.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %dev8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev8.i, align 8
  %31 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drm, align 8
  %drm_dev.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %drm_dev.i, align 4
  %transfer.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @zynqmp_dp_aux_transfer, ptr %transfer.i, align 8
  %call12.i = tail call i32 @drm_dp_aux_register(ptr noundef %aux.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool12.not = icmp eq i32 %call12.i, 0
  br i1 %tobool12.not, label %if.end18, label %zynqmp_dp_aux_init.exit.do.end16_crit_edge

zynqmp_dp_aux_init.exit.do.end16_crit_edge:       ; preds = %zynqmp_dp_aux_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %zynqmp_dp_aux_init.exit.do.end16_crit_edge, %zynqmp_dp_aux_init.exit.thread
  %retval.0.i45 = phi i32 [ -22, %zynqmp_dp_aux_init.exit.thread ], [ %call12.i, %zynqmp_dp_aux_init.exit.do.end16_crit_edge ]
  %dev17 = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end18:                                         ; preds = %zynqmp_dp_aux_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50396943) #7, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %retval.0.i45, %do.end16 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dp_set_format(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config1, align 1
  %2 = and i8 %1, -15
  store i8 %2, ptr %config1, align 1
  %misc1 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %misc1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %misc1, align 1
  %5 = and i8 %4, 127
  store i8 %5, ptr %misc1, align 1
  %display_info = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 1, i32 20
  store ptr %display_info, ptr @zynqmp_dp_set_format.display, align 4
  %bpc24 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 1, i32 20, i32 2
  %6 = ptrtoint ptr %bpc24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpc24, align 8
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config1, align 1
  %12 = and i8 %11, 31
  br label %sw.bb42

if.end:                                           ; preds = %entry
  %dev30 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  %13 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef %7) #10
  %15 = load ptr, ptr @zynqmp_dp_set_format.display, align 4
  %bpc32 = getelementptr inbounds %struct.drm_display_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bpc32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpc32, align 8
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config1, align 1
  %20 = and i8 %19, 31
  store i8 %20, ptr %config1, align 1
  %21 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end65 [
    i32 6, label %if.end.sw.epilog71_crit_edge
    i32 8, label %if.end.sw.bb42_crit_edge
    i32 10, label %sw.bb47
    i32 12, label %sw.bb52
    i32 16, label %sw.bb57
  ]

if.end.sw.bb42_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42

if.end.sw.epilog71_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71

sw.bb42:                                          ; preds = %if.end.sw.bb42_crit_edge, %if.end.thread
  %22 = phi i8 [ %12, %if.end.thread ], [ %20, %if.end.sw.bb42_crit_edge ]
  %23 = or i8 %22, 32
  br label %sw.epilog71.sink.split

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i8 %20, 64
  br label %sw.epilog71.sink.split

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = or i8 %20, 96
  br label %sw.epilog71.sink.split

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = or i8 %20, -128
  br label %sw.epilog71.sink.split

do.end65:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.23, i32 noundef %17) #10
  %29 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config1, align 1
  %31 = or i8 %30, 32
  br label %sw.epilog71.sink.split

sw.epilog71.sink.split:                           ; preds = %do.end65, %sw.bb57, %sw.bb52, %sw.bb47, %sw.bb42
  %.sink = phi i8 [ %31, %do.end65 ], [ %26, %sw.bb57 ], [ %25, %sw.bb52 ], [ %24, %sw.bb47 ], [ %23, %sw.bb42 ]
  %bpc.addr.1.ph = phi i8 [ 24, %do.end65 ], [ 48, %sw.bb57 ], [ 36, %sw.bb52 ], [ 30, %sw.bb47 ], [ 24, %sw.bb42 ]
  %32 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %config1, align 1
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.epilog71.sink.split, %if.end.sw.epilog71_crit_edge
  %bpc.addr.1 = phi i8 [ 18, %if.end.sw.epilog71_crit_edge ], [ %bpc.addr.1.ph, %sw.epilog71.sink.split ]
  %bpp = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %bpp to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bpc.addr.1, ptr %bpp, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_disp_get_crtc_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynqmp_dp_probe(ptr noundef %dpsub, ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %phy_name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %drm, i32 noundef 3040, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dev2, align 8
  %dpsub3 = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dpsub3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dpsub, ptr %dpsub3, align 4
  %status = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %status, align 8
  %drm4 = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %drm4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %drm, ptr %drm4, align 8
  %hpd_work = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #7
  %6 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %hpd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @zynqmp_dp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry12 = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %7 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @zynqmp_dp_hpd_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @zynqmp_dp_probe.__key.9) #7
  %dp21 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 4
  %10 = ptrtoint ptr %dp21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %dp21, align 4
  %call22 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.11) #7
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 8
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %12, ptr noundef %call22) #7
  %iomem = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %iomem, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call31 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call31, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 8
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %17, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %reset, align 8
  %cmp.i142 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then40, label %if.end54

if.then40:                                        ; preds = %if.end35
  %cmp43.not = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp43.not, label %if.then40.if.end51_crit_edge, label %do.end47

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i.i to i32
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %19) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %if.then40.if.end51_crit_edge
  %22 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end35
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %25
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub35.i = add i32 %add.neg.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35.i)
  %cmp36.i = icmp slt i32 %sub35.i, 0
  br i1 %cmp36.i, label %if.end54.while.body.i_crit_edge, label %if.end54.zynqmp_dp_reset.exit.thread_crit_edge

if.end54.zynqmp_dp_reset.exit.thread_crit_edge:   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_reset.exit.thread

if.end54.while.body.i_crit_edge:                  ; preds = %if.end54
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end54.while.body.i_crit_edge
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset, align 8
  %call5.i = tail call i32 @reset_control_status(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.i, label %if.end58, label %do.end.i

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %29, %add.neg.i
  %cmp.i143 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i143, label %do.end.i.while.body.i_crit_edge, label %do.end.i.zynqmp_dp_reset.exit.thread_crit_edge

do.end.i.zynqmp_dp_reset.exit.thread_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_reset.exit.thread

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

zynqmp_dp_reset.exit.thread:                      ; preds = %do.end.i.zynqmp_dp_reset.exit.thread_crit_edge, %if.end54.zynqmp_dp_reset.exit.thread_crit_edge
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end58:                                         ; preds = %while.body.i
  %num_lanes15.i = getelementptr inbounds %struct.zynqmp_dp, ptr %call.i, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %phy_name.i) #7
  %32 = call ptr @memset(ptr %phy_name.i, i32 255, i32 16)
  %call.i145 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name.i, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef 0) #7
  %33 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev2, align 8
  %call2.i146 = call ptr @devm_phy_get(ptr noundef %34, ptr noundef nonnull %phy_name.i) #7
  %cmp.i.i = icmp ugt ptr %call2.i146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end58.if.then.i_crit_edge, label %for.inc.i

if.end58.if.then.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.end58.if.then.i_crit_edge
  %i.033.lcssa.i = phi i32 [ 0, %if.end58.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ]
  %call2.lcssa.i = phi ptr [ %call2.i146, %if.end58.if.then.i_crit_edge ], [ %call2.1.i, %for.inc.i.if.then.i_crit_edge ]
  %35 = ptrtoint ptr %call2.lcssa.i to i32
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %35, label %zynqmp_dp_phy_probe.exit [
    i32 -19, label %sw.bb.i
    i32 -517, label %if.then.i.zynqmp_dp_phy_probe.exit.thread191_crit_edge
  ]

if.then.i.zynqmp_dp_phy_probe.exit.thread191_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_phy_probe.exit.thread191

sw.bb.i:                                          ; preds = %if.then.i
  %37 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_lanes15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %do.end.i147, label %zynqmp_dp_phy_probe.exit.thread194

zynqmp_dp_phy_probe.exit.thread194:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_name.i) #7
  br label %if.end62

do.end.i147:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.69) #10
  br label %zynqmp_dp_phy_probe.exit.thread191

for.inc.i:                                        ; preds = %if.end58
  %arrayidx.i = getelementptr %struct.zynqmp_dp, ptr %call.i, i32 0, i32 10, i32 0
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call2.i146, ptr %arrayidx.i, align 4
  %42 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_lanes15.i, align 8
  %inc.i = add i8 %43, 1
  store i8 %inc.i, ptr %num_lanes15.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_name.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %phy_name.i) #7
  %44 = call ptr @memset(ptr %phy_name.i, i32 255, i32 16)
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name.i, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef 1) #7
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 8
  %call2.1.i = call ptr @devm_phy_get(ptr noundef %46, ptr noundef nonnull %phy_name.i) #7
  %cmp.i.1.i = icmp ugt ptr %call2.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.if.then.i_crit_edge, label %zynqmp_dp_phy_probe.exit.thread

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

zynqmp_dp_phy_probe.exit.thread:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i = getelementptr %struct.zynqmp_dp, ptr %call.i, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call2.1.i, ptr %arrayidx.1.i, align 4
  %48 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_lanes15.i, align 8
  %inc.1.i = add i8 %49, 1
  store i8 %inc.1.i, ptr %num_lanes15.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_name.i) #7
  br label %if.end62

zynqmp_dp_phy_probe.exit.thread191:               ; preds = %do.end.i147, %if.then.i.zynqmp_dp_phy_probe.exit.thread191_crit_edge
  %retval.1.ph.i.ph = phi i32 [ -6, %do.end.i147 ], [ %35, %if.then.i.zynqmp_dp_phy_probe.exit.thread191_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_name.i) #7
  br label %err_reset

zynqmp_dp_phy_probe.exit:                         ; preds = %if.then.i
  %50 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.72, i32 noundef %i.033.lcssa.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phy_name.i) #7
  %tobool60.not = icmp eq ptr %call2.lcssa.i, null
  br i1 %tobool60.not, label %zynqmp_dp_phy_probe.exit.if.end62_crit_edge, label %zynqmp_dp_phy_probe.exit.err_reset_crit_edge

zynqmp_dp_phy_probe.exit.err_reset_crit_edge:     ; preds = %zynqmp_dp_phy_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_reset

zynqmp_dp_phy_probe.exit.if.end62_crit_edge:      ; preds = %zynqmp_dp_phy_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %zynqmp_dp_phy_probe.exit.if.end62_crit_edge, %zynqmp_dp_phy_probe.exit.thread, %zynqmp_dp_phy_probe.exit.thread194
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iomem, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #7, !srcloc !202
  %54 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 512
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %57 = or i32 %56, 50528256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iomem, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %59, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %57) #7, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iomem, align 4
  %add.ptr.i150 = getelementptr i8, ptr %61, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 16777216) #7, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iomem, align 4
  %add.ptr.i152 = getelementptr i8, ptr %63, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 0) #7, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iomem, align 4
  %add.ptr.i154 = getelementptr i8, ptr %65, i32 940
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 -1) #7, !srcloc !202
  %66 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_lanes15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp41.not.i = icmp eq i8 %67, 0
  br i1 %cmp41.not.i, label %if.end62.for.end.i_crit_edge, label %if.end62.for.body.i_crit_edge

if.end62.for.body.i_crit_edge:                    ; preds = %if.end62
  br label %for.body.i

if.end62.for.end.i_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i162.for.body.i_crit_edge, %if.end62.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i160, %for.inc.i162.for.body.i_crit_edge ], [ 0, %if.end62.for.body.i_crit_edge ]
  %arrayidx.i155 = getelementptr %struct.zynqmp_dp, ptr %call.i, i32 0, i32 10, i32 %i.042.i
  %68 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i155, align 4
  %call.i156 = call i32 @phy_init(ptr noundef %69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %for.inc.i162, label %do.end.i159

do.end.i159:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.74, i32 noundef %i.042.i) #10
  br label %err_reset

for.inc.i162:                                     ; preds = %for.body.i
  %inc.i160 = add nuw nsw i32 %i.042.i, 1
  %72 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_lanes15.i, align 8
  %conv.i = zext i8 %73 to i32
  %cmp.i161 = icmp ult i32 %inc.i160, %conv.i
  br i1 %cmp.i161, label %for.inc.i162.for.body.i_crit_edge, label %for.inc.i162.for.end.i_crit_edge

for.inc.i162.for.end.i_crit_edge:                 ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i162.for.body.i_crit_edge:                ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i162.for.end.i_crit_edge, %if.end62.for.end.i_crit_edge
  %74 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iomem, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %75, i32 512
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %77 = and i32 %76, -50528257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iomem, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %79, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %77) #7, !srcloc !202
  %80 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_lanes15.i, align 8
  %conv3.i = zext i8 %81 to i32
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body7.i.for.cond4.i_crit_edge, %for.end.i
  %i.1.in.i = phi i32 [ %conv3.i, %for.end.i ], [ %i.1.i, %for.body7.i.for.cond4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.in.i)
  %cmp5.i = icmp sgt i32 %i.1.in.i, 0
  br i1 %cmp5.i, label %for.body7.i, label %if.end66

for.body7.i:                                      ; preds = %for.cond4.i
  %i.1.i = add nsw i32 %i.1.in.i, -1
  %arrayidx9.i = getelementptr %struct.zynqmp_dp, ptr %call.i, i32 0, i32 10, i32 %i.1.i
  %82 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = call i32 @phy_power_on(ptr noundef %83) #7
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.body7.i.for.cond4.i_crit_edge, label %do.end15.i

for.body7.i.for.cond4.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.i

do.end15.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.77, i32 noundef %i.1.i) #10
  br label %err_reset

if.end66:                                         ; preds = %for.cond4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iomem, align 4
  %add.ptr.i165 = getelementptr i8, ptr %87, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 16777216) #7, !srcloc !202
  %88 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev2, align 8
  %90 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %92 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i166 = icmp eq ptr %93, null
  br i1 %tobool.not.i166, label %if.end.i, label %if.end66.dev_name.exit_crit_edge

if.end66.dev_name.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %89, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end66.dev_name.exit_crit_edge
  %retval.0.i167 = phi ptr [ %95, %if.end.i ], [ %93, %if.end66.dev_name.exit_crit_edge ]
  %call71 = call i32 @devm_request_threaded_irq(ptr noundef %89, i32 noundef %91, ptr noundef null, ptr noundef nonnull @zynqmp_dp_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i167, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %err_phy_exit, label %do.body75

do.body75:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_probe.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_probe, %if.then81)) #7
          to label %cleanup [label %if.then81], !srcloc !207

if.then81:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev2, align 8
  %98 = ptrtoint ptr %num_lanes15.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_lanes15.i, align 8
  %conv = zext i8 %99 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_probe.__UNIQUE_ID_ddebug325, ptr noundef %97, ptr noundef nonnull @.str.15, i32 noundef %conv) #7
  br label %cleanup

err_phy_exit:                                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @zynqmp_dp_phy_exit(ptr noundef nonnull %call.i)
  br label %err_reset

err_reset:                                        ; preds = %err_phy_exit, %do.end15.i, %do.end.i159, %zynqmp_dp_phy_probe.exit.err_reset_crit_edge, %zynqmp_dp_phy_probe.exit.thread191
  %ret.0 = phi i32 [ %35, %zynqmp_dp_phy_probe.exit.err_reset_crit_edge ], [ %call71, %err_phy_exit ], [ %retval.1.ph.i.ph, %zynqmp_dp_phy_probe.exit.thread191 ], [ %call10.i, %do.end15.i ], [ %call.i156, %do.end.i159 ]
  %100 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reset, align 8
  %call.i169 = call i32 @reset_control_assert(ptr noundef %101) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i171 = sub i32 -100, %102
  %103 = load volatile i32, ptr @jiffies, align 128
  %sub35.i172 = add i32 %add.neg.i171, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35.i172)
  %cmp36.i173 = icmp slt i32 %sub35.i172, 0
  br i1 %cmp36.i173, label %err_reset.while.body.i179_crit_edge, label %err_reset.do.end25.i184_crit_edge

err_reset.do.end25.i184_crit_edge:                ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i184

err_reset.while.body.i179_crit_edge:              ; preds = %err_reset
  br label %while.body.i179

while.body.i179:                                  ; preds = %do.end.i182.while.body.i179_crit_edge, %err_reset.while.body.i179_crit_edge
  %104 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reset, align 8
  %call5.i177 = call i32 @reset_control_status(ptr noundef %105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i177)
  %tobool6.i178.not = icmp eq i32 %call5.i177, 0
  br i1 %tobool6.i178.not, label %do.end.i182, label %while.body.i179.cleanup_crit_edge

while.body.i179.cleanup_crit_edge:                ; preds = %while.body.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i182:                                      ; preds = %while.body.i179
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !203
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %sub.i180 = add i32 %106, %add.neg.i171
  %cmp.i181 = icmp slt i32 %sub.i180, 0
  br i1 %cmp.i181, label %do.end.i182.while.body.i179_crit_edge, label %do.end.i182.do.end25.i184_crit_edge

do.end.i182.do.end25.i184_crit_edge:              ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i184

do.end.i182.while.body.i179_crit_edge:            ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i179

do.end25.i184:                                    ; preds = %do.end.i182.do.end25.i184_crit_edge, %err_reset.do.end25.i184_crit_edge
  %107 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25.i184, %while.body.i179.cleanup_crit_edge, %if.then81, %do.body75, %zynqmp_dp_reset.exit.thread, %if.end51, %if.end30.cleanup_crit_edge, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then27 ], [ %24, %if.end51 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ 0, %if.then81 ], [ -110, %zynqmp_dp_reset.exit.thread ], [ 0, %do.body75 ], [ %ret.0, %do.end25.i184 ], [ %ret.0, %while.body.i179.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dp_hpd_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr i8, ptr %work, i32 -1772
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %status50 = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 928
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !205
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %5, i32 932
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %7 = xor i32 %6, -1
  %8 = and i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup69_crit_edge, label %if.end

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_irq_handler.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_irq_handler, %land.lhs.true)) #7
          to label %if.end13 [label %land.lhs.true], !srcloc !207

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @zynqmp_dp_irq_handler._rs, ptr noundef nonnull @.str.80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end13_crit_edge, label %if.then11

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_irq_handler.descriptor, ptr noundef %10, ptr noundef nonnull @.str.81) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %do.body, %if.end.if.end13_crit_edge
  %and14 = and i32 %3, 264241152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end37_crit_edge, label %do.body17

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_irq_handler.descriptor.83, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_irq_handler, %land.lhs.true29)) #7
          to label %if.end37 [label %land.lhs.true29], !srcloc !207

land.lhs.true29:                                  ; preds = %do.body17
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @zynqmp_dp_irq_handler._rs.82, ptr noundef nonnull @.str.80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end37_crit_edge, label %if.then32

land.lhs.true29.if.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_irq_handler.descriptor.83, ptr noundef %12, ptr noundef nonnull @.str.84) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %land.lhs.true29.if.end37_crit_edge, %do.body17, %if.end13.if.end37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %14, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %2) #7, !srcloc !202
  %and38 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %dpsub = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dpsub, align 4
  %disp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disp, align 4
  tail call void @zynqmp_disp_handle_vblank(ptr noundef %18) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %and42 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %hpd_work = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %hpd_work, i32 noundef 0) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %and47 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.cleanup69_crit_edge, label %if.then49

if.end46.cleanup69_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.then49:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status50) #7
  %20 = getelementptr inbounds [8 x i8], ptr %status50, i32 0, i32 2
  %aux = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 9
  %21 = ptrtoint ptr %status50 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %status50, align 8
  %call51 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 512, ptr noundef nonnull %status50, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %if.then49.cleanup_crit_edge, label %if.end53

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.then49
  %22 = getelementptr inbounds [8 x i8], ptr %status50, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool55.not = icmp sgt i8 %24, -1
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end53.if.then65_crit_edge

if.end53.if.then65_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end53
  %lane_cnt = getelementptr inbounds %struct.zynqmp_dp, ptr %data, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lane_cnt, align 1
  %conv57 = zext i8 %26 to i32
  %call58 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef %20, i32 noundef %conv57) #7
  br i1 %call58, label %lor.lhs.false59, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

lor.lhs.false59:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lane_cnt, align 1
  %conv63 = zext i8 %28 to i32
  %call64 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef %20, i32 noundef %conv63) #7
  br i1 %call64, label %lor.lhs.false59.cleanup_crit_edge, label %lor.lhs.false59.if.then65_crit_edge

lor.lhs.false59.if.then65_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %lor.lhs.false59.if.then65_crit_edge, %lor.lhs.false.if.then65_crit_edge, %if.end53.if.then65_crit_edge
  call fastcc void @zynqmp_dp_train_loop(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %lor.lhs.false59.cleanup_crit_edge, %if.then49.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status50) #7
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup, %if.end46.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup69_crit_edge ], [ 1, %cleanup ], [ 1, %if.end46.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dp_phy_exit(ptr nocapture noundef readonly %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lanes = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 11
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp37.not = icmp eq i8 %1, 0
  br i1 %cmp37.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  br label %for.body

for.cond2.preheader:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp541.not = icmp eq i8 %7, 0
  br i1 %cmp541.not, label %for.cond2.preheader.for.end20_crit_edge, label %for.body7.lr.ph

for.cond2.preheader.for.end20_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.body7.lr.ph:                                  ; preds = %for.cond2.preheader
  %dev16 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  br label %for.body7

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 10, i32 %i.038
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.85, i32 noundef %i.038, i32 noundef %call) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %6 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_lanes, align 8
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond2.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body7:                                        ; preds = %for.inc18.for.body7_crit_edge, %for.body7.lr.ph
  %i.142 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc19, %for.inc18.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 10, i32 %i.142
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %call10 = tail call i32 @phy_exit(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body7.for.inc18_crit_edge, label %do.end15

for.body7.for.inc18_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc18

do.end15:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.88, i32 noundef %i.142, i32 noundef %call10) #10
  br label %for.inc18

for.inc18:                                        ; preds = %do.end15, %for.body7.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %i.142, 1
  %12 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_lanes, align 8
  %conv4 = zext i8 %13 to i32
  %cmp5 = icmp ult i32 %inc19, %conv4
  br i1 %cmp5, label %for.inc18.for.body7_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.inc18.for.body7_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %for.cond2.preheader.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zynqmp_dp_remove(ptr nocapture noundef readonly %dpsub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dp1 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 4
  %0 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50396943) #7, !srcloc !202
  %irq = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  %hpd_work = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 12
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hpd_work) #7
  %aux.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 9
  tail call void @drm_dp_aux_unregister(ptr noundef %aux.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #7, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -1) #7, !srcloc !202
  tail call fastcc void @zynqmp_dp_phy_exit(ptr noundef %1)
  %reset.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset.i, align 8
  %call.i = tail call i32 @reset_control_assert(ptr noundef %11) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %12
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub35.i = add i32 %add.neg.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35.i)
  %cmp36.i = icmp slt i32 %sub35.i, 0
  br i1 %cmp36.i, label %entry.while.body.i_crit_edge, label %entry.do.end25.i_crit_edge

entry.do.end25.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %14 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset.i, align 8
  %call5.i = tail call i32 @reset_control_status(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.i.not, label %do.end.i, label %while.body.i.zynqmp_dp_reset.exit_crit_edge

while.body.i.zynqmp_dp_reset.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_reset.exit

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %16, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.do.end25.i_crit_edge

do.end.i.do.end25.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end25.i:                                       ; preds = %do.end.i.do.end25.i_crit_edge, %entry.do.end25.i_crit_edge
  %dev.i = getelementptr inbounds %struct.zynqmp_dp, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66) #10
  br label %zynqmp_dp_reset.exit

zynqmp_dp_reset.exit:                             ; preds = %do.end25.i, %while.body.i.zynqmp_dp_reset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dp_encoder_atomic_mode_set(ptr noundef %encoder, ptr noundef %crtc_state, ptr nocapture noundef readnone %connector_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %adjusted_mode2 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %link_config = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 16
  %max_lanes3 = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %max_lanes3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_lanes3, align 4
  %bpp4 = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bpp4, align 2
  %4 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_config, align 4
  tail call fastcc void @zynqmp_dp_set_format(ptr noundef %encoder)
  %conv.i = zext i8 %1 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %mul1.i = mul i32 %mul.i, %5
  %conv2.i = zext i8 %3 to i32
  %div.i = sdiv i32 %mul1.i, %conv2.i
  %6 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div.i)
  %cmp = icmp sgt i32 %7, %div.i
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef %name) #10
  tail call void @drm_mode_debug_printmodeline(ptr noundef %mode1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %adjusted_mode2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjusted_mode2, align 4
  %12 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_config, align 4
  %14 = ptrtoint ptr %max_lanes3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_lanes3, align 4
  %call.i = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not51.i = icmp eq i8 %15, 0
  br i1 %cmp.not51.i, label %if.end.zynqmp_dp_mode_configure.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.zynqmp_dp_mode_configure.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_mode_configure.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %16 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bpp4, align 2
  %conv2.i.i = zext i8 %17 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lane_cnt.052.i = phi i8 [ 1, %for.body.lr.ph.i ], [ %shl.i, %for.inc.i.for.body.i_crit_edge ]
  %call10.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %call.i) #7
  %conv.i.i = zext i8 %lane_cnt.052.i to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 3
  %mul1.i.i = mul i32 %mul.i.i, %call10.i
  %div.i.i = sdiv i32 %mul1.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %11)
  %cmp12.not.i = icmp ult i32 %div.i.i, %11
  br i1 %cmp12.not.i, label %for.inc.i, label %zynqmp_dp_mode_configure.exit

for.inc.i:                                        ; preds = %for.body.i
  %shl.i = shl i8 %lane_cnt.052.i, 1
  %cmp.not.i = icmp ugt i8 %shl.i, %15
  br i1 %cmp.not.i, label %for.inc.i.zynqmp_dp_mode_configure.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.zynqmp_dp_mode_configure.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_mode_configure.exit.thread

zynqmp_dp_mode_configure.exit.thread:             ; preds = %for.inc.i.zynqmp_dp_mode_configure.exit.thread_crit_edge, %if.end.zynqmp_dp_mode_configure.exit.thread_crit_edge
  %dev28.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 2
  %18 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev28.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30) #10
  br label %cleanup

zynqmp_dp_mode_configure.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 17
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call.i, ptr %mode.i, align 4
  %lane_cnt16.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %lane_cnt16.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %lane_cnt.052.i, ptr %lane_cnt16.i, align 1
  %pclock18.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %pclock18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %pclock18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %iomem.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 5
  %23 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1073741824) #7, !srcloc !202
  %25 = ptrtoint ptr %adjusted_mode2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %adjusted_mode2, align 4
  %27 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bpp4, align 2
  %29 = lshr i8 %28, 3
  %div.i33 = zext i8 %29 to i32
  %30 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode.i, align 4
  %call.i34 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %31) #7
  %mul.i35 = shl i32 %26, 6
  %mul2.i = mul i32 %mul.i35, %div.i33
  %32 = ptrtoint ptr %lane_cnt16.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lane_cnt16.i, align 1
  %conv4.i = zext i8 %33 to i32
  %mul5.i = mul i32 %call.i34, %conv4.i
  %div6.i = udiv i32 %mul5.i, 1000
  %div7.i = udiv i32 %mul2.i, %div6.i
  %div7.i.frozen = freeze i32 %div7.i
  %div8.i = udiv i32 %div7.i.frozen, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %div8.i) #7
  %35 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %36, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %34) #7, !srcloc !202
  %37 = mul i32 %div8.i, 1000
  %rem.i.decomposed = sub i32 %div7.i.frozen, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %rem.i.decomposed) #7
  %39 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %40, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %38) #7, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 64999, i32 %div7.i)
  %cmp.i = icmp ugt i32 %div7.i, 64999
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %div7.i)
  %cmp12.i = icmp ult i32 %div7.i, 5000
  %sub.i = sub nsw i32 64, %div8.i
  %spec.select.i = select i1 %cmp12.i, i32 64, i32 %sub.i
  %init_wait.0.i = select i1 %cmp.i, i32 0, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %init_wait.0.i) #7
  %42 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %43, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %41) #7, !srcloc !202
  tail call fastcc void @zynqmp_dp_encoder_mode_set_stream(ptr noundef %encoder, ptr noundef %adjusted_mode2)
  br label %cleanup

cleanup:                                          ; preds = %zynqmp_dp_mode_configure.exit, %zynqmp_dp_mode_configure.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dp_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 14
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 4
  %hpd_work = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hpd_work) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 5
  %1 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !202
  %aux = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %3 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 251658240) #7, !srcloc !202
  %dpsub = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 3
  %6 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpsub, align 4
  %disp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disp, align 4
  %call3 = call zeroext i1 @zynqmp_disp_audio_enabled(ptr noundef %9) #7
  br i1 %call3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #7, !srcloc !202
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call.i16 = call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_dp_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %enabled = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 14
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 4
  %config.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config.i, align 8
  %conv.i = zext i8 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %5 = shl nuw i32 %conv.i, 24
  %iomem.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 5
  %6 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #7, !srcloc !202
  %misc1.i = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %misc1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %misc1.i, align 1
  %conv2.i = zext i8 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %10 = shl nuw i32 %conv2.i, 24
  %11 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %12, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %10) #7, !srcloc !202
  %dpsub = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 3
  %13 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dpsub, align 4
  %disp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disp, align 4
  %call2 = tail call zeroext i1 @zynqmp_disp_audio_enabled(ptr noundef %16) #7
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !202
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #7, !srcloc !202
  %status = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 13
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.preheader:                               ; preds = %if.end
  %aux = getelementptr inbounds %struct.zynqmp_dp, ptr %encoder, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %23 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %value.addr.i, align 1
  %call.i34 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34)
  %cmp6 = icmp eq i32 %call.i34, 1
  br i1 %cmp6, label %for.cond.preheader.if.else_crit_edge, label %if.end8

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end8:                                          ; preds = %for.cond.preheader
  call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %24 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %value.addr.i, align 1
  %call.i34.1 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34.1)
  %cmp6.1 = icmp eq i32 %call.i34.1, 1
  br i1 %cmp6.1, label %if.end8.if.else_crit_edge, label %if.end8.1

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end8.1:                                        ; preds = %if.end8
  call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %25 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %value.addr.i, align 1
  %call.i34.2 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34.2)
  %cmp6.2 = icmp eq i32 %call.i34.2, 1
  br i1 %cmp6.2, label %if.end8.1.if.else_crit_edge, label %if.end8.2

if.end8.1.if.else_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end8.2:                                        ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #7
  %26 = load i32, ptr @zynqmp_dp_power_on_delay_ms, align 4
  call void @msleep(i32 noundef %26) #7
  br label %do.body

do.body:                                          ; preds = %if.end8.2, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_encoder_enable.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_encoder_enable, %if.then15)) #7
          to label %if.end18 [label %if.then15], !srcloc !207

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_encoder_enable.__UNIQUE_ID_ddebug323, ptr noundef %28, ptr noundef nonnull @.str.35) #7
  br label %if.end18

if.else:                                          ; preds = %if.end8.1.if.else_crit_edge, %if.end8.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %29 = load i32, ptr @zynqmp_dp_power_on_delay_ms, align 4
  call void @msleep(i32 noundef %29) #7
  call fastcc void @zynqmp_dp_train_loop(ptr noundef %encoder)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15, %do.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %31, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 -1895825408) #7, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %33, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 16777216) #7, !srcloc !202
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_mode2 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal, align 2
  %conv = zext i16 %1 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsync_end, align 4
  %conv3 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp = icmp slt i32 %sub, 20
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %adjusted_mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode2, align 4
  %mul = mul i32 %5, 1000
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 9
  %6 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vtotal, align 4
  %conv5 = zext i16 %7 to i32
  %htotal6 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %htotal6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %htotal6, align 2
  %conv7 = zext i16 %9 to i32
  %mul8 = mul nuw i32 %conv7, %conv5
  %div = sdiv i32 %mul, %mul8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_encoder_atomic_check.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_encoder_atomic_check, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !207

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  %sub13 = sub nsw i32 20, %sub
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_encoder_atomic_check.__UNIQUE_ID_ddebug324, ptr noundef %13, ptr noundef nonnull @.str.52, i32 noundef %sub, i32 noundef %sub13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.then
  %14 = ptrtoint ptr %htotal6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal6, align 2
  %16 = trunc i32 %sub to i16
  %17 = sub i16 20, %16
  %conv17 = add i16 %15, %17
  store i16 %conv17, ptr %htotal6, align 2
  %18 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal, align 4
  %conv19 = zext i16 %19 to i32
  %conv21 = zext i16 %conv17 to i32
  %mul22 = mul i32 %div, %conv21
  %mul23 = mul i32 %mul22, %conv19
  %div24 = sdiv i32 %mul23, 1000
  %20 = ptrtoint ptr %adjusted_mode2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div24, ptr %adjusted_mode2, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end, %entry.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zynqmp_dp_mode_configure(ptr nocapture noundef %dp, i32 noundef %pclock, i8 noundef zeroext %current_bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link_config = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 16
  %0 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_config, align 4
  %max_lanes3 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %max_lanes3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_lanes3, align 4
  %call = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %1) #7
  %bpp4 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bpp4, align 2
  %6 = zext i8 %current_bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %current_bw, label %sw.default [
    i8 20, label %entry.sw.epilog_crit_edge
    i8 10, label %sw.bb5
    i8 6, label %do.end
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27) #10
  br label %cleanup29

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %entry.sw.epilog_crit_edge
  %bw_code.0 = phi i8 [ %call, %sw.default ], [ 6, %sw.bb5 ], [ 10, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not51 = icmp eq i8 %3, 0
  br i1 %cmp.not51, label %sw.epilog.do.end27_crit_edge, label %for.body.lr.ph

sw.epilog.do.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

for.body.lr.ph:                                   ; preds = %sw.epilog
  %conv2.i = zext i8 %5 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lane_cnt.052 = phi i8 [ 1, %for.body.lr.ph ], [ %shl, %for.inc.for.body_crit_edge ]
  %call10 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %bw_code.0) #7
  %conv.i = zext i8 %lane_cnt.052 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %mul1.i = mul i32 %mul.i, %call10
  %div.i = sdiv i32 %mul1.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %pclock)
  %cmp12.not = icmp ult i32 %div.i, %pclock
  br i1 %cmp12.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bw_code.0, ptr %mode, align 4
  %lane_cnt16 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %lane_cnt16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %lane_cnt.052, ptr %lane_cnt16, align 1
  %pclock18 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %pclock18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pclock, ptr %pclock18, align 4
  %conv21 = zext i8 %bw_code.0 to i32
  br label %cleanup29

for.inc:                                          ; preds = %for.body
  %shl = shl i8 %lane_cnt.052, 1
  %cmp.not = icmp ugt i8 %shl, %3
  br i1 %cmp.not, label %for.inc.do.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end27:                                         ; preds = %for.inc.do.end27_crit_edge, %sw.epilog.do.end27_crit_edge
  %dev28 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  %12 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.30) #10
  br label %cleanup29

cleanup29:                                        ; preds = %do.end27, %cleanup, %do.end
  %retval.2 = phi i32 [ %conv21, %cleanup ], [ -22, %do.end27 ], [ -22, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dp_encoder_mode_set_stream(ptr noundef readonly %dp, ptr nocapture noundef readonly %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lane_cnt2 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %lane_cnt2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lane_cnt2, align 1
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %2 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %htotal, align 2
  %conv = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 5
  %5 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !202
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %7 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vtotal, align 4
  %conv3 = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3) #7
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %11, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %9) #7, !srcloc !202
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = lshr i32 %13, 1
  %shl = and i32 %14, 2
  %and6 = and i32 %13, 1
  %or = or i32 %shl, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %15 = shl nuw nsw i32 %or, 24
  %16 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %17, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %15) #7, !srcloc !202
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %18 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hsync_end, align 4
  %conv13 = zext i16 %19 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %20 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hsync_start, align 2
  %conv14 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv13, %conv14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %23 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %24, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %22) #7, !srcloc !202
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %25 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vsync_end, align 2
  %conv15 = zext i16 %26 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %27 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vsync_start, align 4
  %conv16 = zext i16 %28 to i32
  %sub17 = sub nsw i32 %conv15, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %sub17) #7
  %30 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %31, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %29) #7, !srcloc !202
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %32 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hdisplay, align 4
  %conv18 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv18) #7
  %35 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %36, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %34) #7, !srcloc !202
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %37 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay, align 2
  %conv19 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv19) #7
  %40 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %41, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %39) #7, !srcloc !202
  %42 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %htotal, align 2
  %conv21 = zext i16 %43 to i32
  %44 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hsync_start, align 2
  %conv23 = zext i16 %45 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub24) #7
  %47 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %48, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %46) #7, !srcloc !202
  %49 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vtotal, align 4
  %conv26 = zext i16 %50 to i32
  %51 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vsync_start, align 4
  %conv28 = zext i16 %52 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %sub29) #7
  %54 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %55, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %53) #7, !srcloc !202
  %config = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8
  %56 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %config, align 8
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool32.not = icmp eq i8 %58, 0
  br i1 %tobool32.not, label %entry.if.end47_crit_edge, label %if.then

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then:                                          ; preds = %entry
  %mode1 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17
  %59 = ptrtoint ptr %mode1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode1, align 4
  %call = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %62 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %63, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %61) #7, !srcloc !202
  %64 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %68, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %66) #7, !srcloc !202
  %dpsub = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 3
  %69 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dpsub, align 4
  %disp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disp, align 4
  %call34 = tail call i32 @zynqmp_disp_get_audio_clk_rate(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then.if.end47_crit_edge, label %do.body

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_encoder_mode_set_stream.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_encoder_mode_set_stream, %if.then44)) #7
          to label %do.end [label %if.then44], !srcloc !207

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %div106 = lshr i32 %call34, 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_encoder_mode_set_stream.__UNIQUE_ID_ddebug315, ptr noundef %74, ptr noundef nonnull @.str.33, i32 noundef %div106) #7
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %76, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %61) #7, !srcloc !202
  %div45 = udiv i32 %call34, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %div45) #7
  %78 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %79, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %77) #7, !srcloc !202
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.then.if.end47_crit_edge, %entry.if.end47_crit_edge
  %dpsub48 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 3
  %80 = ptrtoint ptr %dpsub48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dpsub48, align 4
  %disp49 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %disp49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %disp49, align 4
  %call50 = tail call zeroext i1 @zynqmp_disp_audio_enabled(ptr noundef %83) #7
  br i1 %call50, label %if.then51, label %if.end47.if.end52_crit_edge

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %84 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %85, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 16777216) #7, !srcloc !202
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %87, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 16777216) #7, !srcloc !202
  %88 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hdisplay, align 4
  %conv54 = zext i16 %89 to i32
  %bpp = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 8, i32 2
  %90 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bpp, align 2
  %conv56 = zext i8 %91 to i32
  %mul = mul nuw nsw i32 %conv56, %conv54
  %add = add nuw nsw i32 %mul, 15
  %div57105 = lshr i32 %add, 4
  %conv58 = zext i8 %1 to i32
  %rem = urem i32 %div57105, %conv58
  %add59 = sub nsw i32 %rem, %conv58
  %sub61 = add nsw i32 %add59, %div57105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %sub61) #7
  %93 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %94, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %92) #7, !srcloc !202
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynqmp_disp_get_audio_clk_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zynqmp_disp_audio_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_dp_train_loop(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %value.addr.i175.i = alloca i8, align 1
  %value.addr.i.i143.i = alloca i8, align 1
  %link_status.i144.i = alloca [6 x i8], align 1
  %value.addr.i.i.i = alloca i8, align 1
  %link_status.i.i = alloca [6 x i8], align 1
  %value.addr.i129.i = alloca i8, align 1
  %value.addr.i127.i = alloca i8, align 1
  %value.addr.i125.i = alloca i8, align 1
  %value.addr.i123.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode1, align 4
  %status = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 13
  %enabled = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 14
  %lane_cnt3.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 1
  %iomem.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 5
  %dpcd.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 15
  %arrayidx2.i.i = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 15, i32 2
  %arrayidx.i = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 15, i32 3
  %aux.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 9
  %num_lanes.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 11
  %dev.i.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 2
  %train_set.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 18
  %pclock = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %entry
  %bw.0 = phi i8 [ %1, %entry ], [ %conv, %if.end4.do.body_crit_edge ]
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %lor.lhs.false

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %mode1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode1, align 4
  %8 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lane_cnt3.i, align 1
  %conv.i = zext i8 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %10 = shl nuw i32 %conv.i, 24
  %11 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #7, !srcloc !202
  %13 = ptrtoint ptr %dpcd.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dpcd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp.i.i = icmp ugt i8 %14, 16
  br i1 %cmp.i.i, label %drm_dp_enhanced_frame_cap.exit.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

drm_dp_enhanced_frame_cap.exit.i:                 ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.i = icmp slt i8 %16, 0
  br i1 %tobool.i.i, label %if.then.i, label %drm_dp_enhanced_frame_cap.exit.i.if.end.i_crit_edge

drm_dp_enhanced_frame_cap.exit.i.if.end.i_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %drm_dp_enhanced_frame_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %18, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 16777216) #7, !srcloc !202
  %or.i = or i8 %9, -128
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %drm_dp_enhanced_frame_cap.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %aux_lane_cnt.0.i = phi i8 [ %or.i, %if.then.i ], [ %9, %drm_dp_enhanced_frame_cap.exit.i.if.end.i_crit_edge ], [ %9, %if.end.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not.i = icmp eq i8 %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %23, i32 24
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 16777216) #7, !srcloc !202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #7
  %24 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %value.addr.i.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 263, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 0) #7, !srcloc !202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i123.i) #7
  %25 = ptrtoint ptr %value.addr.i123.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %value.addr.i123.i, align 1
  %call.i124.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 263, ptr noundef nonnull %value.addr.i123.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i123.i) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then9.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i125.i) #7
  %26 = ptrtoint ptr %value.addr.i125.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %aux_lane_cnt.0.i, ptr %value.addr.i125.i, align 1
  %call.i126.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 257, ptr noundef nonnull %value.addr.i125.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i125.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %cmp.i = icmp slt i32 %call.i126.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.38) #10
  br label %if.end4

if.end18.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i127.i) #7
  %29 = ptrtoint ptr %value.addr.i127.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %value.addr.i127.i, align 1
  %call.i128.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 264, ptr noundef nonnull %value.addr.i127.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i127.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %cmp21.i = icmp slt i32 %call.i128.i, 0
  br i1 %cmp21.i, label %do.end26.i, label %if.end28.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.41) #10
  br label %if.end4

if.end28.i:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i129.i) #7
  %32 = ptrtoint ptr %value.addr.i129.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %7, ptr %value.addr.i129.i, align 1
  %call.i130.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 256, ptr noundef nonnull %value.addr.i129.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i129.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %cmp31.i = icmp slt i32 %call.i130.i, 0
  br i1 %cmp31.i, label %do.end36.i, label %if.end38.i

do.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.44) #10
  br label %if.end4

if.end38.i:                                       ; preds = %if.end28.i
  %conv39.i = zext i8 %7 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %35 = shl nuw i32 %conv39.i, 24
  %36 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomem.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %switch.selectcmp.i = icmp eq i8 %7, 10
  %switch.select.i = select i1 %switch.selectcmp.i, i32 50331648, i32 83886080
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %switch.selectcmp115.i = icmp eq i8 %7, 6
  %switch.select116.i = select i1 %switch.selectcmp115.i, i32 16777216, i32 %switch.select.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %39, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 %switch.select116.i) #7, !srcloc !202
  %40 = ptrtoint ptr %num_lanes.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_lanes.i.i, align 8
  %conv.i.i = zext i8 %41 to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %42 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %43, i32 640
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #7, !srcloc !205
  %45 = call i32 @llvm.bswap.i32(i32 %44) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %and13.i.i = and i32 %45, %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i.i, i32 %sub.i.i)
  %cmp14.i.i = icmp eq i32 %and13.i.i, %sub.i.i
  br i1 %cmp14.i.i, label %if.end38.i.if.end47.i_crit_edge, label %if.end38.i.if.end.i.i_crit_edge

if.end38.i.if.end.i.i_crit_edge:                  ; preds = %if.end38.i
  br label %if.end.i.i

if.end38.i.if.end47.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.end.i.i:                                       ; preds = %if.end5.i.i.if.end.i.i_crit_edge, %if.end38.i.if.end.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %if.end5.i.i.if.end.i.i_crit_edge ], [ 0, %if.end38.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.015.i.i)
  %cmp2.i.i = icmp eq i32 %i.015.i.i, 100
  br i1 %cmp2.i.i, label %zynqmp_dp_phy_ready.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %46 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 640
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !205
  %49 = call i32 @llvm.bswap.i32(i32 %48) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %and.i.i = and i32 %49, %sub.i.i
  %cmp.i134.i = icmp eq i32 %and.i.i, %sub.i.i
  br i1 %cmp.i134.i, label %if.end5.i.i.if.end47.i_crit_edge, label %if.end5.i.i.if.end.i.i_crit_edge

if.end5.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end5.i.i.if.end47.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

zynqmp_dp_phy_ready.exit.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.49) #10
  br label %if.end4

if.end47.i:                                       ; preds = %if.end5.i.i.if.end47.i_crit_edge, %if.end38.i.if.end47.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %53, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 16777216) #7, !srcloc !202
  %54 = ptrtoint ptr %train_set.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %train_set.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status.i.i) #7
  %55 = call ptr @memset(ptr %link_status.i.i, i32 255, i32 6)
  %56 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lane_cnt3.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i138.i = getelementptr i8, ptr %59, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i, i32 16777216) #7, !srcloc !202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %60 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 33, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i139.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i139.i, label %if.end47.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

if.end47.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end47.i
  %conv16.i.i = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp24102.not.i.i = icmp eq i8 %57, 0
  %61 = add nuw nsw i32 %conv16.i.i, 65535
  %62 = and i32 %61, 65535
  %63 = add nuw nsw i32 %62, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %max_tries.0109.i.i = phi i16 [ 0, %for.cond.preheader.i.i ], [ %inc59.i.i, %zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge ]
  %tries.0108.i.i = phi i8 [ 0, %for.cond.preheader.i.i ], [ %tries.1.i.i, %zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge ]
  %vs.0107.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %and40.i.i, %zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge ]
  %call4.i.i = call fastcc i32 @zynqmp_dp_update_vs_emph(ptr noundef %dp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i, label %for.body.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge

for.body.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %aux.i, ptr noundef %dpcd.i) #7
  %call10.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux.i, ptr noundef nonnull %link_status.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.end6.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, label %if.end14.i.i

if.end6.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end6.i.i
  %call17.i.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status.i.i, i32 noundef %conv16.i.i) #7
  br i1 %call17.i.i, label %if.end52.i, label %for.cond21.preheader.i.i

for.cond21.preheader.i.i:                         ; preds = %if.end14.i.i
  br i1 %cmp24102.not.i.i, label %for.cond21.preheader.i.i.for.end.i.i_crit_edge, label %for.cond21.preheader.i.i.for.body26.i.i_crit_edge

for.cond21.preheader.i.i.for.body26.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  br label %for.body26.i.i

for.cond21.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.cond21.i.i:                                   ; preds = %for.body26.i.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv16.i.i
  br i1 %exitcond.not.i, label %for.cond21.i.i.for.end.i.i_crit_edge, label %for.cond21.i.i.for.body26.i.i_crit_edge

for.cond21.i.i.for.body26.i.i_crit_edge:          ; preds = %for.cond21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i.i

for.cond21.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body26.i.i:                                   ; preds = %for.cond21.i.i.for.body26.i.i_crit_edge, %for.cond21.preheader.i.i.for.body26.i.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond21.i.i.for.body26.i.i_crit_edge ], [ 0, %for.cond21.preheader.i.i.for.body26.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 18, i32 %indvars.iv.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i, align 1
  %66 = and i8 %65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool28.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool28.not.i.i, label %for.body26.i.i.for.end.i.i_crit_edge, label %for.cond21.i.i

for.body26.i.i.for.end.i.i_crit_edge:             ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body26.i.i.for.end.i.i_crit_edge, %for.cond21.i.i.for.end.i.i_crit_edge, %for.cond21.preheader.i.i.for.end.i.i_crit_edge
  %conv22.lcssa.i.i = phi i32 [ 0, %for.cond21.preheader.i.i.for.end.i.i_crit_edge ], [ %indvars.iv.i, %for.body26.i.i.for.end.i.i_crit_edge ], [ %63, %for.cond21.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22.lcssa.i.i, i32 %conv16.i.i)
  %cmp33.i.i = icmp eq i32 %conv22.lcssa.i.i, %conv16.i.i
  br i1 %cmp33.i.i, label %for.end.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, label %if.end36.i.i

for.end.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

if.end36.i.i:                                     ; preds = %for.end.i.i
  %67 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %train_set.i, align 8
  %69 = and i8 %68, 3
  %and40.i.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vs.0107.i.i, i32 %and40.i.i)
  %cmp42.i.i = icmp eq i32 %vs.0107.i.i, %and40.i.i
  %inc45.i.i = add i8 %tries.0108.i.i, 1
  %tries.1.i.i = select i1 %cmp42.i.i, i8 %inc45.i.i, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %tries.1.i.i)
  %cmp48.i.i = icmp eq i8 %tries.1.i.i, 5
  br i1 %cmp48.i.i, label %if.end36.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, label %if.end51.i.i

if.end36.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

if.end51.i.i:                                     ; preds = %if.end36.i.i
  %70 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %lane_cnt3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp66.not.i.i.i = icmp eq i8 %71, 0
  br i1 %cmp66.not.i.i.i, label %if.end51.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge, label %if.end51.i.i.for.body.i.i.i_crit_edge

if.end51.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end51.i.i
  br label %for.body.i.i.i

if.end51.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_adjust_train.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end51.i.i.for.body.i.i.i_crit_edge
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end51.i.i.for.body.i.i.i_crit_edge ]
  %preemphasis.068.i.i.i = phi i8 [ %73, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end51.i.i.for.body.i.i.i_crit_edge ]
  %voltage.067.i.i.i = phi i8 [ %72, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end51.i.i.for.body.i.i.i_crit_edge ]
  %call.i98.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status.i.i, i32 noundef %indvars.iv.i.i.i) #7
  %call6.i.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status.i.i, i32 noundef %indvars.iv.i.i.i) #7
  %72 = call i8 @llvm.umax.i8(i8 %call.i98.i.i, i8 %voltage.067.i.i.i) #7
  %73 = call i8 @llvm.umax.i8(i8 %call6.i.i.i, i8 %preemphasis.068.i.i.i) #7
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %74 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %lane_cnt3.i, align 1
  %76 = zext i8 %75 to i32
  %cmp.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %76
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp3772.not.i.i.i = icmp eq i8 %75, 0
  br i1 %cmp3772.not.i.i.i, label %for.end.i.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge, label %for.body39.lr.ph.i.i.i

for.end.i.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_adjust_train.exit.i.i

for.body39.lr.ph.i.i.i:                           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %73)
  %cmp25.i.i.i = icmp ugt i8 %73, 15
  %78 = or i8 %73, 32
  %preemphasis.2.i.i.i = select i1 %cmp25.i.i.i, i8 %78, i8 %73
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp18.i.i.i = icmp ugt i8 %72, 2
  %79 = or i8 %72, 4
  %spec.select65.i.i.i = select i1 %cmp18.i.i.i, i8 %79, i8 %72
  %or4264.i.i.i = or i8 %preemphasis.2.i.i.i, %spec.select65.i.i.i
  %80 = zext i8 %or4264.i.i.i to i32
  %81 = call ptr @memset(ptr %train_set.i, i32 %80, i32 %77)
  br label %zynqmp_dp_adjust_train.exit.i.i

zynqmp_dp_adjust_train.exit.i.i:                  ; preds = %for.body39.lr.ph.i.i.i, %for.end.i.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge, %if.end51.i.i.zynqmp_dp_adjust_train.exit.i.i_crit_edge
  %inc59.i.i = add nuw nsw i16 %max_tries.0109.i.i, 1
  %cmp2.i141.i = icmp ult i16 %max_tries.0109.i.i, 511
  br i1 %cmp2.i141.i, label %zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge, label %zynqmp_dp_adjust_train.exit.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge

zynqmp_dp_adjust_train.exit.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge: ; preds = %zynqmp_dp_adjust_train.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_cr.exit.thread.i

zynqmp_dp_adjust_train.exit.i.i.for.body.i.i_crit_edge: ; preds = %zynqmp_dp_adjust_train.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

zynqmp_dp_link_train_cr.exit.thread.i:            ; preds = %zynqmp_dp_adjust_train.exit.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, %if.end36.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, %for.end.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, %if.end6.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, %for.body.i.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge, %if.end47.i.zynqmp_dp_link_train_cr.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i.i) #7
  br label %if.end4

if.end52.i:                                       ; preds = %if.end14.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i.i) #7
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status.i144.i) #7
  %82 = call ptr @memset(ptr %link_status.i144.i, i32 255, i32 6)
  %83 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %lane_cnt3.i, align 1
  %85 = ptrtoint ptr %dpcd.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dpcd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %86)
  %cmp.i147.i = icmp ugt i8 %86, 17
  br i1 %cmp.i147.i, label %land.lhs.true.i.i, label %if.end52.i.if.else.i.i_crit_edge

if.end52.i.if.else.i.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end52.i
  %87 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx2.i.i, align 1
  %89 = and i8 %88, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i148.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i148.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i153.i_crit_edge

land.lhs.true.i.i.if.end.i153.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i153.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end52.i.if.else.i.i_crit_edge
  br label %if.end.i153.i

if.end.i153.i:                                    ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end.i153.i_crit_edge
  %pat.0.i.i = phi i32 [ 2, %if.else.i.i ], [ 3, %land.lhs.true.i.i.if.end.i153.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %90 = shl nuw nsw i32 %pat.0.i.i, 24
  %91 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i150.i = getelementptr i8, ptr %92, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.i, i32 %90) #7, !srcloc !202
  %93 = trunc i32 %pat.0.i.i to i8
  %conv6.i.i = or i8 %93, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i143.i) #7
  %94 = ptrtoint ptr %value.addr.i.i143.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv6.i.i, ptr %value.addr.i.i143.i, align 1
  %call.i.i152.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 258, ptr noundef nonnull %value.addr.i.i143.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i143.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i)
  %cmp7.i.i = icmp slt i32 %call.i.i152.i, 0
  br i1 %cmp7.i.i, label %if.end.i153.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, label %for.cond.preheader.i154.i

if.end.i153.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge: ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_ce.exit.thread.i

for.cond.preheader.i154.i:                        ; preds = %if.end.i153.i
  %conv27.i.i = zext i8 %84 to i32
  br label %for.body.i155.i

for.body.i155.i:                                  ; preds = %zynqmp_dp_adjust_train.exit.i173.i.for.body.i155.i_crit_edge, %for.cond.preheader.i154.i
  %tries.065.i.i = phi i32 [ 0, %for.cond.preheader.i154.i ], [ %inc.i172.i, %zynqmp_dp_adjust_train.exit.i173.i.for.body.i155.i_crit_edge ]
  %call13.i.i = call fastcc i32 @zynqmp_dp_update_vs_emph(ptr noundef %dp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %for.body.i155.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge

for.body.i155.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge: ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_ce.exit.thread.i

if.end16.i.i:                                     ; preds = %for.body.i155.i
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %aux.i, ptr noundef %dpcd.i) #7
  %call21.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux.i, ptr noundef nonnull %link_status.i144.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.end16.i.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, label %if.end25.i.i

if.end16.i.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_ce.exit.thread.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %call28.i.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status.i144.i, i32 noundef %conv27.i.i) #7
  br i1 %call28.i.i, label %if.end56.i, label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.end25.i.i
  %95 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %lane_cnt3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp66.not.i.i156.i = icmp eq i8 %96, 0
  br i1 %cmp66.not.i.i156.i, label %if.end31.i.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge, label %if.end31.i.i.for.body.i.i163.i_crit_edge

if.end31.i.i.for.body.i.i163.i_crit_edge:         ; preds = %if.end31.i.i
  br label %for.body.i.i163.i

if.end31.i.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_adjust_train.exit.i173.i

for.body.i.i163.i:                                ; preds = %for.body.i.i163.i.for.body.i.i163.i_crit_edge, %if.end31.i.i.for.body.i.i163.i_crit_edge
  %indvars.iv.i.i157.i = phi i32 [ %indvars.iv.next.i.i161.i, %for.body.i.i163.i.for.body.i.i163.i_crit_edge ], [ 0, %if.end31.i.i.for.body.i.i163.i_crit_edge ]
  %preemphasis.068.i.i158.i = phi i8 [ %98, %for.body.i.i163.i.for.body.i.i163.i_crit_edge ], [ 0, %if.end31.i.i.for.body.i.i163.i_crit_edge ]
  %voltage.067.i.i159.i = phi i8 [ %97, %for.body.i.i163.i.for.body.i.i163.i_crit_edge ], [ 0, %if.end31.i.i.for.body.i.i163.i_crit_edge ]
  %call.i60.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %link_status.i144.i, i32 noundef %indvars.iv.i.i157.i) #7
  %call6.i.i160.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %link_status.i144.i, i32 noundef %indvars.iv.i.i157.i) #7
  %97 = call i8 @llvm.umax.i8(i8 %call.i60.i.i, i8 %voltage.067.i.i159.i) #7
  %98 = call i8 @llvm.umax.i8(i8 %call6.i.i160.i, i8 %preemphasis.068.i.i158.i) #7
  %indvars.iv.next.i.i161.i = add nuw nsw i32 %indvars.iv.i.i157.i, 1
  %99 = ptrtoint ptr %lane_cnt3.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %lane_cnt3.i, align 1
  %101 = zext i8 %100 to i32
  %cmp.i.i162.i = icmp ult i32 %indvars.iv.next.i.i161.i, %101
  br i1 %cmp.i.i162.i, label %for.body.i.i163.i.for.body.i.i163.i_crit_edge, label %for.end.i.i165.i

for.body.i.i163.i.for.body.i.i163.i_crit_edge:    ; preds = %for.body.i.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i163.i

for.end.i.i165.i:                                 ; preds = %for.body.i.i163.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp3772.not.i.i164.i = icmp eq i8 %100, 0
  br i1 %cmp3772.not.i.i164.i, label %for.end.i.i165.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge, label %for.body39.lr.ph.i.i171.i

for.end.i.i165.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge: ; preds = %for.end.i.i165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_adjust_train.exit.i173.i

for.body39.lr.ph.i.i171.i:                        ; preds = %for.end.i.i165.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %98)
  %cmp25.i.i166.i = icmp ugt i8 %98, 15
  %103 = or i8 %98, 32
  %preemphasis.2.i.i167.i = select i1 %cmp25.i.i166.i, i8 %103, i8 %98
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp18.i.i168.i = icmp ugt i8 %97, 2
  %104 = or i8 %97, 4
  %spec.select65.i.i169.i = select i1 %cmp18.i.i168.i, i8 %104, i8 %97
  %or4264.i.i170.i = or i8 %preemphasis.2.i.i167.i, %spec.select65.i.i169.i
  %105 = zext i8 %or4264.i.i170.i to i32
  %106 = call ptr @memset(ptr %train_set.i, i32 %105, i32 %102)
  br label %zynqmp_dp_adjust_train.exit.i173.i

zynqmp_dp_adjust_train.exit.i173.i:               ; preds = %for.body39.lr.ph.i.i171.i, %for.end.i.i165.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge, %if.end31.i.i.zynqmp_dp_adjust_train.exit.i173.i_crit_edge
  %inc.i172.i = add nuw nsw i32 %tries.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i172.i, 5
  br i1 %exitcond.not.i.i, label %zynqmp_dp_adjust_train.exit.i173.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, label %zynqmp_dp_adjust_train.exit.i173.i.for.body.i155.i_crit_edge

zynqmp_dp_adjust_train.exit.i173.i.for.body.i155.i_crit_edge: ; preds = %zynqmp_dp_adjust_train.exit.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i155.i

zynqmp_dp_adjust_train.exit.i173.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge: ; preds = %zynqmp_dp_adjust_train.exit.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_dp_link_train_ce.exit.thread.i

zynqmp_dp_link_train_ce.exit.thread.i:            ; preds = %zynqmp_dp_adjust_train.exit.i173.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, %if.end16.i.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, %for.body.i155.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge, %if.end.i153.i.zynqmp_dp_link_train_ce.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i144.i) #7
  br label %if.end4

if.end56.i:                                       ; preds = %if.end25.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i144.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i175.i) #7
  %107 = ptrtoint ptr %value.addr.i175.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %value.addr.i175.i, align 1
  %call.i176.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 258, ptr noundef nonnull %value.addr.i175.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i175.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %cmp59.i = icmp slt i32 %call.i176.i, 0
  br i1 %cmp59.i, label %do.end64.i, label %zynqmp_dp_train.exit

do.end64.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.47) #10
  br label %if.end4

zynqmp_dp_train.exit:                             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %111, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 0) #7, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %113, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 0) #7, !srcloc !202
  br label %cleanup

if.end4:                                          ; preds = %do.end64.i, %zynqmp_dp_link_train_ce.exit.thread.i, %zynqmp_dp_link_train_cr.exit.thread.i, %zynqmp_dp_phy_ready.exit.i, %do.end36.i, %do.end26.i, %do.end.i
  %114 = ptrtoint ptr %pclock to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pclock, align 4
  %call5 = call fastcc i32 @zynqmp_dp_mode_configure(ptr noundef %dp, i32 noundef %115, i8 noundef zeroext %bw.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  %conv = trunc i32 %call5 to i8
  %conv9 = and i32 %call5, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv9)
  %cmp10 = icmp ugt i32 %conv9, 5
  %or.cond = and i1 %cmp6, %cmp10
  br i1 %or.cond, label %if.end4.do.body_crit_edge, label %do.end14

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %zynqmp_dp_train.exit, %lor.lhs.false.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zynqmp_dp_update_vs_emph(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %opts = alloca %union.phy_configure_opts, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 9
  %train_set = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 18
  %lane_cnt = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lane_cnt, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 259, ptr noundef %train_set, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lane_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp530.not = icmp eq i8 %3, 0
  br i1 %cmp530.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %voltage = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 2
  %pre = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 3
  %iomem.i = getelementptr inbounds %struct.zynqmp_dp, ptr %dp, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.031, 2
  %add = add nuw nsw i32 %mul, 588
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %opts) #7
  %4 = call ptr @memset(ptr %opts, i32 0, i32 100)
  %arrayidx = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 18, i32 %i.031
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %6 to i32
  %and = and i32 %conv8, 3
  %7 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %voltage, align 4
  %and11 = lshr i32 %conv8, 3
  %8 = and i32 %and11, 3
  %9 = ptrtoint ptr %pre to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pre, align 4
  %arrayidx14 = getelementptr %struct.zynqmp_dp, ptr %dp, i32 0, i32 10, i32 %i.031
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %call15 = call i32 @phy_configure(ptr noundef %11, ptr noundef nonnull %opts) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !202
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %opts) #7
  %inc = add nuw nsw i32 %i.031, 1
  %14 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lane_cnt, align 1
  %conv4 = zext i8 %15 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_clock_recovery_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_channel_eq_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link_config1 = getelementptr i8, ptr %connector, i32 2940
  %iomem.i = getelementptr i8, ptr %connector, i32 1052
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %1, i32 304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #7
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.1 = getelementptr i8, ptr %5, i32 304
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.1) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #7
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.2 = getelementptr i8, ptr %9, i32 304
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.2) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.if.then5_crit_edge

if.end.1.if.then5_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 100) #7
  %12 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.3 = getelementptr i8, ptr %13, i32 304
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.3) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.if.then5_crit_edge

if.end.2.if.then5_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 100) #7
  %16 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.4 = getelementptr i8, ptr %17, i32 304
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.4) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.4 = icmp eq i32 %19, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.if.then5_crit_edge

if.end.3.if.then5_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 100) #7
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.5 = getelementptr i8, ptr %21, i32 304
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.5) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.5 = icmp eq i32 %23, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.if.then5_crit_edge

if.end.4.if.then5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 100) #7
  %24 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.6 = getelementptr i8, ptr %25, i32 304
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.6) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.6 = icmp eq i32 %27, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.if.then5_crit_edge

if.end.5.if.then5_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 100) #7
  %28 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.7 = getelementptr i8, ptr %29, i32 304
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.7) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.7 = icmp eq i32 %31, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.if.then5_crit_edge

if.end.6.if.then5_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 100) #7
  %32 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.8 = getelementptr i8, ptr %33, i32 304
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.8) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.8 = icmp eq i32 %35, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.if.then5_crit_edge

if.end.7.if.then5_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 100) #7
  %36 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i58.9 = getelementptr i8, ptr %37, i32 304
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.9) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.9 = icmp eq i32 %39, 0
  br i1 %tobool.not.9, label %for.end, label %if.end.8.if.then5_crit_edge

if.end.8.if.then5_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

for.end:                                          ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %cleanup

if.then5:                                         ; preds = %if.end.8.if.then5_crit_edge, %if.end.7.if.then5_crit_edge, %if.end.6.if.then5_crit_edge, %if.end.5.if.then5_crit_edge, %if.end.4.if.then5_crit_edge, %if.end.3.if.then5_crit_edge, %if.end.2.if.then5_crit_edge, %if.end.1.if.then5_crit_edge, %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %aux = getelementptr i8, ptr %connector, i32 1072
  %dpcd = getelementptr i8, ptr %connector, i32 2925
  %call6 = tail call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 0, ptr noundef %dpcd, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body, label %if.end16

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_connector_detect.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_connector_detect, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !207

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %connector, i32 1040
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_connector_detect.__UNIQUE_ID_ddebug316, ptr noundef %41, ptr noundef nonnull @.str.54) #7
  br label %cleanup

if.end16:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %connector, i32 2926
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %43) #7
  %44 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 540000)
  %45 = ptrtoint ptr %link_config1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %link_config1, align 4
  %arrayidx.i59 = getelementptr i8, ptr %connector, i32 2927
  %46 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i59, align 1
  %48 = and i8 %47, 31
  %num_lanes = getelementptr i8, ptr %connector, i32 2816
  %49 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_lanes, align 8
  %51 = tail call i8 @llvm.umin.i8(i8 %48, i8 %50)
  %max_lanes = getelementptr i8, ptr %connector, i32 2944
  %52 = ptrtoint ptr %max_lanes to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %max_lanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %do.body, %for.end
  %.sink = phi i32 [ 1, %if.end16 ], [ 2, %for.end ], [ 2, %do.body ], [ 2, %if.then14 ]
  %status37 = getelementptr i8, ptr %connector, i32 2920
  %53 = ptrtoint ptr %status37 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %status37, align 8
  ret i32 %.sink
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr i8, ptr %connector, i32 1080
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call1) #7
  %call3 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call1) #7
  tail call void @kfree(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %1)
  %cmp = icmp sgt i32 %1, 3000000
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_connector_mode_valid, %cleanup.sink.split.sink.split)) #7
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !207

if.end9:                                          ; preds = %entry
  %link_config = getelementptr i8, ptr %connector, i32 2940
  %2 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_config, align 4
  %bpp2 = getelementptr i8, ptr %connector, i32 1066
  %4 = ptrtoint ptr %bpp2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bpp2, align 2
  %max_lanes1 = getelementptr i8, ptr %connector, i32 2944
  %6 = ptrtoint ptr %max_lanes1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lanes1, align 4
  %conv.i = zext i8 %7 to i32
  %mul.i = shl i32 %3, 3
  %mul1.i = mul i32 %mul.i, %conv.i
  %conv2.i = zext i8 %5 to i32
  %div.i = sdiv i32 %mul1.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div.i)
  %cmp12 = icmp sgt i32 %1, %div.i
  br i1 %cmp12, label %do.body14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_connector_mode_valid, %cleanup.sink.split.sink.split)) #7
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !207

cleanup.sink.split.sink.split:                    ; preds = %do.body14, %do.body
  %zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322.sink = phi ptr [ @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug321, %do.body ], [ @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322, %do.body14 ]
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr i8, ptr %connector, i32 1040
  %8 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev27, align 8
  %name28 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322.sink, ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef %name28) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body14, %do.body
  tail call void @drm_mode_debug_printmodeline(ptr noundef %mode) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ 15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @zynqmp_dp_connector_best_encoder(ptr noundef readnone %connector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -72
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_dp_aux_transfer(ptr nocapture noundef readonly %aux, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @zynqmp_dp_aux_timeout_ms, align 4
  %mul = mul i32 %0, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %mul)
  %1 = icmp ult i32 %mul, 400
  %div = udiv i32 %mul, 400
  %spec.select = select i1 %1, i32 1, i32 %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp102.not = icmp eq i32 %spec.select, 0
  br i1 %cmp102.not, label %entry.do.body33_crit_edge, label %for.body.lr.ph

entry.do.body33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

for.body.lr.ph:                                   ; preds = %entry
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %iomem.i.i = getelementptr i8, ptr %aux, i32 -20
  %tobool34.not.i = icmp eq ptr %reply, null
  %status = getelementptr i8, ptr %aux, i32 1848
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %request, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg, align 4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %conv2 = trunc i32 %9 to i8
  %and.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %10 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 304
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.end.i, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i:                                         ; preds = %for.body
  %conv.i = and i32 %5, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %15 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %16, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %14) #7, !srcloc !202
  %conv6.i = and i32 %9, 255
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %cmp116.not.i = icmp eq i8 %conv2, 0
  br i1 %cmp116.not.i, label %for.cond.preheader.i.if.end9.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0117.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %7, i32 %i.0117.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %19 = shl nuw i32 %conv8.i, 24
  %20 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %21, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 %19) #7, !srcloc !202
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv6.i
  br i1 %exitcond.not.i, label %for.body.i.if.end9.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.body.i.if.end9.i_crit_edge, %for.cond.preheader.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %conv13.pre-phi.i = phi i32 [ 0, %for.cond.preheader.i.if.end9.i_crit_edge ], [ %conv6.i, %if.end.i.if.end9.i_crit_edge ], [ %conv6.i, %for.body.i.if.end9.i_crit_edge ]
  %shl.i = shl nuw nsw i32 %conv, 8
  %tobool10.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool11.not.i = icmp eq i8 %conv2, 0
  %or.cond.i = or i1 %tobool10.not.i, %tobool11.not.i
  %sub.i = add nsw i32 %conv13.pre-phi.i, -1
  %sub.pn.i = select i1 %or.cond.i, i32 4096, i32 %sub.i
  %reg.0.i = or i32 %sub.pn.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #7
  %23 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %22) #7, !srcloc !202
  %25 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i108118.i = getelementptr i8, ptr %26, i32 304
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108118.i) #7, !srcloc !205
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %and19119.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19119.i)
  %tobool20.not120.i = icmp eq i32 %and19119.i, 0
  br i1 %tobool20.not120.i, label %if.end22.i, label %if.end9.i.for.end32.i_crit_edge

if.end9.i.for.end32.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

if.end22.i:                                       ; preds = %if.end9.i
  %and23.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i.not = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i.not, label %if.end29.i, label %if.end22.i.if.end11_crit_edge

if.end22.i.if.end11_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end29.i:                                       ; preds = %if.end22.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %29 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %30, i32 304
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i) #7, !srcloc !205
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %and19.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i.1, label %if.end29.i.for.end32.i_crit_edge

if.end29.i.for.end32.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

if.end22.i.1:                                     ; preds = %if.end29.i
  %and23.i.1 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.1)
  %tobool24.not.i.1.not = icmp eq i32 %and23.i.1, 0
  br i1 %tobool24.not.i.1.not, label %if.end29.i.1, label %if.end22.i.1.if.end11_crit_edge

if.end22.i.1.if.end11_crit_edge:                  ; preds = %if.end22.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end29.i.1:                                     ; preds = %if.end22.i.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %33 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i108.i.1 = getelementptr i8, ptr %34, i32 304
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i.1) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %36 = and i32 %35, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not.i.1 = icmp eq i32 %36, 0
  br i1 %tobool20.not.i.1, label %if.end29.i.1.if.end11_crit_edge, label %if.end29.i.1.for.end32.i_crit_edge

if.end29.i.1.for.end32.i_crit_edge:               ; preds = %if.end29.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

if.end29.i.1.if.end11_crit_edge:                  ; preds = %if.end29.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.end32.i:                                      ; preds = %if.end29.i.1.for.end32.i_crit_edge, %if.end29.i.for.end32.i_crit_edge, %if.end9.i.for.end32.i_crit_edge
  %37 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %38, i32 312
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #7, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br i1 %tobool34.not.i, label %for.end32.i.if.end37.i_crit_edge, label %if.then35.i

for.end32.i.if.end37.i_crit_edge:                 ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then35.i:                                      ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = lshr i32 %39, 24
  %conv36.i = trunc i32 %40 to i8
  %41 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv36.i, ptr %reply, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %for.end32.i.if.end37.i_crit_edge
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp40.i = icmp eq i32 %39, 0
  %or.cond100.i = select i1 %tobool.not.not.i, i1 %cmp40.i, i1 false
  br i1 %or.cond100.i, label %if.then45.i, label %if.end37.i.do.body_crit_edge

if.end37.i.do.body_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then45.i:                                      ; preds = %if.end37.i
  %42 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %43, i32 328
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #7, !srcloc !205
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv13.pre-phi.i)
  %cmp49.not.i = icmp ne i32 %45, %conv13.pre-phi.i
  %brmerge.i = or i1 %tobool11.not.i, %cmp49.not.i
  br i1 %brmerge.i, label %zynqmp_dp_aux_cmd_submit.exit, label %if.then45.i.for.body57.i_crit_edge

if.then45.i.for.body57.i_crit_edge:               ; preds = %if.then45.i
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %if.then45.i.for.body57.i_crit_edge
  %i.2123.i = phi i32 [ %inc62.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %if.then45.i.for.body57.i_crit_edge ]
  %46 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %47, i32 308
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #7, !srcloc !205
  %49 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %conv59.i = trunc i32 %49 to i8
  %arrayidx60.i = getelementptr i8, ptr %7, i32 %i.2123.i
  %50 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv59.i, ptr %arrayidx60.i, align 1
  %inc62.i = add nuw nsw i32 %i.2123.i, 1
  %exitcond125.not.i = icmp eq i32 %inc62.i, %conv13.pre-phi.i
  br i1 %exitcond125.not.i, label %for.body57.i.do.body_crit_edge, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.i

for.body57.i.do.body_crit_edge:                   ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

zynqmp_dp_aux_cmd_submit.exit:                    ; preds = %if.then45.i
  br i1 %cmp49.not.i, label %zynqmp_dp_aux_cmd_submit.exit.if.end11_crit_edge, label %zynqmp_dp_aux_cmd_submit.exit.do.body_crit_edge

zynqmp_dp_aux_cmd_submit.exit.do.body_crit_edge:  ; preds = %zynqmp_dp_aux_cmd_submit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

zynqmp_dp_aux_cmd_submit.exit.if.end11_crit_edge: ; preds = %zynqmp_dp_aux_cmd_submit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %zynqmp_dp_aux_cmd_submit.exit.do.body_crit_edge, %for.body57.i.do.body_crit_edge, %if.end37.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_aux_transfer, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !207

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %aux, i32 -32
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug312, ptr noundef %52, ptr noundef nonnull @.str.61, i32 noundef %i.0103) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  br label %cleanup

if.end11:                                         ; preds = %zynqmp_dp_aux_cmd_submit.exit.if.end11_crit_edge, %if.end29.i.1.if.end11_crit_edge, %if.end22.i.1.if.end11_crit_edge, %if.end22.i.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %retval.0.i7481 = phi i32 [ -5, %zynqmp_dp_aux_cmd_submit.exit.if.end11_crit_edge ], [ -16, %for.body.if.end11_crit_edge ], [ -110, %if.end29.i.1.if.end11_crit_edge ], [ -110, %if.end22.i.1.if.end11_crit_edge ], [ -110, %if.end22.i.if.end11_crit_edge ]
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp12 = icmp eq i32 %56, 2
  br i1 %cmp12, label %do.body15, label %if.end32

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_aux_transfer, %if.then27)) #7
          to label %cleanup [label %if.then27], !srcloc !207

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr i8, ptr %aux, i32 -32
  %57 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug313, ptr noundef %58, ptr noundef nonnull @.str.62) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end11
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 500, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %if.end32.do.body33_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end32.do.body33_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

do.body33:                                        ; preds = %if.end32.do.body33_crit_edge, %entry.do.body33_crit_edge
  %ret.0.lcssa = phi i32 [ -1, %entry.do.body33_crit_edge ], [ %retval.0.i7481, %if.end32.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_dp_aux_transfer, %if.then45)) #7
          to label %cleanup [label %if.then45], !srcloc !207

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %dev46 = getelementptr i8, ptr %aux, i32 -32
  %59 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev46, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug314, ptr noundef %60, ptr noundef nonnull @.str.63, i32 noundef %ret.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %if.then27, %do.body15, %do.end
  %retval.0 = phi i32 [ %54, %do.end ], [ -19, %if.then27 ], [ %ret.0.lcssa, %if.then45 ], [ -19, %do.body15 ], [ %ret.0.lcssa, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynqmp_disp_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !125, !126, !127, !129, !131, !132, !133, !134, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !152, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__param_aux_timeout_ms, !1, !"__param_aux_timeout_ms", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_aux_timeout_mstype308, !1, !"__UNIQUE_ID_aux_timeout_mstype308", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aux_timeout_ms309, !4, !"__UNIQUE_ID_aux_timeout_ms309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 40, i32 1}
!5 = !{ptr @__param_power_on_delay_ms, !6, !"__param_power_on_delay_ms", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_power_on_delay_mstype310, !6, !"__UNIQUE_ID_power_on_delay_mstype310", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_power_on_delay_ms311, !9, !"__UNIQUE_ID_power_on_delay_ms311", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 47, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1621, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @zynqmp_dp_drm_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @zynqmp_dp_drm_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1632, i32 3}
!20 = !{ptr @zynqmp_dp_drm_init._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @zynqmp_dp_drm_init._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @zynqmp_dp_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1658, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zynqmp_dp_probe.__key.9, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1663, i32 59}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1675, i32 4}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @zynqmp_dp_probe._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @zynqmp_dp_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1712, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @zynqmp_dp_probe.__UNIQUE_ID_ddebug325, !35, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!38 = !{ptr @__param_str_aux_timeout_ms, !1, !"__param_str_aux_timeout_ms", i1 false, i1 false}
!39 = !{ptr @zynqmp_dp_aux_timeout_ms, !40, !"zynqmp_dp_aux_timeout_ms", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 38, i32 13}
!41 = !{ptr @__param_str_power_on_delay_ms, !6, !"__param_str_power_on_delay_ms", i1 false, i1 false}
!42 = !{ptr @zynqmp_dp_power_on_delay_ms, !43, !"zynqmp_dp_power_on_delay_ms", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 45, i32 13}
!44 = !{ptr @zynqmp_dp_set_format.display, !45, !"display", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1114, i32 40}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1143, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @zynqmp_dp_set_format._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @zynqmp_dp_set_format._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1149, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @zynqmp_dp_set_format._entry.18, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @zynqmp_dp_set_format._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1174, i32 3}
!58 = !{ptr @zynqmp_dp_set_format._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @zynqmp_dp_set_format._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @zynqmp_dp_encoder_helper_funcs, !61, !"zynqmp_dp_encoder_helper_funcs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1510, i32 46}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1467, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @zynqmp_dp_encoder_atomic_mode_set._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @zynqmp_dp_encoder_atomic_mode_set._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 579, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @zynqmp_dp_mode_configure._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @zynqmp_dp_mode_configure._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 601, i32 2}
!74 = !{ptr @zynqmp_dp_mode_configure._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @zynqmp_dp_mode_configure._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1264, i32 4}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @zynqmp_dp_encoder_mode_set_stream.__UNIQUE_ID_ddebug315, !77, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1426, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @zynqmp_dp_encoder_enable.__UNIQUE_ID_ddebug323, !81, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 915, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @zynqmp_dp_train_loop._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @zynqmp_dp_train_loop._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 826, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @zynqmp_dp_train._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @zynqmp_dp_train._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 833, i32 3}
!96 = !{ptr @zynqmp_dp_train._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @zynqmp_dp_train._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 839, i32 3}
!100 = !{ptr @zynqmp_dp_train._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @zynqmp_dp_train._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 875, i32 3}
!104 = !{ptr @zynqmp_dp_train._entry.46, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @zynqmp_dp_train._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 520, i32 4}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @zynqmp_dp_phy_ready._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @zynqmp_dp_phy_ready._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1499, i32 3}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @zynqmp_dp_encoder_atomic_check.__UNIQUE_ID_ddebug324, !112, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!115 = !{ptr @zynqmp_dp_connector_funcs, !116, !"zynqmp_dp_connector_funcs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1382, i32 41}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1309, i32 4}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @zynqmp_dp_connector_detect.__UNIQUE_ID_ddebug316, !118, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!121 = !{ptr @zynqmp_dp_connector_helper_funcs, !122, !"zynqmp_dp_connector_helper_funcs", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1392, i32 1}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1364, i32 3}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug321, !124, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!127 = !{ptr @zynqmp_dp_connector_mode_valid.__UNIQUE_ID_ddebug322, !128, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1373, i32 3}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1056, i32 3}
!131 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @zynqmp_dp_aux_init._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @zynqmp_dp_aux_init._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1064, i32 17}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1016, i32 4}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug312, !137, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1021, i32 4}
!142 = !{ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug313, !141, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1028, i32 2}
!145 = !{ptr @zynqmp_dp_aux_transfer.__UNIQUE_ID_ddebug314, !144, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 379, i32 2}
!148 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @zynqmp_dp_reset._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @zynqmp_dp_reset._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 469, i32 40}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 478, i32 5}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @zynqmp_dp_phy_probe._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @zynqmp_dp_phy_probe._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 485, i32 5}
!162 = !{ptr @zynqmp_dp_phy_probe._entry.71, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @zynqmp_dp_phy_probe._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 400, i32 4}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @zynqmp_dp_phy_init._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @zynqmp_dp_phy_init._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 414, i32 4}
!171 = !{ptr @zynqmp_dp_phy_init._entry.76, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @zynqmp_dp_phy_init._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1565, i32 3}
!175 = !{ptr @zynqmp_dp_irq_handler._rs, !174, !"_rs", i1 false, i1 false}
!176 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @zynqmp_dp_irq_handler.descriptor, !174, !"descriptor", i1 false, i1 false}
!179 = !{ptr @zynqmp_dp_irq_handler._rs.82, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 1567, i32 3}
!181 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @zynqmp_dp_irq_handler.descriptor.83, !180, !"descriptor", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 436, i32 4}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @zynqmp_dp_phy_exit._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @zynqmp_dp_phy_exit._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/xlnx/zynqmp_dp.c", i32 443, i32 4}
!190 = !{ptr @zynqmp_dp_phy_exit._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @zynqmp_dp_phy_exit._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 2156859790}
!202 = !{i64 6926297}
!203 = !{i64 2156861083}
!204 = !{i64 2156860925}
!205 = !{i64 6926715}
!206 = !{i64 2156860456}
!207 = !{i64 2149090333, i64 2149090338, i64 2149090351, i64 2149090395, i64 2149090429, i64 2149090450}
!208 = !{i8 0, i8 2}
