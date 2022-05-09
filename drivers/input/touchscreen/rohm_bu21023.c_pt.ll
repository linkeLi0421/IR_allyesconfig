; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/rohm_bu21023.c_pt.bc'
source_filename = "../drivers/input/touchscreen/rohm_bu21023.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rohm_ts_data = type { ptr, ptr, i8, [3 x i32], i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.input_mt_pos = type { i16, i16 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_rohm_bu21023__291_1190_rohm_bu21023_i2c_driver_init6 = internal global ptr @rohm_bu21023_i2c_driver_init, section ".initcall6.init", align 4
@rohm_bu21023_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rohm_bu21023_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rohm_bu21023_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rohm_bu21023_i2c_driver_exit = internal global ptr @rohm_bu21023_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [60 x i8] c"rohm_bu21023.description=ROHM BU21023/24 Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [57 x i8] c"rohm_bu21023.file=drivers/input/touchscreen/rohm_bu21023\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"rohm_bu21023.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [35 x i8] c"rohm_bu21023.author=ROHM Co., Ltd.\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bu21023_ts\00", [21 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bu21023_ts\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ is not assigned\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rohm_bu21023_i2c_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/rohm_bu21023.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr = internal global ptr @rohm_bu21023_i2c_probe._entry, section ".printk_index", align 4
@rohm_bu21023_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I2C level transfers not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr.8 = internal global ptr @rohm_bu21023_i2c_probe._entry.6, section ".printk_index", align 4
@rohm_bu21023_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to multi touch slots initialization\0A\00", [52 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr.11 = internal global ptr @rohm_bu21023_i2c_probe._entry.9, section ".printk_index", align 4
@rohm_bu21023_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr.14 = internal global ptr @rohm_bu21023_i2c_probe._entry.12, section ".printk_index", align 4
@rohm_bu21023_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr.17 = internal global ptr @rohm_bu21023_i2c_probe._entry.15, section ".printk_index", align 4
@rohm_ts_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rohm_ts_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create sysfs group: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rohm_bu21023_i2c_probe._entry_ptr.20 = internal global ptr @rohm_bu21023_i2c_probe._entry.18, section ".printk_index", align 4
@rohm_ts_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to power off device CPU: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rohm_ts_power_off\00", [46 x i8] zeroinitializer }, align 32
@rohm_ts_power_off._entry_ptr = internal global ptr @rohm_ts_power_off._entry, section ".printk_index", align 4
@rohm_ts_power_off._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 1064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to power off the device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rohm_ts_power_off._entry_ptr.25 = internal global ptr @rohm_ts_power_off._entry.23, section ".printk_index", align 4
@rohm_ts_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device initialization failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rohm_ts_open\00", [19 x i8] zeroinitializer }, align 32
@rohm_ts_open._entry_ptr = internal global ptr @rohm_ts_open._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bu21023.bin\00", [20 x i8] zeroinitializer }, align 32
@rohm_ts_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 986, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to load firmware: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rohm_ts_device_init\00", [44 x i8] zeroinitializer }, align 32
@rohm_ts_device_init._entry_ptr = internal global ptr @rohm_ts_device_init._entry, section ".printk_index", align 4
@rohm_ts_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to retrieve firmware %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm_ts_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@rohm_ts_load_firmware._entry_ptr = internal global ptr @rohm_ts_load_firmware._entry, section ".printk_index", align 4
@rohm_ts_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 667, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"retrying firmware load\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rohm_ts_load_firmware._entry_ptr.36 = internal global ptr @rohm_ts_load_firmware._entry.33, section ".printk_index", align 4
@untouch_threshold = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 5], [20 x i8] zeroinitializer }, align 32
@single_touch_threshold = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 4], [20 x i8] zeroinitializer }, align 32
@dual_touch_threshold = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 8, i32 0], [20 x i8] zeroinitializer }, align 32
@rohm_ts_soft_irq.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rohm_bu21023\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rohm_ts_soft_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Three or more touches are not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@rohm_ts_soft_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 632, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"manual calibration failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rohm_ts_soft_irq._entry_ptr = internal global ptr @rohm_ts_soft_irq._entry, section ".printk_index", align 4
@rohm_ts_manual_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 474, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calibration timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rohm_ts_manual_calibration\00", [37 x i8] zeroinitializer }, align 32
@rohm_ts_manual_calibration._entry_ptr = internal global ptr @rohm_ts_manual_calibration._entry, section ".printk_index", align 4
@rohm_ts_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_swap_xy, ptr @dev_attr_inv_x, ptr @dev_attr_inv_y, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_swap_xy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @swap_xy_show, ptr @swap_xy_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inv_x = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inv_x_show, ptr @inv_x_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inv_y = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inv_y_show, ptr @inv_y_store }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"swap_xy\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inv_x\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inv_y\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"rohm_bu21023_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1183, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1185, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"rohm_bu21023_i2c_id\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1177, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1107, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1112, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1150, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1158, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1164, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"rohm_ts_attr_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 858, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1170, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1055, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1063, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1078, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 984, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 986, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 654, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 667, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"untouch_threshold\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 516, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"single_touch_threshold\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 517, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant [21 x i8] c"dual_touch_threshold\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 518, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 596, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 631, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 474, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [14 x i8] c"rohm_ts_attrs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 851, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"dev_attr_swap_xy\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [15 x i8] c"dev_attr_inv_x\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"dev_attr_inv_y\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 847, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 736, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 848, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [44 x i8] c"../drivers/input/touchscreen/rohm_bu21023.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 849, i32 8 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_rohm_bu21023_i2c_driver_exit, ptr @__initcall__kmod_rohm_bu21023__291_1190_rohm_bu21023_i2c_driver_init6, ptr @rohm_bu21023_i2c_driver_exit, ptr @rohm_bu21023_i2c_probe._entry, ptr @rohm_bu21023_i2c_probe._entry.12, ptr @rohm_bu21023_i2c_probe._entry.15, ptr @rohm_bu21023_i2c_probe._entry.18, ptr @rohm_bu21023_i2c_probe._entry.6, ptr @rohm_bu21023_i2c_probe._entry.9, ptr @rohm_bu21023_i2c_probe._entry_ptr, ptr @rohm_bu21023_i2c_probe._entry_ptr.11, ptr @rohm_bu21023_i2c_probe._entry_ptr.14, ptr @rohm_bu21023_i2c_probe._entry_ptr.17, ptr @rohm_bu21023_i2c_probe._entry_ptr.20, ptr @rohm_bu21023_i2c_probe._entry_ptr.8, ptr @rohm_ts_device_init._entry, ptr @rohm_ts_device_init._entry_ptr, ptr @rohm_ts_load_firmware._entry, ptr @rohm_ts_load_firmware._entry.33, ptr @rohm_ts_load_firmware._entry_ptr, ptr @rohm_ts_load_firmware._entry_ptr.36, ptr @rohm_ts_manual_calibration._entry, ptr @rohm_ts_manual_calibration._entry_ptr, ptr @rohm_ts_open._entry, ptr @rohm_ts_open._entry_ptr, ptr @rohm_ts_power_off._entry, ptr @rohm_ts_power_off._entry.23, ptr @rohm_ts_power_off._entry_ptr, ptr @rohm_ts_power_off._entry_ptr.25, ptr @rohm_ts_soft_irq._entry, ptr @rohm_ts_soft_irq._entry_ptr, ptr @rohm_bu21023_i2c_driver, ptr @.str, ptr @rohm_bu21023_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @rohm_ts_attr_group, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @untouch_threshold, ptr @single_touch_threshold, ptr @dual_touch_threshold, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rohm_ts_attrs, ptr @dev_attr_swap_xy, ptr @dev_attr_inv_x, ptr @dev_attr_inv_y, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_bu21023_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_power_off._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @untouch_threshold to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_touch_threshold to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dual_touch_threshold to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_soft_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_manual_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rohm_ts_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_swap_xy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inv_x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inv_y to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rohm_bu21023_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rohm_bu21023_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rohm_bu21023_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rohm_bu21023_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rohm_bu21023_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %call.i100 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #8
  %tobool12.not = icmp eq ptr %call.i100, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call.i100 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i100, align 4
  %setup2 = getelementptr inbounds %struct.rohm_ts_data, ptr %call.i100, i32 0, i32 5
  %9 = ptrtoint ptr %setup2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %setup2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i100, ptr %driver_data.i.i, align 4
  %call16 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %call16, align 8
  %id20 = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 3
  %12 = ptrtoint ptr %id20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24, ptr %id20, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 31
  %13 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rohm_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 32
  %14 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rohm_ts_close, ptr %close, align 4
  %input21 = getelementptr inbounds %struct.rohm_ts_data, ptr %call.i100, i32 0, i32 1
  %15 = ptrtoint ptr %input21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %input21, align 4
  %driver_data.i.i101 = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i101 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i100, ptr %driver_data.i.i101, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call16, i32 noundef 53, i32 noundef 40, i32 noundef 990, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call16, i32 noundef 54, i32 noundef 160, i32 noundef 920, i32 noundef 0, i32 noundef 0) #8
  %call22 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call16, i32 noundef 2, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %name30 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call31 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %18, ptr noundef null, ptr noundef nonnull @rohm_ts_soft_irq, i32 noundef 8192, ptr noundef %name30, ptr noundef nonnull %call.i100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call31) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %call38 = tail call i32 @input_register_device(ptr noundef nonnull %call16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call38) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call45 = tail call i32 @devm_device_add_group(ptr noundef %dev1, ptr noundef nonnull @rohm_ts_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call45) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %do.end43, %do.end36, %do.end27, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end6.i, %do.end.i, %do.end6, %do.end
  %retval.0 = phi i32 [ %call22, %do.end27 ], [ %call31, %do.end36 ], [ %call38, %do.end43 ], [ %call45, %do.end50 ], [ -95, %do.end6 ], [ -22, %do.end ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %call1.i, %do.end6.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rohm_ts_open(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %initialized = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %setup2 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %setup2, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 42949600) #8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 114, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.do.end_crit_edge

if.end5.i.do.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 48, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.do.end_crit_edge

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 49, i8 noundef zeroext %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.do.end_crit_edge

if.end13.i.do.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 50, i8 noundef zeroext 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.do.end_crit_edge

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 59, i8 noundef zeroext 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.do.end_crit_edge

if.end21.i.do.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end25.i:                                       ; preds = %if.end21.i
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 51, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.do.end_crit_edge

if.end25.i.do.end_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end29.i:                                       ; preds = %if.end25.i
  %call30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 80, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.do.end_crit_edge

if.end29.i.do.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end33.i:                                       ; preds = %if.end29.i
  %call34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 87, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.do.end_crit_edge

if.end33.i.do.end_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 96, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.do.end_crit_edge

if.end37.i.do.end_crit_edge:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 97, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.do.end_crit_edge

if.end41.i.do.end_crit_edge:                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end45.i:                                       ; preds = %if.end41.i
  %call46.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 52, i8 noundef zeroext 65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.do.end_crit_edge

if.end45.i.do.end_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end49.i:                                       ; preds = %if.end45.i
  %call50.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 53, i8 noundef zeroext -115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end49.i.do.end_crit_edge

if.end49.i.do.end_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end53.i:                                       ; preds = %if.end49.i
  %call54.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 56, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end53.i.do.end_crit_edge

if.end53.i.do.end_crit_edge:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end57.i:                                       ; preds = %if.end53.i
  %call58.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 57, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end57.i.do.end_crit_edge

if.end57.i.do.end_crit_edge:                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end61.i:                                       ; preds = %if.end57.i
  %call62.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 58, i8 noundef zeroext -96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end61.i.do.end_crit_edge

if.end61.i.do.end_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end65.i:                                       ; preds = %if.end61.i
  %call66.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 86, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end65.i.do.end_crit_edge

if.end65.i.do.end_crit_edge:                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end69.i:                                       ; preds = %if.end65.i
  %call70.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 99, i8 noundef zeroext -122) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.end69.i.do.end_crit_edge

if.end69.i.do.end_crit_edge:                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end73.i:                                       ; preds = %if.end69.i
  %call74.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 100, i8 noundef zeroext 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end73.i.do.end_crit_edge

if.end73.i.do.end_crit_edge:                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end77.i:                                       ; preds = %if.end73.i
  %call78.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 82, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %if.end77.i.do.end_crit_edge

if.end77.i.do.end_crit_edge:                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end81.i:                                       ; preds = %if.end77.i
  %call82.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 98, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.end81.i.do.end_crit_edge

if.end81.i.do.end_crit_edge:                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end85.i:                                       ; preds = %if.end81.i
  %call86.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 101, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %if.end85.i.do.end_crit_edge

if.end85.i.do.end_crit_edge:                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end89.i:                                       ; preds = %if.end85.i
  %call90.i = tail call fastcc i32 @rohm_ts_load_firmware(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end93.i, label %do.end.i

do.end.i:                                         ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.29, i32 noundef %call90.i) #11
  br label %do.end

if.end93.i:                                       ; preds = %if.end89.i
  %call94.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 104, i8 noundef zeroext -39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %if.end93.i.do.end_crit_edge

if.end93.i.do.end_crit_edge:                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end97.i:                                       ; preds = %if.end93.i
  %call98.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 105, i8 noundef zeroext 54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end101.i, label %if.end97.i.do.end_crit_edge

if.end97.i.do.end_crit_edge:                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end101.i:                                      ; preds = %if.end97.i
  %call102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 106, i8 noundef zeroext 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %if.end101.i.do.end_crit_edge

if.end101.i.do.end_crit_edge:                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end105.i:                                      ; preds = %if.end101.i
  %call106.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 66, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end109.i, label %if.end105.i.do.end_crit_edge

if.end105.i.do.end_crit_edge:                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end109.i:                                      ; preds = %if.end105.i
  %call110.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 66, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %if.end109.i.do.end_crit_edge

if.end109.i.do.end_crit_edge:                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end113.i:                                      ; preds = %if.end109.i
  %call114.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.end117.i, label %if.end113.i.do.end_crit_edge

if.end113.i.do.end_crit_edge:                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end117.i:                                      ; preds = %if.end113.i
  %call118.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 61, i8 noundef zeroext 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end121.i, label %if.end117.i.do.end_crit_edge

if.end117.i.do.end_crit_edge:                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end121.i:                                      ; preds = %if.end117.i
  %call122.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 63, i8 noundef zeroext 19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %rohm_ts_device_init.exit, label %if.end121.i.do.end_crit_edge

if.end121.i.do.end_crit_edge:                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

rohm_ts_device_init.exit:                         ; preds = %if.end121.i
  %call126.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 3) #8
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool3.not = icmp eq i32 %call126.i, 0
  br i1 %tobool3.not, label %if.end, label %rohm_ts_device_init.exit.do.end_crit_edge

rohm_ts_device_init.exit.do.end_crit_edge:        ; preds = %rohm_ts_device_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %rohm_ts_device_init.exit.do.end_crit_edge, %if.end121.i.do.end_crit_edge, %if.end117.i.do.end_crit_edge, %if.end113.i.do.end_crit_edge, %if.end109.i.do.end_crit_edge, %if.end105.i.do.end_crit_edge, %if.end101.i.do.end_crit_edge, %if.end97.i.do.end_crit_edge, %if.end93.i.do.end_crit_edge, %do.end.i, %if.end85.i.do.end_crit_edge, %if.end81.i.do.end_crit_edge, %if.end77.i.do.end_crit_edge, %if.end73.i.do.end_crit_edge, %if.end69.i.do.end_crit_edge, %if.end65.i.do.end_crit_edge, %if.end61.i.do.end_crit_edge, %if.end57.i.do.end_crit_edge, %if.end53.i.do.end_crit_edge, %if.end49.i.do.end_crit_edge, %if.end45.i.do.end_crit_edge, %if.end41.i.do.end_crit_edge, %if.end37.i.do.end_crit_edge, %if.end33.i.do.end_crit_edge, %if.end29.i.do.end_crit_edge, %if.end25.i.do.end_crit_edge, %if.end21.i.do.end_crit_edge, %if.end17.i.do.end_crit_edge, %if.end13.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %if.end5.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i17 = phi i32 [ %call126.i, %rohm_ts_device_init.exit.do.end_crit_edge ], [ %call122.i, %if.end121.i.do.end_crit_edge ], [ %call118.i, %if.end117.i.do.end_crit_edge ], [ %call114.i, %if.end113.i.do.end_crit_edge ], [ %call110.i, %if.end109.i.do.end_crit_edge ], [ %call106.i, %if.end105.i.do.end_crit_edge ], [ %call102.i, %if.end101.i.do.end_crit_edge ], [ %call98.i, %if.end97.i.do.end_crit_edge ], [ %call94.i, %if.end93.i.do.end_crit_edge ], [ %call86.i, %if.end85.i.do.end_crit_edge ], [ %call82.i, %if.end81.i.do.end_crit_edge ], [ %call78.i, %if.end77.i.do.end_crit_edge ], [ %call74.i, %if.end73.i.do.end_crit_edge ], [ %call70.i, %if.end69.i.do.end_crit_edge ], [ %call66.i, %if.end65.i.do.end_crit_edge ], [ %call62.i, %if.end61.i.do.end_crit_edge ], [ %call58.i, %if.end57.i.do.end_crit_edge ], [ %call54.i, %if.end53.i.do.end_crit_edge ], [ %call50.i, %if.end49.i.do.end_crit_edge ], [ %call46.i, %if.end45.i.do.end_crit_edge ], [ %call42.i, %if.end41.i.do.end_crit_edge ], [ %call38.i, %if.end37.i.do.end_crit_edge ], [ %call34.i, %if.end33.i.do.end_crit_edge ], [ %call30.i, %if.end29.i.do.end_crit_edge ], [ %call26.i, %if.end25.i.do.end_crit_edge ], [ %call22.i, %if.end21.i.do.end_crit_edge ], [ %call18.i, %if.end17.i.do.end_crit_edge ], [ %call14.i, %if.end13.i.do.end_crit_edge ], [ %call10.i, %if.end9.i.do.end_crit_edge ], [ %call6.i, %if.end5.i.do.end_crit_edge ], [ %call2.i, %if.end.i.do.end_crit_edge ], [ %call.i, %if.then.do.end_crit_edge ], [ %call90.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i17) #11
  br label %cleanup

if.end:                                           ; preds = %rohm_ts_device_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i17, %do.end ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rohm_ts_close(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %rohm_ts_power_off.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.rohm_ts_power_off.exit_crit_edge, label %do.end6.i

if.end.i.rohm_ts_power_off.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rohm_ts_power_off.exit

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #11
  br label %rohm_ts_power_off.exit

rohm_ts_power_off.exit:                           ; preds = %do.end6.i, %if.end.i.rohm_ts_power_off.exit_crit_edge, %do.end.i
  %initialized = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %initialized, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rohm_ts_soft_irq(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %start.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [10 x i8], align 1
  %pos = alloca [2 x %struct.input_mt_pos], align 8
  %slots = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %input = getelementptr inbounds %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 6
  %10 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 7
  %11 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  %12 = call ptr @memset(ptr %buf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #8
  %13 = getelementptr inbounds %struct.input_mt_pos, ptr %pos, i32 0, i32 1
  %14 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1
  %15 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slots) #8
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %slots, align 4, !annotation !120
  %18 = getelementptr inbounds [2 x i32], ptr %slots, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !120
  %finger_count3 = getelementptr inbounds %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 4
  %20 = ptrtoint ptr %finger_count3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %finger_count3, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext -97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.addr.i)
  %22 = ptrtoint ptr %start.addr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %start.addr.i, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %25 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %25, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %start.addr.i, ptr %buf6.i, align 4
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %28, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags11.i, align 2
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 10, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf, ptr %buf15.i, align 4
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 4
  %37 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock_ops.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void %40(ptr noundef %24, i32 noundef 2) #8
  %call.i = call i32 @__i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  br i1 %cmp18.i, label %cleanup.critedge, label %for.cond.i

for.cond.i:                                       ; preds = %if.end7
  %call.1.i = call i32 @__i2c_transfer(ptr noundef %24, ptr noundef %arrayidx8.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp18.1.i = icmp sgt i32 %call.1.i, -1
  %41 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %44(ptr noundef %24, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i)
  br i1 %cmp18.1.i, label %if.end11, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %for.cond.i
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %11, align 1
  %47 = and i8 %46, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool13.not = icmp eq i8 %47, 0
  br i1 %tobool13.not, label %sw.bb, label %if.end51

if.end51:                                         ; preds = %if.end11
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf, align 1
  %50 = zext i8 %49 to i16
  %shl = shl nuw nsw i16 %50, 2
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %conv19 = zext i8 %52 to i16
  %or = or i16 %shl, %conv19
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or, ptr %pos, align 8
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %5, align 1
  %56 = zext i8 %55 to i16
  %shl25 = shl nuw nsw i16 %56, 2
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %6, align 1
  %conv27 = zext i8 %58 to i16
  %or28 = or i16 %shl25, %conv27
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %or28, ptr %13, align 2
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %7, align 1
  %62 = zext i8 %61 to i16
  %shl34 = shl nuw nsw i16 %62, 2
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %8, align 1
  %conv36 = zext i8 %64 to i16
  %or37 = or i16 %shl34, %conv36
  %65 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %or37, ptr %14, align 4
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %9, align 1
  %68 = zext i8 %67 to i16
  %shl44 = shl nuw nsw i16 %68, 2
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %10, align 1
  %conv46 = zext i8 %70 to i16
  %or47 = or i16 %shl44, %conv46
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %or47, ptr %15, align 2
  %conv52 = zext i8 %47 to i32
  %72 = zext i32 %conv52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv52, label %do.body [
    i32 3, label %sw.bb95
    i32 1, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.end11
  %arrayidx53 = getelementptr [3 x i32], ptr @untouch_threshold, i32 0, i32 %21
  %73 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx53, align 4
  %contact_count = getelementptr inbounds %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 3
  %75 = ptrtoint ptr %contact_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %contact_count, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %contact_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %74)
  %cmp.not = icmp ult i32 %inc, %74
  br i1 %cmp.not, label %sw.bb.if.end138_crit_edge, label %sw.bb.if.then112_crit_edge

sw.bb.if.then112_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

sw.bb.if.end138_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

sw.bb58:                                          ; preds = %if.end51
  %arrayidx59 = getelementptr [3 x i32], ptr @single_touch_threshold, i32 0, i32 %21
  %77 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx59, align 4
  %arrayidx61 = getelementptr %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx61, align 4
  %inc62 = add i32 %80, 1
  store i32 %inc62, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc62, i32 %78)
  %cmp63.not = icmp ult i32 %inc62, %78
  br i1 %cmp63.not, label %sw.bb58.if.end138_crit_edge, label %if.then69

sw.bb58.if.end138_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then69:                                        ; preds = %sw.bb58
  %81 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp73.not = icmp eq i16 %82, 0
  br i1 %cmp73.not, label %if.then69.if.then112_crit_edge, label %land.lhs.true

if.then69.if.then112_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

land.lhs.true:                                    ; preds = %if.then69
  %83 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp78.not = icmp eq i16 %84, 0
  br i1 %cmp78.not, label %land.lhs.true.if.then112_crit_edge, label %if.then80

land.lhs.true.if.then112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %82, ptr %pos, align 8
  %86 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %84, ptr %13, align 2
  %87 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %14, align 4
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %15, align 2
  br label %if.then112

sw.bb95:                                          ; preds = %if.end51
  %arrayidx96 = getelementptr [3 x i32], ptr @dual_touch_threshold, i32 0, i32 %21
  %89 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx96, align 4
  %arrayidx98 = getelementptr %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 3, i32 2
  %91 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx98, align 4
  %inc99 = add i32 %92, 1
  store i32 %inc99, ptr %arrayidx98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc99, i32 %90)
  %cmp100.not = icmp ult i32 %inc99, %90
  br i1 %cmp100.not, label %sw.bb95.if.end138_crit_edge, label %sw.bb95.if.then112_crit_edge

sw.bb95.if.then112_crit_edge:                     ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

sw.bb95.if.end138_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

do.body:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rohm_ts_soft_irq.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rohm_ts_soft_irq, %if.then108)) #8
          to label %cleanup [label %if.then108], !srcloc !121

if.then108:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rohm_ts_soft_irq.__UNIQUE_ID_ddebug288, ptr noundef %dev2, ptr noundef nonnull @.str.39) #8
  br label %cleanup

if.then112:                                       ; preds = %sw.bb95.if.then112_crit_edge, %if.then80, %land.lhs.true.if.then112_crit_edge, %if.then69.if.then112_crit_edge, %sw.bb.if.then112_crit_edge
  %exitcond.not = phi i1 [ false, %sw.bb95.if.then112_crit_edge ], [ true, %sw.bb.if.then112_crit_edge ], [ true, %if.then69.if.then112_crit_edge ], [ true, %land.lhs.true.if.then112_crit_edge ], [ true, %if.then80 ]
  %finger_count.1217 = phi i32 [ 2, %sw.bb95.if.then112_crit_edge ], [ 0, %sw.bb.if.then112_crit_edge ], [ 1, %if.then69.if.then112_crit_edge ], [ 1, %land.lhs.true.if.then112_crit_edge ], [ 1, %if.then80 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %finger_count.1217)
  %cmp113.not = icmp eq i32 %21, %finger_count.1217
  br i1 %cmp113.not, label %if.then112.if.end122_crit_edge, label %if.then115

if.then112.if.end122_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %contact_count116 = getelementptr inbounds %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 3
  %arrayidx117 = getelementptr %struct.rohm_ts_data, ptr %dev_id, i32 0, i32 3, i32 %finger_count.1217
  %93 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx117, align 4
  %95 = call ptr @memset(ptr %contact_count116, i32 0, i32 12)
  store i32 %94, ptr %arrayidx117, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then115, %if.then112.if.end122_crit_edge
  %call125 = call i32 @input_mt_assign_slots(ptr noundef %3, ptr noundef nonnull %slots, ptr noundef nonnull %pos, i32 noundef %finger_count.1217, i32 noundef 0) #8
  br i1 %tobool13.not, label %if.end122.for.end_crit_edge, label %for.body

if.end122.for.end_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end122
  %96 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %slots, align 4
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %97) #8
  %call129 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #8
  %98 = ptrtoint ptr %pos to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pos, align 8
  %conv132 = sext i16 %99 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv132) #8
  %y134 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 0, i32 1
  %100 = ptrtoint ptr %y134 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %y134, align 2
  %conv135 = sext i16 %101 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv135) #8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx128.1 = getelementptr inbounds [2 x i32], ptr %slots, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx128.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx128.1, align 4
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %103) #8
  %call129.1 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #8
  %arrayidx130.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx130.1, align 4
  %conv132.1 = sext i16 %105 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv132.1) #8
  %y134.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %y134.1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %y134.1, align 2
  %conv135.1 = sext i16 %107 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv135.1) #8
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %if.end122.for.end_crit_edge
  call void @input_mt_sync_frame(ptr noundef %3) #8
  call void @input_mt_report_pointer_emulation(ptr noundef %3, i1 noundef zeroext true) #8
  call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %108 = ptrtoint ptr %finger_count3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %finger_count.1217, ptr %finger_count3, align 4
  br label %if.end138

if.end138:                                        ; preds = %for.end, %sw.bb95.if.end138_crit_edge, %sw.bb58.if.end138_crit_edge, %sw.bb.if.end138_crit_edge
  %109 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %11, align 1
  %111 = and i8 %110, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool142.not = icmp eq i8 %111, 0
  br i1 %tobool142.not, label %if.end138.if.end151_crit_edge, label %if.then143

if.end138.if.end151_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then143:                                       ; preds = %if.end138
  %call144 = call fastcc i32 @rohm_ts_manual_calibration(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.if.end151_crit_edge, label %do.end149

if.then143.if.end151_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

do.end149:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.40, i32 noundef %call144) #11
  br label %if.end151

if.end151:                                        ; preds = %do.end149, %if.then143.if.end151_crit_edge, %if.end138.if.end151_crit_edge
  %call152 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 30) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i.c = getelementptr inbounds %struct.i2c_lock_operations, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %unlock_bus.i.i.c to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %unlock_bus.i.i.c, align 4
  call void %115(ptr noundef %24, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end151, %if.then108, %do.body, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slots) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rohm_ts_load_firmware(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !120
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.28, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 61, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.do.body6_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.do.body6_crit_edge:                        ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.end46.do.body6_crit_edge, %if.end.do.body6_crit_edge
  %retry.0 = phi i32 [ %inc, %if.end46.do.body6_crit_edge ], [ 0, %if.end.do.body6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool7.not = icmp eq i32 %retry.0, 0
  br i1 %tobool7.not, label %do.body6.if.end16_crit_edge, label %do.end11

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end11:                                         ; preds = %do.body6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.34) #11
  %call12 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 114, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end11.if.end16_crit_edge, label %do.end11.out_crit_edge

do.end11.out_crit_edge:                           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end11.if.end16_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %do.end11.if.end16_crit_edge, %do.body6.if.end16_crit_edge
  %call17 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 112, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 113, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext 78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28:                                         ; preds = %if.end24
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool29.not2 = icmp eq i32 %4, 0
  br i1 %tobool29.not2, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %if.end28.while.body_crit_edge
  %len.04 = phi i32 [ %sub, %if.end33.while.body_crit_edge ], [ %4, %if.end28.while.body_crit_edge ]
  %offset.03 = phi i32 [ %add, %if.end33.while.body_crit_edge ], [ 0, %if.end28.while.body_crit_edge ]
  %5 = call i32 @llvm.umin.i32(i32 %len.04, i32 32)
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %offset.03
  %call30 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext 114, i8 noundef zeroext %conv, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end33:                                         ; preds = %while.body
  %sub = sub i32 %len.04, %5
  %add = add i32 %5, %offset.03
  %tobool29.not = icmp eq i32 %sub, 0
  br i1 %tobool29.not, label %if.end33.while.end_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %if.end28.while.end_crit_edge
  %call34 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %while.end.out_crit_edge, label %if.end38

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %while.end
  %call39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call34)
  %cmp43 = icmp eq i32 %call34, 16
  br i1 %cmp43, label %if.end42.out_crit_edge, label %if.end46

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end46:                                         ; preds = %if.end42
  %inc = add nuw nsw i32 %retry.0, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %if.end46.out_crit_edge, label %if.end46.do.body6_crit_edge

if.end46.do.body6_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end46.out_crit_edge, %if.end42.out_crit_edge, %if.end38.out_crit_edge, %while.end.out_crit_edge, %while.body.out_crit_edge, %if.end24.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %do.end11.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call30, %while.body.out_crit_edge ], [ %call34, %while.end.out_crit_edge ], [ -5, %if.end46.out_crit_edge ], [ 0, %if.end42.out_crit_edge ], [ %call39, %if.end38.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ %call21, %if.end20.out_crit_edge ], [ %call17, %if.end16.out_crit_edge ], [ %call12, %do.end11.out_crit_edge ]
  %call51 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 61, i8 noundef zeroext -97) #8
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool52.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool52.not, i32 %call51, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rohm_ts_manual_calibration(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  %start.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 33)
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 101, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %if.end13
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %arrayidx = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 32
  %arrayidx47 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc150.while.cond.preheader_crit_edge, %for.cond.preheader
  %cmp18293 = phi i1 [ true, %for.cond.preheader ], [ %cmp18, %for.inc150.while.cond.preheader_crit_edge ]
  %calib_y.0292 = phi i32 [ 0, %for.cond.preheader ], [ %calib_y.2, %for.inc150.while.cond.preheader_crit_edge ]
  %calib_x.0291 = phi i32 [ 0, %for.cond.preheader ], [ %calib_x.3, %for.inc150.while.cond.preheader_crit_edge ]
  %first_time.0.off0290 = phi i1 [ true, %for.cond.preheader ], [ %first_time.2.off0, %for.inc150.while.cond.preheader_crit_edge ]
  %retry.0289 = phi i32 [ 0, %for.cond.preheader ], [ %inc151, %for.inc150.while.cond.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.addr.i)
  %28 = ptrtoint ptr %start.addr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %start.addr.i, align 1
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %31 = call ptr @memset(ptr %3, i32 255, i32 16)
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.i, align 2
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i, align 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i, align 2
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %3, align 4
  %37 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %start.addr.i, ptr %buf6.i, align 4
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %33, ptr %arrayidx8.i, align 4
  %39 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags11.i, align 2
  %40 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 33, ptr %len13.i, align 4
  %41 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf, ptr %buf15.i, align 4
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 4
  %42 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock_ops.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void %45(ptr noundef %30, i32 noundef 2) #8
  %call.i = call i32 @__i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  br i1 %cmp18.i, label %while.cond.preheader.rohm_i2c_burst_read.exit_crit_edge, label %for.cond.i

while.cond.preheader.rohm_i2c_burst_read.exit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %rohm_i2c_burst_read.exit

for.cond.i:                                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call.1.i = call i32 @__i2c_transfer(ptr noundef %30, ptr noundef %arrayidx8.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp18.1.i = icmp slt i32 %call.1.i, 0
  %spec.select314 = select i1 %cmp18.1.i, i32 -5, i32 0
  br label %rohm_i2c_burst_read.exit

rohm_i2c_burst_read.exit:                         ; preds = %for.cond.i, %while.cond.preheader.rohm_i2c_burst_read.exit_crit_edge
  %ret.0.i = phi i32 [ -5, %while.cond.preheader.rohm_i2c_burst_read.exit_crit_edge ], [ %spec.select314, %for.cond.i ]
  %46 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %49(ptr noundef %30, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool21.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool21.not, label %if.end23, label %rohm_i2c_burst_read.exit.out_crit_edge

rohm_i2c_burst_read.exit.out_crit_edge:           ; preds = %rohm_i2c_burst_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23:                                         ; preds = %rohm_i2c_burst_read.exit
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool24.not = icmp eq i8 %52, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.for.inc150_crit_edge

if.end23.for.inc150_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc150

if.end26:                                         ; preds = %if.end23
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 1
  br i1 %first_time.0.off0290, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %55 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx47, align 1
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx50, align 1
  %59 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx53, align 1
  %call40 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 101, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end43:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %conv34 = zext i8 %58 to i32
  %shl35 = shl nuw nsw i32 %conv34, 2
  %conv37 = zext i8 %60 to i32
  %or38 = or i32 %shl35, %conv37
  %sub39 = add nsw i32 %or38, -8
  %conv30 = zext i8 %54 to i32
  %shl = shl nuw nsw i32 %conv30, 2
  %conv32 = zext i8 %56 to i32
  %or = or i32 %shl, %conv32
  %sub = add nsw i32 %or, -8
  br label %if.end77

if.else:                                          ; preds = %if.end26
  %conv45 = zext i8 %54 to i32
  %shl46 = shl nuw nsw i32 %conv45, 2
  %61 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %62 to i32
  %or49 = or i32 %shl46, %conv48
  %63 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %64 to i32
  %shl52 = shl nuw nsw i32 %conv51, 2
  %65 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %66 to i32
  %or55 = or i32 %shl52, %conv54
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %or49)
  %cmp56 = icmp ult i32 %or49, 5
  %sub59 = add i32 %calib_x.0291, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %or49)
  %cmp61 = icmp ugt i32 %or49, 59
  %add = add i32 %calib_x.0291, 4
  %spec.select = select i1 %cmp61, i32 %add, i32 %calib_x.0291
  %calib_x.1 = select i1 %cmp56, i32 %sub59, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %or55)
  %cmp66 = icmp ult i32 %or55, 5
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub69 = add i32 %calib_y.0292, -4
  br label %if.end77

if.else70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %or55)
  %cmp71 = icmp ugt i32 %or55, 59
  %add74 = add i32 %calib_y.0292, 4
  %spec.select275 = select i1 %cmp71, i32 %add74, i32 %calib_y.0292
  br label %if.end77

if.end77:                                         ; preds = %if.else70, %if.then68, %if.end43
  %calib_x.2 = phi i32 [ %sub, %if.end43 ], [ %calib_x.1, %if.then68 ], [ %calib_x.1, %if.else70 ]
  %calib_y.1 = phi i32 [ %sub39, %if.end43 ], [ %sub69, %if.then68 ], [ %spec.select275, %if.else70 ]
  %and78 = shl i32 %calib_x.2, 1
  %shl79 = and i32 %and78, 1024
  %add80 = add i32 %shl79, %calib_x.2
  %and81 = shl i32 %calib_y.1, 1
  %shl82 = and i32 %and81, 1024
  %add83 = add i32 %shl82, %calib_y.1
  %67 = lshr i32 %add80, 3
  %conv84 = trunc i32 %67 to i8
  %68 = lshr i32 %add83, 3
  %conv91 = trunc i32 %68 to i8
  %call92 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 104, i8 noundef zeroext %conv84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end77.out_crit_edge

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end95:                                         ; preds = %if.end77
  %and85 = shl i32 %add83, 4
  %shl86 = and i32 %and85, 112
  %and87 = and i32 %add80, 7
  %or88 = or i32 %shl86, %and87
  %conv89 = trunc i32 %or88 to i8
  %call96 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 105, i8 noundef zeroext %conv89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.out_crit_edge

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end99:                                         ; preds = %if.end95
  %call100 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 106, i8 noundef zeroext %conv91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end103:                                        ; preds = %if.end99
  %call104 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 66, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.out_crit_edge

if.end103.out_crit_edge:                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end107:                                        ; preds = %if.end103
  %call108 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 66, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.out_crit_edge

if.end107.out_crit_edge:                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end111:                                        ; preds = %if.end107
  %call112 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.while.cond121.preheader_crit_edge, label %if.end111.out_crit_edge

if.end111.out_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end111.while.cond121.preheader_crit_edge:      ; preds = %if.end111
  br label %while.cond121.preheader

for.cond116:                                      ; preds = %if.else130
  %inc = add nuw nsw i32 %i.0287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0287)
  %cmp117 = icmp ult i32 %i.0287, 9
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond116.do.end_crit_edge, label %for.cond116.while.cond121.preheader_crit_edge

for.cond116.while.cond121.preheader_crit_edge:    ; preds = %for.cond116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond121.preheader

for.cond116.do.end_crit_edge:                     ; preds = %for.cond116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.cond121.preheader:                          ; preds = %for.cond116.while.cond121.preheader_crit_edge, %if.end111.while.cond121.preheader_crit_edge
  %cmp117288 = phi i1 [ %cmp117, %for.cond116.while.cond121.preheader_crit_edge ], [ true, %if.end111.while.cond121.preheader_crit_edge ]
  %i.0287 = phi i32 [ %inc, %for.cond116.while.cond121.preheader_crit_edge ], [ 0, %if.end111.while.cond121.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #8
  %call126 = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 41) #8
  %and127 = and i32 %call126, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %for.end, label %if.else130

if.else130:                                       ; preds = %while.cond121.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp131 = icmp slt i32 %call126, 0
  br i1 %cmp131, label %if.else130.out_crit_edge, label %for.cond116

if.else130.out_crit_edge:                         ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end:                                          ; preds = %while.cond121.preheader
  br i1 %cmp117288, label %if.then137, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then137:                                       ; preds = %for.end
  %call138 = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call138)
  %cmp139 = icmp eq i32 %call138, 2
  br i1 %cmp139, label %for.end152, label %if.else142

if.else142:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp143 = icmp slt i32 %call138, 0
  br i1 %cmp143, label %if.else142.out_crit_edge, label %if.else142.for.inc150_crit_edge

if.else142.for.inc150_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc150

if.else142.out_crit_edge:                         ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond116.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.41) #11
  br label %for.inc150

for.inc150:                                       ; preds = %do.end, %if.else142.for.inc150_crit_edge, %if.end23.for.inc150_crit_edge
  %first_time.2.off0 = phi i1 [ %first_time.0.off0290, %if.end23.for.inc150_crit_edge ], [ false, %if.else142.for.inc150_crit_edge ], [ false, %do.end ]
  %calib_x.3 = phi i32 [ %calib_x.0291, %if.end23.for.inc150_crit_edge ], [ %calib_x.2, %if.else142.for.inc150_crit_edge ], [ %calib_x.2, %do.end ]
  %calib_y.2 = phi i32 [ %calib_y.0292, %if.end23.for.inc150_crit_edge ], [ %calib_y.1, %if.else142.for.inc150_crit_edge ], [ %calib_y.1, %do.end ]
  %inc151 = add nuw nsw i32 %retry.0289, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retry.0289)
  %cmp18 = icmp ult i32 %retry.0289, 5
  %exitcond304.not = icmp eq i32 %inc151, 6
  br i1 %exitcond304.not, label %for.inc150.if.then154_crit_edge, label %for.inc150.while.cond.preheader_crit_edge

for.inc150.while.cond.preheader_crit_edge:        ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

for.inc150.if.then154_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154

for.end152:                                       ; preds = %if.then137
  br i1 %cmp18293, label %for.end152.out_crit_edge, label %for.end152.if.then154_crit_edge

for.end152.if.then154_crit_edge:                  ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then154

for.end152.out_crit_edge:                         ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then154:                                       ; preds = %for.end152.if.then154_crit_edge, %for.inc150.if.then154_crit_edge
  %conv155 = trunc i32 %call to i8
  %call156 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 104, i8 noundef zeroext %conv155) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.then154.out_crit_edge

if.then154.out_crit_edge:                         ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end159:                                        ; preds = %if.then154
  %conv160 = trunc i32 %call3 to i8
  %call161 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 105, i8 noundef zeroext %conv160) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end159.out_crit_edge

if.end159.out_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end164:                                        ; preds = %if.end159
  %conv165 = trunc i32 %call7 to i8
  %call166 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 106, i8 noundef zeroext %conv165) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.end164.out_crit_edge

if.end164.out_crit_edge:                          ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end169:                                        ; preds = %if.end164
  %call170 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 101, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end169.while.body178_crit_edge, label %if.end169.out_crit_edge

if.end169.out_crit_edge:                          ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end169.while.body178_crit_edge:                ; preds = %if.end169
  br label %while.body178

while.body178:                                    ; preds = %while.body178.while.body178_crit_edge, %if.end169.while.body178_crit_edge
  %__ms174.0294 = phi i32 [ %dec176, %while.body178.while.body178_crit_edge ], [ 120, %if.end169.while.body178_crit_edge ]
  %dec176 = add nsw i32 %__ms174.0294, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #8
  %tobool177.not = icmp eq i32 %dec176, 0
  br i1 %tobool177.not, label %while.body178.out_crit_edge, label %while.body178.while.body178_crit_edge

while.body178.while.body178_crit_edge:            ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body178

while.body178.out_crit_edge:                      ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %while.body178.out_crit_edge, %if.end169.out_crit_edge, %if.end164.out_crit_edge, %if.end159.out_crit_edge, %if.then154.out_crit_edge, %for.end152.out_crit_edge, %if.else142.out_crit_edge, %if.else130.out_crit_edge, %if.end111.out_crit_edge, %if.end107.out_crit_edge, %if.end103.out_crit_edge, %if.end99.out_crit_edge, %if.end95.out_crit_edge, %if.end77.out_crit_edge, %if.then28.out_crit_edge, %rohm_i2c_burst_read.exit.out_crit_edge, %if.end13.out_crit_edge, %if.end10.out_crit_edge
  %error.3 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ], [ 0, %for.end152.out_crit_edge ], [ %call156, %if.then154.out_crit_edge ], [ %call161, %if.end159.out_crit_edge ], [ %call166, %if.end164.out_crit_edge ], [ %call170, %if.end169.out_crit_edge ], [ -16, %while.body178.out_crit_edge ], [ %call126, %if.else130.out_crit_edge ], [ %call138, %if.else142.out_crit_edge ], [ %call112, %if.end111.out_crit_edge ], [ %call108, %if.end107.out_crit_edge ], [ %call104, %if.end103.out_crit_edge ], [ %call100, %if.end99.out_crit_edge ], [ %call96, %if.end95.out_crit_edge ], [ %call92, %if.end77.out_crit_edge ], [ %call40, %if.then28.out_crit_edge ], [ %ret.0.i, %rohm_i2c_burst_read.exit.out_crit_edge ]
  %call181 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext -97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then183, label %out.if.end185_crit_edge

out.if.end185_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then183:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call184 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 62, i8 noundef zeroext -1) #8
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %out.if.end185_crit_edge
  %error2.0 = phi i32 [ %call181, %out.if.end185_crit_edge ], [ %call184, %if.then183 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %tobool186.not = icmp eq i32 %error.3, 0
  %error2.0.error.3 = select i1 %tobool186.not, i32 %error2.0, i32 %error.3
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error2.0.error.3, %if.end185 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swap_xy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %setup2 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup2, align 4
  %4 = lshr i8 %3, 4
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swap_xy_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !120
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %setup29 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %setup29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %setup29, align 4
  %9 = and i8 %8, -17
  %masksel = select i1 %tobool6.not, i8 0, i8 16
  %.sink = or i8 %9, %masksel
  store i8 %.sink, ptr %setup29, align 4
  %initialized = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end5.if.end18_crit_edge, label %if.then14

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %setup216 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %setup216 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %setup216, align 4
  %call17 = call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 49, i8 noundef zeroext %15) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end5.if.end18_crit_edge
  %error.0 = phi i32 [ %call17, %if.then14 ], [ 0, %if.end5.if.end18_crit_edge ]
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %mutex20 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool21.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool21.not, i32 %count, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_x_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %setup2 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup2, align 4
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_x_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !120
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %setup29 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %setup29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %setup29, align 4
  %9 = and i8 %8, -9
  %masksel = select i1 %tobool6.not, i8 0, i8 8
  %.sink = or i8 %9, %masksel
  store i8 %.sink, ptr %setup29, align 4
  %initialized = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end5.if.end18_crit_edge, label %if.then14

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %setup216 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %setup216 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %setup216, align 4
  %call17 = call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 49, i8 noundef zeroext %15) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end5.if.end18_crit_edge
  %error.0 = phi i32 [ %call17, %if.then14 ], [ 0, %if.end5.if.end18_crit_edge ]
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %mutex20 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool21.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool21.not, i32 %count, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_y_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %setup2 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup2, align 4
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_y_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !120
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  %setup29 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %setup29 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %setup29, align 4
  %9 = and i8 %8, -5
  %masksel = select i1 %tobool6.not, i8 0, i8 4
  %.sink = or i8 %9, %masksel
  store i8 %.sink, ptr %setup29, align 4
  %initialized = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.end5.if.end17_crit_edge, label %if.then14

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %setup215 = getelementptr inbounds %struct.rohm_ts_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %setup215 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %setup215, align 4
  %call16 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 49, i8 noundef zeroext %13) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end5.if.end17_crit_edge
  %error.0 = phi i32 [ %call16, %if.then14 ], [ 0, %if.end5.if.end17_crit_edge ]
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %mutex19 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool20.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool20.not, i32 %count, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !100, !102, !104, !105, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rohm_bu21023__291_1190_rohm_bu21023_i2c_driver_init6, !1, !"__initcall__kmod_rohm_bu21023__291_1190_rohm_bu21023_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1190, i32 1}
!2 = !{ptr @__exitcall_rohm_bu21023_i2c_driver_exit, !1, !"__exitcall_rohm_bu21023_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1192, i32 1}
!5 = !{ptr @__UNIQUE_ID_file293, !6, !"__UNIQUE_ID_file293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1193, i32 1}
!7 = !{ptr @__UNIQUE_ID_license294, !6, !"__UNIQUE_ID_license294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1194, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1185, i32 11}
!12 = !{ptr @rohm_bu21023_i2c_driver, !13, !"rohm_bu21023_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1183, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1107, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rohm_bu21023_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1112, i32 3}
!24 = !{ptr @rohm_bu21023_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1150, i32 3}
!28 = !{ptr @rohm_bu21023_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1158, i32 3}
!32 = !{ptr @rohm_bu21023_i2c_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1164, i32 3}
!36 = !{ptr @rohm_bu21023_i2c_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1170, i32 3}
!40 = !{ptr @rohm_bu21023_i2c_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rohm_bu21023_i2c_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1055, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rohm_ts_power_off._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rohm_ts_power_off._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1063, i32 3}
!49 = !{ptr @rohm_ts_power_off._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rohm_ts_power_off._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1078, i32 4}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rohm_ts_open._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rohm_ts_open._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 984, i32 40}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 986, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rohm_ts_device_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rohm_ts_device_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 654, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rohm_ts_load_firmware._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rohm_ts_load_firmware._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 667, i32 4}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rohm_ts_load_firmware._entry.33, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rohm_ts_load_firmware._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 596, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rohm_ts_soft_irq.__UNIQUE_ID_ddebug288, !74, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 631, i32 4}
!80 = !{ptr @rohm_ts_soft_irq._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rohm_ts_soft_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @untouch_threshold, !83, !"untouch_threshold", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 516, i32 27}
!84 = !{ptr @single_touch_threshold, !85, !"single_touch_threshold", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 517, i32 27}
!86 = !{ptr @dual_touch_threshold, !87, !"dual_touch_threshold", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 518, i32 27}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 474, i32 4}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rohm_ts_manual_calibration._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rohm_ts_manual_calibration._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @rohm_ts_attr_group, !94, !"rohm_ts_attr_group", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 858, i32 37}
!95 = !{ptr @rohm_ts_attrs, !96, !"rohm_ts_attrs", i1 false, i1 false}
!96 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 851, i32 26}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 847, i32 8}
!99 = !{ptr @dev_attr_swap_xy, !98, !"dev_attr_swap_xy", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 736, i32 22}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 848, i32 8}
!104 = !{ptr @dev_attr_inv_x, !103, !"dev_attr_inv_x", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 849, i32 8}
!107 = !{ptr @dev_attr_inv_y, !106, !"dev_attr_inv_y", i1 false, i1 false}
!108 = !{ptr @rohm_bu21023_i2c_id, !109, !"rohm_bu21023_i2c_id", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/rohm_bu21023.c", i32 1177, i32 35}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
!120 = !{!"auto-init"}
!121 = !{i64 2148782141, i64 2148782146, i64 2148782159, i64 2148782203, i64 2148782237, i64 2148782258}
