; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/ite-it66121.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/ite-it66121.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.it66121_ctx = type { ptr, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], i32, %struct.mutex, %struct.hdmi_avi_infoframe }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }

@__initcall__kmod_ite_it66121__313_1034_it66121_driver_init6 = internal global ptr @it66121_driver_init, section ".initcall6.init", align 4
@it66121_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @it66121_probe, ptr @it66121_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @it66121_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @it66121_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_it66121_driver_exit = internal global ptr @it66121_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [28 x i8] c"ite_it66121.author=Phong LE\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [56 x i8] c"ite_it66121.description=IT66121 HDMI transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [52 x i8] c"ite_it66121.file=drivers/gpu/drm/bridge/ite-it66121\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [27 x i8] c"ite_it66121.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"it66121\00", [24 x i8] zeroinitializer }, align 32
@it66121_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ite,it66121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@it66121_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"it66121\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@it66121_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2C check functionality failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"it66121_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/bridge/ite-it66121.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr = internal global ptr @it66121_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@it66121_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"The endpoint is unconnected\0A\00", [35 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr.9 = internal global ptr @it66121_probe._entry.7, section ".printk_index", align 4
@it66121_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 928, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"The remote device is disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr.12 = internal global ptr @it66121_probe._entry.10, section ".printk_index", align 4
@it66121_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ite_it66121\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Next bridge not found, deferring probe\0A\00", [56 x i8] zeroinitializer }, align 32
@it66121_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcn33\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcn18\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrf12\00", [26 x i8] zeroinitializer }, align 32
@it66121_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 950, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator_bulk failed\0A\00", [41 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr.21 = internal global ptr @it66121_probe._entry.19, section ".printk_index", align 4
@it66121_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@it66121_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 511, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @it66121_regmap_banks, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ite_it66121:960:(&it66121_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@it66121_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @it66121_bridge_attach, ptr null, ptr @it66121_bridge_mode_valid, ptr null, ptr null, ptr null, ptr @it66121_bridge_mode_set, ptr null, ptr null, ptr null, ptr @it66121_bridge_enable, ptr @it66121_bridge_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr @it66121_bridge_atomic_get_output_bus_fmts, ptr @it66121_bridge_atomic_get_input_bus_fmts, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr @it66121_bridge_detect, ptr null, ptr @it66121_bridge_get_edid, ptr null, ptr @it66121_bridge_hpd_enable, ptr @it66121_bridge_hpd_disable }, [60 x i8] zeroinitializer }, align 32
@it66121_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 989, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request irq %d:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr.25 = internal global ptr @it66121_probe._entry.23, section ".printk_index", align 4
@it66121_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 996, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IT66121 revision %d probed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@it66121_probe._entry_ptr.29 = internal global ptr @it66121_probe._entry.26, section ".printk_index", align 4
@it66121_regmap_banks = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str, i32 0, i32 511, i32 15, i32 1, i32 0, i32 0, i32 304 }], [32 x i8] zeroinitializer }, align 32
@__const.it66121_bridge_mode_set.aviinfo_reg = private unnamed_addr constant [13 x i16] [i16 344, i16 345, i16 346, i16 347, i16 348, i16 350, i16 351, i16 352, i16 353, i16 354, i16 355, i16 356, i16 357], align 2
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to setup AVI infoframe: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to pack infoframe: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@it66121_bridge_hpd_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable HPD IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"it66121_bridge_hpd_enable\00", [38 x i8] zeroinitializer }, align 32
@it66121_bridge_hpd_enable._entry_ptr = internal global ptr @it66121_bridge_hpd_enable._entry, section ".printk_index", align 4
@it66121_bridge_hpd_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to disable HPD IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"it66121_bridge_hpd_disable\00", [37 x i8] zeroinitializer }, align 32
@it66121_bridge_hpd_disable._entry_ptr = internal global ptr @it66121_bridge_hpd_disable._entry, section ".printk_index", align 4
@it66121_irq_threaded_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 858, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot read STATUS1_REG %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"it66121_irq_threaded_handler\00", [35 x i8] zeroinitializer }, align 32
@it66121_irq_threaded_handler._entry_ptr = internal global ptr @it66121_irq_threaded_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 24]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"it66121_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1024, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1026, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"it66121_dt_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1012, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"it66121_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1018, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 899, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 914, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 922, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 928, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 935, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 943, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 945, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 946, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 947, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 950, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"it66121_regmap_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 234, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 960, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"it66121_bridge_funcs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 821, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 989, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 996, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"it66121_regmap_banks\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 221, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 718, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 724, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 794, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 805, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [40 x i8] c"../drivers/gpu/drm/bridge/ite-it66121.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 858, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_it66121_driver_exit, ptr @__initcall__kmod_ite_it66121__313_1034_it66121_driver_init6, ptr @it66121_bridge_hpd_disable._entry, ptr @it66121_bridge_hpd_disable._entry_ptr, ptr @it66121_bridge_hpd_enable._entry, ptr @it66121_bridge_hpd_enable._entry_ptr, ptr @it66121_driver_exit, ptr @it66121_irq_threaded_handler._entry, ptr @it66121_irq_threaded_handler._entry_ptr, ptr @it66121_probe._entry, ptr @it66121_probe._entry.10, ptr @it66121_probe._entry.19, ptr @it66121_probe._entry.23, ptr @it66121_probe._entry.26, ptr @it66121_probe._entry.7, ptr @it66121_probe._entry_ptr, ptr @it66121_probe._entry_ptr.12, ptr @it66121_probe._entry_ptr.21, ptr @it66121_probe._entry_ptr.25, ptr @it66121_probe._entry_ptr.29, ptr @it66121_probe._entry_ptr.9, ptr @it66121_driver, ptr @.str, ptr @it66121_dt_match, ptr @it66121_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @it66121_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @it66121_probe._key, ptr @it66121_regmap_config, ptr @.str.22, ptr @it66121_bridge_funcs, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @it66121_regmap_banks, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_regmap_banks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_bridge_hpd_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_bridge_hpd_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it66121_irq_threaded_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @it66121_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @it66121_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @it66121_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %vendor_ids = alloca [2 x i32], align 8
  %device_ids = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vendor_ids) #9
  %0 = ptrtoint ptr %vendor_ids to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %vendor_ids, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_ids) #9
  %1 = ptrtoint ptr %device_ids to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %device_ids, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 504, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %9, i32 noundef 0, i32 noundef 0) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev10, align 4
  %client11 = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %client11, align 4
  %bus_width = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 8
  %call.i.i220 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call6, ptr noundef nonnull @.str.6, ptr noundef %bus_width, i32 noundef 1, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %call6) #9
  %12 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_width, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end9.cleanup_crit_edge [
    i32 12, label %if.end9.if.end17_crit_edge
    i32 24, label %if.end9.if.end17_crit_edge230
  ]

if.end9.if.end17_crit_edge230:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9.if.end17_crit_edge, %if.end9.if.end17_crit_edge230
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call19 = tail call ptr @of_graph_get_remote_node(ptr noundef %16, i32 noundef 1, i32 noundef -1) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call27 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call19) #9
  br i1 %call27, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %call19) #9
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %call34 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call19) #9
  %next_bridge = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %next_bridge, align 4
  tail call void @of_node_put(ptr noundef nonnull %call19) #9
  %22 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_bridge, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %do.body38, label %if.end52

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it66121_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it66121_probe, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !99

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @it66121_probe.__UNIQUE_ID_ddebug307, ptr noundef %25, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end33
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @it66121_probe.__key) #9
  %supplies = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.16, ptr %supplies, align 4
  %arrayidx57 = getelementptr %struct.it66121_ctx, ptr %call.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.17, ptr %arrayidx57, align 4
  %arrayidx60 = getelementptr %struct.it66121_ctx, ptr %call.i, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.18, ptr %arrayidx60, align 4
  %30 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev10, align 4
  %call64 = tail call i32 @devm_regulator_bulk_get(ptr noundef %31, i32 noundef 3, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end71:                                         ; preds = %if.end52
  %call.i221 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool73.not = icmp eq i32 %call.i221, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %gpio_reset.i = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %35, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 20) #9
  %36 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %37, i32 noundef 0) #9
  %call77 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @it66121_regmap_config, ptr noundef nonnull @it66121_probe._key, ptr noundef nonnull @.str.22) #9
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call77, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %call.i223 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #9
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end75
  %call87 = call i32 @regmap_read(ptr noundef %call77, i32 noundef 0, ptr noundef nonnull %vendor_ids) #9
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %arrayidx89 = getelementptr inbounds [2 x i32], ptr %vendor_ids, i32 0, i32 1
  %call90 = call i32 @regmap_read(ptr noundef %43, i32 noundef 1, ptr noundef %arrayidx89) #9
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call93 = call i32 @regmap_read(ptr noundef %45, i32 noundef 2, ptr noundef nonnull %device_ids) #9
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %arrayidx95 = getelementptr inbounds [2 x i32], ptr %device_ids, i32 0, i32 1
  %call96 = call i32 @regmap_read(ptr noundef %47, i32 noundef 3, ptr noundef %arrayidx95) #9
  %48 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx95, align 4
  %and = lshr i32 %49, 4
  %shr = and i32 %and, 15
  %and115 = and i32 %49, 15
  store i32 %and115, ptr %arrayidx95, align 4
  %50 = ptrtoint ptr %vendor_ids to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vendor_ids, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %51)
  %cmp117.not = icmp eq i32 %51, 84
  br i1 %cmp117.not, label %lor.lhs.false, label %if.end84.if.then126_crit_edge

if.end84.if.then126_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

lor.lhs.false:                                    ; preds = %if.end84
  %52 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %53)
  %cmp119.not = icmp eq i32 %53, 73
  br i1 %cmp119.not, label %lor.lhs.false120, label %lor.lhs.false.if.then126_crit_edge

lor.lhs.false.if.then126_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

lor.lhs.false120:                                 ; preds = %lor.lhs.false
  %54 = ptrtoint ptr %device_ids to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device_ids, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %55)
  %cmp122.not = icmp eq i32 %55, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and115)
  %cmp125.not = icmp eq i32 %and115, 6
  %or.cond = select i1 %cmp122.not, i1 %cmp125.not, i1 false
  br i1 %or.cond, label %if.end128, label %lor.lhs.false120.if.then126_crit_edge

lor.lhs.false120.if.then126_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

if.then126:                                       ; preds = %lor.lhs.false120.if.then126_crit_edge, %lor.lhs.false.if.then126_crit_edge, %if.end84.if.then126_crit_edge
  %call.i225 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #9
  br label %cleanup

if.end128:                                        ; preds = %lor.lhs.false120
  %funcs = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @it66121_bridge_funcs, ptr %funcs, align 4
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %of_node131 = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %of_node131 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %of_node131, align 4
  %type = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 1, i32 10
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 11, ptr %type, align 4
  %ops = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 1, i32 9
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7, ptr %ops, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end128.dev_name.exit_crit_edge

if.end128.dev_name.exit_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end128.dev_name.exit_crit_edge
  %retval.0.i226 = phi ptr [ %67, %if.end.i ], [ %65, %if.end128.dev_name.exit_crit_edge ]
  %call135 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %63, ptr noundef null, ptr noundef nonnull @it66121_irq_threaded_handler, i32 noundef 8192, ptr noundef %retval.0.i226, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %do.end140, label %if.end143

do.end140:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %69, i32 noundef %call135) #12
  %call.i228 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #9
  br label %cleanup

if.end143:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bridge = getelementptr inbounds %struct.it66121_ctx, ptr %call.i, i32 0, i32 1
  call void @drm_bridge_add(ptr noundef %bridge) #9
  %70 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.27, i32 noundef %shr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %do.end140, %if.then126, %if.then80, %if.end71.cleanup_crit_edge, %do.end69, %if.then43, %do.body38, %if.then28, %do.end24, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call64, %do.end69 ], [ %41, %if.then80 ], [ -19, %if.then126 ], [ %call135, %do.end140 ], [ 0, %if.end143 ], [ -19, %if.then28 ], [ -22, %do.end24 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -517, %if.then43 ], [ %call.i221, %if.end71.cleanup_crit_edge ], [ -517, %do.body38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_ids) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vendor_ids) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i = getelementptr inbounds %struct.it66121_ctx, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #9
  %bridge = getelementptr inbounds %struct.it66121_ctx, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #9
  %lock = getelementptr inbounds %struct.it66121_ctx, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_irq_threaded_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  %dev1 = getelementptr inbounds %struct.it66121_ctx, ptr %dev_id, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.it66121_ctx, ptr %dev_id, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 14, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock.thread_crit_edge

entry.unlock.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.unlock.thread_crit_edge, label %if.end4

if.end.unlock.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %call6 = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef %call6) #12
  br label %unlock

if.else:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and9 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end13_crit_edge, label %if.then11

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.else
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.if.end13_crit_edge

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 21, i32 noundef 9) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.then11.if.end13_crit_edge, %if.else.if.end13_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and14 = and i32 %16, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call fastcc i32 @it66121_abort_ddc_ops(ptr noundef %dev_id)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.unlock_crit_edge, label %if.then21

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then21:                                        ; preds = %if.end18
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 4
  %call.i45 = call i32 @regmap_read(ptr noundef %23, i32 noundef 14, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %it66121_is_hpd_detect.exit, label %it66121_is_hpd_detect.exit.thread

it66121_is_hpd_detect.exit.thread:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %unlock

it66121_is_hpd_detect.exit:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %and.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %spec.select = select i1 %tobool1.i.not, i32 2, i32 1
  br label %unlock

unlock.thread:                                    ; preds = %if.end.unlock.thread_crit_edge, %entry.unlock.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.end32

unlock:                                           ; preds = %it66121_is_hpd_detect.exit, %it66121_is_hpd_detect.exit.thread, %if.end18.unlock_crit_edge, %do.end
  %status.0 = phi i32 [ -1, %do.end ], [ -1, %if.end18.unlock_crit_edge ], [ 2, %it66121_is_hpd_detect.exit.thread ], [ %spec.select, %it66121_is_hpd_detect.exit ]
  %event.0 = phi i1 [ false, %do.end ], [ false, %if.end18.unlock_crit_edge ], [ true, %it66121_is_hpd_detect.exit.thread ], [ true, %it66121_is_hpd_detect.exit ]
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %call.i49 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 14, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br i1 %event.0, label %if.then31, label %unlock.if.end32_crit_edge

unlock.if.end32_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  %bridge = getelementptr inbounds %struct.it66121_ctx, ptr %dev_id, i32 0, i32 1
  call void @drm_bridge_hpd_notify(ptr noundef %bridge, i32 noundef %status.0) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %unlock.if.end32_crit_edge, %unlock.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool10.not = icmp eq i32 %call.i83, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 97, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool15.not = icmp eq i32 %call.i84, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 98, i32 noundef 68, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool20.not = icmp eq i32 %call.i85, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 100, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool25.not = icmp eq i32 %call.i86, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 97, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool30.not = icmp eq i32 %call.i87, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 98, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool35.not = icmp eq i32 %call.i88, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 100, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool40.not = icmp eq i32 %call.i89, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool45.not = icmp eq i32 %call.i90, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 50) #9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 9, i32 noundef 52, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i91, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %call.i83, %if.end7.cleanup_crit_edge ], [ %call.i84, %if.end12.cleanup_crit_edge ], [ %call.i85, %if.end17.cleanup_crit_edge ], [ %call.i86, %if.end22.cleanup_crit_edge ], [ %call.i87, %if.end27.cleanup_crit_edge ], [ %call.i88, %if.end32.cleanup_crit_edge ], [ %call.i89, %if.end37.cleanup_crit_edge ], [ %call.i90, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @it66121_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_width = getelementptr i8, ptr %bridge, i32 336
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp = icmp eq i32 %1, 12
  %cond = select i1 %cmp, i32 74250, i32 148500
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp1 = icmp ugt i32 %3, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %3)
  %cmp3 = icmp slt i32 %3, 25000
  %. = select i1 %cmp3, i32 16, i32 0
  %retval.0 = select i1 %cmp1, i32 15, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it66121_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  %buf = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %lock = getelementptr i8, ptr %bridge, i32 340
  %1 = call ptr @memset(ptr %buf, i32 255, i32 17)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %hdmi_avi_infoframe = getelementptr i8, ptr %bridge, i32 432
  tail call void @hdmi_avi_infoframe_init(ptr noundef %hdmi_avi_infoframe) #9
  %connector = getelementptr i8, ptr %bridge, i32 284
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 4
  %call = tail call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef %hdmi_avi_infoframe, ptr noundef %3, ptr noundef %adjusted_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %call) #9
  br label %unlock

if.end:                                           ; preds = %entry
  %call3 = call i32 @hdmi_avi_infoframe_pack(ptr noundef %hdmi_avi_infoframe, ptr noundef nonnull %buf, i32 noundef 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %call3) #9
  br label %unlock

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr [13 x i16], ptr @__const.it66121_bridge_mode_set.aviinfo_reg, i32 0, i32 %i.067
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %i.067, 4
  %arrayidx7 = getelementptr [17 x i8], ptr %buf, i32 0, i32 %add
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %call9 = call i32 @regmap_write(ptr noundef %5, i32 noundef %conv, i32 noundef %conv8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %for.body.unlock_crit_edge

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.end:                                          ; preds = %for.cond
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv15 = zext i8 %13 to i32
  %call16 = call i32 @regmap_write(ptr noundef %11, i32 noundef 349, i32 noundef %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end.unlock_crit_edge

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end19:                                         ; preds = %for.end
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call21 = call i32 @regmap_write(ptr noundef %15, i32 noundef 205, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.unlock_crit_edge

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end24:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call26 = call i32 @regmap_write(ptr noundef %17, i32 noundef 192, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.unlock_crit_edge

if.end24.unlock_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end29:                                         ; preds = %if.end24
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 15, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.unlock_crit_edge

if.end29.unlock_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end34:                                         ; preds = %if.end29
  %call35 = call fastcc i32 @it66121_configure_input(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.unlock_crit_edge

if.end34.unlock_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @it66121_configure_afe(ptr noundef %add.ptr, ptr noundef %adjusted_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.unlock_crit_edge

if.end38.unlock_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call.i66 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 15, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %unlock

unlock:                                           ; preds = %if.end42, %if.end38.unlock_crit_edge, %if.end34.unlock_crit_edge, %if.end29.unlock_crit_edge, %if.end24.unlock_crit_edge, %if.end19.unlock_crit_edge, %for.end.unlock_crit_edge, %for.body.unlock_crit_edge, %if.then4, %if.then
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it66121_bridge_enable(ptr nocapture noundef %bridge, ptr nocapture noundef readonly %bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_state, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %3) #9
  %connector = getelementptr i8, ptr %bridge, i32 284
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %connector, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 193, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %entry.it66121_set_mute.exit_crit_edge

entry.it66121_set_mute.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_set_mute.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 198, i32 noundef 3) #9
  br label %it66121_set_mute.exit

it66121_set_mute.exit:                            ; preds = %if.end3.i, %entry.it66121_set_mute.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it66121_bridge_disable(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 193, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %entry.it66121_set_mute.exit_crit_edge

entry.it66121_set_mute.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_set_mute.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 198, i32 noundef 3) #9
  br label %it66121_set_mute.exit

it66121_set_mute.exit:                            ; preds = %if.end3.i, %entry.it66121_set_mute.exit_crit_edge
  %connector = getelementptr i8, ptr %bridge, i32 284
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %connector, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @it66121_bridge_atomic_get_output_bus_fmts(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, ptr nocapture noundef writeonly %num_output_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4106, ptr %call7.i.i.i, align 8
  %2 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_output_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @it66121_bridge_atomic_get_input_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_width = getelementptr i8, ptr %bridge, i32 336
  %2 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  %. = select i1 %cmp, i32 4108, i32 4106
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %call7.i.i.i, align 8
  %5 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_input_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_bridge_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 14, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %it66121_is_hpd_detect.exit, label %it66121_is_hpd_detect.exit.thread

it66121_is_hpd_detect.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %5

it66121_is_hpd_detect.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %spec.select = select i1 %tobool1.i.not, i32 2, i32 1
  br label %5

5:                                                ; preds = %it66121_is_hpd_detect.exit, %it66121_is_hpd_detect.exit.thread
  %6 = phi i32 [ 2, %it66121_is_hpd_detect.exit.thread ], [ %spec.select, %it66121_is_hpd_detect.exit ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @it66121_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %lock = getelementptr i8, ptr %bridge, i32 340
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call = tail call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @it66121_get_edid_block, ptr noundef %add.ptr) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it66121_bridge_hpd_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %bridge, i32 288
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it66121_bridge_hpd_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %bridge, i32 288
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_avi_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it66121_configure_input(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_width = getelementptr inbounds %struct.it66121_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp = icmp eq i32 %1, 12
  %spec.select = select i1 %cmp, i32 4, i32 0
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 112, i32 noundef %spec.select) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 114, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it66121_configure_afe(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 97, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %3)
  %cmp = icmp sgt i32 %3, 80000
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 98, i32 noundef 144, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 100, i32 noundef 137, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool9.not = icmp eq i32 %call.i62, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 104, i32 noundef 16, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool14.not = icmp eq i32 %call.i63, 0
  br i1 %tobool14.not, label %if.end11.if.end32_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else:                                          ; preds = %if.end
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 98, i32 noundef 144, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool19.not = icmp eq i32 %call.i64, 0
  br i1 %tobool19.not, label %if.end21, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.else
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %call.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 100, i32 noundef 137, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool24.not = icmp eq i32 %call.i65, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 104, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool29.not = icmp eq i32 %call.i66, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end32:                                         ; preds = %if.end26.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 4, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool35.not = icmp eq i32 %call.i67, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %call.i68 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 97, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i68, %if.end37 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.then1.cleanup_crit_edge ], [ %call.i62, %if.end6.cleanup_crit_edge ], [ %call.i63, %if.end11.cleanup_crit_edge ], [ %call.i64, %if.else.cleanup_crit_edge ], [ %call.i65, %if.end21.cleanup_crit_edge ], [ %call.i66, %if.end26.cleanup_crit_edge ], [ %call.i67, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it66121_get_edid_block(ptr nocapture noundef readonly %context, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #2 align 64 {
entry:
  %val.i145 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  %rem = and i32 %block, 1
  %mul = mul nuw nsw i32 %rem, %len
  %div141 = lshr i32 %block, 1
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @it66121_abort_ddc_ops(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %it66121_clear_ddc_fifo.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

it66121_clear_ddc_fifo.exit:                      ; preds = %if.end7
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 21, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %while.cond.preheader, label %it66121_clear_ddc_fifo.exit.cleanup_crit_edge

it66121_clear_ddc_fifo.exit.cleanup_crit_edge:    ; preds = %it66121_clear_ddc_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %it66121_clear_ddc_fifo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp164 = icmp sgt i32 %len, 0
  br i1 %cmp164, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end76
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.cleanup_crit_edge

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %offset.0167 = phi i32 [ %add, %while.cond.loopexit.while.body_crit_edge ], [ %mul, %while.cond.preheader.while.body_crit_edge ]
  %remain.0166 = phi i32 [ %sub, %while.cond.loopexit.while.body_crit_edge ], [ %len, %while.cond.preheader.while.body_crit_edge ]
  %buf.addr.0165 = phi ptr [ %incdec.ptr, %while.cond.loopexit.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %9 = call i32 @llvm.umin.i32(i32 %remain.0166, i32 32)
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %call18 = call i32 @regmap_write(ptr noundef %13, i32 noundef 21, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i142 = call i64 @ktime_get() #9
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 362) #9
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 22, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool24.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool24.not.i, label %if.end28.i, label %if.end21.it66121_wait_ddc_ready.exit.thread_crit_edge

if.end21.it66121_wait_ddc_ready.exit.thread_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_wait_ddc_ready.exit.thread

if.end28.i:                                       ; preds = %if.end21
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and.i = and i32 %18, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end25, label %if.end28.i.it66121_wait_ddc_ready.exit.thread_crit_edge

if.end28.i.it66121_wait_ddc_ready.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_wait_ddc_ready.exit.thread

it66121_wait_ddc_ready.exit.thread:               ; preds = %if.end28.i.it66121_wait_ddc_ready.exit.thread_crit_edge, %if.end21.it66121_wait_ddc_ready.exit.thread_crit_edge
  %retval.0.i143.ph = phi i32 [ -11, %if.end28.i.it66121_wait_ddc_ready.exit.thread_crit_edge ], [ %call8.i, %if.end21.it66121_wait_ddc_ready.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end28.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  %call27 = call i32 @regmap_read(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and31 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  %call34 = call fastcc i32 @it66121_abort_ddc_ops(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  %call.i144 = call i32 @regmap_write(ptr noundef %24, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool40.not = icmp eq i32 %call.i144, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %25 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %context, align 4
  %call44 = call i32 @regmap_write(ptr noundef %26, i32 noundef 17, i32 noundef 160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %27 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %context, align 4
  %call49 = call i32 @regmap_write(ptr noundef %28, i32 noundef 18, i32 noundef %offset.0167) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %29 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context, align 4
  %call54 = call i32 @regmap_write(ptr noundef %30, i32 noundef 19, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %31 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context, align 4
  %call59 = call i32 @regmap_write(ptr noundef %32, i32 noundef 20, i32 noundef %div141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  %call64 = call i32 @regmap_write(ptr noundef %34, i32 noundef 21, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %add = add i32 %offset.0167, %9
  %sub = sub nsw i32 %remain.0166, %9
  call void @msleep(i32 noundef 20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i145) #9
  %35 = ptrtoint ptr %val.i145 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i145, align 4, !annotation !100
  %call.i146 = call i64 @ktime_get() #9
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 362) #9
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context, align 4
  %call8.i147 = call i32 @regmap_read(ptr noundef %37, i32 noundef 22, ptr noundef nonnull %val.i145) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i147)
  %tobool24.not.i148 = icmp eq i32 %call8.i147, 0
  br i1 %tobool24.not.i148, label %if.end28.i152, label %if.end67.it66121_wait_ddc_ready.exit154.thread_crit_edge

if.end67.it66121_wait_ddc_ready.exit154.thread_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_wait_ddc_ready.exit154.thread

if.end28.i152:                                    ; preds = %if.end67
  %38 = ptrtoint ptr %val.i145 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i145, align 4
  %and.i149 = and i32 %39, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool29.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool29.not.i150, label %it66121_wait_ddc_ready.exit154, label %if.end28.i152.it66121_wait_ddc_ready.exit154.thread_crit_edge

if.end28.i152.it66121_wait_ddc_ready.exit154.thread_crit_edge: ; preds = %if.end28.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %it66121_wait_ddc_ready.exit154.thread

it66121_wait_ddc_ready.exit154.thread:            ; preds = %if.end28.i152.it66121_wait_ddc_ready.exit154.thread_crit_edge, %if.end67.it66121_wait_ddc_ready.exit154.thread_crit_edge
  %retval.0.i153.ph = phi i32 [ -11, %if.end28.i152.it66121_wait_ddc_ready.exit154.thread_crit_edge ], [ %call8.i147, %if.end67.it66121_wait_ddc_ready.exit154.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i145) #9
  br label %cleanup

it66121_wait_ddc_ready.exit154:                   ; preds = %if.end28.i152
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i145) #9
  br label %do.body

do.body:                                          ; preds = %if.end76.do.body_crit_edge, %it66121_wait_ddc_ready.exit154
  %buf.addr.1 = phi ptr [ %buf.addr.0165, %it66121_wait_ddc_ready.exit154 ], [ %incdec.ptr, %if.end76.do.body_crit_edge ]
  %cnt.0 = phi i32 [ %9, %it66121_wait_ddc_ready.exit154 ], [ %dec, %if.end76.do.body_crit_edge ]
  %40 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %context, align 4
  %call73 = call i32 @regmap_read(ptr noundef %41, i32 noundef 23, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %do.body
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %conv = trunc i32 %43 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.1, i32 1
  %44 = ptrtoint ptr %buf.addr.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %buf.addr.1, align 1
  %dec = add nsw i32 %cnt.0, -1
  %cmp77 = icmp sgt i32 %cnt.0, 1
  br i1 %cmp77, label %if.end76.do.body_crit_edge, label %while.cond.loopexit

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %it66121_wait_ddc_ready.exit154.thread, %if.end62.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %it66121_wait_ddc_ready.exit.thread, %if.end16.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %it66121_clear_ddc_fifo.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call1.i, %it66121_clear_ddc_fifo.exit.cleanup_crit_edge ], [ %retval.0.i143.ph, %it66121_wait_ddc_ready.exit.thread ], [ %retval.0.i153.ph, %it66121_wait_ddc_ready.exit154.thread ], [ %call.i.i, %if.end7.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %call73, %do.body.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ %call.i144, %if.end38.cleanup_crit_edge ], [ %call44, %if.end42.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ %call54, %if.end52.cleanup_crit_edge ], [ %call59, %if.end57.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ 0, %while.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it66121_abort_ddc_ops(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %swreset = alloca i32, align 4
  %cpdesire = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %swreset) #9
  %0 = ptrtoint ptr %swreset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %swreset, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpdesire) #9
  %1 = ptrtoint ptr %cpdesire to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cpdesire, align 4, !annotation !100
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %swreset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %cpdesire) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %cpdesire to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpdesire, align 4
  %and = and i32 %9, 254
  %call7 = call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %swreset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swreset, align 4
  %or = or i32 %13, 1
  %call12 = call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %call.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %call21 = call i32 @regmap_write(ptr noundef %17, i32 noundef 21, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call fastcc i32 @it66121_wait_ddc_ready(ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpdesire) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %swreset) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @it66121_wait_ddc_ready(ptr nocapture noundef readonly %ctx) unnamed_addr #7 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  %call = tail call i64 @ktime_get() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 362) #9
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %call8 = call i32 @regmap_read(ptr noundef %2, i32 noundef 22, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool24.not = icmp eq i32 %call8, 0
  br i1 %tobool24.not, label %if.end28, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %. = select i1 %tobool29.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %entry.cleanup_crit_edge ], [ %., %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_ite_it66121__313_1034_it66121_driver_init6, !1, !"__initcall__kmod_ite_it66121__313_1034_it66121_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1034, i32 1}
!2 = !{ptr @__exitcall_it66121_driver_exit, !1, !"__exitcall_it66121_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author314, !4, !"__UNIQUE_ID_author314", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1036, i32 1}
!5 = !{ptr @__UNIQUE_ID_description315, !6, !"__UNIQUE_ID_description315", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1037, i32 1}
!7 = !{ptr @__UNIQUE_ID_file316, !8, !"__UNIQUE_ID_file316", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1038, i32 1}
!9 = !{ptr @__UNIQUE_ID_license317, !8, !"__UNIQUE_ID_license317", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1026, i32 11}
!12 = !{ptr @it66121_driver, !13, !"it66121_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1024, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 899, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @it66121_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @it66121_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 914, i32 27}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 922, i32 3}
!26 = !{ptr @it66121_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @it66121_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 928, i32 3}
!30 = !{ptr @it66121_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @it66121_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 935, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @it66121_probe.__UNIQUE_ID_ddebug307, !33, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!36 = !{ptr @it66121_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 943, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 945, i32 28}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 946, i32 28}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 947, i32 28}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 950, i32 3}
!47 = !{ptr @it66121_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @it66121_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @it66121_probe._key, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 960, i32 16}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 989, i32 3}
!54 = !{ptr @it66121_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @it66121_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 996, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @it66121_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @it66121_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @it66121_regmap_config, !62, !"it66121_regmap_config", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 234, i32 35}
!63 = !{ptr @it66121_regmap_banks, !64, !"it66121_regmap_banks", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 221, i32 38}
!65 = !{ptr @it66121_bridge_funcs, !66, !"it66121_bridge_funcs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 821, i32 38}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 718, i32 3}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 724, i32 3}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 794, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @it66121_bridge_hpd_enable._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @it66121_bridge_hpd_enable._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 805, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @it66121_bridge_hpd_disable._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @it66121_bridge_hpd_disable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 858, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @it66121_irq_threaded_handler._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @it66121_irq_threaded_handler._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @it66121_dt_match, !87, !"it66121_dt_match", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1012, i32 34}
!88 = !{ptr @it66121_id, !89, !"it66121_id", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/ite-it66121.c", i32 1018, i32 35}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148979433, i64 2148979438, i64 2148979451, i64 2148979495, i64 2148979529, i64 2148979550}
!100 = !{!"auto-init"}
