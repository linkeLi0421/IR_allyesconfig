; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/ht16k33.c_pt.bc'
source_filename = "../drivers/auxdisplay/ht16k33.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.seg7_conversion_map = type { [128 x i8] }
%struct.seg14_conversion_map = type { [128 x i16] }
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
%struct.ht16k33_priv = type { ptr, %struct.delayed_work, %struct.led_classdev, %struct.ht16k33_keypad, %union.anon.87, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ht16k33_keypad = type { ptr, ptr, i32, i32, i32, i32, [3 x i16], %struct.wait_queue_head, i8 }
%union.anon.87 = type { %struct.ht16k33_seg }
%struct.ht16k33_seg = type { %struct.linedisp, %union.anon.89, i32, [4 x i8] }
%struct.linedisp = type { %struct.device, %struct.timer_list, ptr, ptr, ptr, i32, i32, i32, i32 }
%union.anon.89 = type { %struct.seg14_conversion_map }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.88, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.88 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@__initcall__kmod_ht16k33__302_833_ht16k33_driver_init6 = internal global ptr @ht16k33_driver_init, section ".initcall6.init", align 4
@ht16k33_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ht16k33_remove, ptr @ht16k33_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ht16k33_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ht16k33_i2c_match, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ht16k33_driver_exit = internal global ptr @ht16k33_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [42 x i8] c"ht16k33.description=Holtek HT16K33 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [40 x i8] c"ht16k33.file=drivers/auxdisplay/ht16k33\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [20 x i8] c"ht16k33.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [56 x i8] c"ht16k33.author=Robin van der Gracht <robin@protonic.nl>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ht16k33\00", [24 x i8] zeroinitializer }, align 32
@ht16k33_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adafruit,3108\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adafruit,3130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"holtek,ht16k33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ht16k33_i2c_match = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ht16k33\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dev_attr_map_seg7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_seg_show, ptr @map_seg_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_map_seg14 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_seg_show, ptr @map_seg_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"map_seg7\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map_seg14\00", [22 x i8] zeroinitializer }, align 32
@ht16k33_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 722, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c_check_functionality error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ht16k33_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/auxdisplay/ht16k33.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ht16k33_probe._entry_ptr = internal global ptr @ht16k33_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"default-brightness-level\00", [39 x i8] zeroinitializer }, align 32
@ht16k33_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 747, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid default brightness level: %u, using %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ht16k33_probe._entry_ptr.12 = internal global ptr @ht16k33_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"auxdisplay\00", [21 x i8] zeroinitializer }, align 32
@ht16k33_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to register LED\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ht16k33_led_probe\00", [46 x i8] zeroinitializer }, align 32
@ht16k33_led_probe._entry_ptr = internal global ptr @ht16k33_led_probe._entry, section ".printk_index", align 4
@ht16k33_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&keypad->wait\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ht16k33-keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,no-autorepeat\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-delay-ms\00", [46 x i8] zeroinitializer }, align 32
@ht16k33_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 544, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"key debounce delay not specified\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ht16k33_keypad_probe\00", [43 x i8] zeroinitializer }, align 32
@ht16k33_keypad_probe._entry_ptr = internal global ptr @ht16k33_keypad_probe._entry, section ".printk_index", align 4
@ht16k33_keypad_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 554, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%u rows or %u cols out of range in DT\0A\00", [57 x i8] zeroinitializer }, align 32
@ht16k33_keypad_probe._entry_ptr.25 = internal global ptr @ht16k33_keypad_probe._entry.23, section ".printk_index", align 4
@ht16k33_keypad_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 565, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@ht16k33_keypad_probe._entry_ptr.28 = internal global ptr @ht16k33_keypad_probe._entry.26, section ".printk_index", align 4
@ht16k33_keypad_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 575, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"irq request failed %d, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ht16k33_keypad_probe._entry_ptr.31 = internal global ptr @ht16k33_keypad_probe._entry.29, section ".printk_index", align 4
@ht16k33_keypad_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read key data, rc=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ht16k33_keypad_scan\00", [44 x i8] zeroinitializer }, align 32
@ht16k33_keypad_scan._entry_ptr = internal global ptr @ht16k33_keypad_scan._entry, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ht16k33-bl\00", [21 x i8] zeroinitializer }, align 32
@ht16k33_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @ht16k33_bl_update_status, ptr null, ptr @ht16k33_bl_check_fb }, [16 x i8] zeroinitializer }, align 32
@ht16k33_fbdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 607, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ht16k33_fbdev_probe\00", [44 x i8] zeroinitializer }, align 32
@ht16k33_fbdev_probe._entry_ptr = internal global ptr @ht16k33_fbdev_probe._entry, section ".printk_index", align 4
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"refresh-rate-hz\00", [16 x i8] zeroinitializer }, align 32
@ht16k33_fbdev_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.5, i32 636, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"refresh rate not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@ht16k33_fbdev_probe._entry_ptr.40 = internal global ptr @ht16k33_fbdev_probe._entry.38, section ".printk_index", align 4
@ht16k33_fbdev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@ht16k33_fbdev_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@ht16k33_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @fb_sys_write, ptr null, ptr null, ptr null, ptr null, ptr @ht16k33_blank, ptr null, ptr @sys_fillrect, ptr @sys_copyarea, ptr @sys_imageblit, ptr null, ptr null, ptr null, ptr null, ptr @ht16k33_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ht16k33_fb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"ht16k33\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 1, i16 0, i16 0, i16 0, i32 16, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@ht16k33_fb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 16, i32 8, i32 16, i32 8, i32 0, i32 0, i32 1, i32 0, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ht16k33_seg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ht16k33_seg_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@initial_map_seg7 = internal constant { %struct.seg7_conversion_map, [32 x i8] } { %struct.seg7_conversion_map { [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\226m$} 9\0FvF\10@\10R?\06[Ofm}\07\7FoHHaHC'{w\7F9?yqov\06\0Ev877?s?wmx>>~vf[9d\0F#\08\02w|X^yqot\04\0Ct87T\\sgPmx\1C\1C~vn[90\0F\01\00" }, [32 x i8] zeroinitializer }, align 32
@ht16k33_seg_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ht16k33_seg_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@initial_map_seg14 = internal constant { %struct.seg14_conversion_map, [64 x i8] } { %struct.seg14_conversion_map { [128 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6, i16 514, i16 4814, i16 4845, i16 3108, i16 9561, i16 512, i16 9216, i16 2304, i16 16128, i16 4800, i16 2048, i16 192, i16 8192, i16 3072, i16 3135, i16 1030, i16 219, i16 143, i16 230, i16 8297, i16 253, i16 5121, i16 255, i16 239, i16 4608, i16 2560, i16 9280, i16 200, i16 2432, i16 5153, i16 699, i16 247, i16 4751, i16 57, i16 4623, i16 121, i16 113, i16 189, i16 246, i16 4617, i16 14, i16 9328, i16 56, i16 1334, i16 8502, i16 63, i16 243, i16 8255, i16 8435, i16 237, i16 4609, i16 62, i16 3120, i16 10294, i16 11520, i16 5376, i16 3081, i16 57, i16 8448, i16 15, i16 10240, i16 8, i16 256, i16 4184, i16 8312, i16 216, i16 2190, i16 2136, i16 5312, i16 1166, i16 4208, i16 4096, i16 2576, i16 13824, i16 48, i16 4308, i16 4176, i16 220, i16 368, i16 1158, i16 80, i16 8328, i16 120, i16 28, i16 2064, i16 10260, i16 10432, i16 654, i16 2120, i16 2377, i16 4608, i16 9353, i16 3264, i16 0] }, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"ht16k33_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 824, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 828, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"ht16k33_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 809, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"ht16k33_i2c_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 803, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"dev_attr_map_seg7\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"dev_attr_map_seg14\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 162, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 163, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 722, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 740, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 745, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 496, i32 54 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 500, i32 25 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 511, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 525, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 533, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 538, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 541, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 544, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 553, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 565, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 574, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 385, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 603, i32 44 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"ht16k33_bl_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 335, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 607, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 633, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 636, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 641, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"ht16k33_fb_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 357, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"ht16k33_fb_fix\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 111, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"ht16k33_fb_var\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 122, i32 39 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 684, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"initial_map_seg7\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 138, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 691, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [18 x i8] c"initial_map_seg14\00", align 1
@___asan_gen_.230 = private constant [32 x i8] c"../drivers/auxdisplay/ht16k33.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 139, i32 14 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_ht16k33_driver_exit, ptr @__initcall__kmod_ht16k33__302_833_ht16k33_driver_init6, ptr @ht16k33_driver_exit, ptr @ht16k33_fbdev_probe._entry, ptr @ht16k33_fbdev_probe._entry.38, ptr @ht16k33_fbdev_probe._entry_ptr, ptr @ht16k33_fbdev_probe._entry_ptr.40, ptr @ht16k33_keypad_probe._entry, ptr @ht16k33_keypad_probe._entry.23, ptr @ht16k33_keypad_probe._entry.26, ptr @ht16k33_keypad_probe._entry.29, ptr @ht16k33_keypad_probe._entry_ptr, ptr @ht16k33_keypad_probe._entry_ptr.25, ptr @ht16k33_keypad_probe._entry_ptr.28, ptr @ht16k33_keypad_probe._entry_ptr.31, ptr @ht16k33_keypad_scan._entry, ptr @ht16k33_keypad_scan._entry_ptr, ptr @ht16k33_led_probe._entry, ptr @ht16k33_led_probe._entry_ptr, ptr @ht16k33_probe._entry, ptr @ht16k33_probe._entry.9, ptr @ht16k33_probe._entry_ptr, ptr @ht16k33_probe._entry_ptr.12, ptr @ht16k33_driver, ptr @.str, ptr @ht16k33_of_match, ptr @ht16k33_i2c_match, ptr @dev_attr_map_seg7, ptr @dev_attr_map_seg14, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ht16k33_keypad_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ht16k33_bl_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @ht16k33_fbdev_probe.__key, ptr @.str.41, ptr @ht16k33_fbdev_probe.__key.42, ptr @.str.43, ptr @ht16k33_fb_ops, ptr @ht16k33_fb_fix, ptr @ht16k33_fb_var, ptr @ht16k33_seg_probe.__key, ptr @ht16k33_seg_probe.__key.44, ptr @initial_map_seg7, ptr @ht16k33_seg_probe.__key.45, ptr @ht16k33_seg_probe.__key.46, ptr @initial_map_seg14], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_i2c_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_map_seg7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_map_seg14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_keypad_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fbdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fbdev_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fbdev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fbdev_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_fb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_seg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_seg_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_map_seg7 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_seg_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht16k33_seg_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_map_seg14 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ht16k33_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ht16k33_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4
  %work = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %type = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge12
  ]

entry.sw.bb3_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  tail call void @unregister_framebuffer(ptr noundef %7) #9
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  tail call void @framebuffer_release(ptr noundef %9) #9
  %buffer = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %11 to i32
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge12
  tail call void @linedisp_unregister(ptr noundef %2) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_map_seg7) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_map_seg14) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_probe(ptr noundef %client) #2 align 64 {
entry:
  %rows.i = alloca i32, align 4
  %cols.i = alloca i32, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  %data.i = alloca [16 x i8], align 1
  %dft_brightness = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dft_brightness) #9
  %0 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dft_brightness, align 4, !annotation !124
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1872, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 8
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_match_table, align 4
  %call7 = tail call ptr @i2c_of_match_device(ptr noundef %11, ptr noundef %client) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  %type = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %type, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #9
  %17 = call ptr @memset(ptr %data.i, i32 0, i32 16)
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %call.i73 = call i32 @i2c_smbus_write_block_data(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.ht16k33_initialize.exit.thread_crit_edge

if.end10.ht16k33_initialize.exit.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_initialize.exit.thread

if.end.i:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  %call3.i = call i32 @i2c_smbus_write_byte(ptr noundef %21, i8 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %ht16k33_initialize.exit, label %if.end.i.ht16k33_initialize.exit.thread_crit_edge

if.end.i.ht16k33_initialize.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_initialize.exit.thread

ht16k33_initialize.exit.thread:                   ; preds = %if.end.i.ht16k33_initialize.exit.thread_crit_edge, %if.end10.ht16k33_initialize.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.ht16k33_initialize.exit.thread_crit_edge ], [ %call.i73, %if.end10.ht16k33_initialize.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #9
  br label %cleanup

ht16k33_initialize.exit:                          ; preds = %if.end.i
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp sgt i32 %25, 0
  %spec.select.i = select i1 %cmp.i, i8 -93, i8 -94
  %call12.i = call i32 @i2c_smbus_write_byte(ptr noundef %23, i8 noundef zeroext %spec.select.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool12.not = icmp eq i32 %call12.i, 0
  br i1 %tobool12.not, label %if.end14, label %ht16k33_initialize.exit.cleanup_crit_edge

ht16k33_initialize.exit.cleanup_crit_edge:        ; preds = %ht16k33_initialize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %ht16k33_initialize.exit
  %call.i74 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %dft_brightness, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool16.not = icmp eq i32 %call.i74, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %dft_brightness, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end14
  %27 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dft_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp = icmp ugt i32 %28, 16
  br i1 %cmp, label %do.end21, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %28, i32 noundef 16) #12
  %29 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %dft_brightness, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.else.if.end23_crit_edge, %if.then17
  %30 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dft_brightness, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #9
  %32 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 12)
  %call.i75 = call ptr @device_get_named_child_node(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %34 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i75, ptr %init_data.i, align 4
  %tobool.not.i76 = icmp eq ptr %call.i75, null
  br i1 %tobool.not.i76, label %if.end23.if.end27_crit_edge, label %if.end.i79

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i79:                                       ; preds = %if.end23
  %led = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %35 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.14, ptr %devicename.i, align 4
  %devname_mandatory.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 3
  %36 = ptrtoint ptr %devname_mandatory.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %devname_mandatory.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2, i32 6
  %37 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ht16k33_brightness_set_blocking, ptr %brightness_set_blocking.i, align 4
  %blink_set.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2, i32 8
  %38 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ht16k33_blink_set, ptr %blink_set.i, align 4
  %flags.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %flags.i, align 4
  %brightness2.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %brightness2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %brightness2.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %max_brightness.i, align 4
  %call3.i77 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led, ptr noundef nonnull %init_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77)
  %tobool4.not.i78 = icmp eq i32 %call3.i77, 0
  br i1 %tobool4.not.i78, label %if.end.i79.if.end27_crit_edge, label %ht16k33_led_probe.exit

if.end.i79.if.end27_crit_edge:                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

ht16k33_led_probe.exit:                           ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end.i79.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp28 = icmp sgt i32 %43, 0
  br i1 %cmp28, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %keypad = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows.i) #9
  %44 = ptrtoint ptr %rows.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 12, ptr %rows.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols.i) #9
  %45 = ptrtoint ptr %cols.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %cols.i, align 4
  %46 = ptrtoint ptr %keypad to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %client, ptr %keypad, align 4
  %wait.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 7
  call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @ht16k33_keypad_probe.__key) #9
  %call.i81 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #9
  %dev3.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i81, ptr %dev3.i, align 4
  %tobool.not.i82 = icmp eq ptr %call.i81, null
  br i1 %tobool.not.i82, label %if.then29.ht16k33_keypad_probe.exit.thread_crit_edge, label %if.end.i84

if.then29.ht16k33_keypad_probe.exit.thread_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_keypad_probe.exit.thread

if.end.i84:                                       ; preds = %if.then29
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i81, i32 0, i32 40, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %keypad, ptr %driver_data.i.i.i, align 4
  %49 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev3.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.18, ptr %50, align 8
  %52 = load ptr, ptr %dev3.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 24, ptr %id.i, align 4
  %54 = load ptr, ptr %dev3.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 31
  %55 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ht16k33_keypad_start, ptr %open.i, align 8
  %56 = load ptr, ptr %dev3.i, align 4
  %close.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ht16k33_keypad_stop, ptr %close.i, align 4
  %call.i.i83 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br i1 %call.i.i83, label %if.end.i84.if.end13.i_crit_edge, label %if.then11.i

if.end.i84.if.end13.i_crit_edge:                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev3.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %61, 1048576
  store i32 %or.i.i, ptr %evbit.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i84.if.end13.i_crit_edge
  %debounce_ms.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 5
  %call.i93.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %debounce_ms.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool15.not.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool15.not.i, label %if.end20.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  br label %ht16k33_keypad_probe.exit.thread

if.end20.i:                                       ; preds = %if.end13.i
  %call21.i = call i32 @matrix_keypad_parse_properties(ptr noundef %dev1, ptr noundef nonnull %rows.i, ptr noundef nonnull %cols.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.ht16k33_keypad_probe.exit.thread_crit_edge

if.end20.i.ht16k33_keypad_probe.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_keypad_probe.exit.thread

if.end24.i:                                       ; preds = %if.end20.i
  %62 = ptrtoint ptr %rows.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %63)
  %cmp.i85 = icmp ugt i32 %63, 12
  br i1 %cmp.i85, label %if.end24.i.do.end29.i_crit_edge, label %lor.lhs.false.i

if.end24.i.do.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %64 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp25.i = icmp ugt i32 %65, 3
  br i1 %cmp25.i, label %lor.lhs.false.i.do.end29.i_crit_edge, label %if.end30.i

lor.lhs.false.i.do.end29.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29.i

do.end29.i:                                       ; preds = %lor.lhs.false.i.do.end29.i_crit_edge, %if.end24.i.do.end29.i_crit_edge
  %66 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cols.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %63, i32 noundef %67) #12
  br label %ht16k33_keypad_probe.exit.thread

if.end30.i:                                       ; preds = %lor.lhs.false.i
  %rows31.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 3
  %68 = ptrtoint ptr %rows31.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %rows31.i, align 4
  %cols32.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 2
  %69 = ptrtoint ptr %cols32.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %cols32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i = icmp eq i32 %65, 0
  br i1 %cmp.i.i, label %if.end30.i.get_count_order.exit.i_crit_edge, label %if.end.i.i

if.end30.i.get_count_order.exit.i_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit.i

if.end.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i.i = add nsw i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %70 = call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #9, !range !125
  %sub.i.i.i = sub nuw nsw i32 32, %70
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %get_count_order.exit.i

get_count_order.exit.i:                           ; preds = %if.end.i.i, %if.end30.i.get_count_order.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i.i, %if.end.i.i ], [ -1, %if.end30.i.get_count_order.exit.i_crit_edge ]
  %row_shift.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 3, i32 4
  %71 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i.i, ptr %row_shift.i, align 4
  %72 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev3.i, align 4
  %call35.i = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %63, i32 noundef %65, ptr noundef null, ptr noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end41.i, label %do.end40.i

do.end40.i:                                       ; preds = %get_count_order.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #12
  br label %ht16k33_keypad_probe.exit.thread

if.end41.i:                                       ; preds = %get_count_order.exit.i
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %call42.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %75, ptr noundef null, ptr noundef nonnull @ht16k33_keypad_irq_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef %keypad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %ht16k33_keypad_probe.exit, label %do.end47.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %77, i32 noundef %call42.i) #12
  br label %ht16k33_keypad_probe.exit.thread

ht16k33_keypad_probe.exit.thread:                 ; preds = %do.end47.i, %do.end40.i, %do.end29.i, %if.end20.i.ht16k33_keypad_probe.exit.thread_crit_edge, %do.end19.i, %if.then29.ht16k33_keypad_probe.exit.thread_crit_edge
  %retval.0.i87.ph = phi i32 [ %call21.i, %if.end20.i.ht16k33_keypad_probe.exit.thread_crit_edge ], [ -12, %if.then29.ht16k33_keypad_probe.exit.thread_crit_edge ], [ %call42.i, %do.end47.i ], [ %call35.i, %do.end40.i ], [ -34, %do.end29.i ], [ %call.i93.i, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i) #9
  br label %cleanup

ht16k33_keypad_probe.exit:                        ; preds = %if.end41.i
  %78 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev3.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %79, i32 0, i32 40, i32 8
  %80 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %stopped.i.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %stopped.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  call void @arm_heavy_mb() #9
  %wait.i.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %81, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %81, align 4
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq.i.i, align 4
  call void @disable_irq(i32 noundef %86) #9
  %87 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev3.i, align 4
  %call52.i = call i32 @input_register_device(ptr noundef %88) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool31.not = icmp eq i32 %call52.i, 0
  br i1 %tobool31.not, label %ht16k33_keypad_probe.exit.if.end34_crit_edge, label %ht16k33_keypad_probe.exit.cleanup_crit_edge

ht16k33_keypad_probe.exit.cleanup_crit_edge:      ; preds = %ht16k33_keypad_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ht16k33_keypad_probe.exit.if.end34_crit_edge:     ; preds = %ht16k33_keypad_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %ht16k33_keypad_probe.exit.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %type35 = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 5
  %89 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type35, align 8
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %90, label %if.end34.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end34.sw.bb37_crit_edge
    i32 2, label %if.end34.sw.bb37_crit_edge100
  ]

if.end34.sw.bb37_crit_edge100:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

if.end34.sw.bb37_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dft_brightness, align 4
  %call36 = call fastcc i32 @ht16k33_fbdev_probe(ptr noundef %dev1, ptr noundef nonnull %call.i, i32 noundef %93)
  br label %cleanup

sw.bb37:                                          ; preds = %if.end34.sw.bb37_crit_edge, %if.end34.sw.bb37_crit_edge100
  %94 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dft_brightness, align 4
  %96 = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i88 = icmp eq i32 %95, 0
  %blink.i.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 6
  br i1 %cmp.i.i88, label %if.then.i.i, label %if.end.i.i89

if.then.i.i:                                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %blink.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %blink.i.i, align 4
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 8
  %call.i.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %99, i8 noundef zeroext -128) #9
  br label %ht16k33_brightness_set.exit.i

if.end.i.i89:                                     ; preds = %sw.bb37
  %100 = ptrtoint ptr %blink.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %blink.i.i, align 4
  %102 = or i8 %101, -127
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 8
  %call.i10.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %104, i8 noundef zeroext %102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i89.cleanup_crit_edge

if.end.i.i89.cleanup_crit_edge:                   ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 8
  %107 = trunc i32 %95 to i8
  %108 = add i8 %107, 31
  %conv.i.i = or i8 %108, -32
  %call4.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %106, i8 noundef zeroext %conv.i.i) #9
  br label %ht16k33_brightness_set.exit.i

ht16k33_brightness_set.exit.i:                    ; preds = %if.end3.i.i, %if.then.i.i
  %retval.0.i.i90 = phi i32 [ %call.i.i.i, %if.then.i.i ], [ %call4.i.i, %if.end3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i90)
  %tobool.not.i91 = icmp eq i32 %retval.0.i.i90, 0
  br i1 %tobool.not.i91, label %if.end.i92, label %ht16k33_brightness_set.exit.i.cleanup_crit_edge

ht16k33_brightness_set.exit.i.cleanup_crit_edge:  ; preds = %ht16k33_brightness_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i92:                                       ; preds = %ht16k33_brightness_set.exit.i
  %109 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %type35, align 8
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %110, label %if.end.i92.if.end53.i_crit_edge [
    i32 0, label %if.end.i92.cleanup_crit_edge
    i32 1, label %do.body2.i
    i32 2, label %do.body22.i
  ]

if.end.i92.cleanup_crit_edge:                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i92.if.end53.i_crit_edge:                  ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

do.body2.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  %work.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %112 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @ht16k33_seg_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %entry10.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %115 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @ht16k33_seg7_update, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @ht16k33_seg_probe.__key.44) #9
  %map.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %116 = call ptr @memcpy(ptr %map.i, ptr @initial_map_seg7, i32 128)
  br label %sw.epilog.i

do.body22.i:                                      ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  %work23.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1
  call void @__init_work(ptr noundef %work23.i, i32 noundef 0) #9
  %117 = ptrtoint ptr %work23.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -64, ptr %work23.i, align 4
  %lockdep_map32.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map32.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @ht16k33_seg_probe.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry35.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i87.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %prev.i87.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %entry35.i, ptr %prev.i87.i, align 4
  %func38.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %120 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @ht16k33_seg14_update, ptr %func38.i, align 4
  %timer43.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer43.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @ht16k33_seg_probe.__key.46) #9
  %map48.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %121 = call ptr @memcpy(ptr %map48.i, ptr @initial_map_seg14, i32 256)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body22.i, %do.body2.i
  %.sink.i = phi i32 [ 256, %do.body22.i ], [ 128, %do.body2.i ]
  %dev_attr_map_seg14.sink.i = phi ptr [ @dev_attr_map_seg14, %do.body22.i ], [ @dev_attr_map_seg7, %do.body2.i ]
  %map_size49.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %122 = ptrtoint ptr %map_size49.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink.i, ptr %map_size49.i, align 8
  %call50.i = call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull %dev_attr_map_seg14.sink.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %sw.epilog.i.if.end53.i_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.i.if.end53.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.end53.i:                                       ; preds = %sw.epilog.i.if.end53.i_crit_edge, %if.end.i92.if.end53.i_crit_edge
  %curr.i = getelementptr inbounds %struct.ht16k33_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %call54.i = call i32 @linedisp_register(ptr noundef %96, ptr noundef %dev1, i32 noundef 4, ptr noundef %curr.i, ptr noundef nonnull @ht16k33_linedisp_update) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.cleanup_crit_edge, label %err_remove_map_file.i

if.end53.i.cleanup_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_remove_map_file.i:                            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_map_seg7) #9
  call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_map_seg14) #9
  br label %cleanup

cleanup:                                          ; preds = %err_remove_map_file.i, %if.end53.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end.i92.cleanup_crit_edge, %ht16k33_brightness_set.exit.i.cleanup_crit_edge, %if.end.i.i89.cleanup_crit_edge, %sw.bb, %if.end34.cleanup_crit_edge, %ht16k33_keypad_probe.exit.cleanup_crit_edge, %ht16k33_keypad_probe.exit.thread, %ht16k33_led_probe.exit, %ht16k33_initialize.exit.cleanup_crit_edge, %ht16k33_initialize.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12.i, %ht16k33_initialize.exit.cleanup_crit_edge ], [ %call3.i77, %ht16k33_led_probe.exit ], [ %call52.i, %ht16k33_keypad_probe.exit.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ %call36, %sw.bb ], [ %retval.0.i.ph, %ht16k33_initialize.exit.thread ], [ %retval.0.i87.ph, %ht16k33_keypad_probe.exit.thread ], [ %call54.i, %err_remove_map_file.i ], [ %retval.0.i.i90, %ht16k33_brightness_set.exit.i.cleanup_crit_edge ], [ %call50.i, %sw.epilog.i.cleanup_crit_edge ], [ 0, %if.end53.i.cleanup_crit_edge ], [ %call.i10.i.i, %if.end.i.i89.cleanup_crit_edge ], [ -22, %if.end.i92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dft_brightness) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linedisp_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @map_seg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %map = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 1
  %map_size = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_size, align 8
  %4 = call ptr @memcpy(ptr %buf, ptr %map, i32 %3)
  %5 = load i32, ptr %map_size, align 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @map_seg_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %cnt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %map_size = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cnt)
  %cmp.not = icmp eq i32 %3, %cnt
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %map = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %map, ptr %buf, i32 %cnt)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ht16k33_fbdev_probe(ptr noundef %dev, ptr noundef %priv, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  %bl_props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 4
  %dev1 = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 2, i32 11
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.i = icmp eq i32 %brightness, 0
  %blink.i = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 6
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %blink.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %blink.i, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext -128) #9
  br label %ht16k33_brightness_set.exit

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %blink.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blink.i, align 4
  %8 = or i8 %7, -127
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %call.i10.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %10, i8 noundef zeroext %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cleanup75_crit_edge

if.end.i.cleanup75_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %13 = trunc i32 %brightness to i8
  %14 = add i8 %13, 31
  %conv.i = or i8 %14, -32
  %call4.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext %conv.i) #9
  br label %ht16k33_brightness_set.exit

ht16k33_brightness_set.exit:                      ; preds = %if.end3.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call4.i, %if.end3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %ht16k33_brightness_set.exit.do.end14_crit_edge, label %ht16k33_brightness_set.exit.cleanup75_crit_edge

ht16k33_brightness_set.exit.cleanup75_crit_edge:  ; preds = %ht16k33_brightness_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

ht16k33_brightness_set.exit.do.end14_crit_edge:   ; preds = %ht16k33_brightness_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #9
  %15 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 1
  %16 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 4
  %17 = call ptr @memset(ptr %bl_props, i32 0, i32 28)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %16, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %15, align 4
  %call4 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %dev, ptr noundef %priv, ptr noundef nonnull @ht16k33_bl_ops, ptr noundef nonnull %bl_props) #9
  %cmp.i124 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.else
  %20 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %brightness, ptr %call4, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call4, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %call4, i32 0, i32 2
  %23 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end8.if.end.thread.i_crit_edge

if.end8.if.end.thread.i_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

lor.lhs.false.i:                                  ; preds = %if.end8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %call4, i32 0, i32 3
  %25 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fb_blank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4.not.i = icmp eq i32 %26, 0
  br i1 %cmp4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.end.thread.i_crit_edge

lor.lhs.false.i.if.end.thread.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %call4, i32 0, i32 5
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i125 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i125, label %if.end.i126, label %lor.lhs.false5.i.if.end.thread.i_crit_edge

lor.lhs.false5.i.if.end.thread.i_crit_edge:       ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %lor.lhs.false5.i.if.end.thread.i_crit_edge, %lor.lhs.false.i.if.end.thread.i_crit_edge, %if.end8.if.end.thread.i_crit_edge
  %blink.i14.i = getelementptr inbounds %struct.ht16k33_priv, ptr %22, i32 0, i32 6
  br label %if.then.i.i

if.end.i126:                                      ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.i.i = icmp eq i32 %brightness, 0
  %blink.i.i = getelementptr inbounds %struct.ht16k33_priv, ptr %22, i32 0, i32 6
  br i1 %cmp.i.i, label %if.end.i126.if.then.i.i_crit_edge, label %if.end.i.i

if.end.i126.if.then.i.i_crit_edge:                ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i126.if.then.i.i_crit_edge, %if.end.thread.i
  %blink.i15.i = phi ptr [ %blink.i14.i, %if.end.thread.i ], [ %blink.i.i, %if.end.i126.if.then.i.i_crit_edge ]
  %29 = ptrtoint ptr %blink.i15.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %blink.i15.i, align 4
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %22, align 8
  %call.i.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %31, i8 noundef zeroext -128) #9
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.end.i126
  %32 = ptrtoint ptr %blink.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %blink.i.i, align 4
  %34 = or i8 %33, -127
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %22, align 8
  %call.i10.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %36, i8 noundef zeroext %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %22, align 8
  %39 = trunc i32 %brightness to i8
  %40 = add i8 %39, 31
  %conv.i.i = or i8 %40, -32
  %call4.i.i = call i32 @i2c_smbus_write_byte(ptr noundef %38, i8 noundef zeroext %conv.i.i) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end3.i.i, %if.end.i.i.cleanup.thread_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #9
  br label %do.end14

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  %41 = ptrtoint ptr %call4 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #9
  br label %cleanup75

do.end14:                                         ; preds = %cleanup.thread, %ht16k33_brightness_set.exit.do.end14_crit_edge
  %bl.0 = phi ptr [ null, %ht16k33_brightness_set.exit.do.end14_crit_edge ], [ %call4, %cleanup.thread ]
  %call15 = call i32 @get_zeroed_page(i32 noundef 3264) #9
  %42 = inttoptr i32 %call15 to ptr
  %buffer = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %do.end14.cleanup75_crit_edge, label %if.end19

do.end14.cleanup75_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

if.end19:                                         ; preds = %do.end14
  %call20 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3264) #9
  %cache = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call20, ptr %cache, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end19.err_fbdev_buffer_crit_edge, label %if.end24

if.end19.err_fbdev_buffer_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fbdev_buffer

if.end24:                                         ; preds = %if.end19
  %call25 = call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %dev) #9
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call25, ptr %0, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.err_fbdev_buffer_crit_edge, label %if.end29

if.end24.err_fbdev_buffer_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fbdev_buffer

if.end29:                                         ; preds = %if.end24
  %refresh_rate = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %refresh_rate, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %err_fbdev_info

if.end36:                                         ; preds = %if.end29
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  call void @fb_bl_default_curve(ptr noundef %47, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 16) #9
  %work = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %48 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.41, ptr noundef nonnull @ht16k33_fbdev_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry47 = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry47, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ht16k33_fb_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ht16k33_priv, ptr %priv, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @ht16k33_fbdev_probe.__key.42) #9
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %53, i32 0, i32 20
  %54 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ht16k33_fb_ops, ptr %fbops, align 4
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  %57 = load ptr, ptr %0, align 4
  %58 = getelementptr inbounds %struct.fb_info, ptr %57, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %58, align 4
  %60 = load ptr, ptr %0, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %60, i32 0, i32 26
  %61 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16, ptr %screen_size, align 4
  %62 = load ptr, ptr %0, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %62, i32 0, i32 7
  %63 = call ptr @memcpy(ptr %fix, ptr @ht16k33_fb_fix, i32 68)
  %64 = load ptr, ptr %0, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %64, i32 0, i32 6
  %65 = call ptr @memcpy(ptr %var, ptr @ht16k33_fb_var, i32 160)
  %66 = load ptr, ptr %0, align 4
  %bl_dev = getelementptr inbounds %struct.fb_info, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %bl.0, ptr %bl_dev, align 4
  %68 = load ptr, ptr %0, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %68, i32 0, i32 27
  %69 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pseudo_palette, align 4
  %70 = load ptr, ptr %0, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %flags, align 4
  %72 = load ptr, ptr %0, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %72, i32 0, i32 30
  %73 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %priv, ptr %par, align 4
  %74 = load ptr, ptr %0, align 4
  %call69 = call i32 @register_framebuffer(ptr noundef %74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end36.err_fbdev_info_crit_edge

if.end36.err_fbdev_info_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fbdev_info

if.end72:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %refresh_rate, align 4
  %div.i = udiv i32 100, %76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i.i127 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %work, i32 noundef %div.i) #9
  br label %cleanup75

err_fbdev_info:                                   ; preds = %if.end36.err_fbdev_info_crit_edge, %do.end35
  %err.0 = phi i32 [ %call.i, %do.end35 ], [ %call69, %if.end36.err_fbdev_info_crit_edge ]
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %0, align 4
  call void @framebuffer_release(ptr noundef %79) #9
  br label %err_fbdev_buffer

err_fbdev_buffer:                                 ; preds = %err_fbdev_info, %if.end24.err_fbdev_buffer_crit_edge, %if.end19.err_fbdev_buffer_crit_edge
  %err.1 = phi i32 [ %err.0, %err_fbdev_info ], [ -12, %if.end19.err_fbdev_buffer_crit_edge ], [ -12, %if.end24.err_fbdev_buffer_crit_edge ]
  %80 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @free_pages(i32 noundef %82, i32 noundef 0) #9
  br label %cleanup75

cleanup75:                                        ; preds = %err_fbdev_buffer, %if.end72, %do.end14.cleanup75_crit_edge, %cleanup, %ht16k33_brightness_set.exit.cleanup75_crit_edge, %if.end.i.cleanup75_crit_edge
  %retval.1 = phi i32 [ %err.1, %err_fbdev_buffer ], [ 0, %if.end72 ], [ %41, %cleanup ], [ %retval.0.i, %ht16k33_brightness_set.exit.cleanup75_crit_edge ], [ -12, %do.end14.cleanup75_crit_edge ], [ %call.i10.i, %if.end.i.cleanup75_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_brightness_set_blocking(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp.i = icmp eq i32 %brightness, 0
  %blink.i = getelementptr i8, ptr %led_cdev, i32 1764
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %blink.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %blink.i, align 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext -128) #9
  br label %ht16k33_brightness_set.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %blink.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %blink.i, align 4
  %5 = or i8 %4, -127
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %call.i10.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %7, i8 noundef zeroext %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.ht16k33_brightness_set.exit_crit_edge

if.end.i.ht16k33_brightness_set.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_brightness_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %10 = trunc i32 %brightness to i8
  %11 = add i8 %10, 31
  %conv.i = or i8 %11, -32
  %call4.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %9, i8 noundef zeroext %conv.i) #9
  br label %ht16k33_brightness_set.exit

ht16k33_brightness_set.exit:                      ; preds = %if.end3.i, %if.end.i.ht16k33_brightness_set.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call4.i, %if.end3.i ], [ %call.i10.i, %if.end.i.ht16k33_brightness_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_blink_set(ptr nocapture noundef %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -104
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool1.not, i32 1000, i32 500
  %spec.select26 = select i1 %tobool1.not, i8 4, i8 2
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 751, i32 %1)
  %cmp = icmp ult i32 %1, 751
  br i1 %cmp, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %1)
  %cmp4 = icmp ult i32 %1, 1501
  %. = select i1 %cmp4, i32 1000, i32 2000
  %.24 = select i1 %cmp4, i8 4, i8 6
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %land.lhs.true
  %delay.0 = phi i32 [ 500, %if.else.if.end8_crit_edge ], [ %., %if.else3 ], [ %spec.select, %land.lhs.true ]
  %blink.0 = phi i8 [ 2, %if.else.if.end8_crit_edge ], [ %.24, %if.else3 ], [ %spec.select26, %land.lhs.true ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = or i8 %blink.0, -127
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %blink13 = getelementptr i8, ptr %led_cdev, i32 1764
  %7 = ptrtoint ptr %blink13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %blink.0, ptr %blink13, align 4
  %8 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %delay.0, ptr %delay_off, align 4
  %9 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %delay.0, ptr %delay_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_keypad_start(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.ht16k33_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_keypad_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.ht16k33_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %wait = getelementptr inbounds %struct.ht16k33_keypad, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_keypad_irq_thread(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %new_state.i = alloca [3 x i16], align 2
  %data.i = alloca [3 x i16], align 2
  %bits_changed.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debounce_ms = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 5
  %stopped = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 8
  %wait = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 1
  %0 = getelementptr inbounds [3 x i16], ptr %new_state.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i16], ptr %new_state.i, i32 0, i32 2
  %2 = getelementptr inbounds [3 x i16], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i16], ptr %data.i, i32 0, i32 2
  %cols.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 2
  %row_shift.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 4
  %last_key_state28.i = getelementptr inbounds %struct.ht16k33_keypad, ptr %dev, i32 0, i32 6
  br label %if.else.i

if.else.i:                                        ; preds = %ht16k33_keypad_scan.exit.if.else.i_crit_edge, %entry
  %4 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debounce_ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %5) #9
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 415) #9
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not76 = icmp eq i32 %call2.i, 0
  %tobool8.not = select i1 %tobool.not, i1 %tobool8.not76, i1 false
  %not.tobool.not = xor i1 %tobool.not, true
  %8 = select i1 %not.tobool.not, i1 true, i1 %tobool8.not
  br i1 %8, label %if.else.i.if.end37_crit_edge, label %if.then10

if.else.i.if.end37_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then10:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %10 = ptrtoint ptr %debounce_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debounce_ms, align 4
  %call2.i67 = call i32 @__msecs_to_jiffies(i32 noundef %11) #9
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call1479 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %12 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not80 = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %tobool21.not81 = icmp eq i32 %call2.i67, 0
  %spec.select = select i1 %tobool21.not81, i32 1, i32 %call2.i67
  %__ret11.183 = select i1 %tobool17.not80, i32 %call2.i67, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.183)
  %tobool27.not84 = icmp eq i32 %__ret11.183, 0
  %not.tobool17.not85 = xor i1 %tobool17.not80, true
  %14 = select i1 %not.tobool17.not85, i1 true, i1 %tobool27.not84
  br i1 %14, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.186 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ %__ret11.183, %if.then10.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret11.186) #9
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %15 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %spec.store.select47 = select i1 %tobool21.not, i32 1, i32 %call34
  %__ret11.1 = select i1 %tobool17.not, i32 %call34, i32 %spec.store.select47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool27.not = icmp eq i32 %__ret11.1, 0
  %not.tobool17.not = xor i1 %tobool17.not, true
  %17 = select i1 %not.tobool17.not, i1 true, i1 %tobool27.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.else.i.if.end37_crit_edge
  %18 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool40.not, label %do.cond43, label %if.end37.do.end45_crit_edge

if.end37.do.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.cond43:                                        ; preds = %if.end37
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %keycode.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %new_state.i) #9
  %24 = ptrtoint ptr %new_state.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %new_state.i, align 2, !annotation !124
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %0, align 2, !annotation !124
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %1, align 2, !annotation !124
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i) #9
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %data.i, align 2, !annotation !124
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %2, align 2, !annotation !124
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %3, align 2, !annotation !124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits_changed.i) #9
  %30 = ptrtoint ptr %bits_changed.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %bits_changed.i, align 4, !annotation !124
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %32, i8 noundef zeroext 64, i8 noundef zeroext 6, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 6
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %ht16k33_keypad_scan.exit.thread

for.cond.preheader.i:                             ; preds = %do.cond43
  %33 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp368.not.i = icmp eq i32 %34, 0
  br i1 %cmp368.not.i, label %do.end45.critedge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

ht16k33_keypad_scan.exit.thread:                  ; preds = %do.cond43
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.32, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits_changed.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %new_state.i) #9
  br label %do.end45

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pressed.0.off071.i = phi i1 [ %spec.select.i, %for.inc25.i.for.body.i_crit_edge ], [ false, %for.cond.preheader.i.for.body.i_crit_edge ]
  %col.069.i = phi i32 [ %inc.i, %for.inc25.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x i16], ptr %data.i, i32 0, i32 %col.069.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  %arrayidx4.i = getelementptr [3 x i16], ptr %new_state.i, i32 0, i32 %col.069.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp ne i16 %38, 0
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %pressed.0.off071.i
  %arrayidx8.i = getelementptr %struct.ht16k33_keypad, ptr %dev, i32 0, i32 6, i32 %col.069.i
  %41 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx8.i, align 2
  %xor65.i = xor i16 %42, %39
  %xor.i = zext i16 %xor65.i to i32
  %43 = ptrtoint ptr %bits_changed.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %xor.i, ptr %bits_changed.i, align 4
  %call11.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits_changed.i, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call11.i)
  %cmp1366.i = icmp slt i32 %call11.i, 32
  br i1 %cmp1366.i, label %for.body15.lr.ph.i, label %for.body.i.for.inc25.i_crit_edge

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25.i

for.body15.lr.ph.i:                               ; preds = %for.body.i
  %conv21.i = zext i16 %39 to i32
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %row.067.i = phi i32 [ %call11.i, %for.body15.lr.ph.i ], [ %call24.i, %for.body15.i.for.body15.i_crit_edge ]
  %44 = ptrtoint ptr %row_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %row_shift.i, align 4
  %shl.i = shl i32 %row.067.i, %45
  %add.i = add i32 %shl.i, %col.069.i
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  call void @input_event(ptr noundef %47, i32 noundef 4, i32 noundef 4, i32 noundef %add.i) #9
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %arrayidx18.i = getelementptr i16, ptr %23, i32 %add.i
  %50 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %51 to i32
  %52 = lshr i32 %conv21.i, %row.067.i
  %53 = and i32 %52, 1
  call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef %conv19.i, i32 noundef %53) #9
  %add23.i = add nsw i32 %row.067.i, 1
  %call24.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits_changed.i, i32 noundef 32, i32 noundef %add23.i) #9
  %cmp13.i = icmp slt i32 %call24.i, 32
  br i1 %cmp13.i, label %for.body15.i.for.body15.i_crit_edge, label %for.body15.i.for.inc25.i_crit_edge

for.body15.i.for.inc25.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25.i

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

for.inc25.i:                                      ; preds = %for.body15.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %inc.i = add nuw i32 %col.069.i, 1
  %54 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cols.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %55
  br i1 %cmp3.i, label %for.inc25.i.for.body.i_crit_edge, label %ht16k33_keypad_scan.exit

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ht16k33_keypad_scan.exit:                         ; preds = %for.inc25.i
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  call void @input_event(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %58 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cols.i, align 4
  %mul.i = shl i32 %59, 1
  %60 = call ptr @memcpy(ptr %last_key_state28.i, ptr %new_state.i, i32 %mul.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits_changed.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %new_state.i) #9
  br i1 %spec.select.i, label %ht16k33_keypad_scan.exit.if.else.i_crit_edge, label %ht16k33_keypad_scan.exit.do.end45_crit_edge

ht16k33_keypad_scan.exit.do.end45_crit_edge:      ; preds = %ht16k33_keypad_scan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

ht16k33_keypad_scan.exit.if.else.i_crit_edge:     ; preds = %ht16k33_keypad_scan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

do.end45.critedge:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  call void @input_event(ptr noundef %62, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %63 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cols.i, align 4
  %mul.i.c = shl i32 %64, 1
  %65 = call ptr @memcpy(ptr %last_key_state28.i, ptr %new_state.i, i32 %mul.i.c)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits_changed.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %new_state.i) #9
  br label %do.end45

do.end45:                                         ; preds = %do.end45.critedge, %ht16k33_keypad_scan.exit.do.end45_crit_edge, %ht16k33_keypad_scan.exit.thread, %if.end37.do.end45_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bl, align 8
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %entry
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.if.end.thread_crit_edge

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false5.if.end.thread_crit_edge

lor.lhs.false5.if.end.thread_crit_edge:           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false5.if.end.thread_crit_edge, %lor.lhs.false.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %blink.i14 = getelementptr inbounds %struct.ht16k33_priv, ptr %3, i32 0, i32 6
  br label %if.then.i

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %blink.i = getelementptr inbounds %struct.ht16k33_priv, ptr %3, i32 0, i32 6
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %if.end.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.thread
  %blink.i15 = phi ptr [ %blink.i14, %if.end.thread ], [ %blink.i, %if.end.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %blink.i15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %blink.i15, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext -128) #9
  br label %ht16k33_brightness_set.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %blink.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %blink.i, align 4
  %15 = or i8 %14, -127
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %call.i10.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %17, i8 noundef zeroext %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.ht16k33_brightness_set.exit_crit_edge

if.end.i.ht16k33_brightness_set.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ht16k33_brightness_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %20 = trunc i32 %1 to i8
  %21 = add i8 %20, 31
  %conv.i = or i8 %21, -32
  %call4.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %19, i8 noundef zeroext %conv.i) #9
  br label %ht16k33_brightness_set.exit

ht16k33_brightness_set.exit:                      ; preds = %if.end3.i, %if.end.i.ht16k33_brightness_set.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call4.i, %if.end3.i ], [ %call.i10.i, %if.end.i.ht16k33_brightness_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_bl_default_curve(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_fb_update(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr i8, ptr %work, i32 600
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %buffer = getelementptr i8, ptr %work, i32 596
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %first.062 = phi i32 [ -1, %entry ], [ %spec.select, %while.body.while.body_crit_edge ]
  %pos.061 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.body_crit_edge ]
  %p2.060 = phi ptr [ %3, %entry ], [ %incdec.ptr2, %while.body.while.body_crit_edge ]
  %p1.059 = phi ptr [ %1, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p1.059, i32 1
  %4 = ptrtoint ptr %p1.059 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p1.059, align 1
  %incdec.ptr2 = getelementptr i8, ptr %p2.060, i32 1
  %6 = ptrtoint ptr %p2.060 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2.060, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %tobool.not = icmp eq i8 %5, %7
  %spec.select = select i1 %tobool.not, i32 %first.062, i32 %pos.061
  %inc = add nuw nsw i32 %pos.061, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pos.061)
  %cmp = icmp ult i32 %pos.061, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp1 = icmp slt i32 %spec.select, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  br i1 %cmp1, label %while.end.requeue_crit_edge, label %if.end7

while.end.requeue_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %requeue

if.end7:                                          ; preds = %while.end
  %sub8 = sub nuw nsw i32 16, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select)
  %cmp1663 = icmp ult i32 %spec.select, 15
  br i1 %cmp1663, label %while.body18.preheader, label %if.end7.while.end27_crit_edge

if.end7.while.end27_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end27

while.body18.preheader:                           ; preds = %if.end7
  %add.ptr14 = getelementptr i8, ptr %3, i32 15
  %add.ptr11 = getelementptr i8, ptr %1, i32 15
  %smin = call i32 @llvm.smin.i32(i32 %sub8, i32 2)
  %8 = add nsw i32 %smin, -1
  br label %while.body18

while.body18:                                     ; preds = %if.end26.while.body18_crit_edge, %while.body18.preheader
  %len.066 = phi i32 [ %dec, %if.end26.while.body18_crit_edge ], [ %sub8, %while.body18.preheader ]
  %p2.165 = phi ptr [ %incdec.ptr21, %if.end26.while.body18_crit_edge ], [ %add.ptr14, %while.body18.preheader ]
  %p1.164 = phi ptr [ %incdec.ptr19, %if.end26.while.body18_crit_edge ], [ %add.ptr11, %while.body18.preheader ]
  %9 = ptrtoint ptr %p1.164 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p1.164, align 1
  %11 = ptrtoint ptr %p2.165 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p2.165, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %tobool24.not = icmp eq i8 %10, %12
  br i1 %tobool24.not, label %if.end26, label %while.body18.while.end27_crit_edge

while.body18.while.end27_crit_edge:               ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end27

if.end26:                                         ; preds = %while.body18
  %incdec.ptr21 = getelementptr i8, ptr %p2.165, i32 -1
  %incdec.ptr19 = getelementptr i8, ptr %p1.164, i32 -1
  %dec = add nsw i32 %len.066, -1
  %cmp16 = icmp sgt i32 %len.066, 2
  br i1 %cmp16, label %if.end26.while.body18_crit_edge, label %if.end26.while.end27_crit_edge

if.end26.while.end27_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end27

if.end26.while.body18_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body18

while.end27:                                      ; preds = %if.end26.while.end27_crit_edge, %while.body18.while.end27_crit_edge, %if.end7.while.end27_crit_edge
  %len.0.lcssa = phi i32 [ %sub8, %if.end7.while.end27_crit_edge ], [ %len.066, %while.body18.while.end27_crit_edge ], [ %8, %if.end26.while.end27_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %3, i32 %spec.select
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %conv32 = trunc i32 %spec.select to i8
  %conv33 = trunc i32 %len.0.lcssa to i8
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %14, i8 noundef zeroext %conv32, i8 noundef zeroext %conv33, ptr noundef %add.ptr31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool34.not = icmp eq i32 %call, 0
  br i1 %tobool34.not, label %if.then35, label %while.end27.requeue_crit_edge

while.end27.requeue_crit_edge:                    ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %requeue

if.then35:                                        ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr29 = getelementptr i8, ptr %1, i32 %spec.select
  %15 = call ptr @memcpy(ptr %add.ptr29, ptr %add.ptr31, i32 %len.0.lcssa)
  br label %requeue

requeue:                                          ; preds = %if.then35, %while.end27.requeue_crit_edge, %while.end.requeue_crit_edge
  %refresh_rate.i = getelementptr i8, ptr %work, i32 592
  %16 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refresh_rate.i, align 4
  %div.i = udiv i32 100, %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work, i32 noundef %div.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ht16k33_bl_check_fb(ptr nocapture noundef readonly %bl, ptr noundef readonly %fi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fi, null
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %fi, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %cmp1 = icmp eq ptr %3, %1
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ht16k33_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ht16k33_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #2 align 64 {
entry:
  %pages = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %buffer = getelementptr inbounds %struct.ht16k33_priv, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 8
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %shr
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %pages, align 4
  %call = call i32 @vm_map_pages_zero(ptr noundef %vma, ptr noundef nonnull %pages, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages_zero(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_seg7_update(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr i8, ptr %work, i32 1856
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %map = getelementptr i8, ptr %work, i32 1596
  %incdec.ptr = getelementptr i8, ptr %work, i32 1857
  %7 = ptrtoint ptr %curr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %curr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp1.i = icmp sgt i8 %8, -1
  br i1 %cmp1.i, label %cond.true.i, label %entry.map_to_seg7.exit_crit_edge

entry.map_to_seg7.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg7.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %8 to i32
  %arrayidx.i = getelementptr [128 x i8], ptr %map, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  br label %map_to_seg7.exit

map_to_seg7.exit:                                 ; preds = %cond.true.i, %entry.map_to_seg7.exit_crit_edge
  %cond.i = phi i8 [ %10, %cond.true.i ], [ -22, %entry.map_to_seg7.exit_crit_edge ]
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cond.i, ptr %buf, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %0, align 1
  %incdec.ptr4 = getelementptr i8, ptr %work, i32 1858
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp1.i35 = icmp sgt i8 %14, -1
  br i1 %cmp1.i35, label %cond.true.i38, label %map_to_seg7.exit.map_to_seg7.exit40_crit_edge

map_to_seg7.exit.map_to_seg7.exit40_crit_edge:    ; preds = %map_to_seg7.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg7.exit40

cond.true.i38:                                    ; preds = %map_to_seg7.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i8 %14 to i32
  %arrayidx.i36 = getelementptr [128 x i8], ptr %map, i32 0, i32 %conv5
  %15 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i36, align 1
  br label %map_to_seg7.exit40

map_to_seg7.exit40:                               ; preds = %cond.true.i38, %map_to_seg7.exit.map_to_seg7.exit40_crit_edge
  %cond.i39 = phi i8 [ %16, %cond.true.i38 ], [ -22, %map_to_seg7.exit.map_to_seg7.exit40_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cond.i39, ptr %1, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %2, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %3, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %4, align 1
  %incdec.ptr13 = getelementptr i8, ptr %work, i32 1859
  %21 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp1.i41 = icmp sgt i8 %22, -1
  br i1 %cmp1.i41, label %cond.true.i44, label %map_to_seg7.exit40.map_to_seg7.exit46_crit_edge

map_to_seg7.exit40.map_to_seg7.exit46_crit_edge:  ; preds = %map_to_seg7.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg7.exit46

cond.true.i44:                                    ; preds = %map_to_seg7.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i8 %22 to i32
  %arrayidx.i42 = getelementptr [128 x i8], ptr %map, i32 0, i32 %conv14
  %23 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i42, align 1
  br label %map_to_seg7.exit46

map_to_seg7.exit46:                               ; preds = %cond.true.i44, %map_to_seg7.exit40.map_to_seg7.exit46_crit_edge
  %cond.i45 = phi i8 [ %24, %cond.true.i44 ], [ -22, %map_to_seg7.exit40.map_to_seg7.exit46_crit_edge ]
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond.i45, ptr %5, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %6, align 1
  %27 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp1.i47 = icmp sgt i8 %28, -1
  br i1 %cmp1.i47, label %cond.true.i50, label %map_to_seg7.exit46.map_to_seg7.exit52_crit_edge

map_to_seg7.exit46.map_to_seg7.exit52_crit_edge:  ; preds = %map_to_seg7.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg7.exit52

cond.true.i50:                                    ; preds = %map_to_seg7.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %conv21 = zext i8 %28 to i32
  %arrayidx.i48 = getelementptr [128 x i8], ptr %map, i32 0, i32 %conv21
  %29 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i48, align 1
  br label %map_to_seg7.exit52

map_to_seg7.exit52:                               ; preds = %cond.true.i50, %map_to_seg7.exit46.map_to_seg7.exit52_crit_edge
  %cond.i51 = phi i8 [ %30, %cond.true.i50 ], [ -22, %map_to_seg7.exit46.map_to_seg7.exit52_crit_edge ]
  %31 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond.i51, ptr %31, align 1
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %call26 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 9, ptr noundef nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_seg14_update(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr i8, ptr %work, i32 1856
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %map = getelementptr i8, ptr %work, i32 1596
  %incdec.ptr = getelementptr i8, ptr %work, i32 1857
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.i = icmp slt i8 %3, 0
  br i1 %cmp1.i, label %entry.map_to_seg14.exit_crit_edge, label %if.end.i

entry.map_to_seg14.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg14.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx.i = getelementptr [128 x i16], ptr %map, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  br label %map_to_seg14.exit

map_to_seg14.exit:                                ; preds = %if.end.i, %entry.map_to_seg14.exit_crit_edge
  %retval.0.i = phi i16 [ %5, %if.end.i ], [ -22, %entry.map_to_seg14.exit_crit_edge ]
  %6 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i) #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %buf, align 2
  %incdec.ptr4 = getelementptr i8, ptr %work, i32 1858
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.i34 = icmp slt i8 %9, 0
  br i1 %cmp1.i34, label %map_to_seg14.exit.map_to_seg14.exit39_crit_edge, label %if.end.i37

map_to_seg14.exit.map_to_seg14.exit39_crit_edge:  ; preds = %map_to_seg14.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg14.exit39

if.end.i37:                                       ; preds = %map_to_seg14.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i8 %9 to i32
  %arrayidx.i35 = getelementptr [128 x i16], ptr %map, i32 0, i32 %conv5
  %10 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i35, align 2
  br label %map_to_seg14.exit39

map_to_seg14.exit39:                              ; preds = %if.end.i37, %map_to_seg14.exit.map_to_seg14.exit39_crit_edge
  %retval.0.i38 = phi i16 [ %11, %if.end.i37 ], [ -22, %map_to_seg14.exit.map_to_seg14.exit39_crit_edge ]
  %12 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i38) #9
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %0, align 2
  %incdec.ptr11 = getelementptr i8, ptr %work, i32 1859
  %14 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.i40 = icmp slt i8 %15, 0
  br i1 %cmp1.i40, label %map_to_seg14.exit39.map_to_seg14.exit45_crit_edge, label %if.end.i43

map_to_seg14.exit39.map_to_seg14.exit45_crit_edge: ; preds = %map_to_seg14.exit39
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg14.exit45

if.end.i43:                                       ; preds = %map_to_seg14.exit39
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = zext i8 %15 to i32
  %arrayidx.i41 = getelementptr [128 x i16], ptr %map, i32 0, i32 %conv12
  %16 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i41, align 2
  br label %map_to_seg14.exit45

map_to_seg14.exit45:                              ; preds = %if.end.i43, %map_to_seg14.exit39.map_to_seg14.exit45_crit_edge
  %retval.0.i44 = phi i16 [ %17, %if.end.i43 ], [ -22, %map_to_seg14.exit39.map_to_seg14.exit45_crit_edge ]
  %18 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i44) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %1, align 2
  %20 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1.i46 = icmp slt i8 %21, 0
  br i1 %cmp1.i46, label %map_to_seg14.exit45.map_to_seg14.exit51_crit_edge, label %if.end.i49

map_to_seg14.exit45.map_to_seg14.exit51_crit_edge: ; preds = %map_to_seg14.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_to_seg14.exit51

if.end.i49:                                       ; preds = %map_to_seg14.exit45
  call void @__sanitizer_cov_trace_pc() #11
  %conv19 = zext i8 %21 to i32
  %arrayidx.i47 = getelementptr [128 x i16], ptr %map, i32 0, i32 %conv19
  %22 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i47, align 2
  br label %map_to_seg14.exit51

map_to_seg14.exit51:                              ; preds = %if.end.i49, %map_to_seg14.exit45.map_to_seg14.exit51_crit_edge
  %retval.0.i50 = phi i16 [ %23, %if.end.i49 ], [ -22, %map_to_seg14.exit45.map_to_seg14.exit51_crit_edge ]
  %24 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %25 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i50) #9
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %24, align 2
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %call25 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linedisp_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ht16k33_linedisp_update(ptr noundef %linedisp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr i8, ptr %linedisp, i32 -588
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !104, !106, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_ht16k33__302_833_ht16k33_driver_init6, !1, !"__initcall__kmod_ht16k33__302_833_ht16k33_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/ht16k33.c", i32 833, i32 1}
!2 = !{ptr @__exitcall_ht16k33_driver_exit, !1, !"__exitcall_ht16k33_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/auxdisplay/ht16k33.c", i32 835, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/auxdisplay/ht16k33.c", i32 836, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author306, !9, !"__UNIQUE_ID_author306", i1 false, i1 false}
!9 = !{!"../drivers/auxdisplay/ht16k33.c", i32 837, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/auxdisplay/ht16k33.c", i32 828, i32 12}
!12 = !{ptr @ht16k33_driver, !13, !"ht16k33_driver", i1 false, i1 false}
!13 = !{!"../drivers/auxdisplay/ht16k33.c", i32 824, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/auxdisplay/ht16k33.c", i32 162, i32 8}
!16 = !{ptr @dev_attr_map_seg7, !15, !"dev_attr_map_seg7", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/auxdisplay/ht16k33.c", i32 163, i32 8}
!19 = !{ptr @dev_attr_map_seg14, !18, !"dev_attr_map_seg14", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/auxdisplay/ht16k33.c", i32 722, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ht16k33_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ht16k33_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/auxdisplay/ht16k33.c", i32 740, i32 38}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/auxdisplay/ht16k33.c", i32 745, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ht16k33_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ht16k33_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/auxdisplay/ht16k33.c", i32 496, i32 54}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/auxdisplay/ht16k33.c", i32 500, i32 25}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/auxdisplay/ht16k33.c", i32 511, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ht16k33_led_probe._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ht16k33_led_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ht16k33_keypad_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/auxdisplay/ht16k33.c", i32 525, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/auxdisplay/ht16k33.c", i32 533, i32 22}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/auxdisplay/ht16k33.c", i32 538, i32 38}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/auxdisplay/ht16k33.c", i32 541, i32 38}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/auxdisplay/ht16k33.c", i32 544, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ht16k33_keypad_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ht16k33_keypad_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/auxdisplay/ht16k33.c", i32 553, i32 3}
!60 = !{ptr @ht16k33_keypad_probe._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ht16k33_keypad_probe._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/auxdisplay/ht16k33.c", i32 565, i32 3}
!64 = !{ptr @ht16k33_keypad_probe._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ht16k33_keypad_probe._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/auxdisplay/ht16k33.c", i32 574, i32 3}
!68 = !{ptr @ht16k33_keypad_probe._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ht16k33_keypad_probe._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/auxdisplay/ht16k33.c", i32 385, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ht16k33_keypad_scan._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ht16k33_keypad_scan._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/auxdisplay/ht16k33.c", i32 603, i32 44}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/auxdisplay/ht16k33.c", i32 607, i32 4}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ht16k33_fbdev_probe._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ht16k33_fbdev_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/auxdisplay/ht16k33.c", i32 633, i32 38}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/auxdisplay/ht16k33.c", i32 636, i32 3}
!86 = !{ptr @ht16k33_fbdev_probe._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ht16k33_fbdev_probe._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ht16k33_fbdev_probe.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/auxdisplay/ht16k33.c", i32 641, i32 2}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ht16k33_fbdev_probe.__key.42, !89, !"__key", i1 false, i1 false}
!92 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ht16k33_bl_ops, !94, !"ht16k33_bl_ops", i1 false, i1 false}
!94 = !{!"../drivers/auxdisplay/ht16k33.c", i32 335, i32 35}
!95 = !{ptr @ht16k33_fb_ops, !96, !"ht16k33_fb_ops", i1 false, i1 false}
!96 = !{!"../drivers/auxdisplay/ht16k33.c", i32 357, i32 28}
!97 = !{ptr @ht16k33_fb_fix, !98, !"ht16k33_fb_fix", i1 false, i1 false}
!98 = !{!"../drivers/auxdisplay/ht16k33.c", i32 111, i32 39}
!99 = !{ptr @ht16k33_fb_var, !100, !"ht16k33_fb_var", i1 false, i1 false}
!100 = !{!"../drivers/auxdisplay/ht16k33.c", i32 122, i32 39}
!101 = !{ptr @ht16k33_seg_probe.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/auxdisplay/ht16k33.c", i32 684, i32 3}
!103 = !{ptr @ht16k33_seg_probe.__key.44, !102, !"__key", i1 false, i1 false}
!104 = !{ptr @ht16k33_seg_probe.__key.45, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/auxdisplay/ht16k33.c", i32 691, i32 3}
!106 = !{ptr @ht16k33_seg_probe.__key.46, !105, !"__key", i1 false, i1 false}
!107 = !{ptr @initial_map_seg7, !108, !"initial_map_seg7", i1 false, i1 false}
!108 = !{!"../drivers/auxdisplay/ht16k33.c", i32 138, i32 14}
!109 = !{ptr @initial_map_seg14, !110, !"initial_map_seg14", i1 false, i1 false}
!110 = !{!"../drivers/auxdisplay/ht16k33.c", i32 139, i32 14}
!111 = !{ptr @ht16k33_of_match, !112, !"ht16k33_of_match", i1 false, i1 false}
!112 = !{!"../drivers/auxdisplay/ht16k33.c", i32 809, i32 34}
!113 = !{ptr @ht16k33_i2c_match, !114, !"ht16k33_i2c_match", i1 false, i1 false}
!114 = !{!"../drivers/auxdisplay/ht16k33.c", i32 803, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i32 0, i32 33}
!126 = !{i64 2156070773}
!127 = !{i64 2156070630}
!128 = !{i8 0, i8 2}
