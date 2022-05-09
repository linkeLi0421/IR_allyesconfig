; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-rt4505.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-rt4505.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rt4505_priv = type { ptr, ptr, %struct.mutex, %struct.led_classdev_flash, ptr }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }

@__initcall__kmod_leds_rt4505__304_427_rt4505_driver_init6 = internal global ptr @rt4505_driver_init, section ".initcall6.init", align 4
@rt4505_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @rt4505_remove, ptr @rt4505_probe, ptr @rt4505_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt4505_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt4505_driver_exit = internal global ptr @rt4505_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [56 x i8] c"leds_rt4505.author=ChiYuan Huang <cy_huang@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [48 x i8] c"leds_rt4505.file=drivers/leds/flash/leds-rt4505\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [27 x i8] c"leds_rt4505.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt4505\00", [25 x i8] zeroinitializer }, align 32
@rt4505_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt4505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt4505_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rt4505_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt4505_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @rt4505_is_accessible_reg, ptr @rt4505_is_accessible_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"leds_rt4505:356:(&rt4505_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@rt4505_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 358, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt4505_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/leds/flash/leds-rt4505.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt4505_probe._entry_ptr = internal global ptr @rt4505_probe._entry, section ".printk_index", align 4
@rt4505_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset registers\0A\00", [37 x i8] zeroinitializer }, align 32
@rt4505_probe._entry_ptr.10 = internal global ptr @rt4505_probe._entry.8, section ".printk_index", align 4
@rt4505_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get child node\0A\00", [38 x i8] zeroinitializer }, align 32
@rt4505_probe._entry_ptr.13 = internal global ptr @rt4505_probe._entry.11, section ".printk_index", align 4
@rt4505_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to register flash\0A\00", [38 x i8] zeroinitializer }, align 32
@rt4505_probe._entry_ptr.16 = internal global ptr @rt4505_probe._entry.14, section ".printk_index", align 4
@v4l2_flash_ops = internal constant { %struct.v4l2_flash_ops, [20 x i8] } { %struct.v4l2_flash_ops { ptr @rt4505_flash_external_strobe_set, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rt4505_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register v4l2 flash\0A\00", [33 x i8] zeroinitializer }, align 32
@rt4505_probe._entry_ptr.19 = internal global ptr @rt4505_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 301, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"led-max-microamp DT property missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt4505_init_flash_properties\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry_ptr = internal global ptr @rt4505_init_flash_properties._entry, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.5, i32 314, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flash-max-microamp DT property missing\0A\00", [56 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry_ptr.27 = internal global ptr @rt4505_init_flash_properties._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 327, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", [54 x i8] zeroinitializer }, align 32
@rt4505_init_flash_properties._entry_ptr.31 = internal global ptr @rt4505_init_flash_properties._entry.29, section ".printk_index", align 4
@rt4505_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @rt4505_flash_brightness_set, ptr null, ptr @rt4505_flash_strobe_set, ptr @rt4505_flash_strobe_get, ptr @rt4505_flash_timeout_set, ptr @rt4505_fault_get }, [40 x i8] zeroinitializer }, align 32
@rt4505_torch_brightness_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get LED enable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt4505_torch_brightness_get\00", [36 x i8] zeroinitializer }, align 32
@rt4505_torch_brightness_get._entry_ptr = internal global ptr @rt4505_torch_brightness_get._entry, section ".printk_index", align 4
@rt4505_torch_brightness_get._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 104, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get LED brightness\0A\00", [34 x i8] zeroinitializer }, align 32
@rt4505_torch_brightness_get._entry_ptr.36 = internal global ptr @rt4505_torch_brightness_get._entry.34, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"rt4505_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 418, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 420, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"rt4505_leds_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 412, i32 49 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 354, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"rt4505_regmap_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 230, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 356, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 358, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 364, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 370, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 379, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"v4l2_flash_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 257, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 388, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 299, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 301, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 312, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 314, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 324, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 326, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"rt4505_flash_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 214, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 92, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [36 x i8] c"../drivers/leds/flash/leds-rt4505.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 104, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_rt4505_driver_exit, ptr @__initcall__kmod_leds_rt4505__304_427_rt4505_driver_init6, ptr @rt4505_driver_exit, ptr @rt4505_init_flash_properties._entry, ptr @rt4505_init_flash_properties._entry.25, ptr @rt4505_init_flash_properties._entry.29, ptr @rt4505_init_flash_properties._entry_ptr, ptr @rt4505_init_flash_properties._entry_ptr.27, ptr @rt4505_init_flash_properties._entry_ptr.31, ptr @rt4505_probe._entry, ptr @rt4505_probe._entry.11, ptr @rt4505_probe._entry.14, ptr @rt4505_probe._entry.17, ptr @rt4505_probe._entry.8, ptr @rt4505_probe._entry_ptr, ptr @rt4505_probe._entry_ptr.10, ptr @rt4505_probe._entry_ptr.13, ptr @rt4505_probe._entry_ptr.16, ptr @rt4505_probe._entry_ptr.19, ptr @rt4505_torch_brightness_get._entry, ptr @rt4505_torch_brightness_get._entry.34, ptr @rt4505_torch_brightness_get._entry_ptr, ptr @rt4505_torch_brightness_get._entry_ptr.36, ptr @rt4505_driver, ptr @.str, ptr @rt4505_leds_match, ptr @rt4505_probe.__key, ptr @.str.1, ptr @rt4505_probe._key, ptr @rt4505_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @v4l2_flash_ops, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @rt4505_flash_ops, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_init_flash_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_init_flash_properties._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_init_flash_properties._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_torch_brightness_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4505_torch_brightness_get._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt4505_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt4505_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rt4505_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_flash = getelementptr inbounds %struct.rt4505_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_flash, align 4
  tail call void @v4l2_flash_release(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_probe(ptr noundef %client) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  %v4l2_config = alloca %struct.v4l2_flash_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #7
  %0 = getelementptr inbounds i8, ptr %init_data, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_config) #7
  %2 = call ptr @memset(ptr %v4l2_config, i32 0, i32 56)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rt4505_probe.__key) #7
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @rt4505_regmap_config, ptr noundef nonnull @rt4505_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call i32 @regmap_write(ptr noundef %call3, i32 noundef 0, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %fwnode = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 28
  %12 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwnode, align 4
  %call24 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %13, ptr noundef null) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !88
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call24, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.21) #10
  br label %if.end.i

if.else.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %22 = call i32 @llvm.umax.i32(i32 %21, i32 46000) #7
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 375000) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %storemerge.i = phi i32 [ %23, %if.else.i ], [ 46000, %do.end.i ]
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i, ptr %val.i, align 4
  %sub.i = add nsw i32 %storemerge.i, -46000
  %div.i = udiv i32 %sub.i, 47000
  %add.i = add nuw nsw i32 %div.i, 1
  %max_brightness.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rt4505_torch_brightness_set, ptr %brightness_set_blocking.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 7
  %27 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rt4505_torch_brightness_get, ptr %brightness_get.i, align 4
  %flags.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %29, 262144
  store i32 %or.i, ptr %flags.i, align 4
  %call.i93.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call24, ptr noundef nonnull @.str.24, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool9.not.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool9.not.i, label %if.else15.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.26) #10
  br label %if.end28.i

if.else15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  %34 = call i32 @llvm.umax.i32(i32 %33, i32 93750) #7
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 1500000) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else15.i, %do.end13.i
  %storemerge89.i = phi i32 [ %35, %if.else15.i ], [ 93750, %do.end13.i ]
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge89.i, ptr %val.i, align 4
  %brightness.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 93750, ptr %brightness.i, align 4
  %step.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 2
  %38 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 93750, ptr %step.i, align 4
  %val29.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 3
  %39 = ptrtoint ptr %val29.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge89.i, ptr %val29.i, align 4
  %max.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %40 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge89.i, ptr %max.i, align 4
  %call.i94.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call24, ptr noundef nonnull @.str.28, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool31.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool31.not.i, label %if.else37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.30) #10
  br label %rt4505_init_flash_properties.exit

if.else37.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %45 = call i32 @llvm.umax.i32(i32 %44, i32 100000) #7
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 800000) #7
  br label %rt4505_init_flash_properties.exit

rt4505_init_flash_properties.exit:                ; preds = %if.else37.i, %do.end35.i
  %storemerge90.i = phi i32 [ %46, %if.else37.i ], [ 100000, %do.end35.i ]
  %timeout.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 100000, ptr %timeout.i, align 4
  %step52.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 2
  %48 = ptrtoint ptr %step52.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 100000, ptr %step52.i, align 4
  %val53.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 3
  %49 = ptrtoint ptr %val53.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge90.i, ptr %val53.i, align 4
  %max54.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %50 = ptrtoint ptr %max54.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge90.i, ptr %max54.i, align 4
  %ops.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @rt4505_flash_ops, ptr %ops.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %flash = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3
  %call34 = call i32 @devm_led_classdev_flash_register_ext(ptr noundef %53, ptr noundef %flash, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %rt4505_init_flash_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end41:                                         ; preds = %rt4505_init_flash_properties.exit
  %dev.i = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 11
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %call.i90 = call i32 @strscpy(ptr noundef nonnull %v4l2_config, ptr noundef %59, i32 noundef 32) #7
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 1
  %60 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 46000, ptr %intensity.i, align 4
  %step.i91 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %step.i91 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 47000, ptr %step.i91, align 4
  %62 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_brightness.i, align 4
  %64 = mul i32 %63, 47000
  %add.i93 = add i32 %64, -1000
  %val.i94 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %val.i94 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i93, ptr %val.i94, align 4
  %max.i95 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %max.i95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i93, ptr %max.i95, align 4
  %flash_faults.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 2
  %67 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 267, ptr %flash_faults.i, align 4
  %has_external_strobe.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config, i32 0, i32 3
  %68 = ptrtoint ptr %has_external_strobe.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i = load i8, ptr %has_external_strobe.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %has_external_strobe.i, align 4
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %71 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_data, align 4
  %call45 = call ptr @v4l2_flash_init(ptr noundef %70, ptr noundef %72, ptr noundef %flash, ptr noundef nonnull @v4l2_flash_ops, ptr noundef nonnull %v4l2_config) #7
  %v4l2_flash = getelementptr inbounds %struct.rt4505_priv, ptr %call.i, i32 0, i32 4
  %73 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call45, ptr %v4l2_flash, align 4
  %cmp.i96 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.18) #10
  %76 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %v4l2_flash, align 4
  %78 = ptrtoint ptr %77 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end51, %do.end39, %do.end29, %do.end20, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end9 ], [ %call15, %do.end20 ], [ %call34, %do.end39 ], [ %78, %do.end51 ], [ 0, %if.end55 ], [ -22, %do.end29 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_config) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt4505_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt4505_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 128) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt4505_is_accessible_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp eq i32 %reg, 0
  %0 = and i32 %reg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %1 = icmp eq i32 %0, 8
  %retval.0 = or i1 %cmp, %1
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_torch_brightness_set(ptr noundef %lcdev, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %lcdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.not = icmp eq i32 %level, 0
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %regmap = getelementptr i8, ptr %lcdev, i32 -96
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %sub = shl i32 %level, 5
  %shl = add i32 %sub, -32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 224, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then.unlock_crit_edge

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %val.0 = phi i32 [ 0, %entry.if.end2_crit_edge ], [ 17, %if.then.if.end2_crit_edge ]
  %regmap3 = getelementptr i8, ptr %lcdev, i32 -96
  %2 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 10, i32 noundef 63, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %unlock

unlock:                                           ; preds = %if.end2, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.unlock_crit_edge ], [ %call.i11, %if.end2 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_torch_brightness_get(ptr noundef %lcdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !88
  %lock = getelementptr i8, ptr %lcdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %lcdev, i32 -96
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.led_classdev, ptr %lcdev, i32 0, i32 11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.32) #10
  br label %unlock

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp.not = icmp eq i32 %and, 17
  br i1 %cmp.not, label %if.end2, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %8, i32 noundef 9, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.led_classdev, ptr %lcdev, i32 0, i32 11
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.35) #10
  br label %unlock

if.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and12 = lshr i32 %12, 5
  %shr = and i32 %and12, 7
  %add = add nuw nsw i32 %shr, 1
  br label %unlock

unlock:                                           ; preds = %if.end11, %do.end9, %if.end.unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ 0, %do.end ], [ 0, %do.end9 ], [ %add, %if.end11 ], [ 0, %if.end.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_flash_brightness_set(ptr noundef %fled_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness1, align 4
  %sub = sub i32 %brightness, %1
  %step = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step, align 4
  %div = udiv i32 %sub, %3
  %lock = getelementptr i8, ptr %fled_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %fled_cdev, i32 -96
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9, i32 noundef 31, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_flash_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %state, i32 23, i32 0
  %lock = getelementptr i8, ptr %fled_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %fled_cdev, i32 -96
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 10, i32 noundef 63, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_flash_strobe_get(ptr noundef %fled_cdev, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !88
  %lock = getelementptr i8, ptr %fled_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %fled_cdev, i32 -96
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %and)
  %cmp = icmp eq i32 %and, 19
  %frombool = zext i1 %cmp to i8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %state, align 1
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_flash_timeout_set(ptr noundef %fled_cdev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout1, align 4
  %sub = sub i32 %timeout, %1
  %step = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step, align 4
  %div = udiv i32 %sub, %3
  %lock = getelementptr i8, ptr %fled_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %fled_cdev, i32 -96
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 7, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_fault_get(ptr nocapture noundef readonly %fled_cdev, ptr nocapture noundef writeonly %fault) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !88
  %regmap = getelementptr i8, ptr %fled_cdev, i32 -96
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 11, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = lshr i32 %4, 3
  %and.lobit = and i32 %and, 1
  %and4 = shl i32 %4, 1
  %5 = and i32 %and4, 8
  %6 = or i32 %5, %and.lobit
  %7 = and i32 %and4, 4
  %8 = or i32 %6, %7
  %9 = and i32 %and4, 2
  %10 = or i32 %8, %9
  %11 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fault, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4505_flash_external_strobe_set(ptr nocapture noundef readonly %v4l2_flash, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %cond = select i1 %enable, i32 51, i32 0
  %lock = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 10, i32 noundef 63, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_leds_rt4505__304_427_rt4505_driver_init6, !1, !"__initcall__kmod_leds_rt4505__304_427_rt4505_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 427, i32 1}
!2 = !{ptr @__exitcall_rt4505_driver_exit, !1, !"__exitcall_rt4505_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 429, i32 1}
!5 = !{ptr @__UNIQUE_ID_file306, !6, !"__UNIQUE_ID_file306", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 430, i32 1}
!7 = !{ptr @__UNIQUE_ID_license307, !6, !"__UNIQUE_ID_license307", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 420, i32 11}
!10 = !{ptr @rt4505_driver, !11, !"rt4505_driver", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 418, i32 26}
!12 = !{ptr @rt4505_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 354, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rt4505_probe._key, !16, !"_key", i1 false, i1 false}
!16 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 356, i32 17}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 358, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rt4505_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rt4505_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 364, i32 3}
!28 = !{ptr @rt4505_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rt4505_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 370, i32 3}
!32 = !{ptr @rt4505_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt4505_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 379, i32 3}
!36 = !{ptr @rt4505_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rt4505_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 388, i32 3}
!40 = !{ptr @rt4505_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rt4505_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rt4505_regmap_config, !43, !"rt4505_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 230, i32 35}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 299, i32 40}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 301, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rt4505_init_flash_properties._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @rt4505_init_flash_properties._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 312, i32 40}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 314, i32 3}
!56 = !{ptr @rt4505_init_flash_properties._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rt4505_init_flash_properties._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 324, i32 40}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 326, i32 3}
!62 = !{ptr @rt4505_init_flash_properties._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rt4505_init_flash_properties._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 92, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rt4505_torch_brightness_get._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rt4505_torch_brightness_get._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 104, i32 3}
!71 = !{ptr @rt4505_torch_brightness_get._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rt4505_torch_brightness_get._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rt4505_flash_ops, !74, !"rt4505_flash_ops", i1 false, i1 false}
!74 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 214, i32 35}
!75 = !{ptr @v4l2_flash_ops, !76, !"v4l2_flash_ops", i1 false, i1 false}
!76 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 257, i32 36}
!77 = !{ptr @rt4505_leds_match, !78, !"rt4505_leds_match", i1 false, i1 false}
!78 = !{!"../drivers/leds/flash/leds-rt4505.c", i32 412, i32 49}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
