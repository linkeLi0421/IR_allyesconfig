; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/light.c_pt.bc'
source_filename = "../drivers/staging/greybus/light.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }
%struct.gb_lights_get_lights_response = type { i8 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_lights = type { ptr, i8, ptr, %struct.mutex }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_light = type { i8, ptr, ptr, i32, i8, ptr, i8, i8, ptr, ptr }
%struct.gb_lights_event_request = type { i8, i8 }
%struct.gb_channel = type { i8, i32, i32, ptr, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.led_classdev_flash, %struct.led_flash_setting, %struct.led_flash_setting, ptr, i8, i8, i8, i8, %struct.mutex }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.gb_lights_get_channel_flash_config_request = type { i8, i8 }
%struct.gb_lights_get_channel_flash_config_response = type { i32, i32, i32, i32, i32, i32 }
%struct.gb_lights_get_channel_config_response = type <{ i8, i32, i32, [32 x i8], i32, [32 x i8] }>
%struct.gb_lights_get_channel_config_request = type { i8, i8 }
%struct.gb_lights_get_light_config_request = type { i8 }
%struct.gb_lights_get_light_config_response = type { i8, [32 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.gb_lights_set_color_request = type <{ i8, i8, i32 }>
%struct.gb_lights_set_fade_request = type { i8, i8, i8, i8 }
%struct.gb_lights_set_brightness_request = type { i8, i8, i8 }
%struct.gb_lights_blink_request = type { i8, i8, i16, i16 }
%struct.gb_lights_set_flash_intensity_request = type <{ i8, i8, i32 }>
%struct.gb_lights_set_flash_strobe_request = type { i8, i8, i8 }
%struct.gb_lights_set_flash_timeout_request = type <{ i8, i8, i32 }>
%struct.gb_lights_get_flash_fault_request = type { i8, i8 }
%struct.gb_lights_get_flash_fault_response = type { i32 }

@__initcall__kmod_gb_light__293_1355_gb_lights_driver_init6 = internal global ptr @gb_lights_driver_init, section ".initcall6.init", align 4
@gb_lights_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_lights_probe, ptr @gb_lights_disconnect, ptr @gb_lights_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gb_lights_driver_exit = internal global ptr @gb_lights_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"gb_light.file=drivers/staging/greybus/gb-light\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"gb_light.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gb_light\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lights\00", [25 x i8] zeroinitializer }, align 32
@gb_lights_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 15, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_lights_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&glights->lights_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_lights_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported unsolicited event: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_lights_request_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/light.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_lights_request_handler._entry_ptr = internal global ptr @gb_lights_request_handler._entry, section ".printk_index", align 4
@gb_lights_request_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong event size received (%zu < %zu)\0A\00", [57 x i8] zeroinitializer }, align 32
@gb_lights_request_handler._entry_ptr.10 = internal global ptr @gb_lights_request_handler._entry.8, section ".printk_index", align 4
@gb_lights_request_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Event received for unconfigured light id: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gb_lights_request_handler._entry_ptr.13 = internal global ptr @gb_lights_request_handler._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s:%s\00", [23 x i8] zeroinitializer }, align 32
@dev_attr_color = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @color_show, ptr @color_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fade_in = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fade_in_show, ptr @fade_in_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fade_out = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fade_out_show, ptr @fade_out_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@color_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not parse color value %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"color_store\00", [20 x i8] zeroinitializer }, align 32
@color_store._entry_ptr = internal global ptr @color_store._entry, section ".printk_index", align 4
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fade_in\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@fade_in_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not parse fade value %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fade_in_store\00", [18 x i8] zeroinitializer }, align 32
@fade_in_store._entry_ptr = internal global ptr @fade_in_store._entry, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fade_out\00", [23 x i8] zeroinitializer }, align 32
@fade_out_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.5, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fade_out_store\00", [17 x i8] zeroinitializer }, align 32
@fade_out_store._entry_ptr = internal global ptr @fade_out_store._entry, section ".printk_index", align 4
@gb_lights_light_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&light->channels[i].lock\00", [39 x i8] zeroinitializer }, align 32
@gb_lights_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @gb_lights_flash_intensity_set, ptr @gb_lights_flash_intensity_get, ptr @gb_lights_flash_strobe_set, ptr @gb_lights_flash_strobe_get, ptr @gb_lights_flash_timeout_set, ptr @gb_lights_flash_fault_get }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s indicator\00", [19 x i8] zeroinitializer }, align 32
@v4l2_flash_ops = internal constant { %struct.v4l2_flash_ops, [20 x i8] } zeroinitializer, align 32
@gb_lights_create_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 1178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to configure lights device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_lights_create_all\00", [43 x i8] zeroinitializer }, align 32
@gb_lights_create_all._entry_ptr = internal global ptr @gb_lights_create_all._entry, section ".printk_index", align 4
@gb_lights_register_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 1199, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail to enable lights device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_lights_register_all\00", [41 x i8] zeroinitializer }, align 32
@gb_lights_register_all._entry_ptr = internal global ptr @gb_lights_register_all._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"gb_lights_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1349, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1355, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1350, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"gb_lights_id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1343, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1280, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1221, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1228, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1238, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 974, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"dev_attr_color\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"dev_attr_fade_in\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"dev_attr_fade_out\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 273, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 241, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 259, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 53, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 232, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 233, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1061, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"gb_lights_flash_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 732, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 754, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 556, i32 53 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 558, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"v4l2_flash_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 518, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1177, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [35 x i8] c"../drivers/staging/greybus/light.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1198, i32 4 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_gb_lights_driver_exit, ptr @__initcall__kmod_gb_light__293_1355_gb_lights_driver_init6, ptr @color_store._entry, ptr @color_store._entry_ptr, ptr @fade_in_store._entry, ptr @fade_in_store._entry_ptr, ptr @fade_out_store._entry, ptr @fade_out_store._entry_ptr, ptr @gb_lights_create_all._entry, ptr @gb_lights_create_all._entry_ptr, ptr @gb_lights_driver_exit, ptr @gb_lights_register_all._entry, ptr @gb_lights_register_all._entry_ptr, ptr @gb_lights_request_handler._entry, ptr @gb_lights_request_handler._entry.11, ptr @gb_lights_request_handler._entry.8, ptr @gb_lights_request_handler._entry_ptr, ptr @gb_lights_request_handler._entry_ptr.10, ptr @gb_lights_request_handler._entry_ptr.13, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_lights_driver, ptr @.str, ptr @.str.1, ptr @gb_lights_id_table, ptr @gb_lights_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @dev_attr_color, ptr @dev_attr_fade_in, ptr @dev_attr_fade_out, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @gb_lights_light_register.__key, ptr @.str.28, ptr @gb_lights_flash_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @v4l2_flash_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_request_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_request_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_color to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fade_in to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fade_out to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fade_in_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fade_out_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_light_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_create_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_lights_register_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_lights_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_lights_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_lights_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %resp.i.i = alloca %struct.gb_lights_get_lights_response, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc1 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc1, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %cmp2.not = icmp eq i8 %5, 15
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %lights_lock = getelementptr inbounds %struct.gb_lights, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lights_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @gb_lights_probe.__key) #13
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call9 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef nonnull @gb_lights_request_handler) #13
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %do.body
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call9, i32 0, i32 17
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @gb_connection_enable_tx(ptr noundef %call9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.error_connection_destroy_crit_edge

if.end13.error_connection_destroy_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_connection_destroy

if.end18:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %lights_lock, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i) #13
  %16 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %resp.i.i, align 1, !annotation !96
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %18, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp.i.i, i32 noundef 1, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end18.gb_lights_get_count.exit.thread.i_crit_edge, label %if.end.i.i

if.end18.gb_lights_get_count.exit.thread.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_get_count.exit.thread.i

if.end.i.i:                                       ; preds = %if.end18
  %19 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %resp.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.gb_lights_get_count.exit.thread.i_crit_edge, label %if.end.i

if.end.i.i.gb_lights_get_count.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_get_count.exit.thread.i

gb_lights_get_count.exit.thread.i:                ; preds = %if.end.i.i.gb_lights_get_count.exit.thread.i_crit_edge, %if.end18.gb_lights_get_count.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end.i.i.gb_lights_get_count.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end18.gb_lights_get_count.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #13
  br label %gb_lights_create_all.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  %lights_count4.i.i = getelementptr inbounds %struct.gb_lights, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %lights_count4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %lights_count4.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #13
  %conv.i = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %conv.i, 36
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #17
  %lights.i = getelementptr inbounds %struct.gb_lights, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %lights.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %lights.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.gb_lights_create_all.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.gb_lights_create_all.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_create_all.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %24 = ptrtoint ptr %lights_count4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lights_count4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp835.not.i = icmp eq i8 %25, 0
  br i1 %cmp835.not.i, label %for.cond.preheader.i.if.end23_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end23_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %26 = ptrtoint ptr %lights_count4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lights_count4.i.i, align 4
  %conv7.i = zext i8 %27 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end23_crit_edge

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv10.i = trunc i32 %i.036.i to i8
  %call11.i = call fastcc i32 @gb_lights_light_config(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %conv10.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %for.cond.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %15, i32 0, i32 2
  %28 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bundle.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32) #18
  br label %gb_lights_create_all.exit.thread

gb_lights_create_all.exit.thread:                 ; preds = %do.end.i, %if.end.i.gb_lights_create_all.exit.thread_crit_edge, %gb_lights_get_count.exit.thread.i
  %ret.1.i.ph = phi i32 [ %retval.0.i.ph.i, %gb_lights_get_count.exit.thread.i ], [ -12, %if.end.i.gb_lights_create_all.exit.thread_crit_edge ], [ %call11.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %lights_lock) #13
  br label %error_connection_disable

if.end23:                                         ; preds = %for.cond.i.if.end23_crit_edge, %for.cond.preheader.i.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef %lights_lock) #13
  %call24 = call i32 @gb_connection_enable(ptr noundef %call9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.error_connection_disable_crit_edge

if.end23.error_connection_disable_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_connection_disable

if.end27:                                         ; preds = %if.end23
  %call28 = call fastcc i32 @gb_lights_register_all(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.error_connection_disable_crit_edge, label %if.end32

if.end27.error_connection_disable_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_connection_disable

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #13
  br label %cleanup

error_connection_disable:                         ; preds = %if.end27.error_connection_disable_crit_edge, %if.end23.error_connection_disable_crit_edge, %gb_lights_create_all.exit.thread
  %ret.0 = phi i32 [ %call24, %if.end23.error_connection_disable_crit_edge ], [ %call28, %if.end27.error_connection_disable_crit_edge ], [ %ret.1.i.ph, %gb_lights_create_all.exit.thread ]
  call void @gb_connection_disable(ptr noundef %call9) #13
  br label %error_connection_destroy

error_connection_destroy:                         ; preds = %error_connection_disable, %if.end13.error_connection_destroy_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end13.error_connection_destroy_crit_edge ], [ %ret.0, %error_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call9) #13
  br label %out

out:                                              ; preds = %error_connection_destroy, %if.then11
  %ret.2 = phi i32 [ %10, %if.then11 ], [ %ret.1, %error_connection_destroy ]
  call fastcc void @gb_lights_release(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end32, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_lights_disconnect(ptr noundef %bundle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @gb_connection_disable(ptr noundef %5) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @gb_connection_destroy(ptr noundef %7) #13
  tail call fastcc void @gb_lights_release(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %type = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp.not = icmp eq i8 %7, 10
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %conv) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %request6 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %request6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request6, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp7 = icmp ult i32 %11, 2
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef 2) #18
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %payload15 = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %payload15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %payload15, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv17 = zext i8 %15 to i32
  %lights_count = getelementptr inbounds %struct.gb_lights, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %lights_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lights_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp19.not = icmp ult i8 %15, %17
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end14.do.end24_crit_edge

if.end14.do.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

lor.lhs.false:                                    ; preds = %if.end14
  %lights = getelementptr inbounds %struct.gb_lights, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lights, align 4
  %arrayidx = getelementptr %struct.gb_light, ptr %19, i32 %conv17
  %ready = getelementptr %struct.gb_light, ptr %19, i32 %conv17, i32 7
  %20 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ready, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end24_crit_edge, label %if.end26

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %if.end14.do.end24_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %conv17) #18
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %event27 = getelementptr inbounds %struct.gb_lights_event_request, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %event27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %event27, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.then30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  %lights_lock = getelementptr inbounds %struct.gb_lights, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lights_lock, i32 noundef 0) #13
  tail call fastcc void @gb_lights_light_release(ptr noundef %arrayidx)
  %call34 = tail call fastcc i32 @gb_lights_light_config(ptr noundef %5, i8 noundef zeroext %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call fastcc i32 @gb_lights_light_register(ptr noundef %arrayidx)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then30.if.end38_crit_edge
  %ret.0 = phi i32 [ %call34, %if.then30.if.end38_crit_edge ], [ %call37, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp39 = icmp slt i32 %ret.0, 0
  br i1 %cmp39, label %if.then41, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @gb_lights_light_release(ptr noundef %arrayidx)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38.if.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %lights_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end26.cleanup_crit_edge, %do.end24, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end24 ], [ %ret.0, %if.end42 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_lights_register_all(ptr noundef %glights) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %glights to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glights, align 4
  %lights_lock = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lights_lock, i32 noundef 0) #13
  %lights_count = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 1
  %2 = ptrtoint ptr %lights_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lights_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lights = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %4 = ptrtoint ptr %lights_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lights_count, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lights, align 4
  %arrayidx = getelementptr %struct.gb_light, ptr %7, i32 %i.015
  %call = tail call fastcc i32 @gb_lights_light_register(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34) #18
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call, %do.end ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lights_lock) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_lights_release(ptr noundef %glights) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %glights, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lights_lock = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lights_lock, i32 noundef 0) #13
  %lights = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 2
  %0 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lights, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.free_glights_crit_edge, label %for.cond.preheader

if.end.free_glights_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_glights

for.cond.preheader:                               ; preds = %if.end
  %lights_count = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 1
  %2 = ptrtoint ptr %lights_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lights_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not = icmp eq i8 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lights, align 4
  %arrayidx = getelementptr %struct.gb_light, ptr %5, i32 %i.021
  tail call fastcc void @gb_lights_light_release(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.021, 1
  %6 = ptrtoint ptr %lights_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lights_count, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lights, align 4
  tail call void @kfree(ptr noundef %9) #13
  br label %free_glights

free_glights:                                     ; preds = %for.end, %if.end.free_glights_crit_edge
  tail call void @mutex_unlock(ptr noundef %lights_lock) #13
  tail call void @mutex_destroy(ptr noundef %lights_lock) #13
  tail call void @kfree(ptr noundef nonnull %glights) #13
  br label %cleanup

cleanup:                                          ; preds = %free_glights, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_lights_light_release(ptr nocapture noundef %light) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 7
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ready, align 1
  %has_flash = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 6
  %1 = ptrtoint ptr %has_flash to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_flash, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %v4l2_flash_ind.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 9
  %3 = ptrtoint ptr %v4l2_flash_ind.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l2_flash_ind.i, align 4
  tail call void @v4l2_flash_release(ptr noundef %4) #13
  %v4l2_flash.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 8
  %5 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2_flash.i, align 4
  tail call void @v4l2_flash_release(ptr noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %has_flash to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %has_flash, align 4
  %channels_count = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 4
  %8 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channels_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20.not = icmp eq i8 %9, 0
  br i1 %cmp20.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %channels = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %gb_lights_channel_release.exit.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gb_lights_channel_release.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 4
  %releasing.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 17
  %12 = ptrtoint ptr %releasing.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %releasing.i, align 1
  %mode.i.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 6
  %13 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i.i.i, align 4
  %and.i.i.i = and i32 %14, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body
  %is_registered.i.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 16
  %15 = ptrtoint ptr %is_registered.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_registered.i.i.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.gb_lights_channel_release.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.gb_lights_channel_release.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_release.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %fled.i.i.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 12
  tail call void @led_classdev_unregister(ptr noundef %fled.i.i.i.i) #13
  %17 = ptrtoint ptr %fled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fled.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %fled.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fled.i.i.i.i, align 4
  %led.i.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 11
  %20 = ptrtoint ptr %led.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %led.i.i.i, align 4
  br label %gb_lights_channel_release.exit

if.end.i.i:                                       ; preds = %for.body
  %and.i.i = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %is_registered.i13.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 16
  %21 = ptrtoint ptr %is_registered.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_registered.i13.i.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i14.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  br i1 %tobool.not.i14.i.i, label %if.then1.i.i.gb_lights_channel_release.exit_crit_edge, label %if.end.i11.i.i

if.then1.i.i.gb_lights_channel_release.exit_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_release.exit

if.end.i11.i.i:                                   ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %fled.i.i9.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 12
  tail call void @led_classdev_unregister(ptr noundef %fled.i.i9.i.i) #13
  %23 = ptrtoint ptr %fled.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fled.i.i9.i.i, align 4
  tail call void @kfree(ptr noundef %24) #13
  %25 = ptrtoint ptr %fled.i.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fled.i.i9.i.i, align 4
  %led.i10.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 11
  %26 = ptrtoint ptr %led.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %led.i10.i.i, align 4
  br label %gb_lights_channel_release.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.gb_lights_channel_release.exit_crit_edge, label %if.end.i15.i.i

if.else.i.i.gb_lights_channel_release.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_release.exit

if.end.i15.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %fled.i.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 12
  tail call void @led_classdev_flash_unregister(ptr noundef %fled.i.i.i) #13
  br label %gb_lights_channel_release.exit

gb_lights_channel_release.exit:                   ; preds = %if.end.i15.i.i, %if.else.i.i.gb_lights_channel_release.exit_crit_edge, %if.end.i11.i.i, %if.then1.i.i.gb_lights_channel_release.exit_crit_edge, %if.end.i.i.i, %if.then.i.i.gb_lights_channel_release.exit_crit_edge
  %attrs.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 8
  %27 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attrs.i.i, align 4
  tail call void @kfree(ptr noundef %28) #13
  %attr_group.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 9
  %29 = ptrtoint ptr %attr_group.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attr_group.i.i, align 4
  tail call void @kfree(ptr noundef %30) #13
  %attr_groups.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 10
  %31 = ptrtoint ptr %attr_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attr_groups.i.i, align 4
  tail call void @kfree(ptr noundef %32) #13
  %color_name.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 3
  %33 = ptrtoint ptr %color_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %color_name.i.i, align 4
  tail call void @kfree(ptr noundef %34) #13
  %mode_name.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 7
  %35 = ptrtoint ptr %mode_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mode_name.i.i, align 4
  tail call void @kfree(ptr noundef %36) #13
  %lock.i.i = getelementptr %struct.gb_channel, ptr %11, i32 %i.021, i32 20
  tail call void @mutex_destroy(ptr noundef %lock.i.i) #13
  %inc = add nuw nsw i32 %i.021, 1
  %37 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %channels_count, align 4
  %conv = zext i8 %38 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %gb_lights_channel_release.exit.for.body_crit_edge, label %gb_lights_channel_release.exit.for.end_crit_edge

gb_lights_channel_release.exit.for.end_crit_edge: ; preds = %gb_lights_channel_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

gb_lights_channel_release.exit.for.body_crit_edge: ; preds = %gb_lights_channel_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %gb_lights_channel_release.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %39 = ptrtoint ptr %channels_count to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %channels_count, align 4
  %channels4 = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 5
  %40 = ptrtoint ptr %channels4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channels4, align 4
  tail call void @kfree(ptr noundef %41) #13
  %42 = ptrtoint ptr %channels4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %channels4, align 4
  %name = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 1
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %44) #13
  %45 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %name, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_lights_light_config(ptr noundef %glights, i8 noundef zeroext %id) unnamed_addr #2 align 64 {
entry:
  %req.i.i = alloca %struct.gb_lights_get_channel_flash_config_request, align 1
  %conf.i.i = alloca %struct.gb_lights_get_channel_flash_config_response, align 4
  %conf.i = alloca %struct.gb_lights_get_channel_config_response, align 1
  %req.i = alloca %struct.gb_lights_get_channel_config_request, align 1
  %req = alloca %struct.gb_lights_get_light_config_request, align 1
  %conf = alloca %struct.gb_lights_get_light_config_response, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lights = getelementptr inbounds %struct.gb_lights, ptr %glights, i32 0, i32 2
  %0 = ptrtoint ptr %lights to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lights, align 4
  %idxprom = zext i8 %id to i32
  %arrayidx = getelementptr %struct.gb_light, ptr %1, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req) #13
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %conf) #13
  %2 = call ptr @memset(ptr %conf, i32 255, i32 33)
  %glights1 = getelementptr %struct.gb_light, ptr %1, i32 %idxprom, i32 2
  %3 = ptrtoint ptr %glights1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %glights, ptr %glights1, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %id, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %id, ptr %req, align 1
  %6 = ptrtoint ptr %glights to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %glights, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %7, i32 noundef 3, ptr noundef nonnull %req, i32 noundef 1, ptr noundef nonnull %conf, i32 noundef 33, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %conf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.gb_lights_get_light_config_response, ptr %conf, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %10)
  %char0 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool7.not = icmp eq i8 %char0, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %channels_count = getelementptr %struct.gb_light, ptr %1, i32 %idxprom, i32 4
  %11 = ptrtoint ptr %channels_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %channels_count, align 4
  %call13 = call ptr @kstrndup(ptr noundef %name, i32 noundef 32, i32 noundef 3264) #13
  %name14 = getelementptr %struct.gb_light, ptr %1, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %name14, align 4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.end9.cleanup_crit_edge, label %if.end7.i.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end9
  %13 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %channels_count, align 4
  %conv = zext i8 %14 to i32
  %15 = mul nuw nsw i32 %conv, 632
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #17
  %channels = getelementptr %struct.gb_light, ptr %1, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %channels, align 4
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %17 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %channels_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp2780.not = icmp eq i8 %18, 0
  br i1 %cmp2780.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %19 = getelementptr inbounds %struct.gb_lights_get_channel_config_request, ptr %req.i, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.gb_lights_get_channel_config_response, ptr %conf.i, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.gb_lights_get_channel_config_response, ptr %conf.i, i32 0, i32 1
  %color.i = getelementptr inbounds %struct.gb_lights_get_channel_config_response, ptr %conf.i, i32 0, i32 2
  %color_name.i = getelementptr inbounds %struct.gb_lights_get_channel_config_response, ptr %conf.i, i32 0, i32 3
  %mode_name.i = getelementptr inbounds %struct.gb_lights_get_channel_config_response, ptr %conf.i, i32 0, i32 5
  %has_flash.i = getelementptr %struct.gb_light, ptr %1, i32 %idxprom, i32 6
  %20 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_request, ptr %req.i.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_response, ptr %conf.i.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_response, ptr %conf.i.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_response, ptr %conf.i.i, i32 0, i32 5
  %24 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_response, ptr %conf.i.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.gb_lights_get_channel_flash_config_response, ptr %conf.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv29 = trunc i32 %i.081 to i8
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channels, align 4
  %arrayidx31 = getelementptr %struct.gb_channel, ptr %27, i32 %i.081
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv29, ptr %arrayidx31, align 4
  %29 = load ptr, ptr %channels, align 4
  %arrayidx34 = getelementptr %struct.gb_channel, ptr %29, i32 %i.081
  call void @llvm.lifetime.start.p0(i64 77, ptr nonnull %conf.i) #13
  %30 = call ptr @memset(ptr %conf.i, i32 255, i32 77)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #13
  %31 = ptrtoint ptr %glights1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %glights1, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %fled.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %req.i, align 1
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx34, align 4
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %19, align 1
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %34, i32 noundef 4, ptr noundef nonnull %req.i, i32 noundef 2, ptr noundef nonnull %conf.i, i32 noundef 77, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %for.body.gb_lights_channel_config.exit.thread_crit_edge, label %if.end.i

for.body.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end.i:                                         ; preds = %for.body
  %light4.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 15
  %41 = ptrtoint ptr %light4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx, ptr %light4.i, align 4
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %mode.i, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43) #13
  %mode5.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 6
  %45 = ptrtoint ptr %mode5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mode5.i, align 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %flags.i, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47) #13
  %flags6.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 1
  %49 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %flags6.i, align 4
  %50 = ptrtoint ptr %color.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %color.i, align 1
  %52 = call i32 @llvm.bswap.i32(i32 %51) #13
  %color7.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 2
  %53 = ptrtoint ptr %color7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %color7.i, align 4
  %call8.i = call ptr @kstrndup(ptr noundef %color_name.i, i32 noundef 32, i32 noundef 3264) #13
  %color_name9.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 3
  %54 = ptrtoint ptr %color_name9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i, ptr %color_name9.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end12.i

if.end.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %call14.i = call ptr @kstrndup(ptr noundef %mode_name.i, i32 noundef 32, i32 noundef 3264) #13
  %mode_name15.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 7
  %55 = ptrtoint ptr %mode_name15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call14.i, ptr %mode_name15.i, align 4
  %tobool17.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool17.not.i, label %if.end12.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end19.i

if.end12.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end19.i:                                       ; preds = %if.end12.i
  %led.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 11
  %56 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fled.i.i, ptr %led.i, align 4
  %57 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name14, align 4
  %59 = ptrtoint ptr %color_name9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %color_name9.i, align 4
  %call23.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.14, ptr noundef %58, ptr noundef %60, ptr noundef nonnull %call14.i) #13
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end19.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end26.i

if.end19.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end26.i:                                       ; preds = %if.end19.i
  %61 = ptrtoint ptr %fled.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call23.i, ptr %fled.i.i, align 4
  %62 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %conf.i, align 1
  %conv.i = zext i8 %63 to i32
  %max_brightness28.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12, i32 0, i32 2
  %64 = ptrtoint ptr %max_brightness28.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.i, ptr %max_brightness28.i, align 4
  %65 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags6.i, align 4
  %67 = and i32 %66, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool6.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool6.not.i.i, label %if.end26.i.if.end33.i_crit_edge, label %if.end7.i.i.i.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.end7.i.i.i.i:                                  ; preds = %if.end26.i
  %add9.i.i = shl nuw nsw i32 %67, 2
  %68 = add nuw nsw i32 %add9.i.i, 4
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #17
  %attrs.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 8
  %69 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call8.i.i.i.i, ptr %attrs.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.end7.i.i.i.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end13.i.i

if.end7.i.i.i.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end13.i.i:                                     ; preds = %if.end7.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 20) #16
  %attr_group.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 9
  %71 = ptrtoint ptr %attr_group.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i.i, ptr %attr_group.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool16.not.i.i, label %if.end13.i.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end18.i.i

if.end13.i.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end18.i.i:                                     ; preds = %if.end13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i81.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 8) #16
  %attr_groups.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 10
  %73 = ptrtoint ptr %attr_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i81.i.i, ptr %attr_groups.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %call7.i.i.i81.i.i, null
  br i1 %tobool21.not.i.i, label %if.end18.i.i.gb_lights_channel_config.exit.thread_crit_edge, label %if.end23.i.i

if.end18.i.i.gb_lights_channel_config.exit.thread_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %74 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags6.i, align 4
  %and25.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.if.end30.i.i_crit_edge, label %if.then27.i.i

if.end23.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %attrs.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dev_attr_color, ptr %77, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.end23.i.i.if.end30.i.i_crit_edge
  %attr.0.i.i = phi i32 [ 1, %if.then27.i.i ], [ 0, %if.end23.i.i.if.end30.i.i_crit_edge ]
  %79 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags6.i, align 4
  %and32.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end30.i.i.if.end41.i.i_crit_edge, label %if.then34.i.i

if.end30.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %attrs.i.i, align 4
  %inc36.i.i = add nuw nsw i32 %attr.0.i.i, 1
  %arrayidx37.i.i = getelementptr ptr, ptr %82, i32 %attr.0.i.i
  %83 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @dev_attr_fade_in, ptr %arrayidx37.i.i, align 4
  %84 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx40.i.i = getelementptr ptr, ptr %84, i32 %inc36.i.i
  %85 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @dev_attr_fade_out, ptr %arrayidx40.i.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then34.i.i, %if.end30.i.i.if.end41.i.i_crit_edge
  %86 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %attrs.i.i, align 4
  %88 = ptrtoint ptr %attr_group.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %attr_group.i.i, align 4
  %attrs44.i.i = getelementptr inbounds %struct.attribute_group, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %attrs44.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %attrs44.i.i, align 4
  %91 = load ptr, ptr %attr_group.i.i, align 4
  %92 = ptrtoint ptr %attr_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %attr_groups.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %93, align 4
  %95 = load ptr, ptr %attr_groups.i.i, align 4
  %groups.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12, i32 0, i32 12
  %96 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %groups.i.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end41.i.i, %if.end26.i.if.end33.i_crit_edge
  %brightness_get.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12, i32 0, i32 7
  %97 = ptrtoint ptr %brightness_get.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @gb_brightness_get, ptr %brightness_get.i.i, align 4
  %brightness_set_blocking.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12, i32 0, i32 6
  %98 = ptrtoint ptr %brightness_set_blocking.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @gb_brightness_set, ptr %brightness_set_blocking.i.i, align 4
  %99 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags6.i, align 4
  %and.i.i = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end33.i.gb_lights_led_operations_set.exit.i_crit_edge, label %if.then.i.i

if.end33.i.gb_lights_led_operations_set.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_led_operations_set.exit.i

if.then.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %blink_set.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 12, i32 0, i32 8
  %101 = ptrtoint ptr %blink_set.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @gb_blink_set, ptr %blink_set.i.i, align 4
  br label %gb_lights_led_operations_set.exit.i

gb_lights_led_operations_set.exit.i:              ; preds = %if.then.i.i, %if.end33.i.gb_lights_led_operations_set.exit.i_crit_edge
  %102 = ptrtoint ptr %mode5.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode5.i, align 4
  %and.i73.i = and i32 %103, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %gb_lights_channel_config.exit.thread72, label %if.end36.i

gb_lights_channel_config.exit.thread72:           ; preds = %gb_lights_led_operations_set.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #13
  call void @llvm.lifetime.end.p0(i64 77, ptr nonnull %conf.i) #13
  br label %for.inc

if.end36.i:                                       ; preds = %gb_lights_led_operations_set.exit.i
  %104 = ptrtoint ptr %has_flash.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %has_flash.i, align 4
  %105 = ptrtoint ptr %light4.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %light4.i, align 4
  %glights.i.i.i = getelementptr inbounds %struct.gb_light, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %glights.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %glights.i.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %conf.i.i) #13
  %111 = call ptr @memset(ptr %conf.i.i, i32 255, i32 24)
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %106, align 4
  %114 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %req.i.i, align 1
  %115 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx34, align 4
  %117 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %20, align 1
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %110, i32 noundef 5, ptr noundef nonnull %req.i.i, i32 noundef 2, ptr noundef nonnull %conf.i.i, i32 noundef 24, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %gb_lights_channel_config.exit, label %if.end.i.i66

if.end.i.i66:                                     ; preds = %if.end36.i
  %intensity_uA.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 13
  %118 = ptrtoint ptr %conf.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %conf.i.i, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #13
  %121 = ptrtoint ptr %intensity_uA.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %intensity_uA.i.i, align 4
  %122 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %25, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123) #13
  %max.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 13, i32 1
  %125 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %max.i.i, align 4
  %126 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %24, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #13
  %step.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 13, i32 2
  %129 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %step.i.i, align 4
  %sub.i.i = sub i32 %124, %120
  %div.i.i = udiv i32 %sub.i.i, %128
  %130 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %led.i, align 4
  %max_brightness.i.i = getelementptr inbounds %struct.led_classdev, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div.i.i, ptr %max_brightness.i.i, align 4
  %133 = ptrtoint ptr %mode5.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mode5.i, align 4
  %and.i75.i = and i32 %134, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75.i)
  %tobool.not.i76.i = icmp eq i32 %and.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end.i.i66.gb_lights_channel_config.exit.thread76_crit_edge, label %if.then6.i.i

if.end.i.i66.gb_lights_channel_config.exit.thread76_crit_edge: ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_channel_config.exit.thread76

if.then6.i.i:                                     ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #15
  %timeout_us.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 14
  %135 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %21, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #13
  %138 = ptrtoint ptr %timeout_us.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %timeout_us.i.i, align 4
  %139 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %22, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #13
  %max8.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 14, i32 1
  %142 = ptrtoint ptr %max8.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %max8.i.i, align 4
  %143 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %23, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144) #13
  %step9.i.i = getelementptr %struct.gb_channel, ptr %29, i32 %i.081, i32 14, i32 2
  %146 = ptrtoint ptr %step9.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %step9.i.i, align 4
  br label %gb_lights_channel_config.exit.thread76

gb_lights_channel_config.exit.thread:             ; preds = %if.end18.i.i.gb_lights_channel_config.exit.thread_crit_edge, %if.end13.i.i.gb_lights_channel_config.exit.thread_crit_edge, %if.end7.i.i.i.i.gb_lights_channel_config.exit.thread_crit_edge, %if.end19.i.gb_lights_channel_config.exit.thread_crit_edge, %if.end12.i.gb_lights_channel_config.exit.thread_crit_edge, %if.end.i.gb_lights_channel_config.exit.thread_crit_edge, %for.body.gb_lights_channel_config.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end18.i.i.gb_lights_channel_config.exit.thread_crit_edge ], [ -12, %if.end13.i.i.gb_lights_channel_config.exit.thread_crit_edge ], [ -12, %if.end7.i.i.i.i.gb_lights_channel_config.exit.thread_crit_edge ], [ -12, %if.end19.i.gb_lights_channel_config.exit.thread_crit_edge ], [ -12, %if.end12.i.gb_lights_channel_config.exit.thread_crit_edge ], [ -12, %if.end.i.gb_lights_channel_config.exit.thread_crit_edge ], [ %call.i.i, %for.body.gb_lights_channel_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #13
  call void @llvm.lifetime.end.p0(i64 77, ptr nonnull %conf.i) #13
  br label %cleanup

gb_lights_channel_config.exit.thread76:           ; preds = %if.then6.i.i, %if.end.i.i66.gb_lights_channel_config.exit.thread76_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #13
  call void @llvm.lifetime.end.p0(i64 77, ptr nonnull %conf.i) #13
  br label %for.inc

gb_lights_channel_config.exit:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #13
  call void @llvm.lifetime.end.p0(i64 77, ptr nonnull %conf.i) #13
  br label %cleanup

for.inc:                                          ; preds = %gb_lights_channel_config.exit.thread76, %gb_lights_channel_config.exit.thread72
  %inc = add nuw nsw i32 %i.081, 1
  %147 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %channels_count, align 4
  %conv26 = zext i8 %148 to i32
  %cmp27 = icmp ult i32 %inc, %conv26
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %gb_lights_channel_config.exit, %gb_lights_channel_config.exit.thread, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call.i.i.i, %gb_lights_channel_config.exit ], [ %retval.0.i.ph, %gb_lights_channel_config.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %conf) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_lights_light_register(ptr nocapture noundef %light) unnamed_addr #2 align 64 {
entry:
  %sd_cfg.i = alloca %struct.v4l2_flash_config, align 4
  %sd_cfg_ind.i = alloca %struct.v4l2_flash_config, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_count = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 4
  %0 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channels_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp57.not = icmp eq i8 %1, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %mode.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 6
  %4 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i.i, align 4
  %and.i.i = and i32 %5, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  %light.i.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 15
  %6 = ptrtoint ptr %light.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %light.i.i.i, align 4
  %glights.i.i.i = getelementptr inbounds %struct.gb_light, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %glights.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %glights.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %fled.i.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12
  %bundle.i.i = getelementptr inbounds %struct.gb_connection, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bundle.i.i, align 4
  %call.i.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %13, ptr noundef %fled.i.i.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.do.body.sink.split_crit_edge

if.then.i.do.body.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.sink.split

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %led.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 11
  %14 = ptrtoint ptr %led.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %led.i.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then2.i:                                       ; preds = %if.end.i
  %light.i.i8.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 15
  %15 = ptrtoint ptr %light.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %light.i.i8.i, align 4
  %glights.i.i9.i = getelementptr inbounds %struct.gb_light, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %glights.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %glights.i.i9.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %fled1.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12
  %ops.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 1
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gb_lights_flash_ops, ptr %ops.i.i, align 4
  %flags.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %23, 262144
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %brightness.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 2
  %intensity_uA.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 13
  %24 = ptrtoint ptr %intensity_uA.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intensity_uA.i.i, align 4
  %26 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %brightness.i.i, align 4
  %max.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 13, i32 1
  %27 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max.i.i, align 4
  %max4.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 2, i32 1
  %29 = ptrtoint ptr %max4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max4.i.i, align 4
  %step.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 13, i32 2
  %30 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %step.i.i, align 4
  %step6.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 2, i32 2
  %32 = ptrtoint ptr %step6.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %step6.i.i, align 4
  %val.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 2, i32 3
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %val.i.i, align 4
  %and.i11.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.not.i.i = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.if.end.i.i_crit_edge, label %if.then.i12.i

if.then2.i.if.end.i.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i12.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 3
  %timeout_us.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 14
  %34 = ptrtoint ptr %timeout_us.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout_us.i.i, align 4
  %36 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %timeout.i.i, align 4
  %max12.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 14, i32 1
  %37 = ptrtoint ptr %max12.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max12.i.i, align 4
  %max13.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 3, i32 1
  %39 = ptrtoint ptr %max13.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max13.i.i, align 4
  %step15.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 14, i32 2
  %40 = ptrtoint ptr %step15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %step15.i.i, align 4
  %step16.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 3, i32 2
  %42 = ptrtoint ptr %step16.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %step16.i.i, align 4
  %val19.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 12, i32 3, i32 3
  %43 = ptrtoint ptr %val19.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %val19.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i12.i, %if.then2.i.if.end.i.i_crit_edge
  %channels_count.i.i.i = getelementptr inbounds %struct.gb_light, ptr %16, i32 0, i32 4
  %44 = ptrtoint ptr %channels_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %channels_count.i.i.i, align 4
  %conv.i.i.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp10.not.i.i.i = icmp eq i8 %45, 0
  br i1 %cmp10.not.i.i.i, label %if.end.i.i.if.end26.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.if.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %channels.i.i.i = getelementptr inbounds %struct.gb_light, ptr %16, i32 0, i32 5
  %46 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channels.i.i.i, align 4
  %48 = mul nuw nsw i32 %conv.i.i.i, 632
  %49 = add nsw i32 %48, -632
  %uglygep.i.i.i = getelementptr i8, ptr %47, i32 %49
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.gb_channel, ptr %47, i32 %i.011.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %mode2.i.i.i = getelementptr %struct.gb_channel, ptr %47, i32 %i.011.i.i.i, i32 6
  %50 = ptrtoint ptr %mode2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %51)
  %cmp3.i.i.i = icmp eq i32 %51, 512
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i.if.then22.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %get_channel_from_mode.exit.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

get_channel_from_mode.exit.i.i:                   ; preds = %for.inc.i.i.i
  %tobool21.not.i.i = icmp eq ptr %uglygep.i.i.i, null
  br i1 %tobool21.not.i.i, label %get_channel_from_mode.exit.i.i.if.end26.i.i_crit_edge, label %get_channel_from_mode.exit.i.i.if.then22.i.i_crit_edge

get_channel_from_mode.exit.i.i.if.then22.i.i_crit_edge: ; preds = %get_channel_from_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i.i

get_channel_from_mode.exit.i.i.if.end26.i.i_crit_edge: ; preds = %get_channel_from_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

if.then22.i.i:                                    ; preds = %get_channel_from_mode.exit.i.i.if.then22.i.i_crit_edge, %land.lhs.true.i.i.i.if.then22.i.i_crit_edge
  %channel.1.i70.i.i = phi ptr [ %uglygep.i.i.i, %get_channel_from_mode.exit.i.i.if.then22.i.i_crit_edge ], [ %arrayidx.i.i.i, %land.lhs.true.i.i.i.if.then22.i.i_crit_edge ]
  br i1 %tobool.not.i.i, label %if.then22.i.i.if.end26.i.i_crit_edge, label %if.end.i.i.i

if.then22.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

if.end.i.i.i:                                     ; preds = %if.then22.i.i
  %led.i.i.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i70.i.i, i32 0, i32 11
  %52 = ptrtoint ptr %led.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %led.i.i.i, align 4
  %max_brightness.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %max_brightness.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_brightness.i.i.i, align 4
  %led1.i.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 11
  %56 = ptrtoint ptr %led1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %led1.i.i.i, align 4
  %max_brightness2.i.i.i = getelementptr inbounds %struct.led_classdev, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %max_brightness2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %max_brightness2.i.i.i, align 4
  %59 = load ptr, ptr %led1.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %mode_name.i.i.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i70.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %mode_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mode_name.i.i.i, align 4
  %call.i.i13.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.29, ptr noundef %61, ptr noundef %63) #13
  %tobool5.not.i.i.i = icmp eq ptr %call.i.i13.i, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.fail.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i.i.fail.i.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %led1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %led1.i.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %67) #13
  %68 = ptrtoint ptr %led1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %led1.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i13.i, ptr %69, align 4
  %71 = load ptr, ptr %led1.i.i.i, align 4
  %72 = ptrtoint ptr %led.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %led.i.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end7.i.i.i, %if.then22.i.i.if.end26.i.i_crit_edge, %get_channel_from_mode.exit.i.i.if.end26.i.i_crit_edge, %if.end.i.i.if.end26.i.i_crit_edge
  %bundle.i14.i = getelementptr inbounds %struct.gb_connection, ptr %20, i32 0, i32 2
  %73 = ptrtoint ptr %bundle.i14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bundle.i14.i, align 4
  %call.i64.i.i = tail call i32 @led_classdev_flash_register_ext(ptr noundef %74, ptr noundef %fled1.i.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i.i)
  %cmp28.i.i = icmp slt i32 %call.i64.i.i, 0
  br i1 %cmp28.i.i, label %if.end26.i.i.fail.i.i_crit_edge, label %if.end26.i.i.do.body.sink.split_crit_edge

if.end26.i.i.do.body.sink.split_crit_edge:        ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.sink.split

if.end26.i.i.fail.i.i_crit_edge:                  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i.i

fail.i.i:                                         ; preds = %if.end26.i.i.fail.i.i_crit_edge, %if.end.i.i.i.fail.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i64.i.i, %if.end26.i.i.fail.i.i_crit_edge ], [ -12, %if.end.i.i.i.fail.i.i_crit_edge ]
  %led.i16.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 11
  %75 = ptrtoint ptr %led.i16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %led.i16.i, align 4
  br label %cleanup

do.body.sink.split:                               ; preds = %if.end26.i.i.do.body.sink.split_crit_edge, %if.then.i.do.body.sink.split_crit_edge
  %is_registered.i.i = getelementptr %struct.gb_channel, ptr %3, i32 %i.058, i32 16
  %76 = ptrtoint ptr %is_registered.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %is_registered.i.i, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end.i.do.body_crit_edge
  %77 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %channels, align 4
  %lock = getelementptr %struct.gb_channel, ptr %78, i32 %i.058, i32 20
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @gb_lights_light_register.__key) #13
  %inc = add nuw nsw i32 %i.058, 1
  %79 = ptrtoint ptr %channels_count to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %channels_count, align 4
  %conv = zext i8 %80 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa55 = phi i8 [ 0, %entry.for.end_crit_edge ], [ %80, %do.body.for.end_crit_edge ]
  %conv.le = zext i8 %.lcssa55 to i32
  %ready = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 7
  %81 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %ready, align 1
  %has_flash = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 6
  %82 = ptrtoint ptr %has_flash to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %has_flash, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not = icmp eq i8 %83, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %for.end
  %glights.i.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 2
  %84 = ptrtoint ptr %glights.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %glights.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bundle.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sd_cfg.i) #13
  %90 = call ptr @memset(ptr %sd_cfg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sd_cfg_ind.i) #13
  %91 = call ptr @memset(ptr %sd_cfg_ind.i, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa55)
  %cmp10.not.i.i = icmp eq i8 %.lcssa55, 0
  br i1 %cmp10.not.i.i, label %if.then6.do.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then6.do.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then6
  %channels.i.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 5
  %92 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %channels.i.i, align 4
  %94 = mul nuw nsw i32 %conv.le, 632
  %95 = add nsw i32 %94, -632
  %uglygep.i.i = getelementptr i8, ptr %93, i32 %95
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i.i
  %tobool.not.i.i27 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i27, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %mode2.i.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i.i, i32 6
  %96 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %97)
  %cmp3.i.i = icmp eq i32 %97, 512
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.then.i32_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i.if.then.i32_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i32

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.le
  br i1 %exitcond.not.i.i, label %get_channel_from_mode.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

get_channel_from_mode.exit.i:                     ; preds = %for.inc.i.i
  %tobool.not.i28 = icmp eq ptr %uglygep.i.i, null
  br i1 %tobool.not.i28, label %get_channel_from_mode.exit.i.for.body.i94.i.preheader_crit_edge, label %get_channel_from_mode.exit.i.if.then.i32_crit_edge

get_channel_from_mode.exit.i.if.then.i32_crit_edge: ; preds = %get_channel_from_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i32

get_channel_from_mode.exit.i.for.body.i94.i.preheader_crit_edge: ; preds = %get_channel_from_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i94.i.preheader

if.then.i32:                                      ; preds = %get_channel_from_mode.exit.i.if.then.i32_crit_edge, %land.lhs.true.i.i.if.then.i32_crit_edge
  %channel.1.i132.i = phi ptr [ %uglygep.i.i, %get_channel_from_mode.exit.i.if.then.i32_crit_edge ], [ %arrayidx.i.i, %land.lhs.true.i.i.if.then.i32_crit_edge ]
  %intensity_uA.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i132.i, i32 0, i32 13
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg.i, i32 0, i32 1
  %98 = ptrtoint ptr %intensity_uA.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %intensity_uA.i, align 4
  %100 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %intensity.i, align 4
  %max.i.i29 = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i132.i, i32 0, i32 13, i32 1
  %101 = ptrtoint ptr %max.i.i29 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max.i.i29, align 4
  %max2.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg.i, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %max2.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %max2.i.i, align 4
  %step.i.i30 = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i132.i, i32 0, i32 13, i32 2
  %104 = ptrtoint ptr %step.i.i30 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %step.i.i30, align 4
  %step3.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg.i, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %step3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %step3.i.i, align 4
  %val.i.i31 = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg.i, i32 0, i32 1, i32 3
  %107 = ptrtoint ptr %val.i.i31 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %102, ptr %val.i.i31, align 4
  br label %for.body.i94.i.preheader

for.body.i94.i.preheader:                         ; preds = %if.then.i32, %get_channel_from_mode.exit.i.for.body.i94.i.preheader_crit_edge
  br label %for.body.i94.i

for.body.i94.i:                                   ; preds = %for.inc.i100.i.for.body.i94.i_crit_edge, %for.body.i94.i.preheader
  %i.011.i91.i = phi i32 [ %inc.i98.i, %for.inc.i100.i.for.body.i94.i_crit_edge ], [ 0, %for.body.i94.i.preheader ]
  %arrayidx.i92.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i91.i
  %tobool.not.i93.i = icmp eq ptr %arrayidx.i92.i, null
  br i1 %tobool.not.i93.i, label %for.body.i94.i.for.inc.i100.i_crit_edge, label %land.lhs.true.i97.i

for.body.i94.i.for.inc.i100.i_crit_edge:          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i100.i

land.lhs.true.i97.i:                              ; preds = %for.body.i94.i
  %mode2.i95.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i91.i, i32 6
  %108 = ptrtoint ptr %mode2.i95.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mode2.i95.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %109)
  %cmp3.i96.i = icmp eq i32 %109, 1024
  br i1 %cmp3.i96.i, label %land.lhs.true.i97.i.if.then5.i_crit_edge, label %land.lhs.true.i97.i.for.inc.i100.i_crit_edge

land.lhs.true.i97.i.for.inc.i100.i_crit_edge:     ; preds = %land.lhs.true.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i100.i

land.lhs.true.i97.i.if.then5.i_crit_edge:         ; preds = %land.lhs.true.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

for.inc.i100.i:                                   ; preds = %land.lhs.true.i97.i.for.inc.i100.i_crit_edge, %for.body.i94.i.for.inc.i100.i_crit_edge
  %inc.i98.i = add nuw nsw i32 %i.011.i91.i, 1
  %exitcond.not.i99.i = icmp eq i32 %inc.i98.i, %conv.le
  br i1 %exitcond.not.i99.i, label %get_channel_from_mode.exit102.i, label %for.inc.i100.i.for.body.i94.i_crit_edge

for.inc.i100.i.for.body.i94.i_crit_edge:          ; preds = %for.inc.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i94.i

get_channel_from_mode.exit102.i:                  ; preds = %for.inc.i100.i
  %tobool4.not.i = icmp eq ptr %uglygep.i.i, null
  br i1 %tobool4.not.i, label %get_channel_from_mode.exit102.i.for.body.lr.ph.i113.i_crit_edge, label %get_channel_from_mode.exit102.i.if.then5.i_crit_edge

get_channel_from_mode.exit102.i.if.then5.i_crit_edge: ; preds = %get_channel_from_mode.exit102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

get_channel_from_mode.exit102.i.for.body.lr.ph.i113.i_crit_edge: ; preds = %get_channel_from_mode.exit102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i113.i

if.then5.i:                                       ; preds = %get_channel_from_mode.exit102.i.if.then5.i_crit_edge, %land.lhs.true.i97.i.if.then5.i_crit_edge
  %channel.1.i101139.i = phi ptr [ %uglygep.i.i, %get_channel_from_mode.exit102.i.if.then5.i_crit_edge ], [ %arrayidx.i92.i, %land.lhs.true.i97.i.if.then5.i_crit_edge ]
  %intensity_uA6.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i101139.i, i32 0, i32 13
  %intensity7.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg_ind.i, i32 0, i32 1
  %110 = ptrtoint ptr %intensity_uA6.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %intensity_uA6.i, align 4
  %112 = ptrtoint ptr %intensity7.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %intensity7.i, align 4
  %max.i103.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i101139.i, i32 0, i32 13, i32 1
  %113 = ptrtoint ptr %max.i103.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max.i103.i, align 4
  %max2.i104.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg_ind.i, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %max2.i104.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %max2.i104.i, align 4
  %step.i105.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i101139.i, i32 0, i32 13, i32 2
  %116 = ptrtoint ptr %step.i105.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %step.i105.i, align 4
  %step3.i106.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg_ind.i, i32 0, i32 1, i32 2
  %118 = ptrtoint ptr %step3.i106.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %step3.i106.i, align 4
  %val.i107.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg_ind.i, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %114, ptr %val.i107.i, align 4
  %fled8.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i101139.i, i32 0, i32 12
  br label %for.body.lr.ph.i113.i

for.body.lr.ph.i113.i:                            ; preds = %if.then5.i, %get_channel_from_mode.exit102.i.for.body.lr.ph.i113.i_crit_edge
  %tobool4.not135.i = phi i1 [ false, %if.then5.i ], [ true, %get_channel_from_mode.exit102.i.for.body.lr.ph.i113.i_crit_edge ]
  %iled.0.i = phi ptr [ %fled8.i, %if.then5.i ], [ null, %get_channel_from_mode.exit102.i.for.body.lr.ph.i113.i_crit_edge ]
  br label %for.body.i117.i

for.body.i117.i:                                  ; preds = %for.inc.i123.i.for.body.i117.i_crit_edge, %for.body.lr.ph.i113.i
  %i.011.i114.i = phi i32 [ 0, %for.body.lr.ph.i113.i ], [ %inc.i121.i, %for.inc.i123.i.for.body.i117.i_crit_edge ]
  %arrayidx.i115.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i114.i
  %tobool.not.i116.i = icmp eq ptr %arrayidx.i115.i, null
  br i1 %tobool.not.i116.i, label %for.body.i117.i.for.inc.i123.i_crit_edge, label %land.lhs.true.i120.i

for.body.i117.i.for.inc.i123.i_crit_edge:         ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i123.i

land.lhs.true.i120.i:                             ; preds = %for.body.i117.i
  %mode2.i118.i = getelementptr %struct.gb_channel, ptr %93, i32 %i.011.i114.i, i32 6
  %120 = ptrtoint ptr %mode2.i118.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mode2.i118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %121)
  %cmp3.i119.i = icmp eq i32 %121, 256
  br i1 %cmp3.i119.i, label %land.lhs.true.i120.i.if.end27.i_crit_edge, label %land.lhs.true.i120.i.for.inc.i123.i_crit_edge

land.lhs.true.i120.i.for.inc.i123.i_crit_edge:    ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i123.i

land.lhs.true.i120.i.if.end27.i_crit_edge:        ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

for.inc.i123.i:                                   ; preds = %land.lhs.true.i120.i.for.inc.i123.i_crit_edge, %for.body.i117.i.for.inc.i123.i_crit_edge
  %inc.i121.i = add nuw nsw i32 %i.011.i114.i, 1
  %exitcond.not.i122.i = icmp eq i32 %inc.i121.i, %conv.le
  br i1 %exitcond.not.i122.i, label %get_channel_from_mode.exit125.i, label %for.inc.i123.i.for.body.i117.i_crit_edge

for.inc.i123.i.for.body.i117.i_crit_edge:         ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i117.i

get_channel_from_mode.exit125.i:                  ; preds = %for.inc.i123.i
  %tobool11.not.i = icmp eq ptr %uglygep.i.i, null
  br i1 %tobool11.not.i, label %get_channel_from_mode.exit125.i.do.end.i_crit_edge, label %get_channel_from_mode.exit125.i.if.end27.i_crit_edge, !prof !102

get_channel_from_mode.exit125.i.if.end27.i_crit_edge: ; preds = %get_channel_from_mode.exit125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

get_channel_from_mode.exit125.i.do.end.i_crit_edge: ; preds = %get_channel_from_mode.exit125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %get_channel_from_mode.exit125.i.do.end.i_crit_edge, %if.then6.do.end.i_crit_edge
  %tobool4.not135143152.i = phi i1 [ %tobool4.not135.i, %get_channel_from_mode.exit125.i.do.end.i_crit_edge ], [ true, %if.then6.do.end.i_crit_edge ]
  %iled.0144150.i = phi ptr [ %iled.0.i, %get_channel_from_mode.exit125.i.do.end.i_crit_edge ], [ null, %if.then6.do.end.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 552, i32 noundef 9, ptr noundef null) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i, %get_channel_from_mode.exit125.i.if.end27.i_crit_edge, %land.lhs.true.i120.i.if.end27.i_crit_edge
  %channel.1.i124153.i = phi ptr [ null, %do.end.i ], [ %uglygep.i.i, %get_channel_from_mode.exit125.i.if.end27.i_crit_edge ], [ %arrayidx.i115.i, %land.lhs.true.i120.i.if.end27.i_crit_edge ]
  %tobool4.not135143151.i = phi i1 [ %tobool4.not135143152.i, %do.end.i ], [ %tobool4.not135.i, %get_channel_from_mode.exit125.i.if.end27.i_crit_edge ], [ %tobool4.not135.i, %land.lhs.true.i120.i.if.end27.i_crit_edge ]
  %iled.0144149.i = phi ptr [ %iled.0144150.i, %do.end.i ], [ %iled.0.i, %get_channel_from_mode.exit125.i.if.end27.i_crit_edge ], [ %iled.0.i, %land.lhs.true.i120.i.if.end27.i_crit_edge ]
  %fled34.i = getelementptr inbounds %struct.gb_channel, ptr %channel.1.i124153.i, i32 0, i32 12
  %name.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 1
  %122 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name.i, align 4
  %call35.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sd_cfg.i, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %123) #13
  %124 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name.i, align 4
  %call39.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sd_cfg_ind.i, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef %125) #13
  %flash_faults.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %sd_cfg.i, i32 0, i32 2
  %126 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 511, ptr %flash_faults.i, align 4
  %call40.i = call ptr @v4l2_flash_init(ptr noundef %89, ptr noundef null, ptr noundef %fled34.i, ptr noundef nonnull @v4l2_flash_ops, ptr noundef nonnull %sd_cfg.i) #13
  %v4l2_flash.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 8
  %127 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call40.i, ptr %v4l2_flash.i, align 4
  %cmp.i.i33 = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i33, label %if.end27.i.gb_lights_light_v4l2_register.exit_crit_edge, label %if.end46.i

if.end27.i.gb_lights_light_v4l2_register.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_light_v4l2_register.exit

if.end46.i:                                       ; preds = %if.end27.i
  br i1 %tobool4.not135143151.i, label %if.end46.i.gb_lights_light_v4l2_register.exit.thread_crit_edge, label %if.then48.i

if.end46.i.gb_lights_light_v4l2_register.exit.thread_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_light_v4l2_register.exit.thread

if.then48.i:                                      ; preds = %if.end46.i
  %call49.i = call ptr @v4l2_flash_indicator_init(ptr noundef %89, ptr noundef null, ptr noundef %iled.0144149.i, ptr noundef nonnull %sd_cfg_ind.i) #13
  %v4l2_flash_ind.i = getelementptr inbounds %struct.gb_light, ptr %light, i32 0, i32 9
  %128 = ptrtoint ptr %v4l2_flash_ind.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call49.i, ptr %v4l2_flash_ind.i, align 4
  %cmp.i126.i = icmp ugt ptr %call49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.then52.i, label %if.then48.i.gb_lights_light_v4l2_register.exit.thread_crit_edge

if.then48.i.gb_lights_light_v4l2_register.exit.thread_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_light_v4l2_register.exit.thread

if.then52.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %v4l2_flash.i, align 4
  call void @v4l2_flash_release(ptr noundef %130) #13
  %131 = ptrtoint ptr %v4l2_flash_ind.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %v4l2_flash_ind.i, align 4
  br label %gb_lights_light_v4l2_register.exit

gb_lights_light_v4l2_register.exit.thread:        ; preds = %if.then48.i.gb_lights_light_v4l2_register.exit.thread_crit_edge, %if.end46.i.gb_lights_light_v4l2_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sd_cfg_ind.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sd_cfg.i) #13
  br label %cleanup

gb_lights_light_v4l2_register.exit:               ; preds = %if.then52.i, %if.end27.i.gb_lights_light_v4l2_register.exit_crit_edge
  %retval.0.i34.in = phi ptr [ %132, %if.then52.i ], [ %call40.i, %if.end27.i.gb_lights_light_v4l2_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sd_cfg_ind.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sd_cfg.i) #13
  %cmp8 = icmp slt ptr %retval.0.i34.in, null
  br i1 %cmp8, label %if.then10, label %gb_lights_light_v4l2_register.exit.cleanup_crit_edge

gb_lights_light_v4l2_register.exit.cleanup_crit_edge: ; preds = %gb_lights_light_v4l2_register.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %gb_lights_light_v4l2_register.exit
  call void @__sanitizer_cov_trace_pc() #15
  %retval.0.i34 = ptrtoint ptr %retval.0.i34.in to i32
  %133 = ptrtoint ptr %has_flash to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %has_flash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %gb_lights_light_v4l2_register.exit.cleanup_crit_edge, %gb_lights_light_v4l2_register.exit.thread, %for.end.cleanup_crit_edge, %fail.i.i, %if.then.i.i
  %retval.0 = phi i32 [ %retval.0.i34, %if.then10 ], [ 0, %gb_lights_light_v4l2_register.exit.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i.i.i, %if.then.i.i ], [ %ret.0.i.i, %fail.i.i ], [ 0, %gb_lights_light_v4l2_register.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @color_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %color = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @color_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %req.i = alloca %struct.gb_lights_set_color_request, align 1
  %color = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %color) #13
  %2 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %color, align 4, !annotation !96
  %led_access.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access.i, i32 noundef 0) #13
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %color) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i) #18
  br label %unlock

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %color, align 4
  %light.i.i = getelementptr i8, ptr %1, i32 488
  %7 = ptrtoint ptr %light.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %light.i.i, align 4
  %glights.i.i = getelementptr inbounds %struct.gb_light, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %glights.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %glights.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %bundle1.i = getelementptr inbounds %struct.gb_connection, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bundle1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bundle1.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req.i) #13
  %15 = getelementptr inbounds %struct.gb_lights_set_color_request, ptr %req.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.gb_lights_set_color_request, ptr %req.i, i32 0, i32 2
  %releasing.i = getelementptr i8, ptr %1, i32 493
  %17 = ptrtoint ptr %releasing.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %releasing.i, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.gb_lights_color_set.exit.thread_crit_edge

if.end5.gb_lights_color_set.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_color_set.exit.thread

if.end.i:                                         ; preds = %if.end5
  %call.i.i.i = call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %gb_lights_color_set.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i) #18
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #13
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_lights_color_set.exit.thread_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_lights_color_set.exit.thread_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gb_lights_color_set.exit.thread

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %gb_lights_color_set.exit.thread

gb_lights_color_set.exit.thread:                  ; preds = %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_lights_color_set.exit.thread_crit_edge, %if.end5.gb_lights_color_set.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i.i, %do.end.i.i.gb_lights_color_set.exit.thread_crit_edge ], [ -108, %if.end5.gb_lights_color_set.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req.i) #13
  br label %unlock

gb_lights_color_set.exit:                         ; preds = %if.end.i
  %20 = ptrtoint ptr %light.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %light.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %24 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %req.i, align 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 4
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %15, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %6) #13
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %16, align 1
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %12, i32 noundef 8, ptr noundef nonnull %req.i, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  %call.i.i19.i = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i.i19.i, ptr %last_busy.i.i.i, align 8
  %call.i1.i.i = call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %gb_lights_color_set.exit.unlock_crit_edge, label %if.end9

gb_lights_color_set.exit.unlock_crit_edge:        ; preds = %gb_lights_color_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end9:                                          ; preds = %gb_lights_color_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %color, align 4
  %color10 = getelementptr i8, ptr %1, i32 -36
  %33 = ptrtoint ptr %color10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %color10, align 4
  br label %unlock

unlock:                                           ; preds = %if.end9, %gb_lights_color_set.exit.unlock_crit_edge, %gb_lights_color_set.exit.thread, %do.end, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i.i, %gb_lights_color_set.exit.unlock_crit_edge ], [ %size, %if.end9 ], [ -16, %entry.unlock_crit_edge ], [ %retval.0.i.ph, %gb_lights_color_set.exit.thread ]
  call void @mutex_unlock(ptr noundef %led_access.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color) #13
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fade_in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fade_in = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %fade_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fade_in, align 4
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fade_in_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %fade = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fade) #13
  %2 = ptrtoint ptr %fade to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fade, align 1, !annotation !96
  %led_access.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access.i, i32 noundef 0) #13
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end:                                           ; preds = %entry
  %call3 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %fade) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call3) #18
  br label %unlock

if.end5:                                          ; preds = %if.end
  %fade_in = getelementptr i8, ptr %1, i32 -28
  %5 = ptrtoint ptr %fade_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fade_in, align 4
  %7 = ptrtoint ptr %fade to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fade, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7 = icmp eq i8 %6, %8
  br i1 %cmp7, label %if.end5.unlock_crit_edge, label %if.end10

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %fade_in to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %fade_in, align 4
  %call12 = call fastcc i32 @gb_lights_fade_set(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %spec.select = select i1 %cmp13, i32 %call12, i32 %size
  br label %unlock

unlock:                                           ; preds = %if.end10, %if.end5.unlock_crit_edge, %do.end, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call3, %if.end5.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ %spec.select, %if.end10 ]
  call void @mutex_unlock(ptr noundef %led_access.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fade) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_lights_fade_set(ptr nocapture noundef readonly %channel) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_set_fade_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %light.i = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 15
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_set_fade_request, ptr %req, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gb_lights_set_fade_request, ptr %req, i32 0, i32 2
  %10 = getelementptr inbounds %struct.gb_lights_set_fade_request, ptr %req, i32 0, i32 3
  %releasing = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 17
  %11 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %light.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %18 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %req, align 1
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %8, align 1
  %fade_in = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 4
  %22 = ptrtoint ptr %fade_in to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fade_in, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %9, align 1
  %fade_out = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 5
  %25 = ptrtoint ptr %fade_out to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fade_out, align 1
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %10, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %req, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  %call.i.i22 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i.i22, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -108, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fade_out_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fade_out = getelementptr i8, ptr %1, i32 -27
  %2 = ptrtoint ptr %fade_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fade_out, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fade_out_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %fade = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fade) #13
  %2 = ptrtoint ptr %fade to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fade, align 1, !annotation !96
  %led_access.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %led_access.i, i32 noundef 0) #13
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end:                                           ; preds = %entry
  %call3 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %fade) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call3) #18
  br label %unlock

if.end5:                                          ; preds = %if.end
  %fade_out = getelementptr i8, ptr %1, i32 -27
  %5 = ptrtoint ptr %fade_out to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fade_out, align 1
  %7 = ptrtoint ptr %fade to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fade, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7 = icmp eq i8 %6, %8
  br i1 %cmp7, label %if.end5.unlock_crit_edge, label %if.end10

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %fade_out to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %fade_out, align 1
  %call12 = call fastcc i32 @gb_lights_fade_set(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %spec.select = select i1 %cmp13, i32 %call12, i32 %size
  br label %unlock

unlock:                                           ; preds = %if.end10, %if.end5.unlock_crit_edge, %do.end, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call3, %if.end5.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ %spec.select, %if.end10 ]
  call void @mutex_unlock(ptr noundef %led_access.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fade) #13
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_brightness_get(ptr nocapture noundef readonly %cdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %led = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_brightness_set(ptr noundef %cdev, i32 noundef %value) #2 align 64 {
entry:
  %req.i.i = alloca %struct.gb_lights_set_brightness_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cdev, i32 -44
  %led = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value, ptr %brightness, align 4
  %releasing.i = getelementptr i8, ptr %cdev, i32 493
  %3 = ptrtoint ptr %releasing.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %releasing.i, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__gb_lights_brightness_set.exit_crit_edge

entry.__gb_lights_brightness_set.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_brightness_set.exit

if.end.i:                                         ; preds = %entry
  %mode.i.i = getelementptr i8, ptr %cdev, i32 -24
  %5 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i.i, align 4
  %and.i.i = and i32 %6, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %and.i9.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.i.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool.not.i.i, label %if.then1.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, label %if.then.i.i

if.then1.i.__gb_lights_flash_brightness_set.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_flash_brightness_set.exit.i

if.then.i.i:                                      ; preds = %if.then1.i
  %light.i.i = getelementptr i8, ptr %cdev, i32 488
  %7 = ptrtoint ptr %light.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %light.i.i, align 4
  %channels_count.i.i.i = getelementptr inbounds %struct.gb_light, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %channels_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channels_count.i.i.i, align 4
  %conv.i.i.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp10.not.i.i.i = icmp eq i8 %10, 0
  br i1 %cmp10.not.i.i.i, label %if.then.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_flash_brightness_set.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i.i
  %channels.i.i.i = getelementptr inbounds %struct.gb_light, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels.i.i.i, align 4
  %13 = mul nuw nsw i32 %conv.i.i.i, 632
  %14 = add nsw i32 %13, -632
  %uglygep.i.i.i = getelementptr i8, ptr %12, i32 %14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.gb_channel, ptr %12, i32 %i.011.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %mode2.i.i.i = getelementptr %struct.gb_channel, ptr %12, i32 %i.011.i.i.i, i32 6
  %15 = ptrtoint ptr %mode2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %16)
  %cmp3.i.i.i = icmp eq i32 %16, 512
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_flash_brightness_set.exit.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_flash_brightness_set.exit.i

__gb_lights_flash_brightness_set.exit.i:          ; preds = %for.inc.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, %land.lhs.true.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, %if.then.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge, %if.then1.i.__gb_lights_flash_brightness_set.exit.i_crit_edge
  %channel.addr.0.i.i = phi ptr [ %add.ptr.i, %if.then1.i.__gb_lights_flash_brightness_set.exit.i_crit_edge ], [ null, %if.then.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge ], [ %arrayidx.i.i.i, %land.lhs.true.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge ], [ %uglygep.i.i.i, %for.inc.i.i.i.__gb_lights_flash_brightness_set.exit.i_crit_edge ]
  %intensity_uA.i.i = getelementptr inbounds %struct.gb_channel, ptr %channel.addr.0.i.i, i32 0, i32 13
  %17 = ptrtoint ptr %intensity_uA.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intensity_uA.i.i, align 4
  %step.i.i = getelementptr inbounds %struct.gb_channel, ptr %channel.addr.0.i.i, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step.i.i, align 4
  %led.i.i = getelementptr inbounds %struct.gb_channel, ptr %channel.addr.0.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %led.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %led.i.i, align 4
  %brightness.i.i = getelementptr inbounds %struct.led_classdev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brightness.i.i, align 4
  %mul.i.i = mul i32 %24, %20
  %add.i.i = add i32 %mul.i.i, %18
  %call2.i.i = tail call fastcc i32 @__gb_lights_flash_intensity_set(ptr noundef %channel.addr.0.i.i, i32 noundef %add.i.i) #13
  br label %__gb_lights_brightness_set.exit

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req.i.i) #13
  %25 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %req.i.i, align 1, !annotation !96
  %26 = getelementptr inbounds %struct.gb_lights_set_brightness_request, ptr %req.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 1, !annotation !96
  %28 = getelementptr inbounds %struct.gb_lights_set_brightness_request, ptr %req.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %28, align 1, !annotation !96
  %light.i.i.i = getelementptr i8, ptr %cdev, i32 488
  %30 = ptrtoint ptr %light.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %light.i.i.i, align 4
  %glights.i.i.i = getelementptr inbounds %struct.gb_light, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %glights.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %glights.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %bundle1.i.i = getelementptr inbounds %struct.gb_connection, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bundle1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bundle1.i.i, align 4
  %lock.i.i = getelementptr i8, ptr %cdev, i32 496
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #13
  %call.i.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %37, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i

do.end.i.i.i:                                     ; preds = %if.else.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i.i) #18
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %do.end.i.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

do.end.i.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_led_brightness_set.exit.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %__gb_lights_led_brightness_set.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %active.i.i = getelementptr i8, ptr %cdev, i32 495
  %39 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %active.i.i, align 1, !range !101
  %41 = ptrtoint ptr %light.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %light.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %45 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %req.i.i, align 1
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i, align 4
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %26, align 1
  %49 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %led, align 4
  %brightness.i11.i = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %brightness.i11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %brightness.i11.i, align 4
  %conv.i.i = trunc i32 %52 to i8
  %53 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i.i, ptr %28, align 1
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %35, i32 noundef 6, ptr noundef nonnull %req.i.i, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp6.i.i, label %if.end.i.i.out_pm_put.i.i_crit_edge, label %if.end9.i.i

if.end.i.i.out_pm_put.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i12.i = icmp eq i8 %40, 0
  %54 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %led, align 4
  %brightness11.i.i = getelementptr inbounds %struct.led_classdev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %brightness11.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %brightness11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool12.not.i.i = icmp eq i32 %57, 0
  %not.tobool12.not.i.i = xor i1 %tobool12.not.i.i, true
  %..i.i = zext i1 %not.tobool12.not.i.i to i8
  %58 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %..i.i, ptr %active.i.i, align 1
  br i1 %tobool.not.i12.i, label %land.lhs.true.i.i, label %land.lhs.true25.critedge.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  br i1 %tobool12.not.i.i, label %land.lhs.true.i.i.out_pm_put.i.i_crit_edge, label %land.lhs.true.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge

land.lhs.true.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__gb_lights_led_brightness_set.exit.i

land.lhs.true.i.i.out_pm_put.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put.i.i

land.lhs.true25.critedge.i.i:                     ; preds = %if.end9.i.i
  br i1 %tobool12.not.i.i, label %if.then28.i.i, label %land.lhs.true25.critedge.i.i.out_pm_put.i.i_crit_edge

land.lhs.true25.critedge.i.i.out_pm_put.i.i_crit_edge: ; preds = %land.lhs.true25.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true25.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i50.i.i = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 22
  %59 = ptrtoint ptr %last_busy.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store volatile i64 %call.i.i50.i.i, ptr %last_busy.i.i.i.i, align 8
  %call.i1.i.i.i = call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #13
  br label %out_pm_put.i.i

out_pm_put.i.i:                                   ; preds = %if.then28.i.i, %land.lhs.true25.critedge.i.i.out_pm_put.i.i_crit_edge, %land.lhs.true.i.i.out_pm_put.i.i_crit_edge, %if.end.i.i.out_pm_put.i.i_crit_edge
  %call.i.i51.i.i = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i52.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 22
  %60 = ptrtoint ptr %last_busy.i.i52.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store volatile i64 %call.i.i51.i.i, ptr %last_busy.i.i52.i.i, align 8
  %call.i1.i53.i.i = call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #13
  br label %__gb_lights_led_brightness_set.exit.i

__gb_lights_led_brightness_set.exit.i:            ; preds = %out_pm_put.i.i, %land.lhs.true.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge, %do.end11.i.i.i.i.i.i.i, %do.end.i.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %out_pm_put.i.i ], [ %call.i.i.i, %land.lhs.true.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge ], [ %call.i.i.i.i, %do.end.i.i.i.__gb_lights_led_brightness_set.exit.i_crit_edge ], [ %call.i.i.i.i, %do.end11.i.i.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %lock.i.i) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req.i.i) #13
  br label %__gb_lights_brightness_set.exit

__gb_lights_brightness_set.exit:                  ; preds = %__gb_lights_led_brightness_set.exit.i, %__gb_lights_flash_brightness_set.exit.i, %entry.__gb_lights_brightness_set.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.__gb_lights_brightness_set.exit_crit_edge ], [ %call2.i.i, %__gb_lights_flash_brightness_set.exit.i ], [ %ret.0.i.i, %__gb_lights_led_brightness_set.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_blink_set(ptr noundef %cdev, ptr noundef readonly %delay_on, ptr noundef readonly %delay_off) #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_blink_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cdev, i32 -44
  %light.i = getelementptr i8, ptr %cdev, i32 488
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle2 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle2, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_blink_request, ptr %req, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gb_lights_blink_request, ptr %req, i32 0, i32 2
  %10 = getelementptr inbounds %struct.gb_lights_blink_request, ptr %req, i32 0, i32 3
  %releasing = getelementptr i8, ptr %cdev, i32 493
  %11 = call ptr @memset(ptr %req, i32 255, i32 6)
  %12 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %delay_on, null
  %tobool4.not = icmp eq ptr %delay_off, null
  %or.cond = or i1 %tobool3.not, %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %cdev, i32 496
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end9

do.end.i:                                         ; preds = %if.end6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.out_unlock_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.out_unlock_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %out_unlock

if.end9:                                          ; preds = %if.end6
  %active = getelementptr i8, ptr %cdev, i32 495
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1, !range !101
  %17 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %light.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %req, align 1
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %8, align 1
  %25 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay_on, align 4
  %conv = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %9, align 1
  %29 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay_off, align 4
  %conv12 = trunc i32 %30 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %10, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 7, ptr noundef nonnull %req, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %if.end9.out_pm_put_crit_edge, label %if.end17

if.end9.out_pm_put_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  %33 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool18.not = icmp eq i32 %34, 0
  %not.tobool18.not = xor i1 %tobool18.not, true
  %. = zext i1 %not.tobool18.not to i8
  %35 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %., ptr %active, align 1
  br i1 %tobool10.not, label %land.lhs.true, label %land.lhs.true31.critedge

land.lhs.true:                                    ; preds = %if.end17
  br i1 %tobool18.not, label %land.lhs.true.out_pm_put_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

land.lhs.true.out_pm_put_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put

land.lhs.true31.critedge:                         ; preds = %if.end17
  br i1 %tobool18.not, label %if.then34, label %land.lhs.true31.critedge.out_pm_put_crit_edge

land.lhs.true31.critedge.out_pm_put_crit_edge:    ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pm_put

if.then34:                                        ; preds = %land.lhs.true31.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i63 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %36 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i.i63, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %out_pm_put

out_pm_put:                                       ; preds = %if.then34, %land.lhs.true31.critedge.out_pm_put_crit_edge, %land.lhs.true.out_pm_put_crit_edge, %if.end9.out_pm_put_crit_edge
  %call.i.i64 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i65 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i.i65 to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i.i64, ptr %last_busy.i.i65, align 8
  %call.i1.i66 = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %out_unlock

out_unlock:                                       ; preds = %out_pm_put, %land.lhs.true.out_unlock_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %out_pm_put ], [ %call.i, %land.lhs.true.out_unlock_crit_edge ], [ %call.i.i, %do.end.i.out_unlock_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -108, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gb_lights_flash_intensity_set(ptr nocapture noundef readonly %channel, i32 noundef %intensity) unnamed_addr #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_set_flash_intensity_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %light.i = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 15
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_set_flash_intensity_request, ptr %req, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gb_lights_set_flash_intensity_request, ptr %req, i32 0, i32 2
  %releasing = getelementptr inbounds %struct.gb_channel, ptr %channel, i32 0, i32 17
  %10 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %light.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %req, align 1
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channel, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %intensity)
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %9, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 11, ptr noundef nonnull %req, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  %call.i.i18 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i18, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -108, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_flash_intensity_set(ptr nocapture noundef %fcdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fcdev, i32 -44
  %call = tail call fastcc i32 @__gb_lights_flash_intensity_set(ptr noundef %add.ptr, i32 noundef %brightness)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fcdev, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_lights_flash_intensity_get(ptr nocapture noundef readonly %fcdev, ptr nocapture noundef writeonly %brightness) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fcdev, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %brightness, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_flash_strobe_set(ptr nocapture noundef %fcdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_set_flash_strobe_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %add.ptr = getelementptr i8, ptr %fcdev, i32 -44
  %light.i = getelementptr i8, ptr %fcdev, i32 488
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_set_flash_strobe_request, ptr %req, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gb_lights_set_flash_strobe_request, ptr %req, i32 0, i32 2
  %releasing = getelementptr i8, ptr %fcdev, i32 493
  %10 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %light.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %req, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %9, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %req, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then10, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %strobe_state = getelementptr i8, ptr %fcdev, i32 494
  %22 = ptrtoint ptr %strobe_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %strobe_state, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end4.if.end13_crit_edge
  %call.i.i29 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i29, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end13 ], [ -108, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_lights_flash_strobe_get(ptr nocapture noundef readonly %fcdev, ptr nocapture noundef writeonly %state) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %strobe_state = getelementptr i8, ptr %fcdev, i32 494
  %0 = ptrtoint ptr %strobe_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %strobe_state, align 2, !range !101
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %state, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_flash_timeout_set(ptr nocapture noundef %fcdev, i32 noundef %timeout) #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_set_flash_timeout_request, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fcdev, i32 -44
  %light.i = getelementptr i8, ptr %fcdev, i32 488
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_set_flash_timeout_request, ptr %req, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gb_lights_set_flash_timeout_request, ptr %req, i32 0, i32 2
  %releasing = getelementptr i8, ptr %fcdev, i32 493
  %10 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %light.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %req, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %timeout)
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %9, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 13, ptr noundef nonnull %req, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fcdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %timeout, ptr %val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %call.i.i26 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i.i26, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end10 ], [ -108, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_lights_flash_fault_get(ptr nocapture noundef readonly %fcdev, ptr nocapture noundef writeonly %fault) #2 align 64 {
entry:
  %req = alloca %struct.gb_lights_get_flash_fault_request, align 1
  %resp = alloca %struct.gb_lights_get_flash_fault_response, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fcdev, i32 -44
  %light.i = getelementptr i8, ptr %fcdev, i32 488
  %0 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %light.i, align 4
  %glights.i = getelementptr inbounds %struct.gb_light, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %glights.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glights.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #13
  %8 = getelementptr inbounds %struct.gb_lights_get_flash_fault_request, ptr %req, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %resp, align 4, !annotation !96
  %releasing = getelementptr i8, ptr %fcdev, i32 493
  %10 = ptrtoint ptr %releasing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %releasing, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #18
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %light.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %light.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %req, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %8, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 14, ptr noundef nonnull %req, i32 noundef 2, ptr noundef nonnull %resp, i32 noundef 4, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resp, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fault, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %call.i.i25 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i.i25, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end10 ], [ -108, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_indicator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_gb_light__293_1355_gb_lights_driver_init6, !1, !"__initcall__kmod_gb_light__293_1355_gb_lights_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/light.c", i32 1355, i32 1}
!2 = !{ptr @__exitcall_gb_lights_driver_exit, !1, !"__exitcall_gb_lights_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file294, !4, !"__UNIQUE_ID_file294", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/light.c", i32 1357, i32 1}
!5 = !{ptr @__UNIQUE_ID_license295, !4, !"__UNIQUE_ID_license295", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/light.c", i32 1350, i32 11}
!9 = !{ptr @gb_lights_driver, !10, !"gb_lights_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/light.c", i32 1349, i32 30}
!11 = !{ptr @gb_lights_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/light.c", i32 1280, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/light.c", i32 1221, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gb_lights_request_handler._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gb_lights_request_handler._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/greybus/light.c", i32 1228, i32 3}
!24 = !{ptr @gb_lights_request_handler._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gb_lights_request_handler._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/light.c", i32 1238, i32 3}
!28 = !{ptr @gb_lights_request_handler._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gb_lights_request_handler._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/light.c", i32 974, i32 31}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/greybus/light.c", i32 273, i32 8}
!34 = !{ptr @dev_attr_color, !33, !"dev_attr_color", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/light.c", i32 241, i32 22}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/light.c", i32 259, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @color_store._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @color_store._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gb_pm_runtime_get_sync._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/light.c", i32 232, i32 1}
!50 = !{ptr @dev_attr_fade_in, !49, !"dev_attr_fade_in", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fade_in_store._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @fade_in_store._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/greybus/light.c", i32 233, i32 1}
!58 = !{ptr @dev_attr_fade_out, !57, !"dev_attr_fade_out", i1 false, i1 false}
!59 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @fade_out_store._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @fade_out_store._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @gb_lights_light_register.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/staging/greybus/light.c", i32 1061, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gb_lights_flash_ops, !66, !"gb_lights_flash_ops", i1 false, i1 false}
!66 = !{!"../drivers/staging/greybus/light.c", i32 732, i32 35}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/greybus/light.c", i32 754, i32 31}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/greybus/light.c", i32 556, i32 53}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/light.c", i32 558, i32 4}
!73 = !{ptr @v4l2_flash_ops, !74, !"v4l2_flash_ops", i1 false, i1 false}
!74 = !{!"../drivers/staging/greybus/light.c", i32 518, i32 36}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/greybus/light.c", i32 1177, i32 4}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @gb_lights_create_all._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @gb_lights_create_all._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/greybus/light.c", i32 1198, i32 4}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gb_lights_register_all._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gb_lights_register_all._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @gb_lights_id_table, !86, !"gb_lights_id_table", i1 false, i1 false}
!86 = !{!"../drivers/staging/greybus/light.c", i32 1343, i32 39}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i64 2148240868}
!98 = !{i64 725691, i64 725716, i64 725738, i64 725754, i64 725766, i64 725786, i64 725810, i64 725826, i64 725838}
!99 = !{i64 2148241056}
!100 = !{i64 2148241449, i64 2148241475, i64 2148241504, i64 2148241538, i64 2148241569, i64 2148241592}
!101 = !{i8 0, i8 2}
!102 = !{!"branch_weights", i32 1, i32 2000}
