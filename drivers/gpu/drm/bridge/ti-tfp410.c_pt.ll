; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/ti-tfp410.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/ti-tfp410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.tfp410 = type { %struct.drm_bridge, %struct.drm_connector, i32, %struct.delayed_work, ptr, %struct.drm_bridge_timings, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_ti_tfp410__309_448_tfp410_module_init6 = internal global ptr @tfp410_module_init, section ".initcall6.init", align 4
@tfp410_registered_driver.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tfp410_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tfp410_i2c_probe, ptr @tfp410_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tfp410_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tfp410_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@tfp410_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tfp410_probe, ptr @tfp410_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.31, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tfp410_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tfp410_module_exit = internal global ptr @tfp410_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [44 x i8] c"ti_tfp410.author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [50 x i8] c"ti_tfp410.description=TI TFP410 DVI bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [48 x i8] c"ti_tfp410.file=drivers/gpu/drm/bridge/ti-tfp410\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [22 x i8] c"ti_tfp410.license=GPL\00", section ".modinfo", align 1
@tfp410_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: registering i2c driver failed: %d\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tfp410_module_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/bridge/ti-tfp410.c\00", [61 x i8] zeroinitializer }, align 32
@tfp410_module_init._entry_ptr = internal global ptr @tfp410_module_init._entry, section ".printk_index", align 4
@tfp410_module_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: registering platform driver failed: %d\00", [51 x i8] zeroinitializer }, align 32
@tfp410_module_init._entry_ptr.5 = internal global ptr @tfp410_module_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tfp410\00", [25 x i8] zeroinitializer }, align 32
@tfp410_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tfp410\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tfp410_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tfp410\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@tfp410_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 388, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't get i2c reg property from device-tree\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tfp410_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tfp410_i2c_probe._entry_ptr = internal global ptr @tfp410_i2c_probe._entry, section ".printk_index", align 4
@tfp410_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 299, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device-tree data is missing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tfp410_init\00", [20 x i8] zeroinitializer }, align 32
@tfp410_init._entry_ptr = internal global ptr @tfp410_init._entry, section ".printk_index", align 4
@tfp410_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tfp410_attach, ptr @tfp410_detach, ptr @tfp410_mode_valid, ptr null, ptr @tfp410_disable, ptr null, ptr null, ptr null, ptr @tfp410_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@tfp410_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 334, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse powerdown gpio\0A\00", [32 x i8] zeroinitializer }, align 32
@tfp410_init._entry_ptr.17 = internal global ptr @tfp410_init._entry.15, section ".printk_index", align 4
@tfp410_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 135, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Missing encoder\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tfp410_attach\00", [18 x i8] zeroinitializer }, align 32
@tfp410_attach._entry_ptr = internal global ptr @tfp410_attach._entry, section ".printk_index", align 4
@tfp410_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dvi->hpd_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@tfp410_attach.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dvi->hpd_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@tfp410_con_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tfp410_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tfp410_con_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @tfp410_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tfp410_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 158, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drm_connector_init_with_ddc() failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tfp410_attach._entry_ptr.25 = internal global ptr @tfp410_attach._entry.23, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tfp410_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016[drm] EDID read failed. Fallback to standard modes\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tfp410_get_modes\00", [47 x i8] zeroinitializer }, align 32
@tfp410_get_modes._entry_ptr = internal global ptr @tfp410_get_modes._entry, section ".printk_index", align 4
@tfp410_default_timings = internal constant { %struct.drm_bridge_timings, [16 x i8] } { %struct.drm_bridge_timings { i32 10, i32 1200, i32 1300, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk-sample\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,deskew\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tfp410-bridge\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 24]
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"tfp410_registered_driver.0\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"tfp410_i2c_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 406, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"tfp410_platform_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 369, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 429, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 437, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 408, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"tfp410_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 363, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"tfp410_i2c_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 400, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 386, i32 48 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 387, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 299, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"tfp410_bridge_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 207, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 331, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 334, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 135, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 145, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [24 x i8] c"tfp410_con_helper_funcs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 81, i32 48 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"tfp410_con_funcs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 93, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 157, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 57, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [23 x i8] c"tfp410_default_timings\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 215, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 251, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 252, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 282, i32 42 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [38 x i8] c"../drivers/gpu/drm/bridge/ti-tfp410.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 373, i32 12 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_tfp410_module_exit, ptr @__initcall__kmod_ti_tfp410__309_448_tfp410_module_init6, ptr @tfp410_attach._entry, ptr @tfp410_attach._entry.23, ptr @tfp410_attach._entry_ptr, ptr @tfp410_attach._entry_ptr.25, ptr @tfp410_get_modes._entry, ptr @tfp410_get_modes._entry_ptr, ptr @tfp410_i2c_probe._entry, ptr @tfp410_i2c_probe._entry_ptr, ptr @tfp410_init._entry, ptr @tfp410_init._entry.15, ptr @tfp410_init._entry_ptr, ptr @tfp410_init._entry_ptr.17, ptr @tfp410_module_exit, ptr @tfp410_module_init._entry, ptr @tfp410_module_init._entry.3, ptr @tfp410_module_init._entry_ptr, ptr @tfp410_module_init._entry_ptr.5, ptr @tfp410_registered_driver.0, ptr @tfp410_i2c_driver, ptr @tfp410_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @tfp410_match, ptr @tfp410_i2c_ids, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tfp410_bridge_funcs, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @tfp410_attach.__key, ptr @.str.20, ptr @tfp410_attach.__key.21, ptr @.str.22, ptr @tfp410_con_helper_funcs, ptr @tfp410_con_funcs, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @tfp410_default_timings, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_registered_driver.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_module_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_attach.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_con_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_con_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfp410_default_timings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tfp410_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.load = load i8, ptr @tfp410_registered_driver.0, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr @tfp410_registered_driver.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tfp410_platform_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call2) #10
  br label %if.end14

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bf.load11 = load i8, ptr @tfp410_registered_driver.0, align 4
  %bf.set13 = or i8 %bf.load11, 64
  store i8 %bf.set13, ptr @tfp410_registered_driver.0, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %do.end7
  %bf.load15 = load i8, ptr @tfp410_registered_driver.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load15)
  %0 = icmp ult i8 %bf.load15, 64
  %retval.0 = select i1 %0, i32 %call2, i32 0
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %bf.load = load i8, ptr @tfp410_registered_driver.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tfp410_i2c_driver) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load1 = load i8, ptr @tfp410_registered_driver.0, align 4
  %0 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool4.not = icmp eq i8 %0, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tfp410_platform_driver) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !97
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call fastcc i32 @tfp410_init(ptr noundef %dev, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_i2c_remove(ptr nocapture noundef readonly %client) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tfp410_init(ptr noundef %dev, i1 noundef zeroext %i2c) unnamed_addr #4 align 64 {
entry:
  %pclk_sample.i = alloca i32, align 4
  %bus_width.i = alloca i32, align 4
  %deskew.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1456, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev4, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tfp410_bridge_funcs, ptr %funcs, align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node7 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %of_node7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node7, align 4
  %timings = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 5
  %timings9 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %timings9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %timings, ptr %timings9, align 8
  %type = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pclk_sample.i) #7
  %10 = ptrtoint ptr %pclk_sample.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pclk_sample.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_width.i) #7
  %11 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %bus_width.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deskew.i) #7
  %12 = ptrtoint ptr %deskew.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %deskew.i, align 4
  %13 = call ptr @memcpy(ptr %timings, ptr @tfp410_default_timings, i32 16)
  br i1 %i2c, label %if.end3.if.end15_crit_edge, label %if.end.i

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.i:                                         ; preds = %if.end3
  %call.i64 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %6, i32 noundef 0, i32 noundef 0) #7
  %tobool2.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool2.not.i, label %if.end.i.tfp410_parse_timings.exit.thread_crit_edge, label %if.end4.i

if.end.i.tfp410_parse_timings.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tfp410_parse_timings.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i64, ptr noundef nonnull @.str.28, ptr noundef nonnull %pclk_sample.i, i32 noundef 1, i32 noundef 0) #7
  %call.i.i43.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i64, ptr noundef nonnull @.str.29, ptr noundef nonnull %bus_width.i, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %call.i64) #7
  %14 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %timings, align 4
  %15 = ptrtoint ptr %pclk_sample.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pclk_sample.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end4.i.tfp410_parse_timings.exit.thread_crit_edge [
    i32 0, label %if.end4.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb8.i
  ]

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end4.i.tfp410_parse_timings.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tfp410_parse_timings.exit.thread

sw.bb8.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %if.end4.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 138, %sw.bb8.i ], [ 70, %if.end4.i.sw.epilog.i_crit_edge ]
  %18 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %timings, align 4
  %19 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_width.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %20, label %sw.epilog.i.tfp410_parse_timings.exit.thread_crit_edge [
    i32 12, label %sw.epilog.i.sw.epilog15.i_crit_edge
    i32 24, label %sw.bb12.i
  ]

sw.epilog.i.sw.epilog15.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.epilog.i.tfp410_parse_timings.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tfp410_parse_timings.exit.thread

sw.bb12.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.epilog15.i:                                    ; preds = %sw.bb12.i, %sw.epilog.i.sw.epilog15.i_crit_edge
  %.sink.i = phi i32 [ 4106, %sw.bb12.i ], [ 4108, %sw.epilog.i.sw.epilog15.i_crit_edge ]
  %bus_format13.i = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %bus_format13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %bus_format13.i, align 8
  %23 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev4, align 8
  %of_node17.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node17.i, align 8
  %call.i.i44.i = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.30, ptr noundef nonnull %deskew.i, i32 noundef 1, i32 noundef 0) #7
  %27 = ptrtoint ptr %deskew.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %deskew.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %28)
  %cmp.i = icmp ugt i32 %28, 7
  br i1 %cmp.i, label %sw.epilog15.i.tfp410_parse_timings.exit.thread_crit_edge, label %if.end20.i

sw.epilog15.i.tfp410_parse_timings.exit.thread_crit_edge: ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tfp410_parse_timings.exit.thread

if.end20.i:                                       ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  %.neg.i = mul nsw i32 %28, -350
  %sub21.i = add nsw i32 %.neg.i, 2600
  %setup_time_ps.i = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %setup_time_ps.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub21.i, ptr %setup_time_ps.i, align 4
  %30 = mul nuw nsw i32 %28, 350
  %31 = call i32 @llvm.smax.i32(i32 %30, i32 100) #7
  %32 = add nsw i32 %31, -100
  %hold_time_ps.i = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %hold_time_ps.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hold_time_ps.i, align 4
  br label %if.end15

tfp410_parse_timings.exit.thread:                 ; preds = %sw.epilog15.i.tfp410_parse_timings.exit.thread_crit_edge, %sw.epilog.i.tfp410_parse_timings.exit.thread_crit_edge, %if.end4.i.tfp410_parse_timings.exit.thread_crit_edge, %if.end.i.tfp410_parse_timings.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deskew.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pclk_sample.i) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end20.i, %if.end3.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deskew.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pclk_sample.i) #7
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call17 = call ptr @of_graph_get_remote_node(ptr noundef %35, i32 noundef 1, i32 noundef -1) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = call ptr @of_drm_find_bridge(ptr noundef nonnull %call17) #7
  %next_bridge = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call21, ptr %next_bridge, align 4
  call void @of_node_put(ptr noundef nonnull %call17) #7
  %37 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %next_bridge, align 4
  %tobool23.not = icmp eq ptr %38, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 7) #7
  %powerdown = getelementptr inbounds %struct.tfp410, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %powerdown to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call26, ptr %powerdown, align 8
  %cmp.i65 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %40 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %powerdown, align 8
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_bridge_add(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end32, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %tfp410_parse_timings.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %42, %do.end32 ], [ 0, %if.end35 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ], [ -517, %if.end20.cleanup_crit_edge ], [ -22, %tfp410_parse_timings.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_attach(ptr noundef %bridge, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 6
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_bridge, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ops, align 4
  %and9 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %spec.select = select i1 %tobool10.not, i8 6, i8 1
  %12 = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 1, i32 33
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %12, align 4
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ops, align 4
  %and17 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end7.if.end40_crit_edge, label %do.body21

if.end7.if.end40_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %hpd_work = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3
  tail call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #7
  %16 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %hpd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @tfp410_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry28 = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tfp410_hpd_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @tfp410_attach.__key.21) #7
  %20 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_bridge, align 4
  tail call void @drm_bridge_hpd_enable(ptr noundef %21, ptr noundef nonnull @tfp410_hpd_callback, ptr noundef %bridge) #7
  br label %if.end40

if.end40:                                         ; preds = %do.body21, %if.end7.if.end40_crit_edge
  %connector41 = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 1
  %helper_private.i = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 1, i32 35
  %22 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tfp410_con_helper_funcs, ptr %helper_private.i, align 4
  %dev42 = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %23 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev42, align 4
  %25 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_bridge, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddc, align 4
  %call46 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %24, ptr noundef %connector41, ptr noundef nonnull @tfp410_con_funcs, i32 noundef %28, ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 7
  %31 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.24, i32 noundef %call46) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %display_info = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 1, i32 20
  %bus_format = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 2
  %call55 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef %bus_format, i32 noundef 1) #7
  %33 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %encoder, align 4
  %call58 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector41, ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end51, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %do.end51 ], [ 0, %if.end53 ], [ -19, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_detach(ptr noundef %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %next_bridge = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 6
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ops, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_bridge_hpd_disable(ptr noundef %3) #7
  %hpd_work = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 3
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hpd_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tfp410_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %1)
  %cmp = icmp slt i32 %1, 25000
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %1)
  %cmp2 = icmp sgt i32 %1, 165000
  %. = select i1 %cmp2, i32 15, i32 0
  %retval.0 = select i1 %cmp, i32 16, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_disable(ptr nocapture noundef readonly %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powerdown = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 4
  %0 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerdown, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_enable(ptr nocapture noundef readonly %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powerdown = getelementptr inbounds %struct.tfp410, ptr %bridge, i32 0, i32 4
  %0 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerdown, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_hpd_work_func(ptr nocapture noundef readonly %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -1200
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
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
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tfp410_hpd_callback(ptr noundef %arg, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %hpd_work = getelementptr inbounds %struct.tfp410, ptr %arg, i32 0, i32 3
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %hpd_work, i32 noundef 110) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_get_modes(ptr noundef %connector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %connector, i32 1164
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.then8_crit_edge, label %if.then

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @drm_bridge_get_edid(ptr noundef %1, ptr noundef %connector) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %if.then8

if.then8:                                         ; preds = %do.end, %entry.if.then8_crit_edge
  %call9 = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef 1920, i32 noundef 1200) #7
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef 1024, i32 noundef 768) #7
  br label %cleanup

if.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call2) #7
  %call12 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call2) #7
  tail call void @kfree(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ %call9, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %connector, i32 1164
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %call1 = tail call i32 @drm_bridge_detect(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call fastcc i32 @tfp410_init(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tfp410_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ti_tfp410__309_448_tfp410_module_init6, !1, !"__initcall__kmod_ti_tfp410__309_448_tfp410_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 448, i32 1}
!2 = !{ptr @__exitcall_tfp410_module_exit, !3, !"__exitcall_tfp410_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 459, i32 1}
!4 = !{ptr @__UNIQUE_ID_author310, !5, !"__UNIQUE_ID_author310", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 461, i32 1}
!6 = !{ptr @__UNIQUE_ID_description311, !7, !"__UNIQUE_ID_description311", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 462, i32 1}
!8 = !{ptr @__UNIQUE_ID_file312, !9, !"__UNIQUE_ID_file312", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 463, i32 1}
!10 = !{ptr @__UNIQUE_ID_license313, !9, !"__UNIQUE_ID_license313", i1 false, i1 false}
!11 = distinct !{null, !12, !"tfp410_registered_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 420, i32 4}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 429, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tfp410_module_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @tfp410_module_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 437, i32 3}
!21 = !{ptr @tfp410_module_init._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @tfp410_module_init._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 408, i32 11}
!25 = !{ptr @tfp410_i2c_driver, !26, !"tfp410_i2c_driver", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 406, i32 26}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 386, i32 48}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 387, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tfp410_i2c_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @tfp410_i2c_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 299, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tfp410_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @tfp410_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 331, i32 48}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 334, i32 3}
!45 = !{ptr @tfp410_init._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tfp410_init._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tfp410_bridge_funcs, !48, !"tfp410_bridge_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 207, i32 38}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 135, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tfp410_attach._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tfp410_attach._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @tfp410_attach.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 145, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tfp410_attach.__key.21, !55, !"__key", i1 false, i1 false}
!58 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 157, i32 3}
!61 = !{ptr @tfp410_attach._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tfp410_attach._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @tfp410_con_helper_funcs, !64, !"tfp410_con_helper_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 81, i32 48}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 57, i32 4}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tfp410_get_modes._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tfp410_get_modes._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tfp410_con_funcs, !71, !"tfp410_con_funcs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 93, i32 41}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 251, i32 27}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 252, i32 27}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 282, i32 42}
!78 = !{ptr @tfp410_default_timings, !79, !"tfp410_default_timings", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 215, i32 40}
!80 = !{ptr @tfp410_match, !81, !"tfp410_match", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 363, i32 34}
!82 = !{ptr @tfp410_i2c_ids, !83, !"tfp410_i2c_ids", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 400, i32 35}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 373, i32 12}
!86 = !{ptr @tfp410_platform_driver, !87, !"tfp410_platform_driver", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/ti-tfp410.c", i32 369, i32 31}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
