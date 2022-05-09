; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-bd2802.c_pt.bc'
source_filename = "../drivers/leds/leds-bd2802.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.bd2802_led = type { ptr, ptr, ptr, %struct.rw_semaphore, [2 x %struct.led_state], %struct.led_classdev, %struct.led_classdev, %struct.led_classdev, %struct.led_classdev, %struct.led_classdev, %struct.led_classdev, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_state = type { i8, [3 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }

@__initcall__kmod_leds_bd2802__288_797_bd2802_i2c_driver_init6 = internal global ptr @bd2802_i2c_driver_init, section ".initcall6.init", align 4
@bd2802_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bd2802_probe, ptr @bd2802_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd2802_pm, ptr null, ptr null }, ptr @bd2802_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bd2802_i2c_driver_exit = internal global ptr @bd2802_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"leds_bd2802.author=Kim Kyuwon <q1.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [42 x i8] c"leds_bd2802.description=BD2802 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_bd2802.file=drivers/leds/leds-bd2802\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"leds_bd2802.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BD2802\00", [25 x i8] zeroinitializer }, align 32
@bd2802_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bd2802_suspend, ptr @bd2802_resume, ptr @bd2802_suspend, ptr @bd2802_resume, ptr @bd2802_suspend, ptr @bd2802_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bd2802_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"BD2802\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bd2802_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to detect device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd2802_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-bd2802.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd2802_probe._entry_ptr = internal global ptr @bd2802_probe._entry, section ".printk_index", align 4
@bd2802_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 692, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"return 0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bd2802_probe._entry_ptr.10 = internal global ptr @bd2802_probe._entry.7, section ".printk_index", align 4
@bd2802_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&led->rwsem\00", [20 x i8] zeroinitializer }, align 32
@bd2802_attributes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bd2802_adv_conf_attr, ptr @bd2802_wave_pattern_attr, ptr @bd2802_rgb_current_attr], [20 x i8] zeroinitializer }, align 32
@bd2802_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 708, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed: sysfs file %s\0A\00", [41 x i8] zeroinitializer }, align 32
@bd2802_probe._entry_ptr.14 = internal global ptr @bd2802_probe._entry.12, section ".printk_index", align 4
@bd2802_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reg 0x%x, val 0x%x, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd2802_write_byte\00", [46 x i8] zeroinitializer }, align 32
@bd2802_write_byte._entry_ptr = internal global ptr @bd2802_write_byte._entry, section ".printk_index", align 4
@bd2802_adv_conf_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bd2802_show_adv_conf, ptr @bd2802_store_adv_conf }, [36 x i8] zeroinitializer }, align 32
@bd2802_wave_pattern_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bd2802_show_wave_pattern, ptr @bd2802_store_wave_pattern }, [36 x i8] zeroinitializer }, align 32
@bd2802_rgb_current_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bd2802_show_rgb_current, ptr @bd2802_store_rgb_current }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"advanced_configuration\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@bd2802_addr_attributes = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @bd2802_reg0x00_attr, ptr @bd2802_reg0x01_attr, ptr @bd2802_reg0x02_attr, ptr @bd2802_reg0x03_attr, ptr @bd2802_reg0x04_attr, ptr @bd2802_reg0x05_attr, ptr @bd2802_reg0x06_attr, ptr @bd2802_reg0x07_attr, ptr @bd2802_reg0x08_attr, ptr @bd2802_reg0x09_attr, ptr @bd2802_reg0x0a_attr, ptr @bd2802_reg0x0b_attr, ptr @bd2802_reg0x0c_attr, ptr @bd2802_reg0x0d_attr, ptr @bd2802_reg0x0e_attr, ptr @bd2802_reg0x0f_attr, ptr @bd2802_reg0x10_attr, ptr @bd2802_reg0x11_attr, ptr @bd2802_reg0x12_attr, ptr @bd2802_reg0x13_attr, ptr @bd2802_reg0x14_attr, ptr @bd2802_reg0x15_attr], [40 x i8] zeroinitializer }, align 32
@bd2802_enable_adv_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.22, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bd2802_enable_adv_conf\00", [41 x i8] zeroinitializer }, align 32
@bd2802_enable_adv_conf._entry_ptr = internal global ptr @bd2802_enable_adv_conf._entry, section ".printk_index", align 4
@bd2802_reg0x00_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x00 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x01_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x01 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x02_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x02 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x03_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x03 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x04_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x04 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x05_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x05 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x06_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x06 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x07_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x07 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x08_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x08 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x09_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x09 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0a_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0a }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0b_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0b }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0c_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0c }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0d_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0d }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0e_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0e }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x0f_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x0f }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x10_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x10 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x11_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x11 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x12_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x12 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x13_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x13 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x14_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x14 }, [36 x i8] zeroinitializer }, align 32
@bd2802_reg0x15_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bd2802_store_reg0x15 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x00\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x01\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x02\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x03\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x04\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x05\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x06\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x07\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x08\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x09\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0a\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0b\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0c\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0d\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0e\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x0f\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x10\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x11\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x12\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x13\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x14\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x15\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wave_pattern\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rgb_current\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led1_R\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 567, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bd2802_register_led_classdev\00", [35 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr = internal global ptr @bd2802_register_led_classdev._entry, section ".printk_index", align 4
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led1_G\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr.53 = internal global ptr @bd2802_register_led_classdev._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led1_B\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr.56 = internal global ptr @bd2802_register_led_classdev._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led2_R\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr.59 = internal global ptr @bd2802_register_led_classdev._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led2_G\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr.62 = internal global ptr @bd2802_register_led_classdev._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led2_B\00", [25 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@bd2802_register_led_classdev._entry_ptr.65 = internal global ptr @bd2802_register_led_classdev._entry.64, section ".printk_index", align 4
@bd2802_is_rgb_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Invalid color\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd2802_is_rgb_off\00", [46 x i8] zeroinitializer }, align 32
@bd2802_is_rgb_off._entry_ptr = internal global ptr @bd2802_is_rgb_off._entry, section ".printk_index", align 4
@bd2802_update_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.68, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd2802_update_state\00", [44 x i8] zeroinitializer }, align 32
@bd2802_update_state._entry_ptr = internal global ptr @bd2802_update_state._entry, section ".printk_index", align 4
@bd2802_turn_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Only 'blink' and 'on' are allowed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bd2802_turn_on\00", [17 x i8] zeroinitializer }, align 32
@bd2802_turn_on._entry_ptr = internal global ptr @bd2802_turn_on._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"bd2802_i2c_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 787, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 789, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"bd2802_pm\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 779, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"bd2802_id\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 781, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 679, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 689, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 692, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 701, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"bd2802_attributes\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 511, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 707, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 165, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"bd2802_adv_conf_attr\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 463, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant [25 x i8] c"bd2802_wave_pattern_attr\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"bd2802_rgb_current_attr\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 465, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 439, i32 22 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 454, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 456, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"bd2802_addr_attributes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 363, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 396, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x00_attr\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x01_attr\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x02_attr\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x03_attr\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x04_attr\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x05_attr\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x06_attr\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x07_attr\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x08_attr\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x09_attr\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0a_attr\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0b_attr\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0c_attr\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0d_attr\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0e_attr\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x0f_attr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x10_attr\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x11_attr\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x12_attr\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x13_attr\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x14_attr\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"bd2802_reg0x15_attr\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 340, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 341, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 342, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 343, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 344, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 345, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 346, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 347, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 348, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 349, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 350, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 351, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 352, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 353, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 354, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 355, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 356, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 357, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 358, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 359, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 360, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 361, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 508, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 509, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 559, i32 25 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 566, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 571, i32 25 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 578, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 583, i32 25 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 590, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 595, i32 25 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 602, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 607, i32 25 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 614, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 619, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 627, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 119, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 190, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [30 x i8] c"../drivers/leds/leds-bd2802.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 291, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd2802_i2c_driver_exit, ptr @__initcall__kmod_leds_bd2802__288_797_bd2802_i2c_driver_init6, ptr @bd2802_enable_adv_conf._entry, ptr @bd2802_enable_adv_conf._entry_ptr, ptr @bd2802_i2c_driver_exit, ptr @bd2802_is_rgb_off._entry, ptr @bd2802_is_rgb_off._entry_ptr, ptr @bd2802_probe._entry, ptr @bd2802_probe._entry.12, ptr @bd2802_probe._entry.7, ptr @bd2802_probe._entry_ptr, ptr @bd2802_probe._entry_ptr.10, ptr @bd2802_probe._entry_ptr.14, ptr @bd2802_register_led_classdev._entry, ptr @bd2802_register_led_classdev._entry.52, ptr @bd2802_register_led_classdev._entry.55, ptr @bd2802_register_led_classdev._entry.58, ptr @bd2802_register_led_classdev._entry.61, ptr @bd2802_register_led_classdev._entry.64, ptr @bd2802_register_led_classdev._entry_ptr, ptr @bd2802_register_led_classdev._entry_ptr.53, ptr @bd2802_register_led_classdev._entry_ptr.56, ptr @bd2802_register_led_classdev._entry_ptr.59, ptr @bd2802_register_led_classdev._entry_ptr.62, ptr @bd2802_register_led_classdev._entry_ptr.65, ptr @bd2802_turn_on._entry, ptr @bd2802_turn_on._entry_ptr, ptr @bd2802_update_state._entry, ptr @bd2802_update_state._entry_ptr, ptr @bd2802_write_byte._entry, ptr @bd2802_write_byte._entry_ptr, ptr @bd2802_i2c_driver, ptr @.str, ptr @bd2802_pm, ptr @bd2802_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @bd2802_probe.__key, ptr @.str.11, ptr @bd2802_attributes, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @bd2802_adv_conf_attr, ptr @bd2802_wave_pattern_attr, ptr @bd2802_rgb_current_attr, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @bd2802_addr_attributes, ptr @.str.22, ptr @bd2802_reg0x00_attr, ptr @bd2802_reg0x01_attr, ptr @bd2802_reg0x02_attr, ptr @bd2802_reg0x03_attr, ptr @bd2802_reg0x04_attr, ptr @bd2802_reg0x05_attr, ptr @bd2802_reg0x06_attr, ptr @bd2802_reg0x07_attr, ptr @bd2802_reg0x08_attr, ptr @bd2802_reg0x09_attr, ptr @bd2802_reg0x0a_attr, ptr @bd2802_reg0x0b_attr, ptr @bd2802_reg0x0c_attr, ptr @bd2802_reg0x0d_attr, ptr @bd2802_reg0x0e_attr, ptr @bd2802_reg0x0f_attr, ptr @bd2802_reg0x10_attr, ptr @bd2802_reg0x11_attr, ptr @bd2802_reg0x12_attr, ptr @bd2802_reg0x13_attr, ptr @bd2802_reg0x14_attr, ptr @bd2802_reg0x15_attr, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_adv_conf_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_wave_pattern_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_rgb_current_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_addr_attributes to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_enable_adv_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x00_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x01_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x02_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x03_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x04_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x05_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x06_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x07_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x08_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x09_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0a_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0b_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0c_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0d_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0e_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x0f_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x10_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x11_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x12_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x13_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x14_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_reg0x15_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_register_led_classdev._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_is_rgb_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_update_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd2802_turn_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bd2802_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd2802_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bd2802_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2540, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.bd2802_led, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  %reset = getelementptr inbounds %struct.bd2802_led, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #7
  %call.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i81)
  %cmp.i82 = icmp sgt i32 %call.i81, -1
  br i1 %cmp.i82, label %do.end15, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef %call.i81) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #7
  %wave_pattern = getelementptr inbounds %struct.bd2802_led, ptr %call.i, i32 0, i32 15
  %7 = ptrtoint ptr %wave_pattern to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %wave_pattern, align 4
  %rgb_current = getelementptr inbounds %struct.bd2802_led, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %rgb_current to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %rgb_current, align 4
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %call.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str.11, ptr noundef nonnull @bd2802_probe.__key) #7
  %9 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client1, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call25 = tail call i32 @device_create_file(ptr noundef %dev24, ptr noundef nonnull @bd2802_adv_conf_attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %do.end15.failed_unregister_dev_file_crit_edge

do.end15.failed_unregister_dev_file_crit_edge:    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_unregister_dev_file

for.inc:                                          ; preds = %do.end15
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %dev24.1 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call25.1 = tail call i32 @device_create_file(ptr noundef %dev24.1, ptr noundef nonnull @bd2802_wave_pattern_attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool26.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool26.not.1, label %for.inc.1, label %for.inc.failed_unregister_dev_file_crit_edge

for.inc.failed_unregister_dev_file_crit_edge:     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_unregister_dev_file

for.inc.1:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client1, align 4
  %dev24.2 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %call25.2 = tail call i32 @device_create_file(ptr noundef %dev24.2, ptr noundef nonnull @bd2802_rgb_current_attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %tobool26.not.2 = icmp eq i32 %call25.2, 0
  br i1 %tobool26.not.2, label %for.inc.2, label %for.inc.1.failed_unregister_dev_file_crit_edge

for.inc.1.failed_unregister_dev_file_crit_edge:   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_unregister_dev_file

for.inc.2:                                        ; preds = %for.inc.1
  %call35 = tail call fastcc i32 @bd2802_register_led_classdev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %for.inc.2.for.body41_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2.for.body41_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

failed_unregister_dev_file:                       ; preds = %for.inc.1.failed_unregister_dev_file_crit_edge, %for.inc.failed_unregister_dev_file_crit_edge, %do.end15.failed_unregister_dev_file_crit_edge
  %i.088.lcssa = phi i32 [ 0, %do.end15.failed_unregister_dev_file_crit_edge ], [ 1, %for.inc.failed_unregister_dev_file_crit_edge ], [ 2, %for.inc.1.failed_unregister_dev_file_crit_edge ]
  %.lcssa = phi ptr [ @bd2802_adv_conf_attr, %do.end15.failed_unregister_dev_file_crit_edge ], [ @bd2802_wave_pattern_attr, %for.inc.failed_unregister_dev_file_crit_edge ], [ @bd2802_rgb_current_attr, %for.inc.1.failed_unregister_dev_file_crit_edge ]
  %call25.lcssa = phi i32 [ %call25, %do.end15.failed_unregister_dev_file_crit_edge ], [ %call25.1, %for.inc.failed_unregister_dev_file_crit_edge ], [ %call25.2, %for.inc.1.failed_unregister_dev_file_crit_edge ]
  %15 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client1, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.13, ptr noundef %18) #10
  br i1 %tobool26.not, label %failed_unregister_dev_file.for.body41_crit_edge, label %failed_unregister_dev_file.cleanup_crit_edge

failed_unregister_dev_file.cleanup_crit_edge:     ; preds = %failed_unregister_dev_file
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

failed_unregister_dev_file.for.body41_crit_edge:  ; preds = %failed_unregister_dev_file
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.body41:                                       ; preds = %failed_unregister_dev_file.for.body41_crit_edge, %for.inc.2.for.body41_crit_edge
  %ret.099 = phi i32 [ %call25.lcssa, %failed_unregister_dev_file.for.body41_crit_edge ], [ %call35, %for.inc.2.for.body41_crit_edge ]
  %i.08798 = phi i32 [ %i.088.lcssa, %failed_unregister_dev_file.for.body41_crit_edge ], [ 3, %for.inc.2.for.body41_crit_edge ]
  %i.191 = add nsw i32 %i.08798, -1
  %19 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client1, align 4
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %arrayidx44 = getelementptr [3 x ptr], ptr @bd2802_attributes, i32 0, i32 %i.191
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx44, align 4
  tail call void @device_remove_file(ptr noundef %dev43, ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.08798)
  %cmp40 = icmp ugt i32 %i.08798, 1
  br i1 %cmp40, label %for.body41.1, label %for.body41.cleanup_crit_edge

for.body41.cleanup_crit_edge:                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body41.1:                                     ; preds = %for.body41
  %i.191.1 = add nsw i32 %i.08798, -2
  %23 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client1, align 4
  %dev43.1 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %arrayidx44.1 = getelementptr [3 x ptr], ptr @bd2802_attributes, i32 0, i32 %i.191.1
  %25 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx44.1, align 4
  tail call void @device_remove_file(ptr noundef %dev43.1, ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.191)
  %cmp40.1 = icmp ugt i32 %i.191, 1
  br i1 %cmp40.1, label %for.body41.2, label %for.body41.1.cleanup_crit_edge

for.body41.1.cleanup_crit_edge:                   ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body41.2:                                     ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_pc() #9
  %i.191.2 = add nsw i32 %i.08798, -3
  %27 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client1, align 4
  %dev43.2 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %arrayidx44.2 = getelementptr [3 x ptr], ptr @bd2802_attributes, i32 0, i32 %i.191.2
  %29 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx44.2, align 4
  tail call void @device_remove_file(ptr noundef %dev43.2, ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %for.body41.2, %for.body41.1.cleanup_crit_edge, %for.body41.cleanup_crit_edge, %failed_unregister_dev_file.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call.i81, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %call25.lcssa, %failed_unregister_dev_file.cleanup_crit_edge ], [ %ret.099, %for.body41.2 ], [ %ret.099, %for.body41.1.cleanup_crit_edge ], [ %ret.099, %for.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  %cdev_led2b.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 10
  tail call void @led_classdev_unregister(ptr noundef %cdev_led2b.i) #7
  %cdev_led2g.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 9
  tail call void @led_classdev_unregister(ptr noundef %cdev_led2g.i) #7
  %cdev_led2r.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 8
  tail call void @led_classdev_unregister(ptr noundef %cdev_led2r.i) #7
  %cdev_led1b.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 7
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1b.i) #7
  %cdev_led1g.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 6
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1g.i) #7
  %cdev_led1r.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 5
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1r.i) #7
  %adf_on = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %adf_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adf_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %client.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.08.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %arrayidx.i = getelementptr [22 x ptr], ptr @bd2802_addr_attributes, i32 0, i32 %i.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef %9) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx.i.i.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i.i = load i8, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i.i)
  %11 = icmp ugt i8 %bf.load.i.i.i, 3
  br i1 %11, label %for.end.i.bd2802_disable_adv_conf.exit_crit_edge, label %bd2802_is_all_off.exit.i

for.end.i.bd2802_disable_adv_conf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_disable_adv_conf.exit

bd2802_is_all_off.exit.i:                         ; preds = %for.end.i
  %arrayidx.i.1.i.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.1.i.i = load i8, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i)
  %13 = icmp ugt i8 %bf.load.i.1.i.i, 3
  br i1 %13, label %bd2802_is_all_off.exit.i.bd2802_disable_adv_conf.exit_crit_edge, label %if.then.i

bd2802_is_all_off.exit.i.bd2802_disable_adv_conf.exit_crit_edge: ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_disable_adv_conf.exit

if.then.i:                                        ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #7
  br label %bd2802_disable_adv_conf.exit

bd2802_disable_adv_conf.exit:                     ; preds = %if.then.i, %bd2802_is_all_off.exit.i.bd2802_disable_adv_conf.exit_crit_edge, %for.end.i.bd2802_disable_adv_conf.exit_crit_edge
  %16 = ptrtoint ptr %adf_on to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %adf_on, align 4
  br label %if.end

if.end:                                           ; preds = %bd2802_disable_adv_conf.exit, %entry.if.end_crit_edge
  %client1 = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @bd2802_adv_conf_attr) #7
  %19 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client1, align 4
  %dev.1 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev.1, ptr noundef nonnull @bd2802_wave_pattern_attr) #7
  %21 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client1, align 4
  %dev.2 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev.2, ptr noundef nonnull @bd2802_rgb_current_attr) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd2802_register_led_classdev(ptr noundef %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev_led1r = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 5
  %0 = ptrtoint ptr %cdev_led1r to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.48, ptr %cdev_led1r, align 4
  %brightness = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bd2802_set_led1r_brightness, ptr %brightness_set_blocking, align 4
  %blink_set = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bd2802_set_led1r_blink, ptr %blink_set, align 4
  %client = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_led1r, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %cdev_led1r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev_led1r, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.49, ptr noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdev_led1g = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 6
  %10 = ptrtoint ptr %cdev_led1g to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.51, ptr %cdev_led1g, align 4
  %brightness11 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %brightness11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %brightness11, align 4
  %brightness_set_blocking13 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %brightness_set_blocking13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bd2802_set_led1g_brightness, ptr %brightness_set_blocking13, align 4
  %blink_set15 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 6, i32 8
  %13 = ptrtoint ptr %blink_set15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bd2802_set_led1g_blink, ptr %blink_set15, align 4
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %call.i179 = tail call i32 @led_classdev_register_ext(ptr noundef %dev17, ptr noundef %cdev_led1g, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %cmp20 = icmp slt i32 %call.i179, 0
  br i1 %cmp20, label %do.end24, label %if.end29

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %cdev_led1g to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev_led1g, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.49, ptr noundef %19) #10
  br label %failed_unregister_led1_G

if.end29:                                         ; preds = %if.end
  %cdev_led1b = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 7
  %20 = ptrtoint ptr %cdev_led1b to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.54, ptr %cdev_led1b, align 4
  %brightness32 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %brightness32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %brightness32, align 4
  %brightness_set_blocking34 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %brightness_set_blocking34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bd2802_set_led1b_brightness, ptr %brightness_set_blocking34, align 4
  %blink_set36 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %blink_set36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bd2802_set_led1b_blink, ptr %blink_set36, align 4
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call.i180 = tail call i32 @led_classdev_register_ext(ptr noundef %dev38, ptr noundef %cdev_led1b, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %cmp41 = icmp slt i32 %call.i180, 0
  br i1 %cmp41, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 4
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %cdev_led1b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdev_led1b, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.49, ptr noundef %29) #10
  br label %failed_unregister_led1_B

if.end50:                                         ; preds = %if.end29
  %cdev_led2r = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 8
  %30 = ptrtoint ptr %cdev_led2r to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.57, ptr %cdev_led2r, align 4
  %brightness53 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %brightness53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %brightness53, align 4
  %brightness_set_blocking55 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 8, i32 6
  %32 = ptrtoint ptr %brightness_set_blocking55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bd2802_set_led2r_brightness, ptr %brightness_set_blocking55, align 4
  %blink_set57 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 8, i32 8
  %33 = ptrtoint ptr %blink_set57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bd2802_set_led2r_blink, ptr %blink_set57, align 4
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 4
  %dev59 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %call.i181 = tail call i32 @led_classdev_register_ext(ptr noundef %dev59, ptr noundef %cdev_led2r, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp62 = icmp slt i32 %call.i181, 0
  br i1 %cmp62, label %do.end66, label %if.end71

do.end66:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client, align 4
  %dev68 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %cdev_led2r to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdev_led2r, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.49, ptr noundef %39) #10
  br label %failed_unregister_led2_R

if.end71:                                         ; preds = %if.end50
  %cdev_led2g = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 9
  %40 = ptrtoint ptr %cdev_led2g to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.60, ptr %cdev_led2g, align 4
  %brightness74 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %brightness74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %brightness74, align 4
  %brightness_set_blocking76 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 9, i32 6
  %42 = ptrtoint ptr %brightness_set_blocking76 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bd2802_set_led2g_brightness, ptr %brightness_set_blocking76, align 4
  %blink_set78 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 9, i32 8
  %43 = ptrtoint ptr %blink_set78 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bd2802_set_led2g_blink, ptr %blink_set78, align 4
  %44 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client, align 4
  %dev80 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %call.i182 = tail call i32 @led_classdev_register_ext(ptr noundef %dev80, ptr noundef %cdev_led2g, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp83 = icmp slt i32 %call.i182, 0
  br i1 %cmp83, label %do.end87, label %if.end92

do.end87:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %dev89 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %cdev_led2g to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdev_led2g, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.49, ptr noundef %49) #10
  br label %failed_unregister_led2_G

if.end92:                                         ; preds = %if.end71
  %cdev_led2b = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 10
  %50 = ptrtoint ptr %cdev_led2b to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.63, ptr %cdev_led2b, align 4
  %brightness95 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %brightness95 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %brightness95, align 4
  %brightness_set_blocking97 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 10, i32 6
  %52 = ptrtoint ptr %brightness_set_blocking97 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bd2802_set_led2b_brightness, ptr %brightness_set_blocking97, align 4
  %blink_set99 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 10, i32 8
  %53 = ptrtoint ptr %blink_set99 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bd2802_set_led2b_blink, ptr %blink_set99, align 4
  %flags = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 10, i32 3
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or = or i32 %55, 65536
  store i32 %or, ptr %flags, align 4
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %dev102 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  %call.i183 = tail call i32 @led_classdev_register_ext(ptr noundef %dev102, ptr noundef %cdev_led2b, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp105 = icmp slt i32 %call.i183, 0
  br i1 %cmp105, label %do.end109, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end109:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %dev111 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %cdev_led2b to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cdev_led2b, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.49, ptr noundef %61) #10
  tail call void @led_classdev_unregister(ptr noundef %cdev_led2g) #7
  br label %failed_unregister_led2_G

failed_unregister_led2_G:                         ; preds = %do.end109, %do.end87
  %ret.0 = phi i32 [ %call.i182, %do.end87 ], [ %call.i183, %do.end109 ]
  tail call void @led_classdev_unregister(ptr noundef %cdev_led2r) #7
  br label %failed_unregister_led2_R

failed_unregister_led2_R:                         ; preds = %failed_unregister_led2_G, %do.end66
  %ret.1 = phi i32 [ %call.i181, %do.end66 ], [ %ret.0, %failed_unregister_led2_G ]
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1b) #7
  br label %failed_unregister_led1_B

failed_unregister_led1_B:                         ; preds = %failed_unregister_led2_R, %do.end45
  %ret.2 = phi i32 [ %call.i180, %do.end45 ], [ %ret.1, %failed_unregister_led2_R ]
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1g) #7
  br label %failed_unregister_led1_G

failed_unregister_led1_G:                         ; preds = %failed_unregister_led1_B, %do.end24
  %ret.3 = phi i32 [ %call.i179, %do.end24 ], [ %ret.2, %failed_unregister_led1_B ]
  tail call void @led_classdev_unregister(ptr noundef %cdev_led1r) #7
  br label %cleanup

cleanup:                                          ; preds = %failed_unregister_led1_G, %if.end92.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end92.cleanup_crit_edge ], [ %call.i, %do.end ], [ %ret.3, %failed_unregister_led1_G ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_show_adv_conf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem) #7
  %adf_on = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %adf_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adf_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1869482496, ptr %buf, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 3, %if.then ], [ 4, %if.else ]
  tail call void @up_read(ptr noundef %rwsem) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_adv_conf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %rwsem) #7
  %adf_on = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %adf_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adf_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true, label %land.lhs.true7

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.20, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  %client.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4
  %i.033.i = phi i32 [ 0, %if.then4 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %arrayidx.i = getelementptr [22 x ptr], ptr @bd2802_addr_attributes, i32 0, i32 %i.033.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @device_create_file(ptr noundef %dev.i, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.13, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.033.i)
  %cmp935.not.i = icmp eq i32 %i.033.i, 0
  br i1 %cmp935.not.i, label %do.end.i.if.end12_crit_edge, label %do.end.i.for.body10.i_crit_edge

do.end.i.for.body10.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body10.i

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %arrayidx.i.i.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i.i = load i8, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i.i)
  %13 = icmp ugt i8 %bf.load.i.i.i, 3
  br i1 %13, label %for.end.i.if.end12.sink.split_crit_edge, label %bd2802_is_all_off.exit.i

for.end.i.if.end12.sink.split_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

bd2802_is_all_off.exit.i:                         ; preds = %for.end.i
  %arrayidx.i.1.i.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.1.i.i = load i8, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i)
  %15 = icmp ugt i8 %bf.load.i.1.i.i, 3
  br i1 %15, label %bd2802_is_all_off.exit.i.if.end12.sink.split_crit_edge, label %if.then6.i

bd2802_is_all_off.exit.i.if.end12.sink.split_crit_edge: ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

if.then6.i:                                       ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bd2802_reset_cancel(ptr noundef %1) #7
  br label %if.end12.sink.split

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %do.end.i.for.body10.i_crit_edge
  %i.136.in.i = phi i32 [ %i.136.i, %for.body10.i.for.body10.i_crit_edge ], [ %i.033.i, %do.end.i.for.body10.i_crit_edge ]
  %i.136.i = add nsw i32 %i.136.in.i, -1
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %arrayidx13.i = getelementptr [22 x ptr], ptr @bd2802_addr_attributes, i32 0, i32 %i.136.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13.i, align 4
  tail call void @device_remove_file(ptr noundef %dev12.i, ptr noundef %19) #7
  %cmp9.i = icmp sgt i32 %i.136.in.i, 1
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.if.end12_crit_edge

for.body10.i.if.end12_crit_edge:                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

land.lhs.true7:                                   ; preds = %if.end
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.21, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true7.if.end12_crit_edge

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true7
  %client.i21 = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  br label %for.body.i26

for.body.i26:                                     ; preds = %for.body.i26.for.body.i26_crit_edge, %if.then10
  %i.08.i = phi i32 [ 0, %if.then10 ], [ %inc.i24, %for.body.i26.for.body.i26_crit_edge ]
  %20 = ptrtoint ptr %client.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i21, align 4
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %arrayidx.i23 = getelementptr [22 x ptr], ptr @bd2802_addr_attributes, i32 0, i32 %i.08.i
  %22 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i23, align 4
  tail call void @device_remove_file(ptr noundef %dev.i22, ptr noundef %23) #7
  %inc.i24 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i25 = icmp eq i32 %inc.i24, 22
  br i1 %exitcond.not.i25, label %for.end.i29, label %for.body.i26.for.body.i26_crit_edge

for.body.i26.for.body.i26_crit_edge:              ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26

for.end.i29:                                      ; preds = %for.body.i26
  %arrayidx.i.i.i27 = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 0
  %24 = ptrtoint ptr %arrayidx.i.i.i27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i.i28 = load i8, ptr %arrayidx.i.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i.i28)
  %25 = icmp ugt i8 %bf.load.i.i.i28, 3
  br i1 %25, label %for.end.i29.if.end12.sink.split_crit_edge, label %bd2802_is_all_off.exit.i32

for.end.i29.if.end12.sink.split_crit_edge:        ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

bd2802_is_all_off.exit.i32:                       ; preds = %for.end.i29
  %arrayidx.i.1.i.i30 = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx.i.1.i.i30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.1.i.i31 = load i8, ptr %arrayidx.i.1.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i31)
  %27 = icmp ugt i8 %bf.load.i.1.i.i31, 3
  br i1 %27, label %bd2802_is_all_off.exit.i32.if.end12.sink.split_crit_edge, label %if.then.i

bd2802_is_all_off.exit.i32.if.end12.sink.split_crit_edge: ; preds = %bd2802_is_all_off.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

if.then.i:                                        ; preds = %bd2802_is_all_off.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  %reset.i = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %29, i32 noundef 1) #7
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then.i, %bd2802_is_all_off.exit.i32.if.end12.sink.split_crit_edge, %for.end.i29.if.end12.sink.split_crit_edge, %if.then6.i, %bd2802_is_all_off.exit.i.if.end12.sink.split_crit_edge, %for.end.i.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then6.i ], [ 1, %bd2802_is_all_off.exit.i.if.end12.sink.split_crit_edge ], [ 1, %for.end.i.if.end12.sink.split_crit_edge ], [ 0, %for.end.i29.if.end12.sink.split_crit_edge ], [ 0, %bd2802_is_all_off.exit.i32.if.end12.sink.split_crit_edge ], [ 0, %if.then.i ]
  %30 = ptrtoint ptr %adf_on to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %adf_on, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true7.if.end12_crit_edge, %for.body10.i.if.end12_crit_edge, %do.end.i.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bd2802_reset_cancel(ptr nocapture noundef readonly %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 2
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #7
  %3 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %led, align 4
  %client.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 1
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %entry.bd2802_write_byte.exit.i_crit_edge, label %do.end.i.i

entry.bd2802_write_byte.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv1.i.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef %conv1.i.i, i32 noundef %call.i.i) #10
  br label %bd2802_write_byte.exit.i

bd2802_write_byte.exit.i:                         ; preds = %do.end.i.i, %entry.bd2802_write_byte.exit.i_crit_edge
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %4, align 1
  %call.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 12, i8 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i11.i)
  %cmp.i12.i = icmp sgt i32 %call.i11.i, -1
  br i1 %cmp.i12.i, label %bd2802_write_byte.exit.i.bd2802_configure.exit_crit_edge, label %do.end.i15.i

bd2802_write_byte.exit.i.bd2802_configure.exit_crit_edge: ; preds = %bd2802_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_configure.exit

do.end.i15.i:                                     ; preds = %bd2802_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i13.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %conv1.i14.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef %conv1.i14.i, i32 noundef %call.i11.i) #10
  br label %bd2802_configure.exit

bd2802_configure.exit:                            ; preds = %do.end.i15.i, %bd2802_write_byte.exit.i.bd2802_configure.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x00(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x01(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x02(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x03(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 3, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x04(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x05(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 5, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 5, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x06(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 6, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x07(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 7, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x08(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 8, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x09(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 9, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0a(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 10, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 10, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0b(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 11, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0c(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 12, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 12, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0d(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 13, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 13, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0e(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 14, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x0f(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 15, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x10(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 16, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x11(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 17, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 17, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x12(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 18, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 18, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x13(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 19, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 19, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x14(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 20, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 20, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_reg0x15(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %client = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call.i13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 21, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp.i = icmp sgt i32 %call.i13, -1
  br i1 %cmp.i, label %if.end4.bd2802_write_byte.exit_crit_edge, label %do.end.i

if.end4.bd2802_write_byte.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %conv1.i = and i32 %6, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 21, i32 noundef %conv1.i, i32 noundef %call.i13) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i, %if.end4.bd2802_write_byte.exit_crit_edge
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %bd2802_write_byte.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %bd2802_write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_show_wave_pattern(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem) #7
  %wave_pattern = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %wave_pattern to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wave_pattern, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %3)
  tail call void @up_read(ptr noundef %rwsem) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_wave_pattern(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %wave_pattern = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %wave_pattern to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wave_pattern, align 4
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_show_rgb_current(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem) #7
  %rgb_current = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rgb_current to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rgb_current, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %3)
  tail call void @up_read(ptr noundef %rwsem) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_store_rgb_current(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rwsem = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 3
  call void @down_write(ptr noundef %rwsem) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %rgb_current = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %rgb_current to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rgb_current, align 4
  call void @up_write(ptr noundef %rwsem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1r_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -116
  %led_id = getelementptr i8, ptr %led_cdev, i32 2404
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 2408
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 2412
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1r_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -116
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 2404
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 2408
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 2412
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1g_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -516
  %led_id = getelementptr i8, ptr %led_cdev, i32 2004
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 2008
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 2012
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1g_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -516
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 2004
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 2008
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 2012
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1b_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -916
  %led_id = getelementptr i8, ptr %led_cdev, i32 1604
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 1608
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 1612
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led1b_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -916
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 1604
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 1608
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 1612
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2r_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -1316
  %led_id = getelementptr i8, ptr %led_cdev, i32 1204
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 1208
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 1212
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2r_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -1316
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 1204
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 1208
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 1212
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2g_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -1716
  %led_id = getelementptr i8, ptr %led_cdev, i32 804
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 808
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 812
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2g_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -1716
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 804
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 808
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 812
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2b_brightness(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -2116
  %led_id = getelementptr i8, ptr %led_cdev, i32 404
  %0 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 408
  %1 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %state = getelementptr i8, ptr %led_cdev, i32 412
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call fastcc void @bd2802_turn_off(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_set_led2b_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -2116
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %led_id = getelementptr i8, ptr %led_cdev, i32 404
  %4 = ptrtoint ptr %led_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %led_id, align 4
  %color = getelementptr i8, ptr %led_cdev, i32 408
  %5 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %color, align 4
  %state = getelementptr i8, ptr %led_cdev, i32 412
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  tail call fastcc void @bd2802_turn_on(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 2, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bd2802_turn_off(ptr nocapture noundef %led, i32 noundef %id, i32 noundef %color) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %color, label %bd2802_is_rgb_off.exit.thread [
    i32 0, label %bd2802_is_rgb_off.exit
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb11.i
  ]

sw.bb2.i:                                         ; preds = %entry
  %arrayidx4.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %id
  %1 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load5.i = load i8, ptr %arrayidx4.i, align 4
  %2 = and i8 %bf.load5.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not.i = icmp eq i8 %2, 0
  br i1 %tobool8.not.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11.i:                                        ; preds = %entry
  %arrayidx13.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %id
  %3 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load14.i = load i8, ptr %arrayidx13.i, align 4
  %4 = and i8 %bf.load14.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool18.not.i = icmp eq i8 %4, 0
  br i1 %tobool18.not.i, label %sw.bb11.i.cleanup_crit_edge, label %sw.bb11.i.if.end_crit_edge

sw.bb11.i.if.end_crit_edge:                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bd2802_is_rgb_off.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #10
  br label %cleanup

bd2802_is_rgb_off.exit:                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %id
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %tobool.not.i = icmp ult i8 %bf.load.i, 64
  br i1 %tobool.not.i, label %bd2802_is_rgb_off.exit.cleanup_crit_edge, label %bd2802_is_rgb_off.exit.if.end_crit_edge

bd2802_is_rgb_off.exit.if.end_crit_edge:          ; preds = %bd2802_is_rgb_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bd2802_is_rgb_off.exit.cleanup_crit_edge:         ; preds = %bd2802_is_rgb_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bd2802_is_rgb_off.exit.if.end_crit_edge, %sw.bb11.i.if.end_crit_edge, %sw.bb2.i.if.end_crit_edge
  %mul.i.i = mul i32 %id, 10
  %mul1.i.i = mul nuw nsw i32 %color, 3
  %add.i.i = add i32 %mul1.i.i, %mul.i.i
  %conv.i.i = trunc i32 %add.i.i to i8
  %add.i = add i8 %conv.i.i, 3
  %client = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %add.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.bd2802_write_byte.exit_crit_edge, label %do.end.i17

if.end.bd2802_write_byte.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit

do.end.i17:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %conv.i = zext i8 %add.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef 0, i32 noundef %call.i) #10
  br label %bd2802_write_byte.exit

bd2802_write_byte.exit:                           ; preds = %do.end.i17, %if.end.bd2802_write_byte.exit_crit_edge
  %add.i23 = add i8 %conv.i.i, 4
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %call.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %add.i23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i24)
  %cmp.i25 = icmp sgt i32 %call.i24, -1
  br i1 %cmp.i25, label %bd2802_write_byte.exit.bd2802_write_byte.exit30_crit_edge, label %do.end.i28

bd2802_write_byte.exit.bd2802_write_byte.exit30_crit_edge: ; preds = %bd2802_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit30

do.end.i28:                                       ; preds = %bd2802_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i26 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv.i27 = zext i8 %add.i23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i27, i32 noundef 0, i32 noundef %call.i24) #10
  br label %bd2802_write_byte.exit30

bd2802_write_byte.exit30:                         ; preds = %do.end.i28, %bd2802_write_byte.exit.bd2802_write_byte.exit30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp1.i = icmp eq i32 %id, 0
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %bd2802_write_byte.exit30
  %12 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %color, label %if.then.i.do.end.i35_crit_edge [
    i32 0, label %sw.bb.i32
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb12.i
  ]

if.then.i.do.end.i35_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i35

sw.bb.i32:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i31 = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 0
  br label %for.inc.1.sink.split.i

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 0
  br label %for.inc.1.sink.split.i

sw.bb12.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 0
  br label %for.inc.1.sink.split.i

do.end.i35:                                       ; preds = %if.then.1.i.do.end.i35_crit_edge, %if.then.i.do.end.i35_crit_edge
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68) #10
  br label %cleanup

for.inc.i:                                        ; preds = %bd2802_write_byte.exit30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp1.1.i = icmp eq i32 %id, 1
  br i1 %cmp1.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %15 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %color, label %if.then.1.i.do.end.i35_crit_edge [
    i32 0, label %sw.bb.1.i
    i32 1, label %sw.bb3.1.i
    i32 2, label %sw.bb12.1.i
  ]

if.then.1.i.do.end.i35_crit_edge:                 ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i35

sw.bb12.1.i:                                      ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.1.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i

sw.bb3.1.i:                                       ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.1.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i

sw.bb.1.i:                                        ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i

for.inc.1.sink.split.i:                           ; preds = %sw.bb.1.i, %sw.bb3.1.i, %sw.bb12.1.i, %sw.bb12.i, %sw.bb3.i, %sw.bb.i32
  %arrayidx.sink62.i = phi ptr [ %arrayidx.i31, %sw.bb.i32 ], [ %arrayidx5.i, %sw.bb3.i ], [ %arrayidx14.i, %sw.bb12.i ], [ %arrayidx.1.i, %sw.bb.1.i ], [ %arrayidx5.1.i, %sw.bb3.1.i ], [ %arrayidx14.1.i, %sw.bb12.1.i ]
  %.sink.i = phi i8 [ 63, %sw.bb.i32 ], [ -49, %sw.bb3.i ], [ -13, %sw.bb12.i ], [ 63, %sw.bb.1.i ], [ -49, %sw.bb3.1.i ], [ -13, %sw.bb12.1.i ]
  %16 = ptrtoint ptr %arrayidx.sink62.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i36 = load i8, ptr %arrayidx.sink62.i, align 4
  %bf.clear.i = and i8 %bf.load.i36, %.sink.i
  store i8 %bf.clear.i, ptr %arrayidx.sink62.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %id
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i)
  %18 = icmp ugt i8 %bf.load.i.i, 3
  br i1 %18, label %for.inc.1.i.cleanup_crit_edge, label %if.end26.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i:                                       ; preds = %for.inc.1.i
  %arrayidx.i.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 0
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i.i = load i8, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i.i)
  %20 = icmp ugt i8 %bf.load.i.i.i, 3
  br i1 %20, label %if.end26.i.if.end31.i_crit_edge, label %bd2802_is_all_off.exit.i

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

bd2802_is_all_off.exit.i:                         ; preds = %if.end26.i
  %arrayidx.i.1.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.1.i.i = load i8, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i)
  %22 = icmp ugt i8 %bf.load.i.1.i.i, 3
  br i1 %22, label %bd2802_is_all_off.exit.i.if.end31.i_crit_edge, label %land.lhs.true.i

bd2802_is_all_off.exit.i.if.end31.i_crit_edge:    ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %bd2802_is_all_off.exit.i
  %adf_on.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 11
  %23 = ptrtoint ptr %adf_on.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %adf_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not.i = icmp eq i32 %24, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %reset.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 2
  %25 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 1) #7
  br label %cleanup

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %bd2802_is_all_off.exit.i.if.end31.i_crit_edge, %if.end26.i.if.end31.i_crit_edge
  %conv.i37 = select i1 %cmp1.i, i8 16, i8 1
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 1, i8 noundef zeroext %conv.i37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.end31.i.cleanup_crit_edge, label %do.end.i.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %conv1.i.i = zext i8 %conv.i37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv1.i.i, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.end31.i.cleanup_crit_edge, %if.then30.i, %for.inc.1.i.cleanup_crit_edge, %do.end.i35, %bd2802_is_rgb_off.exit.cleanup_crit_edge, %bd2802_is_rgb_off.exit.thread, %sw.bb11.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bd2802_turn_on(ptr noundef %led, i32 noundef %id, i32 noundef %color, i32 noundef %led_bit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %led_bit)
  %cmp1 = icmp eq i32 %led_bit, 1
  %arrayidx.i.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i.i = load i8, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i.i)
  %1 = icmp ugt i8 %bf.load.i.i.i, 3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  br i1 %1, label %if.then2.if.end.i_crit_edge, label %bd2802_is_all_off.exit.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

bd2802_is_all_off.exit.i:                         ; preds = %if.then2
  %arrayidx.i.1.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.1.i.i = load i8, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i)
  %3 = icmp ugt i8 %bf.load.i.1.i.i, 3
  br i1 %3, label %bd2802_is_all_off.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

bd2802_is_all_off.exit.i.if.end.i_crit_edge:      ; preds = %bd2802_is_all_off.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %bd2802_is_all_off.exit.i
  %adf_on.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 11
  %4 = ptrtoint ptr %adf_on.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adf_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bd2802_reset_cancel(ptr noundef %led) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %bd2802_is_all_off.exit.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %mul.i.i.i = mul i32 %id, 10
  %mul1.i.i.i = mul i32 %color, 3
  %add.i.i.i = add i32 %mul1.i.i.i, %mul.i.i.i
  %conv.i.i.i = trunc i32 %add.i.i.i to i8
  %add.i.i = add i8 %conv.i.i.i, 3
  %client.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %add.i.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.end.i.bd2802_write_byte.exit.i_crit_edge, label %do.end.i.i

if.end.i.bd2802_write_byte.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv.i.i = zext i8 %add.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i, i32 noundef 0, i32 noundef %call.i.i) #10
  br label %bd2802_write_byte.exit.i

bd2802_write_byte.exit.i:                         ; preds = %do.end.i.i, %if.end.i.bd2802_write_byte.exit.i_crit_edge
  %add.i34.i = add i8 %conv.i.i.i, 4
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %rgb_current.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 16
  %10 = ptrtoint ptr %rgb_current.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rgb_current.i, align 4
  %conv.i = trunc i32 %11 to i8
  %call.i35.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %add.i34.i, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i35.i)
  %cmp.i36.i = icmp sgt i32 %call.i35.i, -1
  br i1 %cmp.i36.i, label %bd2802_write_byte.exit.i.bd2802_write_byte.exit41.i_crit_edge, label %do.end.i39.i

bd2802_write_byte.exit.i.bd2802_write_byte.exit41.i_crit_edge: ; preds = %bd2802_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit41.i

do.end.i39.i:                                     ; preds = %bd2802_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i37.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %conv.i38.i = zext i8 %add.i34.i to i32
  %conv1.i.i = and i32 %11, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i38.i, i32 noundef %conv1.i.i, i32 noundef %call.i35.i) #10
  br label %bd2802_write_byte.exit41.i

bd2802_write_byte.exit41.i:                       ; preds = %do.end.i39.i, %bd2802_write_byte.exit.i.bd2802_write_byte.exit41.i_crit_edge
  %add.i46.i = add i8 %conv.i.i.i, 5
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %wave_pattern.i = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 15
  %14 = ptrtoint ptr %wave_pattern.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wave_pattern.i, align 4
  %conv9.i = trunc i32 %15 to i8
  %call.i47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %add.i46.i, i8 noundef zeroext %conv9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i47.i)
  %cmp.i48.i = icmp sgt i32 %call.i47.i, -1
  br i1 %cmp.i48.i, label %bd2802_write_byte.exit41.i.bd2802_write_byte.exit54.i_crit_edge, label %do.end.i52.i

bd2802_write_byte.exit41.i.bd2802_write_byte.exit54.i_crit_edge: ; preds = %bd2802_write_byte.exit41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit54.i

do.end.i52.i:                                     ; preds = %bd2802_write_byte.exit41.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i49.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %conv.i50.i = zext i8 %add.i46.i to i32
  %conv1.i51.i = and i32 %15, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i49.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i50.i, i32 noundef %conv1.i51.i, i32 noundef %call.i47.i) #10
  br label %bd2802_write_byte.exit54.i

bd2802_write_byte.exit54.i:                       ; preds = %do.end.i52.i, %bd2802_write_byte.exit41.i.bd2802_write_byte.exit54.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i55.i = icmp eq i32 %id, 0
  %cond.i.i = zext i1 %cmp.i55.i to i32
  %arrayidx.i.i56.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %cond.i.i
  %16 = ptrtoint ptr %arrayidx.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i57.i = load i8, ptr %arrayidx.i.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i57.i)
  %17 = icmp ugt i8 %bf.load.i.i57.i, 3
  %conv4.i.i = select i1 %17, i8 17, i8 1
  %conv5.i.i = zext i1 %17 to i8
  %or7.i.i = or i8 %conv5.i.i, 16
  %value.0.i.i = select i1 %cmp.i55.i, i8 %conv4.i.i, i8 %or7.i.i
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 1, i8 noundef zeroext %value.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i.i, label %bd2802_write_byte.exit54.i.bd2802_enable.exit.i_crit_edge, label %do.end.i.i.i

bd2802_write_byte.exit54.i.bd2802_enable.exit.i_crit_edge: ; preds = %bd2802_write_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_enable.exit.i

do.end.i.i.i:                                     ; preds = %bd2802_write_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv1.i.i.i = zext i8 %value.0.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv1.i.i.i, i32 noundef %call.i.i.i) #10
  br label %bd2802_enable.exit.i

bd2802_enable.exit.i:                             ; preds = %do.end.i.i.i, %bd2802_write_byte.exit54.i.bd2802_enable.exit.i_crit_edge
  br i1 %cmp.i55.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %bd2802_enable.exit.i
  %20 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %color, label %if.then.i.i.do.end.i60.i_crit_edge [
    i32 0, label %if.then.i.i.for.inc.1.sink.split.i.i_crit_edge
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb12.i.i
  ]

if.then.i.i.for.inc.1.sink.split.i.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i

if.then.i.i.do.end.i60.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i60.i

sw.bb3.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i

sw.bb12.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i

do.end.i60.i:                                     ; preds = %if.then.1.i.i.do.end.i60.i_crit_edge, %if.then.i.i.do.end.i60.i_crit_edge
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %dev.i59.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68) #10
  br label %if.end3

for.inc.i.i:                                      ; preds = %bd2802_enable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp1.1.i.i = icmp eq i32 %id, 1
  br i1 %cmp1.1.i.i, label %if.then.1.i.i, label %for.inc.i.i.if.end3_crit_edge

for.inc.i.i.if.end3_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  %23 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %color, label %if.then.1.i.i.do.end.i60.i_crit_edge [
    i32 0, label %sw.bb.1.i.i
    i32 1, label %sw.bb3.1.i.i
    i32 2, label %sw.bb12.1.i.i
  ]

if.then.1.i.i.do.end.i60.i_crit_edge:             ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i60.i

sw.bb12.1.i.i:                                    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.1.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i

sw.bb3.1.i.i:                                     ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.1.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i

sw.bb.1.i.i:                                      ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i

for.inc.1.sink.split.i.i:                         ; preds = %sw.bb.1.i.i, %sw.bb3.1.i.i, %sw.bb12.1.i.i, %sw.bb12.i.i, %sw.bb3.i.i, %if.then.i.i.for.inc.1.sink.split.i.i_crit_edge
  %arrayidx.sink62.i.i = phi ptr [ %arrayidx.i.i.i, %sw.bb3.i.i ], [ %arrayidx.i.i.i, %sw.bb12.i.i ], [ %arrayidx.1.i.i, %sw.bb.1.i.i ], [ %arrayidx5.1.i.i, %sw.bb3.1.i.i ], [ %arrayidx14.1.i.i, %sw.bb12.1.i.i ], [ %arrayidx.i.i.i, %if.then.i.i.for.inc.1.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -49, %sw.bb3.i.i ], [ -13, %sw.bb12.i.i ], [ 63, %sw.bb.1.i.i ], [ -49, %sw.bb3.1.i.i ], [ -13, %sw.bb12.1.i.i ], [ 63, %if.then.i.i.for.inc.1.sink.split.i.i_crit_edge ]
  %bf.shl.sink.i.i = phi i8 [ 16, %sw.bb3.i.i ], [ 4, %sw.bb12.i.i ], [ 64, %sw.bb.1.i.i ], [ 16, %sw.bb3.1.i.i ], [ 4, %sw.bb12.1.i.i ], [ 64, %if.then.i.i.for.inc.1.sink.split.i.i_crit_edge ]
  %24 = ptrtoint ptr %arrayidx.sink62.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %arrayidx.sink62.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, %.sink.i.i
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.sink.i.i
  store i8 %bf.set.i.i, ptr %arrayidx.sink62.i.i, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  br i1 %1, label %if.else.if.end.i28_crit_edge, label %bd2802_is_all_off.exit.i13

if.else.if.end.i28_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

bd2802_is_all_off.exit.i13:                       ; preds = %if.else
  %arrayidx.i.1.i.i11 = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx.i.1.i.i11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.1.i.i12 = load i8, ptr %arrayidx.i.1.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i.i12)
  %26 = icmp ugt i8 %bf.load.i.1.i.i12, 3
  br i1 %26, label %bd2802_is_all_off.exit.i13.if.end.i28_crit_edge, label %land.lhs.true.i16

bd2802_is_all_off.exit.i13.if.end.i28_crit_edge:  ; preds = %bd2802_is_all_off.exit.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

land.lhs.true.i16:                                ; preds = %bd2802_is_all_off.exit.i13
  %adf_on.i14 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 11
  %27 = ptrtoint ptr %adf_on.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adf_on.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i15 = icmp eq i32 %28, 0
  br i1 %tobool1.not.i15, label %if.then.i17, label %land.lhs.true.i16.if.end.i28_crit_edge

land.lhs.true.i16.if.end.i28_crit_edge:           ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

if.then.i17:                                      ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bd2802_reset_cancel(ptr noundef %led) #7
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.then.i17, %land.lhs.true.i16.if.end.i28_crit_edge, %bd2802_is_all_off.exit.i13.if.end.i28_crit_edge, %if.else.if.end.i28_crit_edge
  %mul.i.i.i18 = mul i32 %id, 10
  %mul1.i.i.i19 = mul i32 %color, 3
  %add.i.i.i20 = add i32 %mul1.i.i.i19, %mul.i.i.i18
  %conv.i.i.i21 = trunc i32 %add.i.i.i20 to i8
  %add.i.i22 = add i8 %conv.i.i.i21, 3
  %client.i23 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 1
  %29 = ptrtoint ptr %client.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i23, align 4
  %rgb_current.i24 = getelementptr inbounds %struct.bd2802_led, ptr %led, i32 0, i32 16
  %31 = ptrtoint ptr %rgb_current.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rgb_current.i24, align 4
  %conv.i25 = trunc i32 %32 to i8
  %call.i.i26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext %add.i.i22, i8 noundef zeroext %conv.i25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i26)
  %cmp.i.i27 = icmp sgt i32 %call.i.i26, -1
  br i1 %cmp.i.i27, label %if.end.i28.bd2802_write_byte.exit.i33_crit_edge, label %do.end.i.i32

if.end.i28.bd2802_write_byte.exit.i33_crit_edge:  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit.i33

do.end.i.i32:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i29 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %conv.i.i30 = zext i8 %add.i.i22 to i32
  %conv1.i.i31 = and i32 %32, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i29, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i30, i32 noundef %conv1.i.i31, i32 noundef %call.i.i26) #10
  br label %bd2802_write_byte.exit.i33

bd2802_write_byte.exit.i33:                       ; preds = %do.end.i.i32, %if.end.i28.bd2802_write_byte.exit.i33_crit_edge
  %add.i32.i = add i8 %conv.i.i.i21, 4
  %33 = ptrtoint ptr %client.i23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i23, align 4
  %call.i33.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext %add.i32.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i33.i)
  %cmp.i34.i = icmp sgt i32 %call.i33.i, -1
  br i1 %cmp.i34.i, label %bd2802_write_byte.exit.i33.bd2802_write_byte.exit39.i_crit_edge, label %do.end.i37.i

bd2802_write_byte.exit.i33.bd2802_write_byte.exit39.i_crit_edge: ; preds = %bd2802_write_byte.exit.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit39.i

do.end.i37.i:                                     ; preds = %bd2802_write_byte.exit.i33
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i35.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %conv.i36.i = zext i8 %add.i32.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i36.i, i32 noundef 0, i32 noundef %call.i33.i) #10
  br label %bd2802_write_byte.exit39.i

bd2802_write_byte.exit39.i:                       ; preds = %do.end.i37.i, %bd2802_write_byte.exit.i33.bd2802_write_byte.exit39.i_crit_edge
  %add.i44.i = add i8 %conv.i.i.i21, 5
  %35 = ptrtoint ptr %client.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i23, align 4
  %call.i45.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext %add.i44.i, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i45.i)
  %cmp.i46.i = icmp sgt i32 %call.i45.i, -1
  br i1 %cmp.i46.i, label %bd2802_write_byte.exit39.i.bd2802_write_byte.exit51.i_crit_edge, label %do.end.i49.i

bd2802_write_byte.exit39.i.bd2802_write_byte.exit51.i_crit_edge: ; preds = %bd2802_write_byte.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_write_byte.exit51.i

do.end.i49.i:                                     ; preds = %bd2802_write_byte.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i47.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %conv.i48.i = zext i8 %add.i44.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv.i48.i, i32 noundef 7, i32 noundef %call.i45.i) #10
  br label %bd2802_write_byte.exit51.i

bd2802_write_byte.exit51.i:                       ; preds = %do.end.i49.i, %bd2802_write_byte.exit39.i.bd2802_write_byte.exit51.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i52.i = icmp eq i32 %id, 0
  %cond.i.i34 = zext i1 %cmp.i52.i to i32
  %arrayidx.i.i53.i = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 %cond.i.i34
  %37 = ptrtoint ptr %arrayidx.i.i53.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i54.i = load i8, ptr %arrayidx.i.i53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i54.i)
  %38 = icmp ugt i8 %bf.load.i.i54.i, 3
  %conv4.i.i35 = select i1 %38, i8 17, i8 1
  %conv5.i.i36 = zext i1 %38 to i8
  %or7.i.i37 = or i8 %conv5.i.i36, 16
  %value.0.i.i38 = select i1 %cmp.i52.i, i8 %conv4.i.i35, i8 %or7.i.i37
  %39 = ptrtoint ptr %client.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i23, align 4
  %call.i.i.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext %value.0.i.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i39)
  %cmp.i.i.i40 = icmp sgt i32 %call.i.i.i39, -1
  br i1 %cmp.i.i.i40, label %bd2802_write_byte.exit51.i.bd2802_enable.exit.i44_crit_edge, label %do.end.i.i.i43

bd2802_write_byte.exit51.i.bd2802_enable.exit.i44_crit_edge: ; preds = %bd2802_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd2802_enable.exit.i44

do.end.i.i.i43:                                   ; preds = %bd2802_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i41 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %conv1.i.i.i42 = zext i8 %value.0.i.i38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i41, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %conv1.i.i.i42, i32 noundef %call.i.i.i39) #10
  br label %bd2802_enable.exit.i44

bd2802_enable.exit.i44:                           ; preds = %do.end.i.i.i43, %bd2802_write_byte.exit51.i.bd2802_enable.exit.i44_crit_edge
  br i1 %cmp.i52.i, label %if.then.i.i45, label %for.inc.i.i49

if.then.i.i45:                                    ; preds = %bd2802_enable.exit.i44
  %41 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %color, label %if.then.i.i45.do.end.i57.i_crit_edge [
    i32 0, label %if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge
    i32 1, label %sw.bb3.i.i46
    i32 2, label %sw.bb12.i.i47
  ]

if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge: ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i63

if.then.i.i45.do.end.i57.i_crit_edge:             ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i57.i

sw.bb3.i.i46:                                     ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i63

sw.bb12.i.i47:                                    ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split.i.i63

do.end.i57.i:                                     ; preds = %if.then.1.i.i50.do.end.i57.i_crit_edge, %if.then.i.i45.do.end.i57.i_crit_edge
  %42 = ptrtoint ptr %client.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i23, align 4
  %dev.i56.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68) #10
  br label %if.end3

for.inc.i.i49:                                    ; preds = %bd2802_enable.exit.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp1.1.i.i48 = icmp eq i32 %id, 1
  br i1 %cmp1.1.i.i48, label %if.then.1.i.i50, label %for.inc.i.i49.if.end3_crit_edge

for.inc.i.i49.if.end3_crit_edge:                  ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.1.i.i50:                                  ; preds = %for.inc.i.i49
  %44 = zext i32 %color to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %color, label %if.then.1.i.i50.do.end.i57.i_crit_edge [
    i32 0, label %sw.bb.1.i.i56
    i32 1, label %sw.bb3.1.i.i54
    i32 2, label %sw.bb12.1.i.i52
  ]

if.then.1.i.i50.do.end.i57.i_crit_edge:           ; preds = %if.then.1.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i57.i

sw.bb12.1.i.i52:                                  ; preds = %if.then.1.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.1.i.i51 = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i63

sw.bb3.1.i.i54:                                   ; preds = %if.then.1.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.1.i.i53 = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i63

sw.bb.1.i.i56:                                    ; preds = %if.then.1.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i.i55 = getelementptr %struct.bd2802_led, ptr %led, i32 0, i32 4, i32 1
  br label %for.inc.1.sink.split.i.i63

for.inc.1.sink.split.i.i63:                       ; preds = %sw.bb.1.i.i56, %sw.bb3.1.i.i54, %sw.bb12.1.i.i52, %sw.bb12.i.i47, %sw.bb3.i.i46, %if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge
  %arrayidx.sink62.i.i57 = phi ptr [ %arrayidx.i.i.i, %sw.bb3.i.i46 ], [ %arrayidx.i.i.i, %sw.bb12.i.i47 ], [ %arrayidx.1.i.i55, %sw.bb.1.i.i56 ], [ %arrayidx5.1.i.i53, %sw.bb3.1.i.i54 ], [ %arrayidx14.1.i.i51, %sw.bb12.1.i.i52 ], [ %arrayidx.i.i.i, %if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge ]
  %.sink.i.i58 = phi i8 [ -49, %sw.bb3.i.i46 ], [ -13, %sw.bb12.i.i47 ], [ 63, %sw.bb.1.i.i56 ], [ -49, %sw.bb3.1.i.i54 ], [ -13, %sw.bb12.1.i.i52 ], [ 63, %if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge ]
  %bf.shl.sink.i.i59 = phi i8 [ 32, %sw.bb3.i.i46 ], [ 8, %sw.bb12.i.i47 ], [ -128, %sw.bb.1.i.i56 ], [ 32, %sw.bb3.1.i.i54 ], [ 8, %sw.bb12.1.i.i52 ], [ -128, %if.then.i.i45.for.inc.1.sink.split.i.i63_crit_edge ]
  %45 = ptrtoint ptr %arrayidx.sink62.i.i57 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i60 = load i8, ptr %arrayidx.sink62.i.i57, align 4
  %bf.clear.i.i61 = and i8 %bf.load.i.i60, %.sink.i.i58
  %bf.set.i.i62 = or i8 %bf.clear.i.i61, %bf.shl.sink.i.i59
  store i8 %bf.set.i.i62, ptr %arrayidx.sink62.i.i57, align 4
  br label %if.end3

if.end3:                                          ; preds = %for.inc.1.sink.split.i.i63, %for.inc.i.i49.if.end3_crit_edge, %do.end.i57.i, %for.inc.1.sink.split.i.i, %for.inc.i.i.if.end3_crit_edge, %do.end.i60.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd2802_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.i)
  %3 = icmp ugt i8 %bf.load.i.i, 3
  br i1 %3, label %entry.if.then_crit_edge, label %bd2802_is_all_off.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

bd2802_is_all_off.exit:                           ; preds = %entry
  %arrayidx.i.1.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.1.i = load i8, ptr %arrayidx.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load.i.1.i)
  %5 = icmp ugt i8 %bf.load.i.1.i, 3
  br i1 %5, label %bd2802_is_all_off.exit.if.then_crit_edge, label %lor.lhs.false

bd2802_is_all_off.exit.if.then_crit_edge:         ; preds = %bd2802_is_all_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %bd2802_is_all_off.exit
  %adf_on = getelementptr inbounds %struct.bd2802_led, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %adf_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adf_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %bd2802_is_all_off.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @bd2802_reset_cancel(ptr noundef %1)
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %tobool.not.i = icmp ult i8 %bf.load.i, 64
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %bf.cast.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load9.i = load i8, ptr %arrayidx.i.i, align 4
  %bf.lshr10.i = lshr i8 %bf.load9.i, 4
  %bf.clear.i = and i8 %bf.lshr10.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool12.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then13.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast11.i = zext i8 %bf.clear.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef %bf.cast11.i) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then13.i, %if.end.i.if.end20.i_crit_edge
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load23.i = load i8, ptr %arrayidx.i.i, align 4
  %bf.lshr24.i = lshr i8 %bf.load23.i, 2
  %bf.clear25.i = and i8 %bf.lshr24.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear25.i)
  %tobool27.not.i = icmp eq i8 %bf.clear25.i, 0
  br i1 %tobool27.not.i, label %if.end20.i.for.inc.i_crit_edge, label %if.then28.i

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then28.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast26.i = zext i8 %bf.clear25.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef %bf.cast26.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %if.end20.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.bd2802_led, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.1.i = load i8, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.1.i)
  %tobool.not.1.i = icmp ult i8 %bf.load.1.i, 64
  br i1 %tobool.not.1.i, label %for.inc.i.if.end.1.i_crit_edge, label %if.then.1.i

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr.1.i = lshr i8 %bf.load.1.i, 6
  %bf.cast.1.i = zext i8 %bf.lshr.1.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef %bf.cast.1.i) #7
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.inc.i.if.end.1.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load9.1.i = load i8, ptr %arrayidx.1.i, align 4
  %bf.lshr10.1.i = lshr i8 %bf.load9.1.i, 4
  %bf.clear.1.i = and i8 %bf.lshr10.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.1.i)
  %tobool12.not.1.i = icmp eq i8 %bf.clear.1.i, 0
  br i1 %tobool12.not.1.i, label %if.end.1.i.if.end20.1.i_crit_edge, label %if.then13.1.i

if.end.1.i.if.end20.1.i_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.1.i

if.then13.1.i:                                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast11.1.i = zext i8 %bf.clear.1.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef %bf.cast11.1.i) #7
  br label %if.end20.1.i

if.end20.1.i:                                     ; preds = %if.then13.1.i, %if.end.1.i.if.end20.1.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load23.1.i = load i8, ptr %arrayidx.1.i, align 4
  %bf.lshr24.1.i = lshr i8 %bf.load23.1.i, 2
  %bf.clear25.1.i = and i8 %bf.lshr24.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear25.1.i)
  %tobool27.not.1.i = icmp eq i8 %bf.clear25.1.i, 0
  br i1 %tobool27.not.1.i, label %if.end20.1.i.if.end_crit_edge, label %if.then28.1.i

if.end20.1.i.if.end_crit_edge:                    ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then28.1.i:                                    ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast26.1.i = zext i8 %bf.clear25.1.i to i32
  tail call fastcc void @bd2802_turn_on(ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef %bf.cast26.1.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then28.1.i, %if.end20.1.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !138, !139, !140, !141, !143, !145, !146, !148, !150, !151, !153, !155, !156, !158, !160, !161, !163, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_leds_bd2802__288_797_bd2802_i2c_driver_init6, !1, !"__initcall__kmod_leds_bd2802__288_797_bd2802_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-bd2802.c", i32 797, i32 1}
!2 = !{ptr @__exitcall_bd2802_i2c_driver_exit, !1, !"__exitcall_bd2802_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-bd2802.c", i32 799, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-bd2802.c", i32 800, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-bd2802.c", i32 801, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-bd2802.c", i32 789, i32 11}
!12 = !{ptr @bd2802_i2c_driver, !13, !"bd2802_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-bd2802.c", i32 787, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-bd2802.c", i32 679, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-bd2802.c", i32 689, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bd2802_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bd2802_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-bd2802.c", i32 692, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bd2802_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bd2802_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bd2802_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-bd2802.c", i32 701, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-bd2802.c", i32 707, i32 4}
!34 = !{ptr @bd2802_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd2802_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-bd2802.c", i32 165, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bd2802_write_byte._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bd2802_write_byte._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @bd2802_attributes, !42, !"bd2802_attributes", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-bd2802.c", i32 511, i32 33}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-bd2802.c", i32 465, i32 11}
!45 = !{ptr @bd2802_adv_conf_attr, !46, !"bd2802_adv_conf_attr", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-bd2802.c", i32 463, i32 32}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-bd2802.c", i32 437, i32 22}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-bd2802.c", i32 439, i32 22}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-bd2802.c", i32 454, i32 36}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-bd2802.c", i32 456, i32 40}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-bd2802.c", i32 396, i32 4}
!57 = !{ptr @bd2802_enable_adv_conf._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bd2802_enable_adv_conf._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @bd2802_addr_attributes, !60, !"bd2802_addr_attributes", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-bd2802.c", i32 363, i32 33}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-bd2802.c", i32 340, i32 1}
!63 = !{ptr @bd2802_reg0x00_attr, !62, !"bd2802_reg0x00_attr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-bd2802.c", i32 341, i32 1}
!66 = !{ptr @bd2802_reg0x01_attr, !65, !"bd2802_reg0x01_attr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-bd2802.c", i32 342, i32 1}
!69 = !{ptr @bd2802_reg0x02_attr, !68, !"bd2802_reg0x02_attr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-bd2802.c", i32 343, i32 1}
!72 = !{ptr @bd2802_reg0x03_attr, !71, !"bd2802_reg0x03_attr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-bd2802.c", i32 344, i32 1}
!75 = !{ptr @bd2802_reg0x04_attr, !74, !"bd2802_reg0x04_attr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-bd2802.c", i32 345, i32 1}
!78 = !{ptr @bd2802_reg0x05_attr, !77, !"bd2802_reg0x05_attr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-bd2802.c", i32 346, i32 1}
!81 = !{ptr @bd2802_reg0x06_attr, !80, !"bd2802_reg0x06_attr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-bd2802.c", i32 347, i32 1}
!84 = !{ptr @bd2802_reg0x07_attr, !83, !"bd2802_reg0x07_attr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/leds-bd2802.c", i32 348, i32 1}
!87 = !{ptr @bd2802_reg0x08_attr, !86, !"bd2802_reg0x08_attr", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/leds/leds-bd2802.c", i32 349, i32 1}
!90 = !{ptr @bd2802_reg0x09_attr, !89, !"bd2802_reg0x09_attr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/leds-bd2802.c", i32 350, i32 1}
!93 = !{ptr @bd2802_reg0x0a_attr, !92, !"bd2802_reg0x0a_attr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/leds/leds-bd2802.c", i32 351, i32 1}
!96 = !{ptr @bd2802_reg0x0b_attr, !95, !"bd2802_reg0x0b_attr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-bd2802.c", i32 352, i32 1}
!99 = !{ptr @bd2802_reg0x0c_attr, !98, !"bd2802_reg0x0c_attr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/leds/leds-bd2802.c", i32 353, i32 1}
!102 = !{ptr @bd2802_reg0x0d_attr, !101, !"bd2802_reg0x0d_attr", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/leds/leds-bd2802.c", i32 354, i32 1}
!105 = !{ptr @bd2802_reg0x0e_attr, !104, !"bd2802_reg0x0e_attr", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/leds/leds-bd2802.c", i32 355, i32 1}
!108 = !{ptr @bd2802_reg0x0f_attr, !107, !"bd2802_reg0x0f_attr", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/leds/leds-bd2802.c", i32 356, i32 1}
!111 = !{ptr @bd2802_reg0x10_attr, !110, !"bd2802_reg0x10_attr", i1 false, i1 false}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/leds/leds-bd2802.c", i32 357, i32 1}
!114 = !{ptr @bd2802_reg0x11_attr, !113, !"bd2802_reg0x11_attr", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/leds/leds-bd2802.c", i32 358, i32 1}
!117 = !{ptr @bd2802_reg0x12_attr, !116, !"bd2802_reg0x12_attr", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/leds/leds-bd2802.c", i32 359, i32 1}
!120 = !{ptr @bd2802_reg0x13_attr, !119, !"bd2802_reg0x13_attr", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/leds/leds-bd2802.c", i32 360, i32 1}
!123 = !{ptr @bd2802_reg0x14_attr, !122, !"bd2802_reg0x14_attr", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/leds/leds-bd2802.c", i32 361, i32 1}
!126 = !{ptr @bd2802_reg0x15_attr, !125, !"bd2802_reg0x15_attr", i1 false, i1 false}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/leds/leds-bd2802.c", i32 508, i32 1}
!129 = !{ptr @bd2802_wave_pattern_attr, !128, !"bd2802_wave_pattern_attr", i1 false, i1 false}
!130 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/leds/leds-bd2802.c", i32 509, i32 1}
!133 = !{ptr @bd2802_rgb_current_attr, !132, !"bd2802_rgb_current_attr", i1 false, i1 false}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/leds/leds-bd2802.c", i32 559, i32 25}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/leds/leds-bd2802.c", i32 566, i32 3}
!138 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @bd2802_register_led_classdev._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @bd2802_register_led_classdev._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/leds/leds-bd2802.c", i32 571, i32 25}
!143 = !{ptr @bd2802_register_led_classdev._entry.52, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/leds/leds-bd2802.c", i32 578, i32 3}
!145 = !{ptr @bd2802_register_led_classdev._entry_ptr.53, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/leds/leds-bd2802.c", i32 583, i32 25}
!148 = !{ptr @bd2802_register_led_classdev._entry.55, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/leds/leds-bd2802.c", i32 590, i32 3}
!150 = !{ptr @bd2802_register_led_classdev._entry_ptr.56, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/leds/leds-bd2802.c", i32 595, i32 25}
!153 = !{ptr @bd2802_register_led_classdev._entry.58, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/leds/leds-bd2802.c", i32 602, i32 3}
!155 = !{ptr @bd2802_register_led_classdev._entry_ptr.59, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/leds/leds-bd2802.c", i32 607, i32 25}
!158 = !{ptr @bd2802_register_led_classdev._entry.61, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/leds/leds-bd2802.c", i32 614, i32 3}
!160 = !{ptr @bd2802_register_led_classdev._entry_ptr.62, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/leds/leds-bd2802.c", i32 619, i32 25}
!163 = !{ptr @bd2802_register_led_classdev._entry.64, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/leds/leds-bd2802.c", i32 627, i32 3}
!165 = !{ptr @bd2802_register_led_classdev._entry_ptr.65, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/leds/leds-bd2802.c", i32 119, i32 3}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bd2802_is_rgb_off._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @bd2802_is_rgb_off._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/leds/leds-bd2802.c", i32 190, i32 5}
!173 = !{ptr @bd2802_update_state._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @bd2802_update_state._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/leds/leds-bd2802.c", i32 291, i32 3}
!177 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @bd2802_turn_on._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @bd2802_turn_on._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @bd2802_pm, !181, !"bd2802_pm", i1 false, i1 false}
!181 = !{!"../drivers/leds/leds-bd2802.c", i32 779, i32 8}
!182 = !{ptr @bd2802_id, !183, !"bd2802_id", i1 false, i1 false}
!183 = !{!"../drivers/leds/leds-bd2802.c", i32 781, i32 35}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{!"auto-init"}
