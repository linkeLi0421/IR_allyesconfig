; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lg-g15.c_pt.bc'
source_filename = "../drivers/hid/hid-lg-g15.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.lg_g15_data = type { [20 x i8], %struct.mutex, %struct.work_struct, ptr, ptr, i32, [6 x %struct.lg_g15_led], i8 }
%struct.lg_g15_led = type { %struct.led_classdev, i32, i32, i8, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_lg_g15__236_953_lg_g15_driver_init6 = internal global ptr @lg_g15_driver_init, section ".initcall6.init", align 4
@lg_g15_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @lg_g15_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @lg_g15_probe, ptr null, ptr null, ptr @lg_g15_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lg_g15_driver_exit = internal global ptr @lg_g15_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [54 x i8] c"hid_lg_g15.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [39 x i8] c"hid_lg_g15.file=drivers/hid/hid-lg-g15\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [23 x i8] c"hid_lg_g15.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_lg_g15\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lg-g15\00", [25 x i8] zeroinitializer }, align 32
@lg_g15_devices = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49701, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49698, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49703, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49709, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49710, i32 3 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 2567, i32 4 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g15::kbd_backlight\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g15::lcd_backlight\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g15::macro_preset1\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g15::macro_preset2\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"g15::macro_preset3\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g15::macro_record\00", [46 x i8] zeroinitializer }, align 32
@lg_g15_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&g15->mutex\00", [20 x i8] zeroinitializer }, align 32
@lg_g15_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&g15->work)\00", [34 x i8] zeroinitializer }, align 32
@lg_g15_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lg_g15_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lg_g15_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 856, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Error %d disabling keyboard emulation for the G-keys, falling back to generic hid-input driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lg_g15_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-lg-g15.c\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lg_g15_probe._entry_ptr = internal global ptr @lg_g15_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Logitech Z-10 LCD Menu Keys\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"z-10::lcd_backlight\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Logitech Gaming Keyboard Gaming Keys\00", [59 x i8] zeroinitializer }, align 32
@lg_g15_update_led_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.15, i32 75, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error getting LED brightness: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lg_g15_update_led_brightness\00", [35 x i8] zeroinitializer }, align 32
@lg_g15_update_led_brightness._entry_ptr = internal global ptr @lg_g15_update_led_brightness._entry, section ".printk_index", align 4
@lg_g510_kbd_led_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.15, i32 250, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error setting LED brightness: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lg_g510_kbd_led_write\00", [42 x i8] zeroinitializer }, align 32
@lg_g510_kbd_led_write._entry_ptr = internal global ptr @lg_g510_kbd_led_write._entry, section ".printk_index", align 4
@lg_g510_get_initial_led_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.25, ptr @.str.15, i32 201, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lg_g510_get_initial_led_brightness\00", [61 x i8] zeroinitializer }, align 32
@lg_g510_get_initial_led_brightness._entry_ptr = internal global ptr @lg_g510_get_initial_led_brightness._entry, section ".printk_index", align 4
@lg_g510_update_mkey_led_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str.15, i32 365, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lg_g510_update_mkey_led_brightness\00", [61 x i8] zeroinitializer }, align 32
@lg_g510_update_mkey_led_brightness._entry_ptr = internal global ptr @lg_g510_update_mkey_led_brightness._entry, section ".printk_index", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"g15::power_on_backlight_val\00", [36 x i8] zeroinitializer }, align 32
@lg_g510_kbd_led_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lg_g510_kbd_led_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lg_g15_led_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.28, ptr @.str.15, i32 153, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg_g15_led_set\00", [17 x i8] zeroinitializer }, align 32
@lg_g15_led_set._entry_ptr = internal global ptr @lg_g15_led_set._entry, section ".printk_index", align 4
@lg_g510_kbd_led_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lg_g510_kbd_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lg_g510_kbd_led_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_color, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_color = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @color_show, ptr @color_store }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#%02x%02x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@lg_g510_mkey_led_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.15, i32 432, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lg_g510_mkey_led_set\00", [43 x i8] zeroinitializer }, align 32
@lg_g510_mkey_led_set._entry_ptr = internal global ptr @lg_g510_mkey_led_set._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lg_g510_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.15, i32 575, ptr @.str.34, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Game Mode enabled, Windows (super) key is disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lg_g510_event\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lg_g510_event._entry_ptr = internal global ptr @lg_g510_event._entry, section ".printk_index", align 4
@lg_g510_event._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.15, i32 577, ptr @.str.34, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Game Mode disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@lg_g510_event._entry_ptr.37 = internal global ptr @lg_g510_event._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"lg_g15_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 947, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 953, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 948, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"lg_g15_devices\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 920, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 744, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 745, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 746, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 747, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 748, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 749, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 783, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 797, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 809, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 816, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 855, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 867, i32 43 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 872, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 880, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 75, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 250, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 201, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 365, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 696, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"lg_g510_kbd_led_groups\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 342, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 153, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"lg_g510_kbd_led_group\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 338, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"lg_g510_kbd_led_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 333, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"dev_attr_color\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 331, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 324, i32 21 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 432, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 575, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [28 x i8] c"../drivers/hid/hid-lg-g15.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 577, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_lg_g15_driver_exit, ptr @__initcall__kmod_hid_lg_g15__236_953_lg_g15_driver_init6, ptr @lg_g15_driver_exit, ptr @lg_g15_led_set._entry, ptr @lg_g15_led_set._entry_ptr, ptr @lg_g15_probe._entry, ptr @lg_g15_probe._entry_ptr, ptr @lg_g15_update_led_brightness._entry, ptr @lg_g15_update_led_brightness._entry_ptr, ptr @lg_g510_event._entry, ptr @lg_g510_event._entry.35, ptr @lg_g510_event._entry_ptr, ptr @lg_g510_event._entry_ptr.37, ptr @lg_g510_get_initial_led_brightness._entry, ptr @lg_g510_get_initial_led_brightness._entry_ptr, ptr @lg_g510_kbd_led_write._entry, ptr @lg_g510_kbd_led_write._entry_ptr, ptr @lg_g510_mkey_led_set._entry, ptr @lg_g510_mkey_led_set._entry_ptr, ptr @lg_g510_update_mkey_led_brightness._entry, ptr @lg_g510_update_mkey_led_brightness._entry_ptr, ptr @lg_g15_driver, ptr @.str, ptr @.str.1, ptr @lg_g15_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lg_g15_probe.__key, ptr @.str.8, ptr @lg_g15_probe.__key.9, ptr @.str.10, ptr @lg_g15_probe.__key.11, ptr @lg_g15_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @lg_g510_kbd_led_groups, ptr @.str.28, ptr @lg_g510_kbd_led_group, ptr @lg_g510_kbd_led_attrs, ptr @dev_attr_color, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_update_led_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_kbd_led_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_get_initial_led_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_update_mkey_led_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_kbd_led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g15_led_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_kbd_led_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_kbd_led_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_color to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_mkey_led_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_g510_event._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @lg_g15_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lg_g15_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @lg_g15_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, 2048
  store i32 %or, ptr %quirks, align 8
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %report_list = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %rep.0260 = load ptr, ptr %report_list, align 4
  %cmp.not261 = icmp eq ptr %rep.0260, %report_list
  br i1 %cmp.not261, label %if.end.if.then11_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %rep.0263 = phi ptr [ %rep.0, %for.body.for.body_crit_edge ], [ %rep.0260, %if.end.for.body_crit_edge ]
  %has_ff000000.0.off0262 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %application = getelementptr inbounds %struct.hid_report, ptr %rep.0263, i32 0, i32 4
  %3 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %4)
  %cmp2 = icmp eq i32 %4, -16777216
  %spec.select = select i1 %cmp2, i1 true, i1 %has_ff000000.0.off0262
  %5 = ptrtoint ptr %rep.0263 to i32
  call void @__asan_load4_noabort(i32 %5)
  %rep.0 = load ptr, ptr %rep.0263, align 4
  %cmp.not = icmp eq ptr %rep.0, %report_list
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %spec.select, label %if.end13, label %for.end.if.then11_crit_edge

for.end.if.then11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %for.end.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %call12 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i255 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2644, i32 noundef 3520) #8
  %tobool15.not = icmp eq ptr %call.i255, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %do.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end13
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @lg_g15_probe.__key) #8
  %call19 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.body.cleanup_crit_edge, label %if.end22

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %do.body
  %hdev23 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 4
  %6 = ptrtoint ptr %hdev23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdev, ptr %hdev23, align 4
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %model = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 5
  %9 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %model, align 4
  %input24 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 3
  %10 = ptrtoint ptr %input24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %input24, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call19, i32 0, i32 40, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdev, ptr %driver_data.i.i, align 4
  %driver_data.i.i256 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %12 = ptrtoint ptr %driver_data.i.i256 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i255, ptr %driver_data.i.i256, align 4
  %13 = load i32, ptr %model, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end22.sw.epilog_crit_edge [
    i32 0, label %do.body26
    i32 1, label %do.body35
    i32 2, label %if.end22.do.body50_crit_edge
    i32 3, label %if.end22.do.body50_crit_edge271
    i32 4, label %sw.bb64
  ]

if.end22.do.body50_crit_edge271:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.end22.do.body50_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @lg_g15_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry30 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lg_g15_leds_changed_work, ptr %func, align 4
  br label %sw.epilog

do.body35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %work36 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work36, i32 noundef 0) #8
  %19 = ptrtoint ptr %work36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work36, align 4
  %lockdep_map42 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map42, ptr noundef nonnull @.str.10, ptr noundef nonnull @lg_g15_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry44 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i257 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry44, ptr %prev.i257, align 4
  %func46 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lg_g15_leds_changed_work, ptr %func46, align 4
  br label %sw.epilog

do.body50:                                        ; preds = %if.end22.do.body50_crit_edge, %if.end22.do.body50_crit_edge271
  %work51 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work51, i32 noundef 0) #8
  %23 = ptrtoint ptr %work51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work51, align 4
  %lockdep_map57 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map57, ptr noundef nonnull @.str.10, ptr noundef nonnull @lg_g15_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry59 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i258 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i258 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry59, ptr %prev.i258, align 4
  %func61 = getelementptr inbounds %struct.lg_g15_data, ptr %call.i255, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @lg_g510_leds_sync_work, ptr %func61, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %do.body50, %do.body35, %do.body26, %if.end22.sw.epilog_crit_edge
  %cmp121264 = phi i1 [ false, %if.end22.sw.epilog_crit_edge ], [ false, %sw.bb64 ], [ true, %do.body50 ], [ true, %do.body35 ], [ true, %do.body26 ]
  %gkeys.0 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ 0, %sw.bb64 ], [ 18, %do.body50 ], [ 6, %do.body35 ], [ 18, %do.body26 ]
  %connect_mask.0 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ 4, %sw.bb64 ], [ 5, %do.body50 ], [ 4, %do.body35 ], [ 4, %do.body26 ]
  %tobool82.not = phi i1 [ true, %if.end22.sw.epilog_crit_edge ], [ true, %sw.bb64 ], [ false, %do.body50 ], [ true, %do.body35 ], [ true, %do.body26 ]
  %tobool69.not = phi i1 [ true, %if.end22.sw.epilog_crit_edge ], [ true, %sw.bb64 ], [ true, %do.body50 ], [ false, %do.body35 ], [ false, %do.body26 ]
  %gkeys_settings_output_report.0 = phi i8 [ 0, %if.end22.sw.epilog_crit_edge ], [ 0, %sw.bb64 ], [ 0, %do.body50 ], [ 2, %do.body35 ], [ 2, %do.body26 ]
  %call65 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %connect_mask.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %sw.epilog
  br i1 %tobool69.not, label %if.end68.if.end81_crit_edge, label %if.then70

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then70:                                        ; preds = %if.end68
  %27 = ptrtoint ptr %call.i255 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %gkeys_settings_output_report.0, ptr %call.i255, align 4
  %add.ptr73 = getelementptr i8, ptr %call.i255, i32 1
  %28 = call ptr @memset(ptr %add.ptr73, i32 0, i32 %gkeys.0)
  %call74 = tail call i32 @hid_hw_open(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then70.error_hw_stop_crit_edge

if.then70.error_hw_stop_crit_edge:                ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

if.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %add = or i32 %gkeys.0, 1
  %call80 = tail call i32 @hid_hw_output_report(ptr noundef %hdev, ptr noundef nonnull %call.i255, i32 noundef %add) #8
  tail call void @hid_hw_close(ptr noundef %hdev) #8
  br label %if.end81

if.end81:                                         ; preds = %if.end77, %if.end68.if.end81_crit_edge
  %ret.0 = phi i32 [ %call80, %if.end77 ], [ 0, %if.end68.if.end81_crit_edge ]
  br i1 %tobool82.not, label %if.end81.if.end94_crit_edge, label %if.then83

if.end81.if.end94_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call.i255 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %call.i255, align 4
  %add.ptr88 = getelementptr i8, ptr %call.i255, i32 1
  %30 = call ptr @memset(ptr %add.ptr88, i32 0, i32 %gkeys.0)
  %31 = ptrtoint ptr %hdev23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev23, align 4
  %add92 = or i32 %gkeys.0, 1
  %call93 = tail call i32 @hid_hw_raw_request(ptr noundef %32, i8 noundef zeroext 1, ptr noundef nonnull %call.i255, i32 noundef %add92, i8 noundef zeroext 2, i32 noundef 9) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then83, %if.end81.if.end94_crit_edge
  %ret.1 = phi i32 [ %call93, %if.then83 ], [ %ret.0, %if.end81.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp95 = icmp slt i32 %ret.1, 0
  br i1 %cmp95, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %ret.1) #11
  %33 = ptrtoint ptr %driver_data.i.i256 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %driver_data.i.i256, align 4
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %call102 = tail call fastcc i32 @lg_g15_get_initial_led_brightness(ptr noundef nonnull %call.i255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.error_hw_stop_crit_edge

if.end101.error_hw_stop_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

if.end105:                                        ; preds = %if.end101
  %34 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp107 = icmp eq i32 %35, 4
  br i1 %cmp107, label %if.then108, label %if.end119

if.then108:                                       ; preds = %if.end105
  %36 = ptrtoint ptr %input24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input24, align 4
  tail call fastcc void @lg_g15_init_input_dev(ptr noundef %hdev, ptr noundef %37, ptr noundef nonnull @.str.18)
  %38 = ptrtoint ptr %input24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input24, align 4
  %call111 = tail call i32 @input_register_device(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.then108.error_hw_stop_crit_edge

if.then108.error_hw_stop_crit_edge:               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

if.end114:                                        ; preds = %if.then108
  %call115 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 1, ptr noundef nonnull @.str.19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.cleanup_crit_edge, label %if.end114.error_hw_stop_crit_edge

if.end114.error_hw_stop_crit_edge:                ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %if.end105
  tail call fastcc void @lg_g15_init_input_dev(ptr noundef %hdev, ptr noundef nonnull %call19, ptr noundef nonnull @.str.20)
  br i1 %cmp121264, label %for.body122.preheader, label %if.end119.for.cond126.preheader_crit_edge

if.end119.for.cond126.preheader_crit_edge:        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond126.preheader

for.body122.preheader:                            ; preds = %if.end119
  %umax = call i32 @llvm.umax.i32(i32 %gkeys.0, i32 1)
  br label %for.body122

for.cond126.preheader:                            ; preds = %for.body122.for.cond126.preheader_crit_edge, %if.end119.for.cond126.preheader_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 691) #8
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 692) #8
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 693) #8
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 688) #8
  %40 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp134 = icmp eq i32 %41, 2
  br i1 %cmp134, label %if.then135, label %for.cond126.preheader.if.end136_crit_edge

for.cond126.preheader.if.end136_crit_edge:        ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %for.body122.preheader
  %i.0265 = phi i32 [ %inc, %for.body122.for.body122_crit_edge ], [ 0, %for.body122.preheader ]
  %add123 = add nuw nsw i32 %i.0265, 656
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef %add123) #8
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body122.for.cond126.preheader_crit_edge, label %for.body122.for.body122_crit_edge

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body122

for.body122.for.cond126.preheader_crit_edge:      ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond126.preheader

if.then135:                                       ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 113) #8
  tail call void @input_set_capability(ptr noundef nonnull %call19, i32 noundef 1, i32 noundef 190) #8
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %for.cond126.preheader.if.end136_crit_edge
  %call137 = tail call i32 @input_register_device(ptr noundef nonnull %call19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %for.body143.preheader, label %if.end136.error_hw_stop_crit_edge

if.end136.error_hw_stop_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.body143.preheader:                            ; preds = %if.end136
  %call145 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 0, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.cond141, label %for.body143.preheader.error_hw_stop_crit_edge

for.body143.preheader.error_hw_stop_crit_edge:    ; preds = %for.body143.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141:                                      ; preds = %for.body143.preheader
  %call145.1 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 1, ptr noundef nonnull @.str.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.1)
  %tobool146.not.1 = icmp eq i32 %call145.1, 0
  br i1 %tobool146.not.1, label %for.cond141.1, label %for.cond141.error_hw_stop_crit_edge

for.cond141.error_hw_stop_crit_edge:              ; preds = %for.cond141
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141.1:                                    ; preds = %for.cond141
  %call145.2 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 2, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.2)
  %tobool146.not.2 = icmp eq i32 %call145.2, 0
  br i1 %tobool146.not.2, label %for.cond141.2, label %for.cond141.1.error_hw_stop_crit_edge

for.cond141.1.error_hw_stop_crit_edge:            ; preds = %for.cond141.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141.2:                                    ; preds = %for.cond141.1
  %call145.3 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 3, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.3)
  %tobool146.not.3 = icmp eq i32 %call145.3, 0
  br i1 %tobool146.not.3, label %for.cond141.3, label %for.cond141.2.error_hw_stop_crit_edge

for.cond141.2.error_hw_stop_crit_edge:            ; preds = %for.cond141.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141.3:                                    ; preds = %for.cond141.2
  %call145.4 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 4, ptr noundef nonnull @.str.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.4)
  %tobool146.not.4 = icmp eq i32 %call145.4, 0
  br i1 %tobool146.not.4, label %for.cond141.4, label %for.cond141.3.error_hw_stop_crit_edge

for.cond141.3.error_hw_stop_crit_edge:            ; preds = %for.cond141.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141.4:                                    ; preds = %for.cond141.3
  %call145.5 = tail call fastcc i32 @lg_g15_register_led(ptr noundef nonnull %call.i255, i32 noundef 5, ptr noundef nonnull @.str.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.5)
  %tobool146.not.5 = icmp eq i32 %call145.5, 0
  br i1 %tobool146.not.5, label %for.cond141.4.cleanup_crit_edge, label %for.cond141.4.error_hw_stop_crit_edge

for.cond141.4.error_hw_stop_crit_edge:            ; preds = %for.cond141.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_hw_stop

for.cond141.4.cleanup_crit_edge:                  ; preds = %for.cond141.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_hw_stop:                                    ; preds = %for.cond141.4.error_hw_stop_crit_edge, %for.cond141.3.error_hw_stop_crit_edge, %for.cond141.2.error_hw_stop_crit_edge, %for.cond141.1.error_hw_stop_crit_edge, %for.cond141.error_hw_stop_crit_edge, %for.body143.preheader.error_hw_stop_crit_edge, %if.end136.error_hw_stop_crit_edge, %if.end114.error_hw_stop_crit_edge, %if.then108.error_hw_stop_crit_edge, %if.end101.error_hw_stop_crit_edge, %if.then70.error_hw_stop_crit_edge
  %ret.2 = phi i32 [ %call74, %if.then70.error_hw_stop_crit_edge ], [ %call102, %if.end101.error_hw_stop_crit_edge ], [ %call111, %if.then108.error_hw_stop_crit_edge ], [ %call115, %if.end114.error_hw_stop_crit_edge ], [ %call137, %if.end136.error_hw_stop_crit_edge ], [ %call145, %for.body143.preheader.error_hw_stop_crit_edge ], [ %call145.1, %for.cond141.error_hw_stop_crit_edge ], [ %call145.2, %for.cond141.1.error_hw_stop_crit_edge ], [ %call145.3, %for.cond141.2.error_hw_stop_crit_edge ], [ %call145.4, %for.cond141.3.error_hw_stop_crit_edge ], [ %call145.5, %for.cond141.4.error_hw_stop_crit_edge ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %error_hw_stop, %for.cond141.4.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %do.end99, %sw.epilog.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_hw_stop ], [ 0, %do.end99 ], [ %call12, %if.then11 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ %call65, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end114.cleanup_crit_edge ], [ 0, %for.cond141.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 4, label %sw.bb18
    i32 2, label %if.end.sw.bb28_crit_edge
    i32 3, label %if.end.sw.bb28_crit_edge102
  ]

if.end.sw.bb28_crit_edge102:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp eq i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp2 = icmp eq i32 %size, 9
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %sw.bb
  %input.i = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input.i, align 4
  %11 = and i8 %8, 1
  %12 = zext i8 %11 to i32
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 656, i32 noundef %12) #8
  %arrayidx.1.i = getelementptr i8, ptr %data, i32 2
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input.i, align 4
  %17 = lshr i8 %14, 1
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i32
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef 657, i32 noundef %19) #8
  %arrayidx.2.i = getelementptr i8, ptr %data, i32 3
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 1
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i, align 4
  %24 = lshr i8 %21, 2
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 658, i32 noundef %26) #8
  %arrayidx.3.i = getelementptr i8, ptr %data, i32 4
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3.i, align 1
  %29 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input.i, align 4
  %31 = lshr i8 %28, 3
  %32 = and i8 %31, 1
  %33 = zext i8 %32 to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef 659, i32 noundef %33) #8
  %arrayidx.4.i = getelementptr i8, ptr %data, i32 5
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i, align 1
  %36 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input.i, align 4
  %38 = lshr i8 %35, 4
  %39 = and i8 %38, 1
  %40 = zext i8 %39 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 660, i32 noundef %40) #8
  %arrayidx.5.i = getelementptr i8, ptr %data, i32 6
  %41 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.5.i, align 1
  %43 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input.i, align 4
  %45 = lshr i8 %42, 5
  %46 = and i8 %45, 1
  %47 = zext i8 %46 to i32
  tail call void @input_event(ptr noundef %44, i32 noundef 1, i32 noundef 661, i32 noundef %47) #8
  %48 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.1.i, align 1
  %50 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input.i, align 4
  %52 = and i8 %49, 1
  %53 = zext i8 %52 to i32
  tail call void @input_event(ptr noundef %51, i32 noundef 1, i32 noundef 662, i32 noundef %53) #8
  %54 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.2.i, align 1
  %56 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input.i, align 4
  %58 = lshr i8 %55, 1
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i32
  tail call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef 663, i32 noundef %60) #8
  %61 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.3.i, align 1
  %63 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input.i, align 4
  %65 = lshr i8 %62, 2
  %66 = and i8 %65, 1
  %67 = zext i8 %66 to i32
  tail call void @input_event(ptr noundef %64, i32 noundef 1, i32 noundef 664, i32 noundef %67) #8
  %68 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.4.i, align 1
  %70 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %input.i, align 4
  %72 = lshr i8 %69, 3
  %73 = and i8 %72, 1
  %74 = zext i8 %73 to i32
  tail call void @input_event(ptr noundef %71, i32 noundef 1, i32 noundef 665, i32 noundef %74) #8
  %75 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.5.i, align 1
  %77 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %input.i, align 4
  %79 = lshr i8 %76, 4
  %80 = and i8 %79, 1
  %81 = zext i8 %80 to i32
  tail call void @input_event(ptr noundef %78, i32 noundef 1, i32 noundef 666, i32 noundef %81) #8
  %arrayidx7.5.i = getelementptr i8, ptr %data, i32 7
  %82 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx7.5.i, align 1
  %84 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input.i, align 4
  %86 = lshr i8 %83, 5
  %87 = and i8 %86, 1
  %88 = zext i8 %87 to i32
  tail call void @input_event(ptr noundef %85, i32 noundef 1, i32 noundef 667, i32 noundef %88) #8
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i, align 1
  %91 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %input.i, align 4
  %93 = lshr i8 %90, 2
  %.lobit16.i = and i8 %93, 1
  %94 = zext i8 %.lobit16.i to i32
  tail call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef 668, i32 noundef %94) #8
  %95 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.1.i, align 1
  %97 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input.i, align 4
  %99 = lshr i8 %96, 3
  %.lobit17.i = and i8 %99, 1
  %100 = zext i8 %.lobit17.i to i32
  tail call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef 669, i32 noundef %100) #8
  %101 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.2.i, align 1
  %103 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %input.i, align 4
  %105 = lshr i8 %102, 4
  %.lobit18.i = and i8 %105, 1
  %106 = zext i8 %.lobit18.i to i32
  tail call void @input_event(ptr noundef %104, i32 noundef 1, i32 noundef 670, i32 noundef %106) #8
  %107 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.3.i, align 1
  %109 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %input.i, align 4
  %111 = lshr i8 %108, 5
  %.lobit19.i = and i8 %111, 1
  %112 = zext i8 %.lobit19.i to i32
  tail call void @input_event(ptr noundef %110, i32 noundef 1, i32 noundef 671, i32 noundef %112) #8
  %113 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.4.i, align 1
  %115 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input.i, align 4
  %117 = lshr i8 %114, 6
  %.lobit20.i = and i8 %117, 1
  %118 = zext i8 %.lobit20.i to i32
  tail call void @input_event(ptr noundef %116, i32 noundef 1, i32 noundef 672, i32 noundef %118) #8
  %119 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %input.i, align 4
  %arrayidx31.i = getelementptr i8, ptr %data, i32 8
  %121 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx31.i, align 1
  %123 = lshr i8 %122, 6
  %.lobit.i = and i8 %123, 1
  %124 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %120, i32 noundef 1, i32 noundef 673, i32 noundef %124) #8
  %125 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.5.i, align 1
  %127 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %input.i, align 4
  %129 = and i8 %126, 1
  %130 = zext i8 %129 to i32
  tail call void @input_event(ptr noundef %128, i32 noundef 1, i32 noundef 691, i32 noundef %130) #8
  %131 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx7.5.i, align 1
  %133 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %input.i, align 4
  %135 = lshr i8 %132, 1
  %136 = and i8 %135, 1
  %137 = zext i8 %136 to i32
  tail call void @input_event(ptr noundef %134, i32 noundef 1, i32 noundef 692, i32 noundef %137) #8
  %138 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx31.i, align 1
  %140 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %input.i, align 4
  %142 = lshr i8 %139, 2
  %143 = and i8 %142, 1
  %144 = zext i8 %143 to i32
  tail call void @input_event(ptr noundef %141, i32 noundef 1, i32 noundef 693, i32 noundef %144) #8
  %145 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %input.i, align 4
  %147 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx7.5.i, align 1
  %149 = lshr i8 %148, 6
  %.lobit11.i = and i8 %149, 1
  %150 = zext i8 %.lobit11.i to i32
  tail call void @input_event(ptr noundef %146, i32 noundef 1, i32 noundef 688, i32 noundef %150) #8
  %151 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %input.i, align 4
  %153 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx31.i, align 1
  %.lobit.i.i = lshr i8 %154, 7
  %155 = zext i8 %.lobit.i.i to i32
  tail call void @input_event(ptr noundef %152, i32 noundef 1, i32 noundef 696, i32 noundef %155) #8
  %156 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.1.i, align 1
  %158 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %input.i, align 4
  %.lobit14.i.i = lshr i8 %157, 7
  %160 = zext i8 %.lobit14.i.i to i32
  tail call void @input_event(ptr noundef %159, i32 noundef 1, i32 noundef 697, i32 noundef %160) #8
  %161 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.2.i, align 1
  %163 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %input.i, align 4
  %.lobit14.1.i.i = lshr i8 %162, 7
  %165 = zext i8 %.lobit14.1.i.i to i32
  tail call void @input_event(ptr noundef %164, i32 noundef 1, i32 noundef 698, i32 noundef %165) #8
  %166 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.3.i, align 1
  %168 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %input.i, align 4
  %.lobit14.2.i.i = lshr i8 %167, 7
  %170 = zext i8 %.lobit14.2.i.i to i32
  tail call void @input_event(ptr noundef %169, i32 noundef 1, i32 noundef 699, i32 noundef %170) #8
  %171 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.4.i, align 1
  %173 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %input.i, align 4
  %.lobit14.3.i.i = lshr i8 %172, 7
  %175 = zext i8 %.lobit14.3.i.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 700, i32 noundef %175) #8
  %176 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %tobool.not.i = icmp sgt i8 %177, -1
  br i1 %tobool.not.i, label %if.then4.lg_g15_event.exit_crit_edge, label %if.then.i

if.then4.lg_g15_event.exit_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %lg_g15_event.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %work.i = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %178 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %178, ptr noundef %work.i) #8
  br label %lg_g15_event.exit

lg_g15_event.exit:                                ; preds = %if.then.i, %if.then4.lg_g15_event.exit_crit_edge
  %179 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %180, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %181 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %182)
  %cmp10 = icmp eq i8 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp13 = icmp eq i32 %size, 5
  %or.cond69 = and i1 %cmp13, %cmp10
  br i1 %or.cond69, label %if.then15, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %sw.bb7
  %arrayidx.i73 = getelementptr i8, ptr %data, i32 1
  %input.i74 = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 3
  %183 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i73, align 1
  %185 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %input.i74, align 4
  %187 = and i8 %184, 1
  %188 = zext i8 %187 to i32
  tail call void @input_event(ptr noundef %186, i32 noundef 1, i32 noundef 656, i32 noundef %188) #8
  %189 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i73, align 1
  %191 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %input.i74, align 4
  %193 = lshr i8 %190, 1
  %194 = and i8 %193, 1
  %195 = zext i8 %194 to i32
  tail call void @input_event(ptr noundef %192, i32 noundef 1, i32 noundef 657, i32 noundef %195) #8
  %196 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i73, align 1
  %198 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %input.i74, align 4
  %200 = lshr i8 %197, 2
  %201 = and i8 %200, 1
  %202 = zext i8 %201 to i32
  tail call void @input_event(ptr noundef %199, i32 noundef 1, i32 noundef 658, i32 noundef %202) #8
  %203 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i73, align 1
  %205 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %input.i74, align 4
  %207 = lshr i8 %204, 3
  %208 = and i8 %207, 1
  %209 = zext i8 %208 to i32
  tail call void @input_event(ptr noundef %206, i32 noundef 1, i32 noundef 659, i32 noundef %209) #8
  %210 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i73, align 1
  %212 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %input.i74, align 4
  %214 = lshr i8 %211, 4
  %215 = and i8 %214, 1
  %216 = zext i8 %215 to i32
  tail call void @input_event(ptr noundef %213, i32 noundef 1, i32 noundef 660, i32 noundef %216) #8
  %217 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx.i73, align 1
  %219 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %input.i74, align 4
  %221 = lshr i8 %218, 5
  %222 = and i8 %221, 1
  %223 = zext i8 %222 to i32
  tail call void @input_event(ptr noundef %220, i32 noundef 1, i32 noundef 661, i32 noundef %223) #8
  %224 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %input.i74, align 4
  %226 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.i73, align 1
  %228 = lshr i8 %227, 6
  %.lobit.i75 = and i8 %228, 1
  %229 = zext i8 %.lobit.i75 to i32
  tail call void @input_event(ptr noundef %225, i32 noundef 1, i32 noundef 691, i32 noundef %229) #8
  %230 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %input.i74, align 4
  %232 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i73, align 1
  %.lobit13.i = lshr i8 %233, 7
  %234 = zext i8 %.lobit13.i to i32
  tail call void @input_event(ptr noundef %231, i32 noundef 1, i32 noundef 692, i32 noundef %234) #8
  %235 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %input.i74, align 4
  %arrayidx10.i = getelementptr i8, ptr %data, i32 2
  %237 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx10.i, align 1
  %239 = lshr i8 %238, 5
  %.lobit14.i = and i8 %239, 1
  %240 = zext i8 %.lobit14.i to i32
  tail call void @input_event(ptr noundef %236, i32 noundef 1, i32 noundef 693, i32 noundef %240) #8
  %241 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %input.i74, align 4
  %243 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx10.i, align 1
  %245 = lshr i8 %244, 6
  %.lobit15.i = and i8 %245, 1
  %246 = zext i8 %.lobit15.i to i32
  tail call void @input_event(ptr noundef %242, i32 noundef 1, i32 noundef 688, i32 noundef %246) #8
  %247 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %input.i74, align 4
  %249 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx10.i, align 1
  %.lobit16.i76 = lshr i8 %250, 7
  %251 = zext i8 %.lobit16.i76 to i32
  tail call void @input_event(ptr noundef %248, i32 noundef 1, i32 noundef 696, i32 noundef %251) #8
  %252 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx10.i, align 1
  %254 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %input.i74, align 4
  %256 = lshr i8 %253, 1
  %.lobit19.i77 = and i8 %256, 1
  %257 = zext i8 %.lobit19.i77 to i32
  tail call void @input_event(ptr noundef %255, i32 noundef 1, i32 noundef 697, i32 noundef %257) #8
  %258 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx10.i, align 1
  %260 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %input.i74, align 4
  %262 = lshr i8 %259, 2
  %.lobit20.i78 = and i8 %262, 1
  %263 = zext i8 %.lobit20.i78 to i32
  tail call void @input_event(ptr noundef %261, i32 noundef 1, i32 noundef 698, i32 noundef %263) #8
  %264 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx10.i, align 1
  %266 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %input.i74, align 4
  %268 = lshr i8 %265, 3
  %.lobit21.i = and i8 %268, 1
  %269 = zext i8 %.lobit21.i to i32
  tail call void @input_event(ptr noundef %267, i32 noundef 1, i32 noundef 699, i32 noundef %269) #8
  %270 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx10.i, align 1
  %272 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %input.i74, align 4
  %274 = lshr i8 %271, 4
  %.lobit22.i = and i8 %274, 1
  %275 = zext i8 %.lobit22.i to i32
  tail call void @input_event(ptr noundef %273, i32 noundef 1, i32 noundef 700, i32 noundef %275) #8
  %276 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx10.i, align 1
  %278 = and i8 %277, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool.not.i79 = icmp eq i8 %278, 0
  br i1 %tobool.not.i79, label %if.then15.lg_g15_v2_event.exit_crit_edge, label %if.then.i82

if.then15.lg_g15_v2_event.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %lg_g15_v2_event.exit

if.then.i82:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %work.i80 = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %279 = load ptr, ptr @system_wq, align 4
  %call.i.i.i81 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %279, ptr noundef %work.i80) #8
  br label %lg_g15_v2_event.exit

lg_g15_v2_event.exit:                             ; preds = %if.then.i82, %if.then15.lg_g15_v2_event.exit_crit_edge
  %280 = ptrtoint ptr %input.i74 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %input.i74, align 4
  tail call void @input_event(ptr noundef %281, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %282 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %283)
  %cmp21 = icmp eq i8 %283, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp24 = icmp eq i32 %size, 9
  %or.cond70 = and i1 %cmp24, %cmp21
  br i1 %or.cond70, label %if.then26, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %input.i83 = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 3
  %284 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %input.i83, align 4
  %arrayidx.i84 = getelementptr i8, ptr %data, i32 8
  %286 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx.i84, align 1
  %.lobit.i85 = lshr i8 %287, 7
  %288 = zext i8 %.lobit.i85 to i32
  tail call void @input_event(ptr noundef %285, i32 noundef 1, i32 noundef 696, i32 noundef %288) #8
  %arrayidx2.i = getelementptr i8, ptr %data, i32 2
  %289 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx2.i, align 1
  %291 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %input.i83, align 4
  %.lobit14.i86 = lshr i8 %290, 7
  %293 = zext i8 %.lobit14.i86 to i32
  tail call void @input_event(ptr noundef %292, i32 noundef 1, i32 noundef 697, i32 noundef %293) #8
  %arrayidx2.1.i = getelementptr i8, ptr %data, i32 3
  %294 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx2.1.i, align 1
  %296 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %input.i83, align 4
  %.lobit14.1.i = lshr i8 %295, 7
  %298 = zext i8 %.lobit14.1.i to i32
  tail call void @input_event(ptr noundef %297, i32 noundef 1, i32 noundef 698, i32 noundef %298) #8
  %arrayidx2.2.i = getelementptr i8, ptr %data, i32 4
  %299 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx2.2.i, align 1
  %301 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %input.i83, align 4
  %.lobit14.2.i = lshr i8 %300, 7
  %303 = zext i8 %.lobit14.2.i to i32
  tail call void @input_event(ptr noundef %302, i32 noundef 1, i32 noundef 699, i32 noundef %303) #8
  %arrayidx2.3.i = getelementptr i8, ptr %data, i32 5
  %304 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx2.3.i, align 1
  %306 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %input.i83, align 4
  %.lobit14.3.i = lshr i8 %305, 7
  %308 = zext i8 %.lobit14.3.i to i32
  tail call void @input_event(ptr noundef %307, i32 noundef 1, i32 noundef 700, i32 noundef %308) #8
  %309 = ptrtoint ptr %input.i83 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %input.i83, align 4
  tail call void @input_event(ptr noundef %310, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge102
  %311 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %312)
  %cmp31 = icmp eq i8 %312, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp34 = icmp eq i32 %size, 5
  %or.cond71 = and i1 %cmp34, %cmp31
  br i1 %or.cond71, label %if.then36, label %if.end38

if.then36:                                        ; preds = %sw.bb28
  %input.i87 = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then36
  %i.017.i = phi i32 [ 0, %if.then36 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %div16.i = lshr i32 %i.017.i, 3
  %add.i = add nuw nsw i32 %div16.i, 1
  %arrayidx.i88 = getelementptr i8, ptr %data, i32 %add.i
  %313 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx.i88, align 1
  %conv.i = zext i8 %314 to i32
  %rem2.i = and i32 %i.017.i, 7
  %315 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %input.i87, align 4
  %add1.i = add nuw nsw i32 %i.017.i, 656
  %317 = lshr i32 %conv.i, %rem2.i
  %318 = and i32 %317, 1
  tail call void @input_event(ptr noundef %316, i32 noundef 1, i32 noundef %add1.i, i32 noundef %318) #8
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx2.i89 = getelementptr i8, ptr %data, i32 3
  %319 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx2.i89, align 1
  %321 = and i8 %320, 4
  %.lobit.i90 = lshr exact i8 %321, 2
  %game_mode_enabled7.i = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 7
  %322 = ptrtoint ptr %game_mode_enabled7.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %game_mode_enabled7.i, align 4, !range !111
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit.i90, i8 %323)
  %cmp10.not.i = icmp eq i8 %.lobit.i90, %323
  br i1 %cmp10.not.i, label %for.end.i.lg_g510_event.exit_crit_edge, label %if.then.i92

for.end.i.lg_g510_event.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lg_g510_event.exit

if.then.i92:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool.not.i91 = icmp eq i8 %321, 0
  %hdev17.i = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 4
  %324 = ptrtoint ptr %hdev17.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %hdev17.i, align 4
  %dev18.i = getelementptr inbounds %struct.hid_device, ptr %325, i32 0, i32 18
  %.str.36..str.32.i = select i1 %tobool.not.i91, ptr @.str.36, ptr @.str.32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18.i, ptr noundef nonnull %.str.36..str.32.i) #11
  %326 = ptrtoint ptr %game_mode_enabled7.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %.lobit.i90, ptr %game_mode_enabled7.i, align 4
  br label %lg_g510_event.exit

lg_g510_event.exit:                               ; preds = %if.then.i92, %for.end.i.lg_g510_event.exit_crit_edge
  %327 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx2.i89, align 1
  %329 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %input.i87, align 4
  %331 = lshr i8 %328, 4
  %.lobit22.i93 = and i8 %331, 1
  %332 = zext i8 %.lobit22.i93 to i32
  tail call void @input_event(ptr noundef %330, i32 noundef 1, i32 noundef 691, i32 noundef %332) #8
  %333 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx2.i89, align 1
  %335 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %input.i87, align 4
  %337 = lshr i8 %334, 5
  %.lobit23.i = and i8 %337, 1
  %338 = zext i8 %.lobit23.i to i32
  tail call void @input_event(ptr noundef %336, i32 noundef 1, i32 noundef 692, i32 noundef %338) #8
  %339 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx2.i89, align 1
  %341 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %input.i87, align 4
  %343 = lshr i8 %340, 6
  %.lobit24.i = and i8 %343, 1
  %344 = zext i8 %.lobit24.i to i32
  tail call void @input_event(ptr noundef %342, i32 noundef 1, i32 noundef 693, i32 noundef %344) #8
  %345 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %input.i87, align 4
  %347 = ptrtoint ptr %arrayidx2.i89 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx2.i89, align 1
  %.lobit13.i94 = lshr i8 %348, 7
  %349 = zext i8 %.lobit13.i94 to i32
  tail call void @input_event(ptr noundef %346, i32 noundef 1, i32 noundef 688, i32 noundef %349) #8
  %arrayidx44.i = getelementptr i8, ptr %data, i32 4
  %350 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx44.i, align 1
  %352 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %input.i87, align 4
  %354 = and i8 %351, 1
  %355 = zext i8 %354 to i32
  tail call void @input_event(ptr noundef %353, i32 noundef 1, i32 noundef 696, i32 noundef %355) #8
  %356 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx44.i, align 1
  %358 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %input.i87, align 4
  %360 = lshr i8 %357, 1
  %361 = and i8 %360, 1
  %362 = zext i8 %361 to i32
  tail call void @input_event(ptr noundef %359, i32 noundef 1, i32 noundef 697, i32 noundef %362) #8
  %363 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx44.i, align 1
  %365 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %input.i87, align 4
  %367 = lshr i8 %364, 2
  %368 = and i8 %367, 1
  %369 = zext i8 %368 to i32
  tail call void @input_event(ptr noundef %366, i32 noundef 1, i32 noundef 698, i32 noundef %369) #8
  %370 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx44.i, align 1
  %372 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %input.i87, align 4
  %374 = lshr i8 %371, 3
  %375 = and i8 %374, 1
  %376 = zext i8 %375 to i32
  tail call void @input_event(ptr noundef %373, i32 noundef 1, i32 noundef 699, i32 noundef %376) #8
  %377 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx44.i, align 1
  %379 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %input.i87, align 4
  %381 = lshr i8 %378, 4
  %382 = and i8 %381, 1
  %383 = zext i8 %382 to i32
  tail call void @input_event(ptr noundef %380, i32 noundef 1, i32 noundef 700, i32 noundef %383) #8
  %384 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %input.i87, align 4
  %386 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx44.i, align 1
  %388 = lshr i8 %387, 5
  %.lobit14.i95 = and i8 %388, 1
  %389 = zext i8 %.lobit14.i95 to i32
  tail call void @input_event(ptr noundef %385, i32 noundef 1, i32 noundef 113, i32 noundef %389) #8
  %390 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %input.i87, align 4
  %392 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx44.i, align 1
  %394 = lshr i8 %393, 6
  %.lobit15.i96 = and i8 %394, 1
  %395 = zext i8 %.lobit15.i96 to i32
  tail call void @input_event(ptr noundef %391, i32 noundef 1, i32 noundef 190, i32 noundef %395) #8
  %396 = ptrtoint ptr %input.i87 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %input.i87, align 4
  tail call void @input_event(ptr noundef %397, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.end38:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %312)
  %cmp41 = icmp eq i8 %312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp44 = icmp eq i32 %size, 2
  %or.cond72 = and i1 %cmp44, %cmp41
  br i1 %or.cond72, label %if.then46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end38
  %arrayidx.i97 = getelementptr i8, ptr %data, i32 1
  %398 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx.i97, align 1
  %400 = and i8 %399, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool.not.i98 = icmp eq i8 %400, 0
  br i1 %tobool.not.i98, label %if.then.i101, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i101:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %work.i99 = getelementptr inbounds %struct.lg_g15_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %401 = load ptr, ptr @system_wq, align 4
  %call.i.i.i100 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %401, ptr noundef %work.i99) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i101, %if.then46.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %lg_g510_event.exit, %if.then26, %sw.bb18.cleanup_crit_edge, %lg_g15_v2_event.exit, %sw.bb7.cleanup_crit_edge, %lg_g15_event.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg_g15_leds_changed_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %leds = getelementptr i8, ptr %work, i32 56
  %brightness1 = getelementptr i8, ptr %work, i32 456
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness1, align 4
  %arrayidx.1 = getelementptr i8, ptr %work, i32 468
  %brightness1.1 = getelementptr i8, ptr %work, i32 868
  %2 = ptrtoint ptr %brightness1.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness1.1, align 4
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %hdev.i = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev.i, align 4
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %5, i8 noundef zeroext 2, ptr noundef %add.ptr, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %for.cond14.preheader, label %lg_g15_update_led_brightness.exit

lg_g15_update_led_brightness.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

for.cond14.preheader:                             ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %work, i32 -111
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %brightness.i = getelementptr i8, ptr %work, i32 456
  %10 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %brightness.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %work, i32 -110
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.i, align 2
  %conv7.i = zext i8 %12 to i32
  %brightness10.i = getelementptr i8, ptr %work, i32 868
  %13 = ptrtoint ptr %brightness10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7.i, ptr %brightness10.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %work, i32 -109
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = zext i8 %17 to i32
  %brightness16.i = getelementptr i8, ptr %work, i32 1280
  %19 = ptrtoint ptr %brightness16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %brightness16.i, align 4
  %20 = lshr i8 %15, 1
  %.lobit.i = and i8 %20, 1
  %21 = xor i8 %.lobit.i, 1
  %22 = zext i8 %21 to i32
  %brightness26.i = getelementptr i8, ptr %work, i32 1692
  %23 = ptrtoint ptr %brightness26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %brightness26.i, align 4
  %24 = lshr i8 %15, 2
  %.lobit64.i = and i8 %24, 1
  %25 = xor i8 %.lobit64.i, 1
  %26 = zext i8 %25 to i32
  %brightness36.i = getelementptr i8, ptr %work, i32 2104
  %27 = ptrtoint ptr %brightness36.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %brightness36.i, align 4
  %28 = lshr i8 %15, 3
  %.lobit65.i = and i8 %28, 1
  %29 = xor i8 %.lobit65.i, 1
  %30 = zext i8 %29 to i32
  %brightness46.i = getelementptr i8, ptr %work, i32 2516
  %31 = ptrtoint ptr %brightness46.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %brightness46.i, align 4
  %32 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brightness1, align 4
  %34 = ptrtoint ptr %brightness1.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brightness1.1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %1)
  %cmp19 = icmp eq i32 %33, %1
  br i1 %cmp19, label %for.cond14.preheader.for.inc25_crit_edge, label %if.end21

for.cond14.preheader.for.inc25_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25

if.end21:                                         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_classdev_notify_brightness_hw_changed(ptr noundef %leds, i32 noundef %33) #8
  br label %for.inc25

for.inc25:                                        ; preds = %if.end21, %for.cond14.preheader.for.inc25_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %3)
  %cmp19.1 = icmp eq i32 %35, %3
  br i1 %cmp19.1, label %for.inc25.cleanup_crit_edge, label %if.end21.1

for.inc25.cleanup_crit_edge:                      ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.1:                                       ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_classdev_notify_brightness_hw_changed(ptr noundef %arrayidx.1, i32 noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.1, %for.inc25.cleanup_crit_edge, %lg_g15_update_led_brightness.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg_g510_leds_sync_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %brightness = getelementptr i8, ptr %work, i32 456
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  %led.i = getelementptr i8, ptr %work, i32 460
  %2 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led.i, align 4
  %4 = trunc i32 %3 to i8
  %conv.i = add i8 %4, 5
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %add.ptr, align 4
  %red.i = getelementptr i8, ptr %work, i32 464
  %6 = ptrtoint ptr %red.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %red.i, align 4
  %conv1.i = zext i8 %7 to i32
  %mul.i = mul i32 %1, %conv1.i
  %add2.i = add i32 %mul.i, 127
  %div3.i = udiv i32 %add2.i, 255
  %conv4.i = trunc i32 %div3.i to i8
  %arrayidx6.i = getelementptr i8, ptr %work, i32 -111
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %green.i = getelementptr i8, ptr %work, i32 465
  %9 = ptrtoint ptr %green.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %green.i, align 1
  %conv8.i = zext i8 %10 to i32
  %mul9.i = mul i32 %1, %conv8.i
  %add13.i = add i32 %mul9.i, 127
  %div14.i = udiv i32 %add13.i, 255
  %conv15.i = trunc i32 %div14.i to i8
  %arrayidx17.i = getelementptr i8, ptr %work, i32 -110
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15.i, ptr %arrayidx17.i, align 2
  %blue.i = getelementptr i8, ptr %work, i32 466
  %12 = ptrtoint ptr %blue.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blue.i, align 2
  %conv19.i = zext i8 %13 to i32
  %mul20.i = mul i32 %1, %conv19.i
  %add24.i = add i32 %mul20.i, 127
  %div25.i = udiv i32 %add24.i, 255
  %conv26.i = trunc i32 %div25.i to i8
  %arrayidx28.i = getelementptr i8, ptr %work, i32 -109
  %14 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26.i, ptr %arrayidx28.i, align 1
  %hdev.i = getelementptr i8, ptr %work, i32 48
  %15 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev.i, align 4
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %16, i8 noundef zeroext %conv.i, ptr noundef %add.ptr, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 4
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %1, ptr %brightness, align 4
  br label %lg_g510_kbd_led_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %call.i) #11
  br label %lg_g510_kbd_led_write.exit

lg_g510_kbd_led_write.exit:                       ; preds = %do.end.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg_g15_get_initial_led_brightness(ptr noundef %g15) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 5
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %sw.epilog [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge25
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge26
    i32 4, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25
  %hdev.i = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 4
  %3 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev.i, align 4
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %4, i8 noundef zeroext 2, ptr noundef %g15, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp2.i, i32 %call.i, i32 -5
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [20 x i8], ptr %g15, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %brightness.i = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %brightness.i, align 4
  %arrayidx6.i = getelementptr [20 x i8], ptr %g15, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i, align 2
  %conv7.i = zext i8 %11 to i32
  %brightness10.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %brightness10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7.i, ptr %brightness10.i, align 4
  %arrayidx12.i = getelementptr [20 x i8], ptr %g15, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12.i, align 1
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = zext i8 %16 to i32
  %brightness16.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 2, i32 1
  %18 = ptrtoint ptr %brightness16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %brightness16.i, align 4
  %19 = lshr i8 %14, 1
  %.lobit.i = and i8 %19, 1
  %20 = xor i8 %.lobit.i, 1
  %21 = zext i8 %20 to i32
  %brightness26.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 3, i32 1
  %22 = ptrtoint ptr %brightness26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %brightness26.i, align 4
  %23 = lshr i8 %14, 2
  %.lobit64.i = and i8 %23, 1
  %24 = xor i8 %.lobit64.i, 1
  %25 = zext i8 %24 to i32
  %brightness36.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 4, i32 1
  %26 = ptrtoint ptr %brightness36.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %brightness36.i, align 4
  %27 = lshr i8 %14, 3
  %.lobit65.i = and i8 %27, 1
  %28 = xor i8 %.lobit65.i, 1
  %29 = zext i8 %28 to i32
  %brightness46.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 5, i32 1
  %30 = ptrtoint ptr %brightness46.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %brightness46.i, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge26
  %call2 = tail call fastcc i32 @lg_g510_get_initial_led_brightness(ptr noundef %g15, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %call3 = tail call fastcc i32 @lg_g510_get_initial_led_brightness(ptr noundef %g15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hdev.i16 = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 4
  %31 = ptrtoint ptr %hdev.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev.i16, align 4
  %call.i17 = tail call i32 @hid_hw_raw_request(ptr noundef %32, i8 noundef zeroext 4, ptr noundef %g15, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i17)
  %cmp.not.i18 = icmp eq i32 %call.i17, 2
  br i1 %cmp.not.i18, label %if.end6.lg_g510_update_mkey_led_brightness.exit_crit_edge, label %do.end.i20

if.end6.lg_g510_update_mkey_led_brightness.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lg_g510_update_mkey_led_brightness.exit

do.end.i20:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %hdev.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev.i16, align 4
  %dev.i19 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19, ptr noundef nonnull @.str.21, i32 noundef %call.i17) #11
  br label %lg_g510_update_mkey_led_brightness.exit

lg_g510_update_mkey_led_brightness.exit:          ; preds = %do.end.i20, %if.end6.lg_g510_update_mkey_led_brightness.exit_crit_edge
  %arrayidx.i21 = getelementptr [20 x i8], ptr %g15, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i21, align 1
  %.lobit.i22 = lshr i8 %36, 7
  %37 = zext i8 %.lobit.i22 to i32
  %brightness.i23 = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 2, i32 1
  %38 = ptrtoint ptr %brightness.i23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %brightness.i23, align 4
  %39 = lshr i8 %36, 6
  %.lobit1.i = and i8 %39, 1
  %40 = zext i8 %.lobit1.i to i32
  %brightness17.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 3, i32 1
  %41 = ptrtoint ptr %brightness17.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %brightness17.i, align 4
  %42 = lshr i8 %36, 5
  %.lobit2.i = and i8 %42, 1
  %43 = zext i8 %.lobit2.i to i32
  %brightness29.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 4, i32 1
  %44 = ptrtoint ptr %brightness29.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %brightness29.i, align 4
  %45 = lshr i8 %36, 4
  %.lobit3.i = and i8 %45, 1
  %46 = zext i8 %.lobit3.i to i32
  %brightness41.i = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 5, i32 1
  %47 = ptrtoint ptr %brightness41.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %brightness41.i, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lg_g510_update_mkey_led_brightness.exit, %if.end.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 0, %lg_g510_update_mkey_led_brightness.exit ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select.i, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lg_g15_init_input_dev(ptr noundef %hdev, ptr noundef %input, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %input, align 8
  %phys = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 40
  %phys2 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 1
  %1 = ptrtoint ptr %phys2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %phys, ptr %phys2, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %uniq4 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %uniq4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uniq, ptr %uniq4, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bus, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %7 to i16
  %vendor6 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %vendor6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %vendor6, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %9 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %product, align 8
  %conv7 = trunc i32 %10 to i16
  %product9 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %product9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %product9, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version, align 4
  %conv10 = trunc i32 %13 to i16
  %version12 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %version12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %version12, align 2
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 31
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lg_g15_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 32
  %17 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lg_g15_input_close, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 696) #8
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 697) #8
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 698) #8
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 699) #8
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 700) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg_g15_register_led(ptr noundef %g15, i32 noundef %i, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i
  %led = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 2
  %0 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i, ptr %led, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %arrayidx, align 4
  %model = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %entry.sw.epilog55_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge94
    i32 4, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb21_crit_edge
    i32 3, label %entry.sw.bb21_crit_edge95
  ]

entry.sw.bb21_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

entry.sw.bb_crit_edge94:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog55_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog55

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge94
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 7
  %5 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lg_g15_led_get, ptr %brightness_get, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb, %entry.sw.bb7_crit_edge
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 6
  %6 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lg_g15_led_set, ptr %brightness_set_blocking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp = icmp slt i32 %i, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %flags, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %max_brightness, align 4
  br label %sw.epilog55

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness20 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %max_brightness20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %max_brightness20, align 4
  br label %sw.epilog55

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge95
  %10 = zext i32 %i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %i, label %sw.default [
    i32 1, label %sw.bb22
    i32 0, label %sw.bb21.sw.bb27_crit_edge
  ]

sw.bb21.sw.bb27_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

sw.bb22:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.27, ptr %arrayidx, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %sw.bb22, %sw.bb21.sw.bb27_crit_edge
  %brightness_set_blocking31 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 6
  %12 = ptrtoint ptr %brightness_set_blocking31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @lg_g510_kbd_led_set, ptr %brightness_set_blocking31, align 4
  %brightness_get35 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 7
  %13 = ptrtoint ptr %brightness_get35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lg_g510_kbd_led_get, ptr %brightness_get35, align 4
  %max_brightness39 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %max_brightness39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 255, ptr %max_brightness39, align 4
  %groups = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 12
  %15 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lg_g510_kbd_led_groups, ptr %groups, align 4
  br label %sw.epilog55

sw.default:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %brightness_set_blocking46 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 6
  %16 = ptrtoint ptr %brightness_set_blocking46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lg_g510_mkey_led_set, ptr %brightness_set_blocking46, align 4
  %brightness_get50 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 7
  %17 = ptrtoint ptr %brightness_get50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lg_g510_mkey_led_get, ptr %brightness_get50, align 4
  %max_brightness54 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %max_brightness54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %max_brightness54, align 4
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %sw.default, %sw.bb27, %if.else, %if.then, %entry.sw.epilog55_crit_edge
  %hdev = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 4
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 18
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef null) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_notify_brightness_hw_changed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg_g510_get_initial_led_brightness(ptr noundef %g15, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.lg_g15_data, ptr %g15, i32 0, i32 4
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %2 = trunc i32 %i to i8
  %conv = add i8 %2, 5
  %call = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef %g15, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp3, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [20 x i8], ptr %g15, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr [20 x i8], ptr %g15, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 2
  %9 = tail call i8 @llvm.umax.i8(i8 %6, i8 %8)
  %arrayidx20 = getelementptr [20 x i8], ptr %g15, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %12 = tail call i8 @llvm.umax.i8(i8 %9, i8 %11)
  %cond31 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp37.not = icmp eq i8 %6, 0
  br i1 %cmp37.not, label %if.then32.cond.end49_crit_edge, label %cond.true43

if.then32.cond.end49_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end49

cond.true43:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %conv35 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv35, 255
  %div184 = lshr i32 %cond31, 1
  %add44 = add nuw nsw i32 %div184, %mul
  %div45.lhs.trunc = trunc i32 %add44 to i16
  %div45.rhs.trunc = zext i8 %12 to i16
  %div45187 = udiv i16 %div45.lhs.trunc, %div45.rhs.trunc
  %phi.cast = trunc i16 %div45187 to i8
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true43, %if.then32.cond.end49_crit_edge
  %cond50 = phi i8 [ %phi.cast, %cond.true43 ], [ 0, %if.then32.cond.end49_crit_edge ]
  %red = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 3
  %13 = ptrtoint ptr %red to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond50, ptr %red, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp60.not = icmp eq i8 %8, 0
  br i1 %cmp60.not, label %cond.end49.cond.end74_crit_edge, label %cond.true66

cond.end49.cond.end74_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end74

cond.true66:                                      ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #10
  %conv56 = zext i8 %8 to i32
  %mul57 = mul nuw nsw i32 %conv56, 255
  %div67183 = lshr i32 %cond31, 1
  %add68 = add nuw nsw i32 %div67183, %mul57
  %div69.lhs.trunc = trunc i32 %add68 to i16
  %div69.rhs.trunc = zext i8 %12 to i16
  %div69186 = udiv i16 %div69.lhs.trunc, %div69.rhs.trunc
  %phi.cast178 = trunc i16 %div69186 to i8
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true66, %cond.end49.cond.end74_crit_edge
  %cond75 = phi i8 [ %phi.cast178, %cond.true66 ], [ 0, %cond.end49.cond.end74_crit_edge ]
  %green = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 4
  %14 = ptrtoint ptr %green to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cond75, ptr %green, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp86.not = icmp eq i8 %11, 0
  br i1 %cmp86.not, label %cond.end74.cond.end100_crit_edge, label %cond.true92

cond.end74.cond.end100_crit_edge:                 ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end100

cond.true92:                                      ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #10
  %conv82 = zext i8 %11 to i32
  %mul83 = mul nuw nsw i32 %conv82, 255
  %div93182 = lshr i32 %cond31, 1
  %add94 = add nuw nsw i32 %div93182, %mul83
  %div95.lhs.trunc = trunc i32 %add94 to i16
  %div95.rhs.trunc = zext i8 %12 to i16
  %div95185 = udiv i16 %div95.lhs.trunc, %div95.rhs.trunc
  %phi.cast181 = trunc i16 %div95185 to i8
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true92, %cond.end74.cond.end100_crit_edge
  %cond101 = phi i8 [ %phi.cast181, %cond.true92 ], [ 0, %cond.end74.cond.end100_crit_edge ]
  %blue = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 5
  %15 = ptrtoint ptr %blue to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond101, ptr %blue, align 2
  %brightness = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 1
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond31, ptr %brightness, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %red109 = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 3
  %17 = ptrtoint ptr %red109 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %red109, align 4
  %green112 = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 4
  %18 = ptrtoint ptr %green112 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %green112, align 1
  %blue115 = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 5
  %19 = ptrtoint ptr %blue115 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %blue115, align 2
  %brightness118 = getelementptr %struct.lg_g15_data, ptr %g15, i32 0, i32 6, i32 %i, i32 1
  %20 = ptrtoint ptr %brightness118 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %brightness118, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.end100, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ 0, %if.else ], [ 0, %cond.end100 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg_g15_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hid_hw_close(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_led_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %hdev.i = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev.i, align 4
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext 2, ptr noundef %5, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %lg_g15_update_led_brightness.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [20 x i8], ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %brightness.i = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %brightness.i, align 4
  %arrayidx6.i = getelementptr [20 x i8], ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i, align 2
  %conv7.i = zext i8 %14 to i32
  %brightness10.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 1, i32 1
  %15 = ptrtoint ptr %brightness10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv7.i, ptr %brightness10.i, align 4
  %arrayidx12.i = getelementptr [20 x i8], ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12.i, align 1
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %brightness16.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 2, i32 1
  %21 = ptrtoint ptr %brightness16.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %brightness16.i, align 4
  %22 = lshr i8 %17, 1
  %.lobit.i = and i8 %22, 1
  %23 = xor i8 %.lobit.i, 1
  %24 = zext i8 %23 to i32
  %brightness26.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %25 = ptrtoint ptr %brightness26.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %brightness26.i, align 4
  %26 = lshr i8 %17, 2
  %.lobit64.i = and i8 %26, 1
  %27 = xor i8 %.lobit64.i, 1
  %28 = zext i8 %27 to i32
  %brightness36.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %29 = ptrtoint ptr %brightness36.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %brightness36.i, align 4
  %30 = lshr i8 %17, 3
  %.lobit65.i = and i8 %30, 1
  %31 = xor i8 %.lobit65.i, 1
  %32 = zext i8 %31 to i32
  %brightness46.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 5, i32 1
  %33 = ptrtoint ptr %brightness46.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %brightness46.i, align 4
  br label %lg_g15_update_led_brightness.exit

lg_g15_update_led_brightness.exit:                ; preds = %if.end.i, %do.end.i
  %led = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 2
  %34 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %led, align 4
  %brightness2 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 %35, i32 1
  %36 = ptrtoint ptr %brightness2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brightness2, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g15_led_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %5, align 4
  %arrayidx2 = getelementptr [20 x i8], ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx2, align 1
  %led = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 2
  %10 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ult i32 %11, 2
  br i1 %cmp, label %if.then3, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp14 = icmp eq i32 %11, 2
  br i1 %cmp14, label %if.end22.1.thread100, label %if.end22

if.end22.1.thread100:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %val.085 = trunc i32 %brightness to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.085)
  %tobool23.not86 = icmp ne i8 %val.085, 0
  %conv2787 = zext i1 %tobool23.not86 to i8
  %brightness20.1102 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %12 = ptrtoint ptr %brightness20.1102 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness20.1102, align 4
  br label %if.end22.2.thread117

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = trunc i32 %11 to i8
  %conv = add nuw nsw i8 %14, 1
  %arrayidx6 = getelementptr [20 x i8], ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx6, align 1
  %16 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %led, align 4
  %mul = shl i32 %17, 2
  %shl = shl i32 %brightness, %mul
  %conv8 = trunc i32 %shl to i8
  br label %if.end35

if.end22:                                         ; preds = %for.body.preheader
  %brightness20 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 2, i32 1
  %18 = ptrtoint ptr %brightness20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness20, align 4
  %val.0 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0)
  %tobool23.not = icmp ne i8 %val.0, 0
  %conv27 = zext i1 %tobool23.not to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp14.1 = icmp eq i32 %11, 3
  br i1 %cmp14.1, label %if.end22.if.end22.2.thread117_crit_edge, label %if.end22.1

if.end22.if.end22.2.thread117_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.2.thread117

if.end22.1:                                       ; preds = %if.end22
  %brightness20.1 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %20 = ptrtoint ptr %brightness20.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brightness20.1, align 4
  %val.0.1 = trunc i32 %21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.1)
  %tobool23.not.1 = icmp eq i8 %val.0.1, 0
  %conv27.1 = select i1 %tobool23.not.1, i8 0, i8 2
  %mask.1.1 = or i8 %conv27.1, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp14.2 = icmp eq i32 %11, 4
  br i1 %cmp14.2, label %if.end22.2.thread, label %if.end22.2

if.end22.2.thread:                                ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #10
  %val.0.2110 = trunc i32 %brightness to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.2110)
  %tobool23.not.2111 = icmp eq i8 %val.0.2110, 0
  %conv27.2112 = select i1 %tobool23.not.2111, i8 0, i8 4
  %mask.1.2113 = or i8 %conv27.2112, %mask.1.1
  br label %if.else18.3

if.end22.2.thread117:                             ; preds = %if.end22.if.end22.2.thread117_crit_edge, %if.end22.1.thread100
  %brightness.sink = phi i32 [ %13, %if.end22.1.thread100 ], [ %brightness, %if.end22.if.end22.2.thread117_crit_edge ]
  %conv27.sink = phi i8 [ %conv2787, %if.end22.1.thread100 ], [ %conv27, %if.end22.if.end22.2.thread117_crit_edge ]
  %val.0.193 = trunc i32 %brightness.sink to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.193)
  %tobool23.not.194 = icmp eq i8 %val.0.193, 0
  %conv27.195 = select i1 %tobool23.not.194, i8 0, i8 2
  %mask.1.196 = or i8 %conv27.195, %conv27.sink
  %brightness20.2119 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %22 = ptrtoint ptr %brightness20.2119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brightness20.2119, align 4
  %val.0.2120 = trunc i32 %23 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.2120)
  %tobool23.not.2121 = icmp eq i8 %val.0.2120, 0
  %conv27.2122 = select i1 %tobool23.not.2121, i8 0, i8 4
  %mask.1.2123 = or i8 %conv27.2122, %mask.1.196
  br label %if.else18.3

if.end22.2:                                       ; preds = %if.end22.1
  %brightness20.2 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %24 = ptrtoint ptr %brightness20.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brightness20.2, align 4
  %val.0.2 = trunc i32 %25 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.2)
  %tobool23.not.2 = icmp eq i8 %val.0.2, 0
  %conv27.2 = select i1 %tobool23.not.2, i8 0, i8 4
  %mask.1.2 = or i8 %conv27.2, %mask.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp14.3 = icmp eq i32 %11, 5
  br i1 %cmp14.3, label %if.end22.2.if.end22.3_crit_edge, label %if.end22.2.if.else18.3_crit_edge

if.end22.2.if.else18.3_crit_edge:                 ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.3

if.end22.2.if.end22.3_crit_edge:                  ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.3

if.else18.3:                                      ; preds = %if.end22.2.if.else18.3_crit_edge, %if.end22.2.thread117, %if.end22.2.thread
  %mask.1.2115 = phi i8 [ %mask.1.2113, %if.end22.2.thread ], [ %mask.1.2, %if.end22.2.if.else18.3_crit_edge ], [ %mask.1.2123, %if.end22.2.thread117 ]
  %brightness20.3 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 5, i32 1
  %26 = ptrtoint ptr %brightness20.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brightness20.3, align 4
  br label %if.end22.3

if.end22.3:                                       ; preds = %if.else18.3, %if.end22.2.if.end22.3_crit_edge
  %mask.1.2116 = phi i8 [ %mask.1.2115, %if.else18.3 ], [ %mask.1.2, %if.end22.2.if.end22.3_crit_edge ]
  %val.0.in.3 = phi i32 [ %27, %if.else18.3 ], [ %brightness, %if.end22.2.if.end22.3_crit_edge ]
  %val.0.3 = trunc i32 %val.0.in.3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.3)
  %tobool23.not.3 = icmp eq i8 %val.0.3, 0
  %conv27.3 = select i1 %tobool23.not.3, i8 0, i8 8
  %mask.1.3 = or i8 %conv27.3, %mask.1.2116
  %arrayidx30 = getelementptr [20 x i8], ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %arrayidx30, align 1
  %neg = xor i8 %mask.1.3, -1
  br label %if.end35

if.end35:                                         ; preds = %if.end22.3, %if.then3
  %neg.sink = phi i8 [ %neg, %if.end22.3 ], [ %conv8, %if.then3 ]
  %arrayidx34 = getelementptr [20 x i8], ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %neg.sink, ptr %arrayidx34, align 2
  %hdev = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev, align 4
  %call37 = tail call i32 @hid_hw_raw_request(ptr noundef %31, i8 noundef zeroext 2, ptr noundef %5, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 4
  br i1 %cmp38, label %if.then40, label %do.end

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %brightness41 = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 1
  %32 = ptrtoint ptr %brightness41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %brightness, ptr %brightness41, align 4
  br label %if.end47

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev, align 4
  %dev44 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.23, i32 noundef %call37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp45 = icmp slt i32 %call37, 0
  %spec.select = select i1 %cmp45, i32 %call37, i32 -5
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.then40
  %ret.0 = phi i32 [ 0, %if.then40 ], [ %spec.select, %do.end ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end47 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g510_kbd_led_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %led.i = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 2
  %8 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led.i, align 4
  %10 = trunc i32 %9 to i8
  %conv.i = add i8 %10, 5
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %7, align 4
  %red.i = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 3
  %12 = ptrtoint ptr %red.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %red.i, align 4
  %conv1.i = zext i8 %13 to i32
  %mul.i = mul i32 %conv1.i, %brightness
  %add2.i = add i32 %mul.i, 127
  %div3.i = udiv i32 %add2.i, 255
  %conv4.i = trunc i32 %div3.i to i8
  %arrayidx6.i = getelementptr [20 x i8], ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %green.i = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 4
  %15 = ptrtoint ptr %green.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %green.i, align 1
  %conv8.i = zext i8 %16 to i32
  %mul9.i = mul i32 %conv8.i, %brightness
  %add13.i = add i32 %mul9.i, 127
  %div14.i = udiv i32 %add13.i, 255
  %conv15.i = trunc i32 %div14.i to i8
  %arrayidx17.i = getelementptr [20 x i8], ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15.i, ptr %arrayidx17.i, align 2
  %blue.i = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 5
  %18 = ptrtoint ptr %blue.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %blue.i, align 2
  %conv19.i = zext i8 %19 to i32
  %mul20.i = mul i32 %conv19.i, %brightness
  %add24.i = add i32 %mul20.i, 127
  %div25.i = udiv i32 %add24.i, 255
  %conv26.i = trunc i32 %div25.i to i8
  %arrayidx28.i = getelementptr [20 x i8], ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26.i, ptr %arrayidx28.i, align 1
  %hdev.i = getelementptr inbounds %struct.lg_g15_data, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev.i, align 4
  %23 = load i32, ptr %led.i, align 4
  %24 = trunc i32 %23 to i8
  %conv31.i = add i8 %24, 5
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %22, i8 noundef zeroext %conv31.i, ptr noundef %7, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 4
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %brightness34.i = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 1
  %25 = ptrtoint ptr %brightness34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %brightness, ptr %brightness34.i, align 4
  br label %lg_g510_kbd_led_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %27, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp36.i, i32 %call.i, i32 -5
  br label %lg_g510_kbd_led_write.exit

lg_g510_kbd_led_write.exit:                       ; preds = %do.end.i, %if.then.i
  %ret.0.i = phi i32 [ 0, %if.then.i ], [ %spec.select.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %lg_g510_kbd_led_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %lg_g510_kbd_led_write.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lg_g510_kbd_led_get(ptr nocapture noundef readonly %led_cdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g510_mkey_led_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %led = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 2
  %8 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.end5.1.thread70, label %if.end5

if.end5.1.thread70:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val.055 = trunc i32 %brightness to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.055)
  %tobool6.not56 = icmp eq i8 %val.055, 0
  %conv957 = select i1 %tobool6.not56, i8 0, i8 -128
  %brightness3.172 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %10 = ptrtoint ptr %brightness3.172 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness3.172, align 4
  br label %if.end5.2.thread87

if.end5:                                          ; preds = %if.end
  %brightness3 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 2, i32 1
  %12 = ptrtoint ptr %brightness3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness3, align 4
  %val.0 = trunc i32 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0)
  %tobool6.not = icmp eq i8 %val.0, 0
  %conv9 = select i1 %tobool6.not, i8 0, i8 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp1.1 = icmp eq i32 %9, 3
  br i1 %cmp1.1, label %if.end5.if.end5.2.thread87_crit_edge, label %if.end5.1

if.end5.if.end5.2.thread87_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.2.thread87

if.end5.1:                                        ; preds = %if.end5
  %brightness3.1 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %14 = ptrtoint ptr %brightness3.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness3.1, align 4
  %val.0.1 = trunc i32 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.1)
  %tobool6.not.1 = icmp eq i8 %val.0.1, 0
  %conv9.1 = select i1 %tobool6.not.1, i8 0, i8 64
  %mask.1.1 = or i8 %conv9.1, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 4
  br i1 %cmp1.2, label %if.end5.2.thread, label %if.end5.2

if.end5.2.thread:                                 ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #10
  %val.0.280 = trunc i32 %brightness to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.280)
  %tobool6.not.281 = icmp eq i8 %val.0.280, 0
  %conv9.282 = select i1 %tobool6.not.281, i8 0, i8 32
  %mask.1.283 = or i8 %conv9.282, %mask.1.1
  br label %if.else.3

if.end5.2.thread87:                               ; preds = %if.end5.if.end5.2.thread87_crit_edge, %if.end5.1.thread70
  %brightness.sink = phi i32 [ %11, %if.end5.1.thread70 ], [ %brightness, %if.end5.if.end5.2.thread87_crit_edge ]
  %conv9.sink = phi i8 [ %conv957, %if.end5.1.thread70 ], [ %conv9, %if.end5.if.end5.2.thread87_crit_edge ]
  %val.0.163 = trunc i32 %brightness.sink to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.163)
  %tobool6.not.164 = icmp eq i8 %val.0.163, 0
  %conv9.165 = select i1 %tobool6.not.164, i8 0, i8 64
  %mask.1.166 = or i8 %conv9.165, %conv9.sink
  %brightness3.289 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %16 = ptrtoint ptr %brightness3.289 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brightness3.289, align 4
  %val.0.290 = trunc i32 %17 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.290)
  %tobool6.not.291 = icmp eq i8 %val.0.290, 0
  %conv9.292 = select i1 %tobool6.not.291, i8 0, i8 32
  %mask.1.293 = or i8 %conv9.292, %mask.1.166
  br label %if.else.3

if.end5.2:                                        ; preds = %if.end5.1
  %brightness3.2 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %18 = ptrtoint ptr %brightness3.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness3.2, align 4
  %val.0.2 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.2)
  %tobool6.not.2 = icmp eq i8 %val.0.2, 0
  %conv9.2 = select i1 %tobool6.not.2, i8 0, i8 32
  %mask.1.2 = or i8 %conv9.2, %mask.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp1.3 = icmp eq i32 %9, 5
  br i1 %cmp1.3, label %if.end5.2.if.end5.3_crit_edge, label %if.end5.2.if.else.3_crit_edge

if.end5.2.if.else.3_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.3

if.end5.2.if.end5.3_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.3

if.else.3:                                        ; preds = %if.end5.2.if.else.3_crit_edge, %if.end5.2.thread87, %if.end5.2.thread
  %mask.1.285 = phi i8 [ %mask.1.283, %if.end5.2.thread ], [ %mask.1.2, %if.end5.2.if.else.3_crit_edge ], [ %mask.1.293, %if.end5.2.thread87 ]
  %brightness3.3 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 5, i32 1
  %20 = ptrtoint ptr %brightness3.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brightness3.3, align 4
  br label %if.end5.3

if.end5.3:                                        ; preds = %if.else.3, %if.end5.2.if.end5.3_crit_edge
  %mask.1.286 = phi i8 [ %mask.1.285, %if.else.3 ], [ %mask.1.2, %if.end5.2.if.end5.3_crit_edge ]
  %val.0.in.3 = phi i32 [ %21, %if.else.3 ], [ %brightness, %if.end5.2.if.end5.3_crit_edge ]
  %val.0.3 = trunc i32 %val.0.in.3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.3)
  %tobool6.not.3 = icmp eq i8 %val.0.3, 0
  %conv9.3 = select i1 %tobool6.not.3, i8 0, i8 16
  %mask.1.3 = or i8 %conv9.3, %mask.1.286
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %5, align 4
  %arrayidx13 = getelementptr [20 x i8], ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %mask.1.3, ptr %arrayidx13, align 1
  %hdev = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 4
  %call15 = tail call i32 @hid_hw_raw_request(ptr noundef %25, i8 noundef zeroext 4, ptr noundef %5, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %if.then18, label %do.end

if.then18:                                        ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #10
  %brightness19 = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 1
  %26 = ptrtoint ptr %brightness19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %brightness, ptr %brightness19, align 4
  br label %if.end25

do.end:                                           ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdev, align 4
  %dev22 = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.23, i32 noundef %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp23 = icmp slt i32 %call15, 0
  %spec.select = select i1 %cmp23, i32 %call15, i32 -5
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then18
  %ret.0 = phi i32 [ 0, %if.then18 ], [ %spec.select, %do.end ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_g510_mkey_led_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %hdev.i = getelementptr inbounds %struct.lg_g15_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev.i, align 4
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext 4, ptr noundef %5, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.lg_g510_update_mkey_led_brightness.exit_crit_edge, label %do.end.i

entry.lg_g510_update_mkey_led_brightness.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lg_g510_update_mkey_led_brightness.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %lg_g510_update_mkey_led_brightness.exit

lg_g510_update_mkey_led_brightness.exit:          ; preds = %do.end.i, %entry.lg_g510_update_mkey_led_brightness.exit_crit_edge
  %arrayidx.i = getelementptr [20 x i8], ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %.lobit.i = lshr i8 %11, 7
  %12 = zext i8 %.lobit.i to i32
  %brightness.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 2, i32 1
  %13 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %brightness.i, align 4
  %14 = lshr i8 %11, 6
  %.lobit1.i = and i8 %14, 1
  %15 = zext i8 %.lobit1.i to i32
  %brightness17.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  %16 = ptrtoint ptr %brightness17.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %brightness17.i, align 4
  %17 = lshr i8 %11, 5
  %.lobit2.i = and i8 %17, 1
  %18 = zext i8 %.lobit2.i to i32
  %brightness29.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 4, i32 1
  %19 = ptrtoint ptr %brightness29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %brightness29.i, align 4
  %20 = lshr i8 %11, 4
  %.lobit3.i = and i8 %20, 1
  %21 = zext i8 %.lobit3.i to i32
  %brightness41.i = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 5, i32 1
  %22 = ptrtoint ptr %brightness41.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %brightness41.i, align 4
  %led = getelementptr inbounds %struct.lg_g15_led, ptr %led_cdev, i32 0, i32 2
  %23 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %led, align 4
  %brightness2 = getelementptr %struct.lg_g15_data, ptr %5, i32 0, i32 6, i32 %24, i32 1
  %25 = ptrtoint ptr %brightness2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %brightness2, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @color_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i11 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i11, align 4
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %red = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %red to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %red, align 4
  %conv = zext i8 %9 to i32
  %green = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %green to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %green, align 1
  %conv3 = zext i8 %11 to i32
  %blue = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %blue to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blue, align 2
  %conv4 = zext i8 %13 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @color_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i48 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value, align 4, !annotation !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp = icmp ult i32 %count, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp3 = icmp eq i32 %count, 8
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr i8, ptr %buf, i32 7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp4.not.not = icmp eq i8 %10, 10
  br i1 %cmp4.not.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp7.old = icmp ugt i32 %count, 8
  br i1 %cmp7.old, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false6.if.end_crit_edge

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %12)
  %cmp11.not = icmp eq i8 %12, 35
  br i1 %cmp11.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %add.ptr15 = getelementptr i8, ptr %buf, i32 1
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr15, i32 noundef 16, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %mutex = getelementptr inbounds %struct.lg_g15_data, ptr %7, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %and = lshr i32 %14, 16
  %conv19 = trunc i32 %and to i8
  %red = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %red to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv19, ptr %red, align 4
  %and20 = lshr i32 %14, 8
  %conv22 = trunc i32 %and20 to i8
  %green = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %green to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %green, align 1
  %conv24 = trunc i32 %14 to i8
  %blue = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %blue to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24, ptr %blue, align 2
  %brightness = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness, align 4
  %led.i = getelementptr inbounds %struct.lg_g15_led, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %led.i, align 4
  %22 = trunc i32 %21 to i8
  %conv.i = add i8 %22, 5
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %7, align 4
  %24 = load i8, ptr %red, align 4
  %conv1.i = zext i8 %24 to i32
  %mul.i = mul i32 %19, %conv1.i
  %add2.i = add i32 %mul.i, 127
  %div3.i = udiv i32 %add2.i, 255
  %conv4.i = trunc i32 %div3.i to i8
  %arrayidx6.i = getelementptr [20 x i8], ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %26 = load i8, ptr %green, align 1
  %conv8.i = zext i8 %26 to i32
  %mul9.i = mul i32 %19, %conv8.i
  %add13.i = add i32 %mul9.i, 127
  %div14.i = udiv i32 %add13.i, 255
  %conv15.i = trunc i32 %div14.i to i8
  %arrayidx17.i = getelementptr [20 x i8], ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv15.i, ptr %arrayidx17.i, align 2
  %28 = load i8, ptr %blue, align 2
  %conv19.i = zext i8 %28 to i32
  %mul20.i = mul i32 %19, %conv19.i
  %add24.i = add i32 %mul20.i, 127
  %div25.i = udiv i32 %add24.i, 255
  %conv26.i = trunc i32 %div25.i to i8
  %arrayidx28.i = getelementptr [20 x i8], ptr %7, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv26.i, ptr %arrayidx28.i, align 1
  %hdev.i = getelementptr inbounds %struct.lg_g15_data, ptr %7, i32 0, i32 4
  %30 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev.i, align 4
  %32 = load i32, ptr %led.i, align 4
  %33 = trunc i32 %32 to i8
  %conv31.i = add i8 %33, 5
  %call.i49 = call i32 @hid_hw_raw_request(ptr noundef %31, i8 noundef zeroext %conv31.i, ptr noundef %7, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i49)
  %cmp.i = icmp eq i32 %call.i49, 4
  br i1 %cmp.i, label %lg_g510_kbd_led_write.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %call.i49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp36.i = icmp slt i32 %call.i49, 0
  %spec.select = select i1 %cmp36.i, i32 %call.i49, i32 -5
  br label %cleanup.sink.split

lg_g510_kbd_led_write.exit:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %19, ptr %brightness, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lg_g510_kbd_led_write.exit, %do.end.i
  %retval.0.ph = phi i32 [ %count, %lg_g510_kbd_led_write.exit ], [ %spec.select, %do.end.i ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !83, !85, !86, !88, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_hid_lg_g15__236_953_lg_g15_driver_init6, !1, !"__initcall__kmod_hid_lg_g15__236_953_lg_g15_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lg-g15.c", i32 953, i32 1}
!2 = !{ptr @__exitcall_lg_g15_driver_exit, !1, !"__exitcall_lg_g15_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-lg-g15.c", i32 955, i32 1}
!5 = !{ptr @__UNIQUE_ID_file238, !6, !"__UNIQUE_ID_file238", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-lg-g15.c", i32 956, i32 1}
!7 = !{ptr @__UNIQUE_ID_license239, !6, !"__UNIQUE_ID_license239", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-lg-g15.c", i32 948, i32 12}
!11 = !{ptr @lg_g15_driver, !12, !"lg_g15_driver", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-lg-g15.c", i32 947, i32 26}
!13 = !{ptr @lg_g15_devices, !14, !"lg_g15_devices", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-lg-g15.c", i32 920, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-lg-g15.c", i32 744, i32 3}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-lg-g15.c", i32 745, i32 3}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-lg-g15.c", i32 746, i32 3}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-lg-g15.c", i32 747, i32 3}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-lg-g15.c", i32 748, i32 3}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-lg-g15.c", i32 749, i32 3}
!27 = distinct !{null, !28, !"led_names", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-lg-g15.c", i32 743, i32 28}
!29 = !{ptr @lg_g15_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-lg-g15.c", i32 783, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @lg_g15_probe.__key.9, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-lg-g15.c", i32 797, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lg_g15_probe.__key.11, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-lg-g15.c", i32 809, i32 3}
!37 = !{ptr @lg_g15_probe.__key.12, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-lg-g15.c", i32 816, i32 3}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-lg-g15.c", i32 855, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lg_g15_probe._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @lg_g15_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-lg-g15.c", i32 867, i32 43}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-lg-g15.c", i32 872, i32 37}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-lg-g15.c", i32 880, i32 37}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-lg-g15.c", i32 75, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lg_g15_update_led_brightness._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @lg_g15_update_led_brightness._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-lg-g15.c", i32 250, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lg_g510_kbd_led_write._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @lg_g510_kbd_led_write._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-lg-g15.c", i32 201, i32 3}
!65 = !{ptr @lg_g510_get_initial_led_brightness._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @lg_g510_get_initial_led_brightness._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-lg-g15.c", i32 365, i32 3}
!69 = !{ptr @lg_g510_update_mkey_led_brightness._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @lg_g510_update_mkey_led_brightness._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-lg-g15.c", i32 696, i32 29}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-lg-g15.c", i32 153, i32 3}
!75 = !{ptr @lg_g15_led_set._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @lg_g15_led_set._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @lg_g510_kbd_led_groups, !78, !"lg_g510_kbd_led_groups", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-lg-g15.c", i32 342, i32 38}
!79 = !{ptr @lg_g510_kbd_led_group, !80, !"lg_g510_kbd_led_group", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-lg-g15.c", i32 338, i32 37}
!81 = !{ptr @lg_g510_kbd_led_attrs, !82, !"lg_g510_kbd_led_attrs", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-lg-g15.c", i32 333, i32 26}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-lg-g15.c", i32 331, i32 8}
!85 = !{ptr @dev_attr_color, !84, !"dev_attr_color", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-lg-g15.c", i32 324, i32 21}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-lg-g15.c", i32 432, i32 3}
!90 = !{ptr @lg_g510_mkey_led_set._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lg_g510_mkey_led_set._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-lg-g15.c", i32 575, i32 4}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lg_g510_event._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @lg_g510_event._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-lg-g15.c", i32 577, i32 4}
!100 = !{ptr @lg_g510_event._entry.35, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @lg_g510_event._entry_ptr.37, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i8 0, i8 2}
!112 = !{!"auto-init"}
