; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/chrontel-ch7033.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/chrontel-ch7033.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ch7033_priv = type { ptr, ptr, %struct.drm_bridge, %struct.drm_connector }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_chrontel_ch7033__307_617_ch7033_driver_init6 = internal global ptr @ch7033_driver_init, section ".initcall6.init", align 4
@ch7033_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ch7033_probe, ptr @ch7033_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ch7033_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ch7033_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ch7033_driver_exit = internal global ptr @ch7033_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [55 x i8] c"chrontel_ch7033.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [65 x i8] c"chrontel_ch7033.description=Chrontel CH7033 Video Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [60 x i8] c"chrontel_ch7033.file=drivers/gpu/drm/bridge/chrontel-ch7033\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [31 x i8] c"chrontel_ch7033.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ch7033\00", [25 x i8] zeroinitializer }, align 32
@ch7033_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chrontel,ch7033\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ch7033_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ch7033\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ch7033_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ch7033_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"chrontel_ch7033:549:(&ch7033_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@ch7033_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch7033_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/bridge/chrontel-ch7033.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr = internal global ptr @ch7033_probe._entry, section ".printk_index", align 4
@ch7033_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error reading the model id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr.9 = internal global ptr @ch7033_probe._entry.7, section ".printk_index", align 4
@ch7033_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"the device is not a ch7033\0A\00", [36 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr.12 = internal global ptr @ch7033_probe._entry.10, section ".printk_index", align 4
@ch7033_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr.14 = internal global ptr @ch7033_probe._entry.13, section ".printk_index", align 4
@ch7033_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown revision %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr.17 = internal global ptr @ch7033_probe._entry.15, section ".printk_index", align 4
@ch7033_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ch7033_bridge_attach, ptr @ch7033_bridge_detach, ptr @ch7033_bridge_mode_valid, ptr null, ptr @ch7033_bridge_disable, ptr null, ptr @ch7033_bridge_mode_set, ptr null, ptr @ch7033_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ch7033_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 581, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chrontel CH7033 Video Encoder\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ch7033_probe._entry_ptr.21 = internal global ptr @ch7033_probe._entry.18, section ".printk_index", align 4
@ch7033_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @ch7033_connector_get_modes, ptr null, ptr null, ptr null, ptr @ch7033_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ch7033_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @ch7033_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize connector\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"ch7033_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 607, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 611, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"ch7033_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 595, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"ch7033_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 601, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"ch7033_regmap_config\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 524, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 549, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 551, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 557, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 561, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 568, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 572, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"ch7033_bridge_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 515, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 581, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"ch7033_connector_helper_funcs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 256, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"ch7033_connector_funcs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 220, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [44 x i8] c"../drivers/gpu/drm/bridge/chrontel-ch7033.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 303, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_ch7033_driver_exit, ptr @__initcall__kmod_chrontel_ch7033__307_617_ch7033_driver_init6, ptr @ch7033_driver_exit, ptr @ch7033_probe._entry, ptr @ch7033_probe._entry.10, ptr @ch7033_probe._entry.13, ptr @ch7033_probe._entry.15, ptr @ch7033_probe._entry.18, ptr @ch7033_probe._entry.7, ptr @ch7033_probe._entry_ptr, ptr @ch7033_probe._entry_ptr.12, ptr @ch7033_probe._entry_ptr.14, ptr @ch7033_probe._entry_ptr.17, ptr @ch7033_probe._entry_ptr.21, ptr @ch7033_probe._entry_ptr.9, ptr @ch7033_driver, ptr @.str, ptr @ch7033_dt_ids, ptr @ch7033_ids, ptr @ch7033_probe._key, ptr @ch7033_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @ch7033_bridge_funcs, ptr @.str.19, ptr @.str.20, ptr @ch7033_connector_helper_funcs, ptr @ch7033_connector_funcs, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7033_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ch7033_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ch7033_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !68
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1328, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %next_bridge = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 1
  %call2 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %3, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef %next_bridge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ch7033_regmap_config, ptr noundef nonnull @ch7033_probe._key, ptr noundef nonnull @.str.1) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call15 = call i32 @regmap_read(ptr noundef %call6, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call15) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and = and i32 %9, 247
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %and)
  %cmp22.not = icmp eq i32 %and, 86
  br i1 %cmp22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call30 = call i32 @regmap_write(ptr noundef %11, i32 noundef 3, i32 noundef 4) #6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %call32 = call i32 @regmap_read(ptr noundef %13, i32 noundef 81, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call32) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and40 = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and40)
  %cmp41.not = icmp eq i32 %and40, 3
  br i1 %cmp41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %15) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %bridge = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 2
  %list = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 2, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %funcs = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ch7033_bridge_funcs, ptr %funcs, align 4
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %of_node51 = getelementptr inbounds %struct.ch7033_priv, ptr %call.i, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %of_node51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %of_node51, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end45, %do.end37, %do.end26, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %call15, %do.end19 ], [ -19, %do.end26 ], [ %call32, %do.end37 ], [ -19, %do.end45 ], [ 0, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.ch7033_priv, ptr %1, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %connector1 = getelementptr i8, ptr %bridge, i32 280
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 -4
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_bridge, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ops, align 4
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i8 6, i8 1
  %8 = getelementptr i8, ptr %bridge, i32 980
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ops, align 4
  %and13 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end4.if.end17_crit_edge, label %if.then15

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_bridge_hpd_enable(ptr noundef %5, ptr noundef nonnull @ch7033_hpd_event, ptr noundef %add.ptr) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end4.if.end17_crit_edge
  %helper_private.i = getelementptr i8, ptr %bridge, i32 988
  %12 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ch7033_connector_helper_funcs, ptr %helper_private.i, align 4
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_bridge, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %16, i32 0, i32 12
  %19 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc, align 4
  %call21 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %14, ptr noundef %connector1, ptr noundef nonnull @ch7033_connector_funcs, i32 noundef %18, ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder, align 4
  %call27 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1, ptr noundef %22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ %call27, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_bridge_hpd_disable(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %connector = getelementptr i8, ptr %bridge, i32 280
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ch7033_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %1)
  %cmp = icmp sgt i32 %1, 165000
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1919, i16 %3)
  %cmp1 = icmp ugt i16 %3, 1919
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1079, i16 %5)
  %cmp6 = icmp ugt i16 %5, 1079
  %. = select i1 %cmp6, i32 19, i32 0
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 15, %entry.return_crit_edge ], [ 18, %if.end.return_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_bridge_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3, i32 noundef 4) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 82, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_bridge_mode_set(ptr noundef readonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %0 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hsync_start, align 2
  %conv = zext i16 %1 to i32
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %4 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_end, align 4
  %conv2 = zext i16 %5 to i32
  %sub5 = sub nsw i32 %conv2, %conv
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %6 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsync_start, align 4
  %conv6 = zext i16 %7 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  %conv7 = zext i16 %9 to i32
  %sub8 = sub nsw i32 %conv6, %conv7
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %10 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsync_end, align 2
  %conv9 = zext i16 %11 to i32
  %sub12 = sub nsw i32 %conv9, %conv6
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 3, i32 noundef 4) #6
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %call14 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 82, i32 noundef 0) #6
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %call16 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 82, i32 noundef 2) #6
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %call18 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 3, i32 noundef 0) #6
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 7, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %call.i347 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %call.i348 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 9, i32 noundef 197, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %call.i349 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %30 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %htotal, align 2
  %32 = lshr i16 %31, 5
  %33 = and i16 %32, 2040
  %34 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay, align 4
  %36 = lshr i16 %35, 8
  %or343 = or i16 %33, %36
  %or = zext i16 %or343 to i32
  %call32 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 11, i32 noundef %or) #6
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv35 = zext i16 %40 to i32
  %call36 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 12, i32 noundef %conv35) #6
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %43 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %htotal, align 2
  %conv39 = zext i16 %44 to i32
  %call40 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 13, i32 noundef %conv39) #6
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 8
  %47 = ashr i32 %sub5, 5
  %shl43 = and i32 %47, -8
  %shr44 = ashr i32 %sub, 8
  %or45 = or i32 %shl43, %shr44
  %call46 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 14, i32 noundef %or45) #6
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %call48 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 15, i32 noundef %sub) #6
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %call50 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 16, i32 noundef %sub5) #6
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 8
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %54 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vtotal, align 4
  %56 = lshr i16 %55, 5
  %57 = and i16 %56, 2040
  %58 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vdisplay, align 2
  %60 = lshr i16 %59, 8
  %or58344 = or i16 %57, %60
  %or58 = zext i16 %or58344 to i32
  %call59 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 17, i32 noundef %or58) #6
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 8
  %63 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vdisplay, align 2
  %conv62 = zext i16 %64 to i32
  %call63 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 18, i32 noundef %conv62) #6
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %67 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vtotal, align 4
  %conv66 = zext i16 %68 to i32
  %call67 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 19, i32 noundef %conv66) #6
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 8
  %71 = ashr i32 %sub12, 5
  %shl70 = and i32 %71, -8
  %shr71 = ashr i32 %sub8, 8
  %or72 = or i32 %shl70, %shr71
  %call73 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 20, i32 noundef %or72) #6
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %call75 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 21, i32 noundef %sub8) #6
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 8
  %call77 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 22, i32 noundef %sub12) #6
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 8
  %call.i350 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 24, i32 noundef 7, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  %80 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mode, align 4
  %shr81 = ashr i32 %81, 16
  %call.i351 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 25, i32 noundef 1, i32 noundef %shr81, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 8
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  %and = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end93_crit_edge

entry.cond.end93_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end93

cond.false:                                       ; preds = %entry
  %and85 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool87.not = icmp eq i32 %and85, 0
  br i1 %tobool87.not, label %cond.false89, label %cond.false.cond.end93_crit_edge

cond.false.cond.end93_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end93

cond.false89:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode, align 4
  %shr91 = ashr i32 %87, 16
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false89, %cond.false.cond.end93_crit_edge, %entry.cond.end93_crit_edge
  %cond94 = phi i32 [ 32, %entry.cond.end93_crit_edge ], [ %shr91, %cond.false89 ], [ 16, %cond.false.cond.end93_crit_edge ]
  %call.i352 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 25, i32 noundef 55, i32 noundef %cond94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 8
  %90 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mode, align 4
  %shr98 = ashr i32 %91, 8
  %call99 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 26, i32 noundef %shr98) #6
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr, align 8
  %94 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode, align 4
  %call102 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 27, i32 noundef %95) #6
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %98 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %htotal, align 2
  %100 = lshr i16 %99, 5
  %101 = and i16 %100, 2040
  %102 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %hdisplay, align 4
  %104 = lshr i16 %103, 8
  %or111345 = or i16 %101, %104
  %or111 = zext i16 %or111345 to i32
  %call112 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 31, i32 noundef %or111) #6
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr, align 8
  %107 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hdisplay, align 4
  %conv115 = zext i16 %108 to i32
  %call116 = tail call i32 @regmap_write(ptr noundef %106, i32 noundef 32, i32 noundef %conv115) #6
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr, align 8
  %111 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %htotal, align 2
  %conv119 = zext i16 %112 to i32
  %call120 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef 33, i32 noundef %conv119) #6
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr, align 8
  %115 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %vtotal, align 4
  %117 = lshr i16 %116, 5
  %118 = and i16 %117, 2040
  %119 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vdisplay, align 2
  %121 = lshr i16 %120, 8
  %or129346 = or i16 %118, %121
  %or129 = zext i16 %or129346 to i32
  %call130 = tail call i32 @regmap_write(ptr noundef %114, i32 noundef 37, i32 noundef %or129) #6
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr, align 8
  %124 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %vdisplay, align 2
  %conv133 = zext i16 %125 to i32
  %call134 = tail call i32 @regmap_write(ptr noundef %123, i32 noundef 38, i32 noundef %conv133) #6
  %126 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr, align 8
  %128 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vtotal, align 4
  %conv137 = zext i16 %129 to i32
  %call138 = tail call i32 @regmap_write(ptr noundef %127, i32 noundef 39, i32 noundef %conv137) #6
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr, align 8
  %call.i353 = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 43, i32 noundef 15, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr, align 8
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 4
  %and143 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  %and148 = shl i32 %135, 1
  %136 = and i32 %and148, 8
  %cond153 = select i1 %tobool144.not, i32 %136, i32 16
  %call.i354 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 46, i32 noundef 24, i32 noundef %cond153, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 8
  %call.i355 = tail call i32 @regmap_update_bits_base(ptr noundef %138, i32 noundef 84, i32 noundef 63, i32 noundef %or45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %139 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr, align 8
  %call162 = tail call i32 @regmap_write(ptr noundef %140, i32 noundef 85, i32 noundef %sub) #6
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 8
  %call164 = tail call i32 @regmap_write(ptr noundef %142, i32 noundef 86, i32 noundef %sub5) #6
  %143 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr, align 8
  %call.i356 = tail call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef 87, i32 noundef 63, i32 noundef %or72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %145 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr, align 8
  %call172 = tail call i32 @regmap_write(ptr noundef %146, i32 noundef 88, i32 noundef %sub8) #6
  %147 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr, align 8
  %call174 = tail call i32 @regmap_write(ptr noundef %148, i32 noundef 89, i32 noundef %sub12) #6
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr, align 8
  %call.i357 = tail call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef 126, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %151 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr, align 8
  %call178 = tail call i32 @regmap_write(ptr noundef %152, i32 noundef 3, i32 noundef 1) #6
  %153 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr, align 8
  %call.i358 = tail call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 7, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %155 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr, align 8
  %call.i359 = tail call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %157 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %add.ptr, align 8
  %call.i360 = tail call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef 12, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %159 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %160)
  %cmp = icmp slt i32 %160, 40001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr, align 8
  %call.i361 = tail call i32 @regmap_update_bits_base(ptr noundef %162, i32 noundef 12, i32 noundef 30, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end198

if.else:                                          ; preds = %cond.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %160)
  %cmp190 = icmp ult i32 %160, 80000
  %163 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr, align 8
  br i1 %cmp190, label %if.then192, label %if.else195

if.then192:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i362 = tail call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 12, i32 noundef 30, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end198

if.else195:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i363 = tail call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 12, i32 noundef 30, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end198

if.end198:                                        ; preds = %if.else195, %if.then192, %if.then
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr, align 8
  %call200 = tail call i32 @regmap_write(ptr noundef %166, i32 noundef 100, i32 noundef 41) #6
  %167 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr, align 8
  %call202 = tail call i32 @regmap_write(ptr noundef %168, i32 noundef 101, i32 noundef 41) #6
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr, align 8
  %call204 = tail call i32 @regmap_write(ptr noundef %170, i32 noundef 102, i32 noundef 41) #6
  %171 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr, align 8
  %call206 = tail call i32 @regmap_write(ptr noundef %172, i32 noundef 103, i32 noundef 0) #6
  %173 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr, align 8
  %call208 = tail call i32 @regmap_write(ptr noundef %174, i32 noundef 104, i32 noundef 0) #6
  %175 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr, align 8
  %call210 = tail call i32 @regmap_write(ptr noundef %176, i32 noundef 105, i32 noundef 0) #6
  %177 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %add.ptr, align 8
  %call.i364 = tail call i32 @regmap_update_bits_base(ptr noundef %178, i32 noundef 107, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %179 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr, align 8
  %call.i365 = tail call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 108, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %181 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr, align 8
  %call216 = tail call i32 @regmap_write(ptr noundef %182, i32 noundef 3, i32 noundef 3) #6
  %183 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %add.ptr, align 8
  %call.i366 = tail call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 40, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %185 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %add.ptr, align 8
  %call.i367 = tail call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 42, i32 noundef 40, i32 noundef 40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %187 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr, align 8
  %call222 = tail call i32 @regmap_write(ptr noundef %188, i32 noundef 3, i32 noundef 4) #6
  %189 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr, align 8
  %191 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mode, align 4
  %shr225 = ashr i32 %192, 16
  %call226 = tail call i32 @regmap_write(ptr noundef %190, i32 noundef 16, i32 noundef %shr225) #6
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr, align 8
  %195 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %mode, align 4
  %shr229 = ashr i32 %196, 8
  %call230 = tail call i32 @regmap_write(ptr noundef %194, i32 noundef 17, i32 noundef %shr229) #6
  %197 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %add.ptr, align 8
  %199 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mode, align 4
  %call233 = tail call i32 @regmap_write(ptr noundef %198, i32 noundef 18, i32 noundef %200) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_bridge_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 3, i32 noundef 4) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 82, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7033_hpd_event(ptr nocapture noundef readonly %arg, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ch7033_priv, ptr %arg, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %connector = getelementptr inbounds %struct.ch7033_priv, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %connector, i32 -284
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %call = tail call ptr @drm_bridge_get_edid(ptr noundef %1, ptr noundef %connector) #6
  %call1 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #6
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef 1920, i32 noundef 1080) #6
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef 1024, i32 noundef 768) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ch7033_connector_best_encoder(ptr nocapture noundef readonly %connector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %connector, i32 -152
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7033_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %connector, i32 -284
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_detect(ptr noundef %1) #6
  ret i32 %call
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
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_chrontel_ch7033__307_617_ch7033_driver_init6, !1, !"__initcall__kmod_chrontel_ch7033__307_617_ch7033_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 617, i32 1}
!2 = !{ptr @__exitcall_ch7033_driver_exit, !1, !"__exitcall_ch7033_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 619, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 620, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 621, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 611, i32 11}
!12 = !{ptr @ch7033_driver, !13, !"ch7033_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 607, i32 26}
!14 = !{ptr @ch7033_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 549, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 551, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ch7033_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ch7033_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 557, i32 3}
!27 = !{ptr @ch7033_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ch7033_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 561, i32 3}
!31 = !{ptr @ch7033_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ch7033_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ch7033_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 568, i32 3}
!35 = !{ptr @ch7033_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 572, i32 3}
!38 = !{ptr @ch7033_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ch7033_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 581, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ch7033_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ch7033_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ch7033_regmap_config, !46, !"ch7033_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 524, i32 35}
!47 = !{ptr @ch7033_bridge_funcs, !48, !"ch7033_bridge_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 515, i32 38}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 303, i32 3}
!51 = !{ptr @ch7033_connector_helper_funcs, !52, !"ch7033_connector_helper_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 256, i32 48}
!53 = !{ptr @ch7033_connector_funcs, !54, !"ch7033_connector_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 220, i32 41}
!55 = !{ptr @ch7033_dt_ids, !56, !"ch7033_dt_ids", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 595, i32 34}
!57 = !{ptr @ch7033_ids, !58, !"ch7033_ids", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/chrontel-ch7033.c", i32 601, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
