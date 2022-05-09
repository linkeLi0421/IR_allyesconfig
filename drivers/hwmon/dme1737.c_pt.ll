; ModuleID = '/llk/IR_all_yes/drivers/hwmon/dme1737.c_pt.bc'
source_filename = "../drivers/hwmon/dme1737.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dme1737_data = type { ptr, ptr, ptr, i32, %struct.mutex, i8, i32, i32, i32, ptr, i8, i8, i32, [8 x i16], [8 x i8], [8 x i8], [3 x i16], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, [6 x i16], [6 x i16], [2 x i8], [6 x i8], [6 x i8], [3 x i8], [3 x i8], [3 x i8], [6 x i8], [2 x i8], [3 x i8], [3 x i8], [2 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_start = internal constant [20 x i8] c"dme1737.force_start\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_start = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_start = internal constant %struct.kernel_param { ptr @__param_str_force_start, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force_start } }, section "__param", align 4
@__UNIQUE_ID_force_starttype288 = internal constant [34 x i8] c"dme1737.parmtype=force_start:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_start289 = internal constant [67 x i8] c"dme1737.parm=force_start:Force the chip to start monitoring inputs\00", section ".modinfo", align 1
@__param_str_force_id = internal constant [17 x i8] c"dme1737.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype290 = internal constant [33 x i8] c"dme1737.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id291 = internal constant [54 x i8] c"dme1737.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@__param_str_probe_all_addr = internal constant [23 x i8] c"dme1737.probe_all_addr\00", align 1
@probe_all_addr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_probe_all_addr = internal constant %struct.kernel_param { ptr @__param_str_probe_all_addr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @probe_all_addr } }, section "__param", align 4
@__UNIQUE_ID_probe_all_addrtype292 = internal constant [37 x i8] c"dme1737.parmtype=probe_all_addr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_all_addr293 = internal constant [74 x i8] c"dme1737.parm=probe_all_addr:Include probing of non-standard LPC addresses\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dme1737_isa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dme1737_isa_probe, ptr @dme1737_isa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dme1737_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @dme1737_i2c_remove, ptr @dme1737_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dme1737_id, ptr @dme1737_i2c_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author336 = internal constant [50 x i8] c"dme1737.author=Juerg Haefliger <juergh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [36 x i8] c"dme1737.description=DME1737 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [35 x i8] c"dme1737.file=drivers/hwmon/dme1737\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [20 x i8] c"dme1737.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_dme1737__340_2788_dme1737_init6 = internal global ptr @dme1737_init, section ".initcall6.init", align 4
@__exitcall_dme1737_exit = internal global ptr @dme1737_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dme1737\00", [24 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@dme1737_isa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to request region 0x%04x-0x%04x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dme1737_isa_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/dme1737.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry_ptr = internal global ptr @dme1737_isa_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5127\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch311x\00", [24 x i8] zeroinitializer }, align 32
@dme1737_isa_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2684, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Found a %s chip at 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry_ptr.12 = internal global ptr @dme1737_isa_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCH5127\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCH311x\00", [24 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize device.\0A\00", [34 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry_ptr.17 = internal global ptr @dme1737_isa_probe._entry.15, section ".printk_index", align 4
@dme1737_isa_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create sysfs files.\0A\00", [33 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry_ptr.20 = internal global ptr @dme1737_isa_probe._entry.18, section ".printk_index", align 4
@dme1737_isa_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register device.\0A\00", [36 x i8] zeroinitializer }, align 32
@dme1737_isa_probe._entry_ptr.23 = internal global ptr @dme1737_isa_probe._entry.21, section ".printk_index", align 4
@dme1737_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 563, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Read from register 0x%02x failed! %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dme1737_read\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dme1737_read._entry_ptr = internal global ptr @dme1737_read._entry, section ".printk_index", align 4
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Please report to the driver maintainer.\00", [56 x i8] zeroinitializer }, align 32
@IN_NOMINAL_SCH311x = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2500, i32 1500, i32 3300, i32 5000, i32 12000, i32 3300, i32 3300], [36 x i8] zeroinitializer }, align 32
@IN_NOMINAL_SCH5027 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5000, i32 2250, i32 3300, i32 1125, i32 1125, i32 3300, i32 3300], [36 x i8] zeroinitializer }, align 32
@IN_NOMINAL_SCH5127 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500, i32 2250, i32 3300, i32 1125, i32 1125, i32 3300, i32 3300, i32 1500], [32 x i8] zeroinitializer }, align 32
@IN_NOMINAL_DME1737 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5000, i32 2250, i32 3300, i32 5000, i32 12000, i32 3300, i32 3300], [36 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 2247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Device is not monitoring. Use the force_start load parameter to override.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dme1737_init_device\00", [44 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr = internal global ptr @dme1737_init_device._entry, section ".printk_index", align 4
@dme1737_init_device._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 2257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device is not ready.\0A\00", [42 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.32 = internal global ptr @dme1737_init_device._entry.30, section ".printk_index", align 4
@dme1737_init_device._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 2288, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to query Super-IO for optional features.\0A\00", [47 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.35 = internal global ptr @dme1737_init_device._entry.33, section ".printk_index", align 4
@dme1737_init_device._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 2323, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Optional features: pwm3=%s, pwm5=%s, pwm6=%s, fan3=%s, fan4=%s, fan5=%s, fan6=%s.\0A\00", [45 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.38 = internal global ptr @dme1737_init_device._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.3, i32 2332, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, fan4->pwm%d. %s\0A\00", [39 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.43 = internal global ptr @dme1737_init_device._entry.41, section ".printk_index", align 4
@dme1737_init_device._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.3, i32 2337, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Non-standard fan to pwm mapping: fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. %s\0A\00", [52 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.46 = internal global ptr @dme1737_init_device._entry.44, section ".printk_index", align 4
@dme1737_init_device._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.3, i32 2353, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Switching pwm%d to manual mode.\0A\00", [63 x i8] zeroinitializer }, align 32
@dme1737_init_device._entry_ptr.49 = internal global ptr @dme1737_init_device._entry.47, section ".printk_index", align 4
@dme1737_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 584, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write to register 0x%02x failed! %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dme1737_write\00", [18 x i8] zeroinitializer }, align 32
@dme1737_write._entry_ptr = internal global ptr @dme1737_write._entry, section ".printk_index", align 4
@PWM_EN_FROM_REG.en = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 2, i32 2, i32 0, i32 -1, i32 2, i32 2, i32 1], [32 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dme1737_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_temp_offset_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_temp_offset_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_vid_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_vid_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_zone3_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_zone3_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_zone_hyst_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_zone_hyst_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_in7_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_in7_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_fan_group = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan1_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan2_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan3_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan4_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan5_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_fan6_attr, ptr null }], [40 x i8] zeroinitializer }, align 32
@dme1737_pwm_group = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm1_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm2_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm3_attr, ptr null }, %struct.attribute_group zeroinitializer, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm5_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm6_attr, ptr null }], [40 x i8] zeroinitializer }, align 32
@dme1737_auto_pwm_min_attr = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm1_auto_pwm_min, ptr @sensor_dev_attr_pwm2_auto_pwm_min, ptr @sensor_dev_attr_pwm3_auto_pwm_min], [20 x i8] zeroinitializer }, align 32
@dme1737_create_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 2178, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Device is locked. Some attributes will be read-only.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dme1737_create_files\00", [43 x i8] zeroinitializer }, align 32
@dme1737_create_files._entry_ptr = internal global ptr @dme1737_create_files._entry, section ".printk_index", align 4
@dme1737_zone_chmod_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_zone_chmod_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_zone3_chmod_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_zone3_chmod_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@dme1737_pwm_chmod_group = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm1_chmod_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm2_chmod_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm3_chmod_attr, ptr null }, %struct.attribute_group zeroinitializer, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm5_chmod_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dme1737_pwm6_chmod_attr, ptr null }], [40 x i8] zeroinitializer }, align 32
@dme1737_pwm_chmod_attr = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dme1737_attr = internal global { [52 x ptr], [48 x i8] } { [52 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_zone1_auto_point1_temp, ptr @sensor_dev_attr_zone1_auto_point2_temp, ptr @sensor_dev_attr_zone1_auto_point3_temp, ptr @sensor_dev_attr_zone1_auto_channels_temp, ptr @sensor_dev_attr_zone2_auto_point1_temp, ptr @sensor_dev_attr_zone2_auto_point2_temp, ptr @sensor_dev_attr_zone2_auto_point3_temp, ptr @sensor_dev_attr_zone2_auto_channels_temp, ptr null], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 6, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 6, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 6, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 6, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone1_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone1_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone2_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone2_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@DME1737_BIT_ALARM_IN = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\08\10\11\12", [24 x i8] zeroinitializer }, align 32
@show_in.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"show_in\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown function %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@set_in.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.58, i8 0, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"set_in\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@DME1737_BIT_ALARM_TEMP = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\05\06", [29 x i8] zeroinitializer }, align 32
@show_temp.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.58, i8 0, i8 -29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_temp\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@set_temp.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.58, i8 0, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_temp\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@show_zone.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.3, ptr @.str.58, i8 0, i8 -6, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_zone\00", [22 x i8] zeroinitializer }, align 32
@TEMP_RANGE = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000, i32 2500, i32 3333, i32 4000, i32 5000, i32 6666, i32 8000, i32 10000, i32 13333, i32 16000, i32 20000, i32 26666, i32 32000, i32 40000, i32 53333, i32 80000], [32 x i8] zeroinitializer }, align 32
@set_zone.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.58, i8 1, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_zone\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone1_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zone1_auto_channels_temp\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone2_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zone2_auto_channels_temp\00", [39 x i8] zeroinitializer }, align 32
@dme1737_temp_offset_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_offset, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@dme1737_vid_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@dme1737_zone3_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_zone3_auto_point1_temp, ptr @sensor_dev_attr_zone3_auto_point2_temp, ptr @sensor_dev_attr_zone3_auto_point3_temp, ptr @sensor_dev_attr_zone3_auto_channels_temp, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone3_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone3_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone3_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone3_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone3_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zone3_auto_channels_temp\00", [39 x i8] zeroinitializer }, align 32
@dme1737_zone_hyst_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_zone1_auto_point1_temp_hyst, ptr @sensor_dev_attr_zone2_auto_point1_temp_hyst, ptr @sensor_dev_attr_zone3_auto_point1_temp_hyst, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone2_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_zone3_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr @set_zone }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zone1_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zone2_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zone3_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@dme1737_in7_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 7, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 7, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 7, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 7, i8 3 }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@dme1737_fan1_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_type, ptr null], [44 x i8] zeroinitializer }, align 32
@dme1737_fan2_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_type, ptr null], [44 x i8] zeroinitializer }, align 32
@dme1737_fan3_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_type, ptr null], [44 x i8] zeroinitializer }, align 32
@dme1737_fan4_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_type, ptr null], [44 x i8] zeroinitializer }, align 32
@dme1737_fan5_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_max, ptr null], [44 x i8] zeroinitializer }, align 32
@dme1737_fan6_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_max, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_type = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@DME1737_BIT_ALARM_FAN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A\0B\0C\0D\16\17", [26 x i8] zeroinitializer }, align 32
@show_fan.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.58, i8 1, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_fan\00", [23 x i8] zeroinitializer }, align 32
@FAN_MAX = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 84, i32 56, i32 42, i32 33, i32 28, i32 24, i32 21, i32 18, i32 17, i32 15, i32 14], [52 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@set_fan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 1165, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Fan type value %ld not supported. Choose one of 1, 2, or 4.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_fan\00", [24 x i8] zeroinitializer }, align 32
@set_fan._entry_ptr = internal global ptr @set_fan._entry, section ".printk_index", align 4
@set_fan.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.3, ptr @.str.58, i8 1, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_type\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_type = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_type\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_type = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_type\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 3, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_type = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 3, i8 4 }, [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan4_type\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 4, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_max\00", [23 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 5, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_max\00", [23 x i8] zeroinitializer }, align 32
@dme1737_pwm1_attr = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_ramp_rate, ptr @sensor_dev_attr_pwm1_auto_channels_zone, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr null], [32 x i8] zeroinitializer }, align 32
@dme1737_pwm2_attr = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_ramp_rate, ptr @sensor_dev_attr_pwm2_auto_channels_zone, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr null], [32 x i8] zeroinitializer }, align 32
@dme1737_pwm3_attr = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_ramp_rate, ptr @sensor_dev_attr_pwm3_auto_channels_zone, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr null], [32 x i8] zeroinitializer }, align 32
@dme1737_pwm5_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_freq, ptr @sensor_dev_attr_pwm5_enable, ptr null], [16 x i8] zeroinitializer }, align 32
@dme1737_pwm6_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_freq, ptr @sensor_dev_attr_pwm6_enable, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_ramp_rate = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_zone = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 0, i8 7 }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@show_pwm.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.159, ptr @.str.3, ptr @.str.58, i8 1, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_pwm\00", [23 x i8] zeroinitializer }, align 32
@PWM_FREQ = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 11, i32 15, i32 22, i32 29, i32 35, i32 44, i32 59, i32 88, i32 15000, i32 20000, i32 30000, i32 25000, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@PWM_RR = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\CEhE)\1A\12\0A\05", [24 x i8] zeroinitializer }, align 32
@PWM_ACZ_FROM_REG.acz = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 0, i32 0, i32 6, i32 7, i32 0], [32 x i8] zeroinitializer }, align 32
@set_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.3, i32 1292, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PWM enable %ld not supported. Choose one of 0, 1, or 2.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_pwm\00", [24 x i8] zeroinitializer }, align 32
@set_pwm._entry_ptr = internal global ptr @set_pwm._entry, section ".printk_index", align 4
@set_pwm._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.3, i32 1397, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"PWM auto channels zone %ld not supported. Choose one of 1, 2, 4, 6, or 7.\0A\00", [53 x i8] zeroinitializer }, align 32
@set_pwm._entry_ptr.164 = internal global ptr @set_pwm._entry.162, section ".printk_index", align 4
@set_pwm.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.3, ptr @.str.58, i8 1, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm1_ramp_rate\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_zone\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_ramp_rate = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels_zone = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 1, i8 7 }, [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm2_ramp_rate\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_zone\00", [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_ramp_rate = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels_zone = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 2, i8 7 }, [32 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm3_ramp_rate\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_zone\00", [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm5_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm5_enable\00", [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm6_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm6_enable\00", [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_pwm_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_pwm_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_pwm_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm1_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm2_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm3_auto_pwm_min\00", [46 x i8] zeroinitializer }, align 32
@dme1737_zone_chmod_attr = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_zone1_auto_point1_temp, ptr @sensor_dev_attr_zone1_auto_point2_temp, ptr @sensor_dev_attr_zone1_auto_point3_temp, ptr @sensor_dev_attr_zone2_auto_point1_temp, ptr @sensor_dev_attr_zone2_auto_point2_temp, ptr @sensor_dev_attr_zone2_auto_point3_temp, ptr null], [36 x i8] zeroinitializer }, align 32
@dme1737_zone3_chmod_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_zone3_auto_point1_temp, ptr @sensor_dev_attr_zone3_auto_point2_temp, ptr @sensor_dev_attr_zone3_auto_point3_temp, ptr null], [16 x i8] zeroinitializer }, align 32
@dme1737_pwm1_chmod_attr = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_ramp_rate, ptr @sensor_dev_attr_pwm1_auto_channels_zone, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr null], [40 x i8] zeroinitializer }, align 32
@dme1737_pwm2_chmod_attr = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_ramp_rate, ptr @sensor_dev_attr_pwm2_auto_channels_zone, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr null], [40 x i8] zeroinitializer }, align 32
@dme1737_pwm3_chmod_attr = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_ramp_rate, ptr @sensor_dev_attr_pwm3_auto_channels_zone, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr null], [40 x i8] zeroinitializer }, align 32
@dme1737_pwm5_chmod_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_freq, ptr null], [20 x i8] zeroinitializer }, align 32
@dme1737_pwm6_chmod_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_freq, ptr null], [20 x i8] zeroinitializer }, align 32
@dme1737_chmod_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 2048, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to change permissions of %s.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dme1737_chmod_file\00", [45 x i8] zeroinitializer }, align 32
@dme1737_chmod_file._entry_ptr = internal global ptr @dme1737_chmod_file._entry, section ".printk_index", align 4
@dme1737_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dme1737\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sch5027\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@dme1737_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dme1737_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.196, ptr @.str.3, i32 2485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dme1737_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@dme1737_i2c_probe._entry_ptr = internal global ptr @dme1737_i2c_probe._entry, section ".printk_index", align 4
@dme1737_i2c_probe._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.196, ptr @.str.3, i32 2492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dme1737_i2c_probe._entry_ptr.198 = internal global ptr @dme1737_i2c_probe._entry.197, section ".printk_index", align 4
@dme1737_i2c_probe._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.196, ptr @.str.3, i32 2499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dme1737_i2c_probe._entry_ptr.200 = internal global ptr @dme1737_i2c_probe._entry.199, section ".printk_index", align 4
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5027\00", [24 x i8] zeroinitializer }, align 32
@dme1737_i2c_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.3, i32 2458, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Found a %s chip at 0x%02x (rev 0x%02x).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dme1737_i2c_detect\00", [45 x i8] zeroinitializer }, align 32
@dme1737_i2c_detect._entry_ptr = internal global ptr @dme1737_i2c_detect._entry, section ".printk_index", align 4
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCH5027\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DME1737\00", [24 x i8] zeroinitializer }, align 32
@dme1737_isa_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.3, i32 2569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dme1737: Base address not set\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dme1737_isa_detect\00", [45 x i8] zeroinitializer }, align 32
@dme1737_isa_detect._entry_ptr = internal global ptr @dme1737_isa_detect._entry, section ".printk_index", align 4
@dme1737_isa_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.3, i32 2601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dme1737: Failed to allocate device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dme1737_isa_device_add\00", [41 x i8] zeroinitializer }, align 32
@dme1737_isa_device_add._entry_ptr = internal global ptr @dme1737_isa_device_add._entry, section ".printk_index", align 4
@dme1737_isa_device_add._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.3, i32 2608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dme1737: Failed to add device resource (err = %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@dme1737_isa_device_add._entry_ptr.212 = internal global ptr @dme1737_isa_device_add._entry.210, section ".printk_index", align 4
@dme1737_isa_device_add._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.209, ptr @.str.3, i32 2614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dme1737: Failed to add device (err = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@dme1737_isa_device_add._entry_ptr.215 = internal global ptr @dme1737_isa_device_add._entry.213, section ".printk_index", align 4
@switch.table.dme1737_init_device = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6271, i32 6244, i32 14589, i32 145632], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 124, i64 125, i64 127, i64 134]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 16, i64 119, i64 120, i64 137]
@__sancov_gen_cov_switch_values.218 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.221 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.222 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.223 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.224 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.225 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.228 = internal global [12 x i64] [i64 10, i64 8, i64 14, i64 15, i64 17, i64 18, i64 21, i64 24, i64 28, i64 33, i64 42, i64 56]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.231 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.232 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.233 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.234 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.235 = internal global [6 x i64] [i64 4, i64 16, i64 124, i64 125, i64 127, i64 134]
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"force_start\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 35, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 39, i32 23 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"probe_all_addr\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 43, i32 13 }
@___asan_gen_.245 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 32, i32 32 }
@___asan_gen_.248 = private unnamed_addr constant [19 x i8] c"dme1737_isa_driver\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2725, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"dme1737_i2c_driver\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2528, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2727, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2637, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2676, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2678, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2681, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2683, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2689, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2696, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2703, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 561, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"IN_NOMINAL_SCH311x\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 246, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"IN_NOMINAL_SCH5027\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 248, i32 18 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"IN_NOMINAL_SCH5127\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 250, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant [19 x i8] c"IN_NOMINAL_DME1737\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 244, i32 18 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2246, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2257, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2287, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2315, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2328, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2334, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2351, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 582, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 421, i32 19 }
@___asan_gen_.410 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [14 x i8] c"dme1737_group\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1707, i32 37 }
@___asan_gen_.416 = private unnamed_addr constant [26 x i8] c"dme1737_temp_offset_group\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1723, i32 37 }
@___asan_gen_.419 = private unnamed_addr constant [18 x i8] c"dme1737_vid_group\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1738, i32 37 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c"dme1737_zone3_group\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1755, i32 37 }
@___asan_gen_.425 = private unnamed_addr constant [24 x i8] c"dme1737_zone_hyst_group\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1772, i32 37 }
@___asan_gen_.428 = private unnamed_addr constant [18 x i8] c"dme1737_in7_group\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1789, i32 37 }
@___asan_gen_.431 = private unnamed_addr constant [18 x i8] c"dme1737_fan_group\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1909, i32 37 }
@___asan_gen_.434 = private unnamed_addr constant [18 x i8] c"dme1737_pwm_group\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1841, i32 37 }
@___asan_gen_.437 = private unnamed_addr constant [26 x i8] c"dme1737_auto_pwm_min_attr\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1855, i32 26 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2177, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [25 x i8] c"dme1737_zone_chmod_group\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1932, i32 37 }
@___asan_gen_.452 = private unnamed_addr constant [26 x i8] c"dme1737_zone3_chmod_group\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1948, i32 37 }
@___asan_gen_.455 = private unnamed_addr constant [24 x i8] c"dme1737_pwm_chmod_group\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1992, i32 37 }
@___asan_gen_.458 = private unnamed_addr constant [23 x i8] c"dme1737_pwm_chmod_attr\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2005, i32 26 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1641, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1502, i32 22 }
@___asan_gen_.467 = private unnamed_addr constant [13 x i8] c"dme1737_attr\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1649, i32 26 }
@___asan_gen_.470 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone1_auto_point1_temp\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone1_auto_point2_temp\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone1_auto_point3_temp\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [41 x i8] c"sensor_dev_attr_zone1_auto_channels_temp\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone2_auto_point1_temp\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone2_auto_point2_temp\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone2_auto_point3_temp\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [41 x i8] c"sensor_dev_attr_zone2_auto_channels_temp\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [21 x i8] c"DME1737_BIT_ALARM_IN\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 148, i32 17 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 824, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 827, i32 22 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 858, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1521, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1522, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1523, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1524, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1525, i32 1 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1526, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1527, i32 1 }
@___asan_gen_.725 = private unnamed_addr constant [23 x i8] c"DME1737_BIT_ALARM_TEMP\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 149, i32 17 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 908, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 947, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1000, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant [11 x i8] c"TEMP_RANGE\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 291, i32 18 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1062, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant [25 x i8] c"dme1737_temp_offset_attr\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1716, i32 26 }
@___asan_gen_.812 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1546, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1547, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1548, i32 1 }
@___asan_gen_.830 = private unnamed_addr constant [17 x i8] c"dme1737_vid_attr\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1732, i32 26 }
@___asan_gen_.833 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1639, i32 8 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1640, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant [19 x i8] c"dme1737_zone3_attr\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1747, i32 26 }
@___asan_gen_.848 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone3_auto_point1_temp\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone3_auto_point2_temp\00", align 1
@___asan_gen_.854 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_zone3_auto_point3_temp\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [41 x i8] c"sensor_dev_attr_zone3_auto_channels_temp\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [23 x i8] c"dme1737_zone_hyst_attr\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1765, i32 26 }
@___asan_gen_.875 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_zone1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_zone2_auto_point1_temp_hyst\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_zone3_auto_point1_temp_hyst\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1564, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1565, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1566, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant [17 x i8] c"dme1737_in7_attr\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1781, i32 26 }
@___asan_gen_.896 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1528, i32 1 }
@___asan_gen_.920 = private unnamed_addr constant [18 x i8] c"dme1737_fan1_attr\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1866, i32 26 }
@___asan_gen_.923 = private unnamed_addr constant [18 x i8] c"dme1737_fan2_attr\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1873, i32 26 }
@___asan_gen_.926 = private unnamed_addr constant [18 x i8] c"dme1737_fan3_attr\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1880, i32 26 }
@___asan_gen_.929 = private unnamed_addr constant [18 x i8] c"dme1737_fan4_attr\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1887, i32 26 }
@___asan_gen_.932 = private unnamed_addr constant [18 x i8] c"dme1737_fan5_attr\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1894, i32 26 }
@___asan_gen_.935 = private unnamed_addr constant [18 x i8] c"dme1737_fan6_attr\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1901, i32 26 }
@___asan_gen_.938 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.947 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_type\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [22 x i8] c"DME1737_BIT_ALARM_FAN\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 150, i32 17 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1114, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant [8 x i8] c"FAN_MAX\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 380, i32 18 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1163, i32 4 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1580, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.983 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.986 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_type\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1581, i32 1 }
@___asan_gen_.1004 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan3_type\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1582, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan4_type\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1583, i32 1 }
@___asan_gen_.1052 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_max\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1597, i32 1 }
@___asan_gen_.1076 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_max\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1598, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant [18 x i8] c"dme1737_pwm1_attr\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1798, i32 26 }
@___asan_gen_.1103 = private unnamed_addr constant [18 x i8] c"dme1737_pwm2_attr\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1808, i32 26 }
@___asan_gen_.1106 = private unnamed_addr constant [18 x i8] c"dme1737_pwm3_attr\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1818, i32 26 }
@___asan_gen_.1109 = private unnamed_addr constant [18 x i8] c"dme1737_pwm5_attr\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1828, i32 26 }
@___asan_gen_.1112 = private unnamed_addr constant [18 x i8] c"dme1737_pwm6_attr\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1834, i32 26 }
@___asan_gen_.1115 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm1_ramp_rate\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_zone\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1250, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant [9 x i8] c"PWM_FREQ\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 461, i32 18 }
@___asan_gen_.1145 = private unnamed_addr constant [7 x i8] c"PWM_RR\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 494, i32 17 }
@___asan_gen_.1148 = private unnamed_addr constant [4 x i8] c"acz\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 448, i32 19 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1290, i32 4 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1395, i32 4 }
@___asan_gen_.1184 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm2_ramp_rate\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm2_auto_channels_zone\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm3_ramp_rate\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm3_auto_channels_zone\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm5\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm5_freq\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm5_enable\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1634, i32 1 }
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm6\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm6_freq\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm6_enable\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1635, i32 1 }
@___asan_gen_.1304 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm1_auto_pwm_min\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm2_auto_pwm_min\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm3_auto_pwm_min\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1620, i32 1 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1621, i32 1 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1622, i32 1 }
@___asan_gen_.1322 = private unnamed_addr constant [24 x i8] c"dme1737_zone_chmod_attr\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1922, i32 26 }
@___asan_gen_.1325 = private unnamed_addr constant [25 x i8] c"dme1737_zone3_chmod_attr\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1941, i32 26 }
@___asan_gen_.1328 = private unnamed_addr constant [24 x i8] c"dme1737_pwm1_chmod_attr\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1957, i32 26 }
@___asan_gen_.1331 = private unnamed_addr constant [24 x i8] c"dme1737_pwm2_chmod_attr\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1965, i32 26 }
@___asan_gen_.1334 = private unnamed_addr constant [24 x i8] c"dme1737_pwm3_chmod_attr\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1973, i32 26 }
@___asan_gen_.1337 = private unnamed_addr constant [24 x i8] c"dme1737_pwm5_chmod_attr\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1981, i32 26 }
@___asan_gen_.1340 = private unnamed_addr constant [24 x i8] c"dme1737_pwm6_chmod_attr\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 1986, i32 26 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2047, i32 3 }
@___asan_gen_.1352 = private unnamed_addr constant [11 x i8] c"dme1737_id\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2521, i32 35 }
@___asan_gen_.1355 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 49, i32 29 }
@___asan_gen_.1358 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2480, i32 2 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2485, i32 3 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2492, i32 3 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2499, i32 3 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2448, i32 10 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2456, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2569, i32 3 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2601, i32 3 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2608, i32 3 }
@___asan_gen_.1415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1419 = private constant [27 x i8] c"../drivers/hwmon/dme1737.c\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1419, i32 2614, i32 3 }
@___asan_gen_.1421 = private unnamed_addr constant [33 x i8] c"switch.table.dme1737_init_device\00", align 1
@llvm.compiler.used = appending global [439 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_force_id291, ptr @__UNIQUE_ID_force_idtype290, ptr @__UNIQUE_ID_force_start289, ptr @__UNIQUE_ID_force_starttype288, ptr @__UNIQUE_ID_license339, ptr @__UNIQUE_ID_probe_all_addr293, ptr @__UNIQUE_ID_probe_all_addrtype292, ptr @__exitcall_dme1737_exit, ptr @__initcall__kmod_dme1737__340_2788_dme1737_init6, ptr @__param_force_id, ptr @__param_force_start, ptr @__param_probe_all_addr, ptr @dme1737_chmod_file._entry, ptr @dme1737_chmod_file._entry_ptr, ptr @dme1737_create_files._entry, ptr @dme1737_create_files._entry_ptr, ptr @dme1737_exit, ptr @dme1737_i2c_detect._entry, ptr @dme1737_i2c_detect._entry_ptr, ptr @dme1737_i2c_probe._entry, ptr @dme1737_i2c_probe._entry.197, ptr @dme1737_i2c_probe._entry.199, ptr @dme1737_i2c_probe._entry_ptr, ptr @dme1737_i2c_probe._entry_ptr.198, ptr @dme1737_i2c_probe._entry_ptr.200, ptr @dme1737_init_device._entry, ptr @dme1737_init_device._entry.30, ptr @dme1737_init_device._entry.33, ptr @dme1737_init_device._entry.36, ptr @dme1737_init_device._entry.41, ptr @dme1737_init_device._entry.44, ptr @dme1737_init_device._entry.47, ptr @dme1737_init_device._entry_ptr, ptr @dme1737_init_device._entry_ptr.32, ptr @dme1737_init_device._entry_ptr.35, ptr @dme1737_init_device._entry_ptr.38, ptr @dme1737_init_device._entry_ptr.43, ptr @dme1737_init_device._entry_ptr.46, ptr @dme1737_init_device._entry_ptr.49, ptr @dme1737_isa_detect._entry, ptr @dme1737_isa_detect._entry_ptr, ptr @dme1737_isa_device_add._entry, ptr @dme1737_isa_device_add._entry.210, ptr @dme1737_isa_device_add._entry.213, ptr @dme1737_isa_device_add._entry_ptr, ptr @dme1737_isa_device_add._entry_ptr.212, ptr @dme1737_isa_device_add._entry_ptr.215, ptr @dme1737_isa_probe._entry, ptr @dme1737_isa_probe._entry.15, ptr @dme1737_isa_probe._entry.18, ptr @dme1737_isa_probe._entry.21, ptr @dme1737_isa_probe._entry.9, ptr @dme1737_isa_probe._entry_ptr, ptr @dme1737_isa_probe._entry_ptr.12, ptr @dme1737_isa_probe._entry_ptr.17, ptr @dme1737_isa_probe._entry_ptr.20, ptr @dme1737_isa_probe._entry_ptr.23, ptr @dme1737_read._entry, ptr @dme1737_read._entry_ptr, ptr @dme1737_write._entry, ptr @dme1737_write._entry_ptr, ptr @set_fan._entry, ptr @set_fan._entry_ptr, ptr @set_pwm._entry, ptr @set_pwm._entry.162, ptr @set_pwm._entry_ptr, ptr @set_pwm._entry_ptr.164, ptr @force_start, ptr @force_id, ptr @probe_all_addr, ptr @pdev, ptr @dme1737_isa_driver, ptr @dme1737_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dme1737_isa_probe.__key, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @IN_NOMINAL_SCH311x, ptr @IN_NOMINAL_SCH5027, ptr @IN_NOMINAL_SCH5127, ptr @IN_NOMINAL_DME1737, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @PWM_EN_FROM_REG.en, ptr @dev_attr_name, ptr @dme1737_group, ptr @dme1737_temp_offset_group, ptr @dme1737_vid_group, ptr @dme1737_zone3_group, ptr @dme1737_zone_hyst_group, ptr @dme1737_in7_group, ptr @dme1737_fan_group, ptr @dme1737_pwm_group, ptr @dme1737_auto_pwm_min_attr, ptr @.str.52, ptr @.str.53, ptr @dme1737_zone_chmod_group, ptr @dme1737_zone3_chmod_group, ptr @dme1737_pwm_chmod_group, ptr @dme1737_pwm_chmod_attr, ptr @.str.54, ptr @.str.55, ptr @dme1737_attr, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_zone1_auto_point1_temp, ptr @sensor_dev_attr_zone1_auto_point2_temp, ptr @sensor_dev_attr_zone1_auto_point3_temp, ptr @sensor_dev_attr_zone1_auto_channels_temp, ptr @sensor_dev_attr_zone2_auto_point1_temp, ptr @sensor_dev_attr_zone2_auto_point2_temp, ptr @sensor_dev_attr_zone2_auto_point3_temp, ptr @sensor_dev_attr_zone2_auto_channels_temp, ptr @.str.56, ptr @DME1737_BIT_ALARM_IN, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @DME1737_BIT_ALARM_TEMP, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @TEMP_RANGE, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @dme1737_temp_offset_attr, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_offset, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @dme1737_vid_attr, ptr @dev_attr_vrm, ptr @dev_attr_cpu0_vid, ptr @.str.118, ptr @.str.119, ptr @dme1737_zone3_attr, ptr @sensor_dev_attr_zone3_auto_point1_temp, ptr @sensor_dev_attr_zone3_auto_point2_temp, ptr @sensor_dev_attr_zone3_auto_point3_temp, ptr @sensor_dev_attr_zone3_auto_channels_temp, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @dme1737_zone_hyst_attr, ptr @sensor_dev_attr_zone1_auto_point1_temp_hyst, ptr @sensor_dev_attr_zone2_auto_point1_temp_hyst, ptr @sensor_dev_attr_zone3_auto_point1_temp_hyst, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @dme1737_in7_attr, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @dme1737_fan1_attr, ptr @dme1737_fan2_attr, ptr @dme1737_fan3_attr, ptr @dme1737_fan4_attr, ptr @dme1737_fan5_attr, ptr @dme1737_fan6_attr, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_type, ptr @.str.131, ptr @DME1737_BIT_ALARM_FAN, ptr @.str.132, ptr @FAN_MAX, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_type, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_type, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_type, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_max, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_max, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @dme1737_pwm1_attr, ptr @dme1737_pwm2_attr, ptr @dme1737_pwm3_attr, ptr @dme1737_pwm5_attr, ptr @dme1737_pwm6_attr, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_ramp_rate, ptr @sensor_dev_attr_pwm1_auto_channels_zone, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @.str.158, ptr @.str.159, ptr @PWM_FREQ, ptr @PWM_RR, ptr @PWM_ACZ_FROM_REG.acz, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_ramp_rate, ptr @sensor_dev_attr_pwm2_auto_channels_zone, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_ramp_rate, ptr @sensor_dev_attr_pwm3_auto_channels_zone, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_freq, ptr @sensor_dev_attr_pwm5_enable, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_freq, ptr @sensor_dev_attr_pwm6_enable, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @sensor_dev_attr_pwm1_auto_pwm_min, ptr @sensor_dev_attr_pwm2_auto_pwm_min, ptr @sensor_dev_attr_pwm3_auto_pwm_min, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @dme1737_zone_chmod_attr, ptr @dme1737_zone3_chmod_attr, ptr @dme1737_pwm1_chmod_attr, ptr @dme1737_pwm2_chmod_attr, ptr @dme1737_pwm3_chmod_attr, ptr @dme1737_pwm5_chmod_attr, ptr @dme1737_pwm6_chmod_attr, ptr @.str.194, ptr @.str.195, ptr @dme1737_id, ptr @normal_i2c, ptr @dme1737_i2c_probe.__key, ptr @.str.196, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @switch.table.dme1737_init_device], section "llvm.metadata"
@0 = internal global [396 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_start to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_all_addr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IN_NOMINAL_SCH311x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IN_NOMINAL_SCH5027 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IN_NOMINAL_SCH5127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IN_NOMINAL_DME1737 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_init_device._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PWM_EN_FROM_REG.en to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_temp_offset_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_vid_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone3_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone_hyst_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_in7_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan_group to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm_group to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_auto_pwm_min_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_create_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone_chmod_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone3_chmod_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm_chmod_group to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm_chmod_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_attr to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone2_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone2_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DME1737_BIT_ALARM_IN to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DME1737_BIT_ALARM_TEMP to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TEMP_RANGE to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_temp_offset_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_vid_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone3_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone3_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone3_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone_hyst_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone2_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_zone3_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_in7_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan1_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan2_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan3_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan4_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan5_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_fan6_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DME1737_BIT_ALARM_FAN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FAN_MAX to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_fan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm1_attr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm2_attr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm3_attr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm5_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm6_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_ramp_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_zone to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PWM_FREQ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PWM_RR to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PWM_ACZ_FROM_REG.acz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pwm._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_ramp_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels_zone to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_ramp_rate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels_zone to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_pwm_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone_chmod_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_zone3_chmod_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm1_chmod_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm2_chmod_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm3_chmod_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm5_chmod_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_pwm6_chmod_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_chmod_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_probe._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_probe._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_i2c_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_device_add._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dme1737_isa_device_add._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dme1737_init_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dme1737_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @pdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_unregister(ptr noundef nonnull %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dme1737_isa_driver) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @i2c_del_driver(ptr noundef nonnull @dme1737_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_init() #0 section ".init.text" align 64 {
entry:
  %addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %addr, align 2, !annotation !609
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dme1737_i2c_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @dme1737_isa_detect(i32 noundef 46, ptr noundef nonnull %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i32 @dme1737_isa_detect(i32 noundef 78, ptr noundef nonnull %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true5

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true5:                                   ; preds = %land.lhs.true
  %1 = load i8, ptr @probe_all_addr, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %land.lhs.true5.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call7 = call fastcc i32 @dme1737_isa_detect(i32 noundef 5678, ptr noundef nonnull %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end13_crit_edge, label %land.lhs.true9

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @dme1737_isa_detect(i32 noundef 5710, ptr noundef nonnull %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dme1737_isa_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.exit_del_i2c_driver_crit_edge

if.end13.exit_del_i2c_driver_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_del_i2c_driver

if.end17:                                         ; preds = %if.end13
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %call18 = tail call fastcc i32 @dme1737_isa_device_add(i16 noundef zeroext %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %exit_del_isa_driver

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_del_isa_driver:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @dme1737_isa_driver) #9
  br label %exit_del_i2c_driver

exit_del_i2c_driver:                              ; preds = %exit_del_isa_driver, %if.end13.exit_del_i2c_driver_crit_edge
  %err.0 = phi i32 [ %call14, %if.end13.exit_del_i2c_driver_crit_edge ], [ %call18, %exit_del_isa_driver ]
  tail call void @i2c_del_driver(ptr noundef nonnull @dme1737_i2c_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_del_i2c_driver, %if.end17.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %exit_del_i2c_driver ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_isa_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call2 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 2, ptr noundef nonnull @.str) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %conv4 = and i32 %3, 65535
  %sub = add nuw nsw i32 %conv4, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv4, i32 noundef %sub) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #9
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %addr = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = load i16, ptr @force_id, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %sw.default [
    i16 124, label %if.end11.sw.epilog_crit_edge
    i16 125, label %if.end11.sw.epilog_crit_edge141
    i16 127, label %if.end11.sw.epilog_crit_edge142
    i16 134, label %sw.bb14
  ]

if.end11.sw.epilog_crit_edge142:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end11.sw.epilog_crit_edge141:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %sw.default
  %call.i122 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %11, i8 noundef zeroext 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i = icmp slt i32 %call.i122, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef 62, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %and.i = and i32 %13, 1048575
  %add.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 62) #9, !srcloc !612
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %add8.i = add i32 %16, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %17 = inttoptr i32 %add10.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %18 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i122, %do.end.i ], [ %call.i122, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  %conv15.i = trunc i32 %val.0.i to i8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %tobool.not.i123 = icmp eq ptr %20, null
  br i1 %tobool.not.i123, label %do.body3.i136, label %if.then.i126

if.then.i126:                                     ; preds = %dme1737_read.exit
  %call.i124 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %20, i8 noundef zeroext 61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %do.end.i128, label %if.then.i126.dme1737_read.exit139_crit_edge

if.then.i126.dme1737_read.exit139_crit_edge:      ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit139

do.end.i128:                                      ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i127 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i127, ptr noundef nonnull @.str.24, i32 noundef 61, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit139

do.body3.i136:                                    ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr, align 4
  %and.i130 = and i32 %22, 1048575
  %add.i131 = or i32 %and.i130, -18874368
  %23 = inttoptr i32 %add.i131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 61) #9, !srcloc !612
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %add8.i132 = add i32 %25, 1
  %and9.i133 = and i32 %add8.i132, 1048575
  %add10.i134 = or i32 %and9.i133, -18874368
  %26 = inttoptr i32 %add10.i134 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i135 = zext i8 %27 to i32
  br label %dme1737_read.exit139

dme1737_read.exit139:                             ; preds = %do.body3.i136, %do.end.i128, %if.then.i126.dme1737_read.exit139_crit_edge
  %val.0.i137 = phi i32 [ %call.i124, %do.end.i128 ], [ %call.i124, %if.then.i126.dme1737_read.exit139_crit_edge ], [ %conv13.i135, %do.body3.i136 ]
  %conv15.i138 = trunc i32 %val.0.i137 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %conv15.i)
  %cmp = icmp eq i8 %conv15.i, 92
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %conv15.i138)
  %cmp21 = icmp eq i8 %conv15.i138, -116
  %or.cond = select i1 %cmp, i1 %cmp21, i1 false
  br i1 %or.cond, label %dme1737_read.exit139.sw.epilog_crit_edge, label %if.else

dme1737_read.exit139.sw.epilog_crit_edge:         ; preds = %dme1737_read.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %dme1737_read.exit139
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %conv15.i138)
  %cmp30 = icmp eq i8 %conv15.i138, -114
  %or.cond121 = select i1 %cmp, i1 %cmp30, i1 false
  br i1 %or.cond121, label %if.else.sw.epilog_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.sw.epilog_crit_edge, %dme1737_read.exit139.sw.epilog_crit_edge, %sw.bb14, %if.end11.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge141, %if.end11.sw.epilog_crit_edge142
  %cmp38 = phi ptr [ @.str.6, %if.else.sw.epilog_crit_edge ], [ @.str.7, %dme1737_read.exit139.sw.epilog_crit_edge ], [ @.str.7, %if.end11.sw.epilog_crit_edge ], [ @.str.7, %if.end11.sw.epilog_crit_edge141 ], [ @.str.7, %if.end11.sw.epilog_crit_edge142 ], [ @.str.6, %sw.bb14 ]
  %.sink = phi i32 [ 3, %if.else.sw.epilog_crit_edge ], [ 2, %dme1737_read.exit139.sw.epilog_crit_edge ], [ 2, %if.end11.sw.epilog_crit_edge ], [ 2, %if.end11.sw.epilog_crit_edge141 ], [ 2, %if.end11.sw.epilog_crit_edge142 ], [ 3, %sw.bb14 ]
  %type24 = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %type24, align 4
  %type37 = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 8
  %29 = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cmp38, ptr %29, align 4
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @dme1737_isa_probe.__key) #9
  %31 = ptrtoint ptr %type37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp51 = icmp eq i32 %32, 3
  %cond = select i1 %cmp51, ptr @.str.13, ptr @.str.14
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, i32 noundef %34) #13
  %call54 = tail call fastcc i32 @dme1737_init_device(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end60:                                         ; preds = %sw.epilog
  %call61 = tail call fastcc i32 @dme1737_create_files(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  %call68 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call68, ptr %hwmon_dev, align 4
  %cmp.i140 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %do.end74, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #13
  %36 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwmon_dev, align 4
  %38 = ptrtoint ptr %37 to i32
  tail call fastcc void @dme1737_remove_files(ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end67.cleanup_crit_edge, %do.end66, %do.end59, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call54, %do.end59 ], [ %call61, %do.end66 ], [ %38, %do.end74 ], [ -16, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_isa_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @dme1737_remove_files(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @dme1737_read(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %1, i8 noundef zeroext %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv, ptr noundef nonnull @.str.27) #13
  br label %if.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %reg) #9, !srcloc !612
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %add8 = add i32 %6, 1
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13 = zext i8 %8 to i32
  br label %if.end14

if.end14:                                         ; preds = %do.body3, %do.end, %if.then.if.end14_crit_edge
  %val.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.if.end14_crit_edge ], [ %conv13, %do.body3 ]
  %conv15 = trunc i32 %val.0 to i8
  ret i8 %conv15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dme1737_init_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %type = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %5, label %cond.false5 [
    i32 2, label %entry.cond.end9_crit_edge
    i32 1, label %cond.end9.fold.split
  ]

entry.cond.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end9

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp7 = icmp eq i32 %5, 3
  %cond = select i1 %cmp7, ptr @IN_NOMINAL_SCH5127, ptr @IN_NOMINAL_DME1737
  br label %cond.end9

cond.end9.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end9.fold.split, %cond.false5, %entry.cond.end9_crit_edge
  %cond10 = phi ptr [ @IN_NOMINAL_SCH311x, %entry.cond.end9_crit_edge ], [ %cond, %cond.false5 ], [ @IN_NOMINAL_SCH5027, %cond.end9.fold.split ]
  %in_nominal = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %in_nominal to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond10, ptr %in_nominal, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end9
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %3, i8 noundef zeroext 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef 64, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr.i = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %9, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 64) #9, !srcloc !612
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %add8.i = add i32 %12, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %13 = inttoptr i32 %add10.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %14 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  %conv15.i = trunc i32 %val.0.i to i8
  %config = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15.i, ptr %config, align 1
  %16 = and i8 %conv15.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then, label %dme1737_read.exit.if.end20_crit_edge

dme1737_read.exit.if.end20_crit_edge:             ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %dme1737_read.exit
  %17 = load i8, ptr @force_start, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %or = or i8 %conv15.i, 1
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or, ptr %config, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tobool.not.i291 = icmp eq ptr %20, null
  br i1 %tobool.not.i291, label %do.body3.i300, label %if.then.i294

if.then.i294:                                     ; preds = %if.end
  %call.i292 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %20, i8 noundef zeroext 64, i8 noundef zeroext %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp.i293 = icmp slt i32 %call.i292, 0
  br i1 %cmp.i293, label %do.end.i296, label %if.then.i294.if.end20_crit_edge

if.then.i294.if.end20_crit_edge:                  ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end.i296:                                      ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i295 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i295, ptr noundef nonnull @.str.50, i32 noundef 64, ptr noundef nonnull @.str.27) #13
  br label %if.end20

do.body3.i300:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %addr.i297 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %addr.i297 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i297, align 4
  %and.i298 = and i32 %22, 1048575
  %add.i299 = or i32 %and.i298, -18874368
  %23 = inttoptr i32 %add.i299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 64) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %addr.i297 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i297, align 4
  %add11.i = add i32 %25, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %26 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %or) #9, !srcloc !612
  br label %if.end20

if.end20:                                         ; preds = %do.body3.i300, %do.end.i296, %if.then.i294.if.end20_crit_edge, %dme1737_read.exit.if.end20_crit_edge
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %config, align 1
  %29 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.not = icmp eq i8 %29, 0
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  br i1 %tobool.not.i, label %if.end29.if.end56_crit_edge, label %if.then31

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then31:                                        ; preds = %if.end29
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %tobool.not.i301 = icmp eq ptr %31, null
  br i1 %tobool.not.i301, label %do.body3.i314, label %if.then.i304

if.then.i304:                                     ; preds = %if.then31
  %call.i302 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %31, i8 noundef zeroext 127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %cmp.i303 = icmp slt i32 %call.i302, 0
  br i1 %cmp.i303, label %do.end.i306, label %if.then.i304.dme1737_read.exit317_crit_edge

if.then.i304.dme1737_read.exit317_crit_edge:      ; preds = %if.then.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit317

do.end.i306:                                      ; preds = %if.then.i304
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i305 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i305, ptr noundef nonnull @.str.24, i32 noundef 127, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit317

do.body3.i314:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr.i307 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %addr.i307 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i307, align 4
  %and.i308 = and i32 %33, 1048575
  %add.i309 = or i32 %and.i308, -18874368
  %34 = inttoptr i32 %add.i309 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 127) #9, !srcloc !612
  %35 = ptrtoint ptr %addr.i307 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i307, align 4
  %add8.i310 = add i32 %36, 1
  %and9.i311 = and i32 %add8.i310, 1048575
  %add10.i312 = or i32 %and9.i311, -18874368
  %37 = inttoptr i32 %add10.i312 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i313 = zext i8 %38 to i32
  br label %dme1737_read.exit317

dme1737_read.exit317:                             ; preds = %do.body3.i314, %do.end.i306, %if.then.i304.dme1737_read.exit317_crit_edge
  %val.0.i315 = phi i32 [ %call.i302, %do.end.i306 ], [ %call.i302, %if.then.i304.dme1737_read.exit317_crit_edge ], [ %conv13.i313, %do.body3.i314 ]
  %conv15.i316 = trunc i32 %val.0.i315 to i8
  %config2 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv15.i316, ptr %config2, align 4
  %40 = and i8 %conv15.i316, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool36.not = icmp eq i8 %40, 0
  br i1 %tobool36.not, label %dme1737_read.exit317.if.end39_crit_edge, label %if.then37

dme1737_read.exit317.if.end39_crit_edge:          ; preds = %dme1737_read.exit317
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %dme1737_read.exit317
  call void @__sanitizer_cov_trace_pc() #11
  %has_features = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %has_features, align 4
  %or38 = or i32 %42, 128
  store i32 %or38, ptr %has_features, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %dme1737_read.exit317.if.end39_crit_edge
  %addr = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %44)
  %cmp41 = icmp eq i16 %44, 46
  br i1 %cmp41, label %if.then43, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %has_features44 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %has_features44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %has_features44, align 4
  %or45 = or i32 %46, 8448
  store i32 %or45, ptr %has_features44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %call47 = tail call fastcc i32 @dme1737_i2c_get_features(i32 noundef 46, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %land.lhs.true

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end46
  %call49 = tail call fastcc i32 @dme1737_i2c_get_features(i32 noundef 78, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true.if.end56_crit_edge, label %do.end54

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end54:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %land.lhs.true.if.end56_crit_edge, %if.end46.if.end56_crit_edge, %if.end29.if.end56_crit_edge
  %has_features57 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %47 = ptrtoint ptr %has_features57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %has_features57, align 4
  %or58 = or i32 %48, 6240
  store i32 %or58, ptr %has_features57, align 4
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %51 = icmp ult i32 %50, 4
  br i1 %51, label %switch.lookup, label %if.end56.do.end73_crit_edge

if.end56.do.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

switch.lookup:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dme1737_init_device, i32 0, i32 %50
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or61 = or i32 %48, %switch.load
  %53 = ptrtoint ptr %has_features57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or61, ptr %has_features57, align 4
  br label %do.end73

do.end73:                                         ; preds = %switch.lookup, %if.end56.do.end73_crit_edge
  %54 = ptrtoint ptr %has_features57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %has_features57, align 4
  %and75 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, ptr @.str.40, ptr @.str.39
  %and79 = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %cond81 = select i1 %tobool80.not, ptr @.str.40, ptr @.str.39
  %and83 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.40, ptr @.str.39
  %and87 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %cond89 = select i1 %tobool88.not, ptr @.str.40, ptr @.str.39
  %and91 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %cond93 = select i1 %tobool92.not, ptr @.str.40, ptr @.str.39
  %and95 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %cond97 = select i1 %tobool96.not, ptr @.str.40, ptr @.str.39
  %and99 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond77, ptr noundef nonnull %cond81, ptr noundef nonnull %cond85, ptr noundef nonnull %cond89, ptr noundef nonnull %cond93, ptr noundef nonnull %cond97, ptr noundef nonnull %cond101) #13
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %tobool.not.i318 = icmp eq ptr %57, null
  br i1 %tobool.not.i318, label %do.body3.i331, label %if.then.i321

if.then.i321:                                     ; preds = %do.end73
  %call.i319 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %57, i8 noundef zeroext -127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp.i320 = icmp slt i32 %call.i319, 0
  br i1 %cmp.i320, label %do.end.i323, label %if.then.i321.dme1737_read.exit334_crit_edge

if.then.i321.dme1737_read.exit334_crit_edge:      ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit334

do.end.i323:                                      ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i322 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i322, ptr noundef nonnull @.str.24, i32 noundef 129, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit334

do.body3.i331:                                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr.i324 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %addr.i324 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i324, align 4
  %and.i325 = and i32 %59, 1048575
  %add.i326 = or i32 %and.i325, -18874368
  %60 = inttoptr i32 %add.i326 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 -127) #9, !srcloc !612
  %61 = ptrtoint ptr %addr.i324 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i324, align 4
  %add8.i327 = add i32 %62, 1
  %and9.i328 = and i32 %add8.i327, 1048575
  %add10.i329 = or i32 %and9.i328, -18874368
  %63 = inttoptr i32 %add10.i329 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i330 = zext i8 %64 to i32
  br label %dme1737_read.exit334

dme1737_read.exit334:                             ; preds = %do.body3.i331, %do.end.i323, %if.then.i321.dme1737_read.exit334_crit_edge
  %val.0.i332 = phi i32 [ %call.i319, %do.end.i323 ], [ %call.i319, %if.then.i321.dme1737_read.exit334_crit_edge ], [ %conv13.i330, %do.body3.i331 ]
  %conv15.i333 = trunc i32 %val.0.i332 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -92, i8 %conv15.i333)
  %cmp106.not = icmp eq i8 %conv15.i333, -92
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp106.not
  br i1 %or.cond, label %if.else, label %do.end111

do.end111:                                        ; preds = %dme1737_read.exit334
  call void @__sanitizer_cov_trace_pc() #11
  %and113 = and i32 %val.0.i332, 3
  %add = add nuw nsw i32 %and113, 1
  %65 = lshr i32 %val.0.i332, 2
  %and115 = and i32 %65, 3
  %add116 = add nuw nsw i32 %and115, 1
  %66 = lshr i32 %val.0.i332, 4
  %and119 = and i32 %66, 3
  %add120 = add nuw nsw i32 %and119, 1
  %conv105 = lshr i32 %val.0.i332, 6
  %67 = and i32 %conv105, 3
  %add124 = add nuw nsw i32 %67, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %add, i32 noundef %add116, i32 noundef %add120, i32 noundef %add124, ptr noundef nonnull @.str.27) #13
  br label %if.end146

if.else:                                          ; preds = %dme1737_read.exit334
  %tobool30.not.not = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %conv15.i333)
  %cmp128.not = icmp eq i8 %conv15.i333, 36
  %or.cond290 = select i1 %tobool30.not.not, i1 true, i1 %cmp128.not
  br i1 %or.cond290, label %if.else.if.end146_crit_edge, label %do.end133

if.else.if.end146_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

do.end133:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and135 = and i32 %val.0.i332, 3
  %add136 = add nuw nsw i32 %and135, 1
  %68 = lshr i32 %val.0.i332, 2
  %and139 = and i32 %68, 3
  %add140 = add nuw nsw i32 %and139, 1
  %conv127 = lshr i32 %val.0.i332, 4
  %and143 = and i32 %conv127, 3
  %add144 = add nuw nsw i32 %and143, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %add136, i32 noundef %add140, i32 noundef %add144, ptr noundef nonnull @.str.27) #13
  br label %if.end146

if.end146:                                        ; preds = %do.end133, %if.else.if.end146_crit_edge, %do.end111
  %69 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %config, align 1
  %71 = and i8 %70, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool150.not = icmp eq i8 %71, 0
  br i1 %tobool150.not, label %for.cond.preheader, label %if.end146.if.end196_crit_edge

if.end146.if.end196_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

for.cond.preheader:                               ; preds = %if.end146
  %addr.i341 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %ix.0355 = phi i32 [ 0, %for.cond.preheader ], [ %add172, %for.inc.for.body_crit_edge ]
  %72 = trunc i32 %ix.0355 to i8
  %conv155 = add i8 %72, 92
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %tobool.not.i335 = icmp eq ptr %74, null
  br i1 %tobool.not.i335, label %do.body3.i348, label %if.then.i338

if.then.i338:                                     ; preds = %for.body
  %call.i336 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %74, i8 noundef zeroext %conv155) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %cmp.i337 = icmp slt i32 %call.i336, 0
  br i1 %cmp.i337, label %do.end.i340, label %if.then.i338.dme1737_read.exit351_crit_edge

if.then.i338.dme1737_read.exit351_crit_edge:      ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit351

do.end.i340:                                      ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i339 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 4
  %conv.i = zext i8 %conv155 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i339, ptr noundef nonnull @.str.24, i32 noundef %conv.i, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit351

do.body3.i348:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %addr.i341 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr.i341, align 4
  %and.i342 = and i32 %76, 1048575
  %add.i343 = or i32 %and.i342, -18874368
  %77 = inttoptr i32 %add.i343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %conv155) #9, !srcloc !612
  %78 = ptrtoint ptr %addr.i341 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i341, align 4
  %add8.i344 = add i32 %79, 1
  %and9.i345 = and i32 %add8.i344, 1048575
  %add10.i346 = or i32 %and9.i345, -18874368
  %80 = inttoptr i32 %add10.i346 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i347 = zext i8 %81 to i32
  br label %dme1737_read.exit351

dme1737_read.exit351:                             ; preds = %do.body3.i348, %do.end.i340, %if.then.i338.dme1737_read.exit351_crit_edge
  %val.0.i349 = phi i32 [ %call.i336, %do.end.i340 ], [ %call.i336, %if.then.i338.dme1737_read.exit351_crit_edge ], [ %conv13.i347, %do.body3.i348 ]
  %conv15.i350 = trunc i32 %val.0.i349 to i8
  %arrayidx = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 %ix.0355
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv15.i350, ptr %arrayidx, align 1
  %83 = ptrtoint ptr %has_features57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %has_features57, align 4
  %shl = shl i32 2048, %ix.0355
  %and159 = and i32 %84, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp ne i32 %and159, 0
  %85 = and i32 %val.0.i349, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %85)
  %cmp166 = icmp eq i32 %85, 128
  %or.cond354 = select i1 %tobool160.not, i1 %cmp166, i1 false
  %add172 = add nuw nsw i32 %ix.0355, 1
  br i1 %or.cond354, label %do.end171, label %dme1737_read.exit351.for.inc_crit_edge

dme1737_read.exit351.for.inc_crit_edge:           ; preds = %dme1737_read.exit351
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end171:                                        ; preds = %dme1737_read.exit351
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %add172) #13
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx, align 1
  %88 = or i8 %87, -32
  store i8 %88, ptr %arrayidx, align 1
  %conv188 = add i8 %72, 48
  tail call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv188, i8 noundef zeroext 0)
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx, align 1
  tail call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv155, i8 noundef zeroext %90)
  br label %for.inc

for.inc:                                          ; preds = %do.end171, %dme1737_read.exit351.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add172, 3
  br i1 %exitcond.not, label %for.inc.if.end196_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end196_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.end196:                                        ; preds = %for.inc.if.end196_crit_edge, %if.end146.if.end196_crit_edge
  %pwm_acz = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 30
  %91 = ptrtoint ptr %pwm_acz to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %pwm_acz, align 2
  %arrayidx199 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 30, i32 1
  %92 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %arrayidx199, align 1
  %arrayidx201 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 30, i32 2
  %93 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %arrayidx201, align 2
  %94 = ptrtoint ptr %has_features57 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %has_features57, align 4
  %and203 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.end196.cleanup_crit_edge, label %if.then205

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then205:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %call206 = tail call zeroext i8 @vid_which_vrm() #9
  %vrm = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 22
  %96 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %call206, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %if.end196.cleanup_crit_edge, %do.end28, %do.end
  %retval.0 = phi i32 [ -14, %do.end28 ], [ -14, %do.end ], [ 0, %if.then205 ], [ 0, %if.end196.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dme1737_create_files(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_name, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call6 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.exit_remove_crit_edge

if.end4.exit_remove_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.end9:                                          ; preds = %if.end4
  %has_features = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_temp_offset_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.if.end17_crit_edge, label %if.then11.exit_remove_crit_edge

if.then11.exit_remove_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %6 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_features, align 4
  %and19 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %call23 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_vid_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.exit_remove_crit_edge

if.then21.exit_remove_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %8 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %has_features, align 4
  %and29 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end37_crit_edge, label %if.then31

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %if.end27
  %call33 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone3_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.exit_remove_crit_edge

if.then31.exit_remove_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %10 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %has_features, align 4
  %and39 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end47_crit_edge, label %if.then41

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then41:                                        ; preds = %if.end37
  %call43 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone_hyst_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end47_crit_edge, label %if.then41.exit_remove_crit_edge

if.then41.exit_remove_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %12 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %has_features, align 4
  %and49 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end57_crit_edge, label %if.then51

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then51:                                        ; preds = %if.end47
  %call53 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_in7_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then51.if.end57_crit_edge, label %if.then51.exit_remove_crit_edge

if.then51.exit_remove_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %14 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_features, align 4
  %and59 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.for.inc_crit_edge, label %if.then61

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then61:                                        ; preds = %if.end57
  %call63 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @dme1737_fan_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.for.inc_crit_edge, label %if.then61.exit_remove_crit_edge

if.then61.exit_remove_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.for.inc_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then61.for.inc_crit_edge, %if.end57.for.inc_crit_edge
  %16 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %has_features, align 4
  %and59.1 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.1)
  %tobool60.not.1 = icmp eq i32 %and59.1, 0
  br i1 %tobool60.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then61.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then61.1:                                      ; preds = %for.inc
  %call63.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.1)
  %tobool64.not.1 = icmp eq i32 %call63.1, 0
  br i1 %tobool64.not.1, label %if.then61.1.for.inc.1_crit_edge, label %if.then61.1.exit_remove_crit_edge

if.then61.1.exit_remove_crit_edge:                ; preds = %if.then61.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.1.for.inc.1_crit_edge:                  ; preds = %if.then61.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then61.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %has_features, align 4
  %and59.2 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.2)
  %tobool60.not.2 = icmp eq i32 %and59.2, 0
  br i1 %tobool60.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then61.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then61.2:                                      ; preds = %for.inc.1
  %call63.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.2)
  %tobool64.not.2 = icmp eq i32 %call63.2, 0
  br i1 %tobool64.not.2, label %if.then61.2.for.inc.2_crit_edge, label %if.then61.2.exit_remove_crit_edge

if.then61.2.exit_remove_crit_edge:                ; preds = %if.then61.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.2.for.inc.2_crit_edge:                  ; preds = %if.then61.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then61.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %20 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %has_features, align 4
  %and59.3 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.3)
  %tobool60.not.3 = icmp eq i32 %and59.3, 0
  br i1 %tobool60.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then61.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then61.3:                                      ; preds = %for.inc.2
  %call63.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.3)
  %tobool64.not.3 = icmp eq i32 %call63.3, 0
  br i1 %tobool64.not.3, label %if.then61.3.for.inc.3_crit_edge, label %if.then61.3.exit_remove_crit_edge

if.then61.3.exit_remove_crit_edge:                ; preds = %if.then61.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.3.for.inc.3_crit_edge:                  ; preds = %if.then61.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then61.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %22 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %has_features, align 4
  %and59.4 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.4)
  %tobool60.not.4 = icmp eq i32 %and59.4, 0
  br i1 %tobool60.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then61.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then61.4:                                      ; preds = %for.inc.3
  %call63.4 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.4)
  %tobool64.not.4 = icmp eq i32 %call63.4, 0
  br i1 %tobool64.not.4, label %if.then61.4.for.inc.4_crit_edge, label %if.then61.4.exit_remove_crit_edge

if.then61.4.exit_remove_crit_edge:                ; preds = %if.then61.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.4.for.inc.4_crit_edge:                  ; preds = %if.then61.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then61.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %24 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %has_features, align 4
  %and59.5 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.5)
  %tobool60.not.5 = icmp eq i32 %and59.5, 0
  br i1 %tobool60.not.5, label %for.inc.4.for.body70.preheader_crit_edge, label %if.then61.5

for.inc.4.for.body70.preheader_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70.preheader

if.then61.5:                                      ; preds = %for.inc.4
  %call63.5 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.5)
  %tobool64.not.5 = icmp eq i32 %call63.5, 0
  br i1 %tobool64.not.5, label %if.then61.5.for.body70.preheader_crit_edge, label %if.then61.5.exit_remove_crit_edge

if.then61.5.exit_remove_crit_edge:                ; preds = %if.then61.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then61.5.for.body70.preheader_crit_edge:       ; preds = %if.then61.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70.preheader

for.body70.preheader:                             ; preds = %if.then61.5.for.body70.preheader_crit_edge, %for.inc.4.for.body70.preheader_crit_edge
  br label %for.body70

for.body70:                                       ; preds = %for.inc96.for.body70_crit_edge, %for.body70.preheader
  %ix.1241 = phi i32 [ %inc97, %for.inc96.for.body70_crit_edge ], [ 0, %for.body70.preheader ]
  %26 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %has_features, align 4
  %shl73 = shl i32 2048, %ix.1241
  %and74 = and i32 %27, %shl73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %for.body70.for.inc96_crit_edge, label %if.then76

for.body70.for.inc96_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

if.then76:                                        ; preds = %for.body70
  %arrayidx78 = getelementptr [6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 %ix.1241
  %call79 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef %arrayidx78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then76.exit_remove_crit_edge

if.then76.exit_remove_crit_edge:                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.end82:                                         ; preds = %if.then76
  %28 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %has_features, align 4
  %and84 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp ne i32 %and84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ix.1241)
  %cmp86 = icmp ult i32 %ix.1241, 3
  %or.cond = select i1 %tobool85.not, i1 %cmp86, i1 false
  br i1 %or.cond, label %if.then87, label %if.end82.for.inc96_crit_edge

if.end82.for.inc96_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

if.then87:                                        ; preds = %if.end82
  %arrayidx89 = getelementptr [3 x ptr], ptr @dme1737_auto_pwm_min_attr, i32 0, i32 %ix.1241
  %30 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx89, align 4
  %call.i231 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %31, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool91.not = icmp eq i32 %call.i231, 0
  br i1 %tobool91.not, label %if.then87.for.inc96_crit_edge, label %if.then87.exit_remove_crit_edge

if.then87.exit_remove_crit_edge:                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove

if.then87.for.inc96_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

for.inc96:                                        ; preds = %if.then87.for.inc96_crit_edge, %if.end82.for.inc96_crit_edge, %for.body70.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %ix.1241, 1
  %exitcond.not = icmp eq i32 %inc97, 6
  br i1 %exitcond.not, label %for.end98, label %for.inc96.for.body70_crit_edge

for.inc96.for.body70_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70

for.end98:                                        ; preds = %for.inc96
  %config = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 20
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %config, align 1
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool100.not = icmp eq i8 %34, 0
  br i1 %tobool100.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.52) #13
  br label %cleanup

if.else:                                          ; preds = %for.end98
  tail call fastcc void @dme1737_chmod_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone_chmod_group)
  %35 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %has_features, align 4
  %and103 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else.if.end106_crit_edge, label %if.then105

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then105:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dme1737_chmod_group(ptr noundef %dev, ptr noundef nonnull @dme1737_temp_offset_group)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.else.if.end106_crit_edge
  %37 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %has_features, align 4
  %and108 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end111_crit_edge, label %if.then110

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dme1737_chmod_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone3_chmod_group)
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end106.if.end111_crit_edge
  %39 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %has_features, align 4
  %and113 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.for.body120.preheader_crit_edge, label %if.then115

if.end111.for.body120.preheader_crit_edge:        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120.preheader

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dme1737_chmod_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone_hyst_group)
  br label %for.body120.preheader

for.body120.preheader:                            ; preds = %if.then115, %if.end111.for.body120.preheader_crit_edge
  br label %for.body120

for.body120:                                      ; preds = %for.inc138.for.body120_crit_edge, %for.body120.preheader
  %ix.2243 = phi i32 [ %inc139, %for.inc138.for.body120_crit_edge ], [ 0, %for.body120.preheader ]
  %41 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %has_features, align 4
  %shl123 = shl i32 2048, %ix.2243
  %and124 = and i32 %42, %shl123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %for.body120.for.inc138_crit_edge, label %if.then126

for.body120.for.inc138_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

if.then126:                                       ; preds = %for.body120
  %attrs.i = getelementptr [6 x %struct.attribute_group], ptr @dme1737_pwm_chmod_group, i32 0, i32 %ix.2243, i32 3
  %43 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %attrs.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not1.i = icmp eq ptr %46, null
  br i1 %tobool.not1.i, label %if.then126.dme1737_chmod_group.exit_crit_edge, label %if.then126.for.body.i_crit_edge

if.then126.for.body.i_crit_edge:                  ; preds = %if.then126
  br label %for.body.i

if.then126.dme1737_chmod_group.exit_crit_edge:    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_chmod_group.exit

for.body.i:                                       ; preds = %dme1737_chmod_file.exit.i.for.body.i_crit_edge, %if.then126.for.body.i_crit_edge
  %47 = phi ptr [ %51, %dme1737_chmod_file.exit.i.for.body.i_crit_edge ], [ %46, %if.then126.for.body.i_crit_edge ]
  %attr.02.i = phi ptr [ %incdec.ptr.i, %dme1737_chmod_file.exit.i.for.body.i_crit_edge ], [ %44, %if.then126.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull %47, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.dme1737_chmod_file.exit.i_crit_edge, label %do.end.i.i

for.body.i.dme1737_chmod_file.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_chmod_file.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %49) #13
  br label %dme1737_chmod_file.exit.i

dme1737_chmod_file.exit.i:                        ; preds = %do.end.i.i, %for.body.i.dme1737_chmod_file.exit.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %attr.02.i, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %dme1737_chmod_file.exit.i.dme1737_chmod_group.exit_crit_edge, label %dme1737_chmod_file.exit.i.for.body.i_crit_edge

dme1737_chmod_file.exit.i.for.body.i_crit_edge:   ; preds = %dme1737_chmod_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dme1737_chmod_file.exit.i.dme1737_chmod_group.exit_crit_edge: ; preds = %dme1737_chmod_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_chmod_group.exit

dme1737_chmod_group.exit:                         ; preds = %dme1737_chmod_file.exit.i.dme1737_chmod_group.exit_crit_edge, %if.then126.dme1737_chmod_group.exit_crit_edge
  %52 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %has_features, align 4
  %and129 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp ne i32 %and129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ix.2243)
  %cmp132 = icmp ult i32 %ix.2243, 3
  %or.cond230 = select i1 %tobool130.not, i1 %cmp132, i1 false
  br i1 %or.cond230, label %if.then134, label %dme1737_chmod_group.exit.for.inc138_crit_edge

dme1737_chmod_group.exit.for.inc138_crit_edge:    ; preds = %dme1737_chmod_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

if.then134:                                       ; preds = %dme1737_chmod_group.exit
  %arrayidx135 = getelementptr [3 x ptr], ptr @dme1737_auto_pwm_min_attr, i32 0, i32 %ix.2243
  %54 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx135, align 4
  %call.i232 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef %55, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i233 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i233, label %if.then134.for.inc138_crit_edge, label %do.end.i

if.then134.for.inc138_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

do.end.i:                                         ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %57) #13
  br label %for.inc138

for.inc138:                                       ; preds = %do.end.i, %if.then134.for.inc138_crit_edge, %dme1737_chmod_group.exit.for.inc138_crit_edge, %for.body120.for.inc138_crit_edge
  %inc139 = add nuw nsw i32 %ix.2243, 1
  %exitcond248.not = icmp eq i32 %inc139, 6
  br i1 %exitcond248.not, label %for.body144.preheader, label %for.inc138.for.body120_crit_edge

for.inc138.for.body120_crit_edge:                 ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120

for.body144.preheader:                            ; preds = %for.inc138
  %58 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %has_features, align 4
  %and148 = and i32 %59, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %for.body144.preheader.for.inc159_crit_edge, label %land.lhs.true150

for.body144.preheader.for.inc159_crit_edge:       ; preds = %for.body144.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159

land.lhs.true150:                                 ; preds = %for.body144.preheader
  %arrayidx151 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 0
  %60 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %61)
  %cmp154 = icmp ugt i8 %61, -33
  br i1 %cmp154, label %if.then156, label %land.lhs.true150.for.inc159_crit_edge

land.lhs.true150.for.inc159_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159

if.then156:                                       ; preds = %land.lhs.true150
  %call.i234 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm1, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %if.then156.for.inc159_crit_edge, label %do.end.i236

if.then156.for.inc159_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159

do.end.i236:                                      ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  %62 = load ptr, ptr @sensor_dev_attr_pwm1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %62) #13
  br label %for.inc159

for.inc159:                                       ; preds = %do.end.i236, %if.then156.for.inc159_crit_edge, %land.lhs.true150.for.inc159_crit_edge, %for.body144.preheader.for.inc159_crit_edge
  %63 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %has_features, align 4
  %and148.1 = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.1)
  %tobool149.not.1 = icmp eq i32 %and148.1, 0
  br i1 %tobool149.not.1, label %for.inc159.for.inc159.1_crit_edge, label %land.lhs.true150.1

for.inc159.for.inc159.1_crit_edge:                ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159.1

land.lhs.true150.1:                               ; preds = %for.inc159
  %arrayidx151.1 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 1
  %65 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx151.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %66)
  %cmp154.1 = icmp ugt i8 %66, -33
  br i1 %cmp154.1, label %if.then156.1, label %land.lhs.true150.1.for.inc159.1_crit_edge

land.lhs.true150.1.for.inc159.1_crit_edge:        ; preds = %land.lhs.true150.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159.1

if.then156.1:                                     ; preds = %land.lhs.true150.1
  %call.i234.1 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm2, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.1)
  %tobool.not.i235.1 = icmp eq i32 %call.i234.1, 0
  br i1 %tobool.not.i235.1, label %if.then156.1.for.inc159.1_crit_edge, label %do.end.i236.1

if.then156.1.for.inc159.1_crit_edge:              ; preds = %if.then156.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc159.1

do.end.i236.1:                                    ; preds = %if.then156.1
  call void @__sanitizer_cov_trace_pc() #11
  %67 = load ptr, ptr @sensor_dev_attr_pwm2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %67) #13
  br label %for.inc159.1

for.inc159.1:                                     ; preds = %do.end.i236.1, %if.then156.1.for.inc159.1_crit_edge, %land.lhs.true150.1.for.inc159.1_crit_edge, %for.inc159.for.inc159.1_crit_edge
  %68 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %has_features, align 4
  %and148.2 = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.2)
  %tobool149.not.2 = icmp eq i32 %and148.2, 0
  br i1 %tobool149.not.2, label %for.inc159.1.cleanup_crit_edge, label %land.lhs.true150.2

for.inc159.1.cleanup_crit_edge:                   ; preds = %for.inc159.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true150.2:                               ; preds = %for.inc159.1
  %arrayidx151.2 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 2
  %70 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx151.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %71)
  %cmp154.2 = icmp ugt i8 %71, -33
  br i1 %cmp154.2, label %if.then156.2, label %land.lhs.true150.2.cleanup_crit_edge

land.lhs.true150.2.cleanup_crit_edge:             ; preds = %land.lhs.true150.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then156.2:                                     ; preds = %land.lhs.true150.2
  %call.i234.2 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm3, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.2)
  %tobool.not.i235.2 = icmp eq i32 %call.i234.2, 0
  br i1 %tobool.not.i235.2, label %if.then156.2.cleanup_crit_edge, label %do.end.i236.2

if.then156.2.cleanup_crit_edge:                   ; preds = %if.then156.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i236.2:                                    ; preds = %if.then156.2
  call void @__sanitizer_cov_trace_pc() #11
  %72 = load ptr, ptr @sensor_dev_attr_pwm3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %72) #13
  br label %cleanup

exit_remove:                                      ; preds = %if.then87.exit_remove_crit_edge, %if.then76.exit_remove_crit_edge, %if.then61.5.exit_remove_crit_edge, %if.then61.4.exit_remove_crit_edge, %if.then61.3.exit_remove_crit_edge, %if.then61.2.exit_remove_crit_edge, %if.then61.1.exit_remove_crit_edge, %if.then61.exit_remove_crit_edge, %if.then51.exit_remove_crit_edge, %if.then41.exit_remove_crit_edge, %if.then31.exit_remove_crit_edge, %if.then21.exit_remove_crit_edge, %if.then11.exit_remove_crit_edge, %if.end4.exit_remove_crit_edge
  %err.0 = phi i32 [ %call6, %if.end4.exit_remove_crit_edge ], [ %call13, %if.then11.exit_remove_crit_edge ], [ %call23, %if.then21.exit_remove_crit_edge ], [ %call33, %if.then31.exit_remove_crit_edge ], [ %call43, %if.then41.exit_remove_crit_edge ], [ %call53, %if.then51.exit_remove_crit_edge ], [ %call63, %if.then61.exit_remove_crit_edge ], [ %call63.1, %if.then61.1.exit_remove_crit_edge ], [ %call63.2, %if.then61.2.exit_remove_crit_edge ], [ %call63.3, %if.then61.3.exit_remove_crit_edge ], [ %call63.4, %if.then61.4.exit_remove_crit_edge ], [ %call63.5, %if.then61.5.exit_remove_crit_edge ], [ %call.i231, %if.then87.exit_remove_crit_edge ], [ %call79, %if.then76.exit_remove_crit_edge ]
  tail call fastcc void @dme1737_remove_files(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %exit_remove, %do.end.i236.2, %if.then156.2.cleanup_crit_edge, %land.lhs.true150.2.cleanup_crit_edge, %for.inc159.1.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %err.0, %exit_remove ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %do.end.i236.2 ], [ 0, %if.then156.2.cleanup_crit_edge ], [ 0, %land.lhs.true150.2.cleanup_crit_edge ], [ 0, %for.inc159.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dme1737_remove_files(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_features = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_features, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_fan_group) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %4 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_features, align 4
  %and.1 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 1)) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %6 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_features, align 4
  %and.2 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 2)) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %8 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %has_features, align 4
  %and.3 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 3)) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %10 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %has_features, align 4
  %and.4 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 4)) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %12 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %has_features, align 4
  %and.5 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_fan_group, i32 0, i32 5)) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %14 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %has_features, align 4
  %and7 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.inc.5.for.inc21_crit_edge, label %if.then9

for.inc.5.for.inc21_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21

if.then9:                                         ; preds = %for.inc.5
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_pwm_group) #9
  %16 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %has_features, align 4
  %and13 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not.not, label %if.then9.for.inc21_crit_edge, label %if.then16

if.then9.for.inc21_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm1_auto_pwm_min, ptr noundef null) #9
  br label %for.inc21

for.inc21:                                        ; preds = %if.then16, %if.then9.for.inc21_crit_edge, %for.inc.5.for.inc21_crit_edge
  %18 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %has_features, align 4
  %and7.1 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %for.inc21.for.inc21.1_crit_edge, label %if.then9.1

for.inc21.for.inc21.1_crit_edge:                  ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.1

if.then9.1:                                       ; preds = %for.inc21
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 1)) #9
  %20 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %has_features, align 4
  %and13.1 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1.not = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1.not, label %if.then9.1.for.inc21.1_crit_edge, label %if.then16.1

if.then9.1.for.inc21.1_crit_edge:                 ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.1

if.then16.1:                                      ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm2_auto_pwm_min, ptr noundef null) #9
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %if.then16.1, %if.then9.1.for.inc21.1_crit_edge, %for.inc21.for.inc21.1_crit_edge
  %22 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %has_features, align 4
  %and7.2 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool8.not.2, label %for.inc21.1.for.inc21.2_crit_edge, label %if.then9.2

for.inc21.1.for.inc21.2_crit_edge:                ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.2

if.then9.2:                                       ; preds = %for.inc21.1
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 2)) #9
  %24 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %has_features, align 4
  %and13.2 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2.not = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2.not, label %if.then9.2.for.inc21.2_crit_edge, label %if.then16.2

if.then9.2.for.inc21.2_crit_edge:                 ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.2

if.then16.2:                                      ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm3_auto_pwm_min, ptr noundef null) #9
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %if.then16.2, %if.then9.2.for.inc21.2_crit_edge, %for.inc21.1.for.inc21.2_crit_edge
  %26 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %has_features, align 4
  %and7.3 = and i32 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %tobool8.not.3 = icmp eq i32 %and7.3, 0
  br i1 %tobool8.not.3, label %for.inc21.2.for.inc21.3_crit_edge, label %if.then9.3

for.inc21.2.for.inc21.3_crit_edge:                ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.3

if.then9.3:                                       ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 3)) #9
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %if.then9.3, %for.inc21.2.for.inc21.3_crit_edge
  %28 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %has_features, align 4
  %and7.4 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %tobool8.not.4 = icmp eq i32 %and7.4, 0
  br i1 %tobool8.not.4, label %for.inc21.3.for.inc21.4_crit_edge, label %if.then9.4

for.inc21.3.for.inc21.4_crit_edge:                ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.4

if.then9.4:                                       ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 4)) #9
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %if.then9.4, %for.inc21.3.for.inc21.4_crit_edge
  %30 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %has_features, align 4
  %and7.5 = and i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5)
  %tobool8.not.5 = icmp eq i32 %and7.5, 0
  br i1 %tobool8.not.5, label %for.inc21.4.for.inc21.5_crit_edge, label %if.then9.5

for.inc21.4.for.inc21.5_crit_edge:                ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.5

if.then9.5:                                       ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @dme1737_pwm_group, i32 0, i32 5)) #9
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %if.then9.5, %for.inc21.4.for.inc21.5_crit_edge
  %32 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %has_features, align 4
  %and25 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.inc21.5.if.end29_crit_edge, label %if.then27

for.inc21.5.if.end29_crit_edge:                   ; preds = %for.inc21.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %for.inc21.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_temp_offset_group) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.inc21.5.if.end29_crit_edge
  %34 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %has_features, align 4
  %and31 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.then33

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_vid_group) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29.if.end35_crit_edge
  %36 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %has_features, align 4
  %and37 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone3_group) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  %38 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %has_features, align 4
  %and43 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %if.then45

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_zone_hyst_group) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end41.if.end47_crit_edge
  %40 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %has_features, align 4
  %and49 = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end53_crit_edge, label %if.then51

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_in7_group) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.if.end53_crit_edge
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @dme1737_group) #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %tobool55.not = icmp eq ptr %43, null
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end58_crit_edge

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_name, ptr noundef null) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dme1737_write(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext %reg, i8 noundef zeroext %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv, ptr noundef nonnull @.str.27) #13
  br label %if.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %reg) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %add11 = add i32 %6, 1
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %7 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %val) #9, !srcloc !612
  br label %if.end15

if.end15:                                         ; preds = %do.body3, %do.end, %if.then.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dme1737_i2c_get_features(i32 noundef %sio_cip, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !617
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %sio_cip, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 85) #9, !srcloc !612
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #9, !srcloc !612
  %add1.i = add i32 %sio_cip, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i = zext i8 %3 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %conv6.i, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %4 = zext i16 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.217)
  switch i16 %cond, label %cond.end.exit_crit_edge [
    i16 119, label %cond.end.if.end_crit_edge
    i16 120, label %cond.end.if.end_crit_edge105
    i16 137, label %cond.end.if.end_crit_edge106
  ]

cond.end.if.end_crit_edge106:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.if.end_crit_edge105:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.exit_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %cond.end.if.end_crit_edge105, %cond.end.if.end_crit_edge106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !620
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !621
  tail call void @arm_heavy_mb() #9
  %add4.i = add i32 %sio_cip, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %5 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 10) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 96) #9, !srcloc !612
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i96 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv6.i96, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 97) #9, !srcloc !612
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i102 = zext i8 %7 to i32
  %or = or i32 %shl, %conv6.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool11.not = icmp eq i32 %or, 0
  br i1 %tobool11.not, label %if.end.exit_crit_edge, label %if.end13

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end13:                                         ; preds = %if.end
  %add15 = add nuw nsw i32 %or, -18874301
  %8 = inttoptr i32 %add15 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !622
  %10 = and i8 %9, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp20 = icmp eq i8 %10, 8
  br i1 %cmp20, label %if.then22, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %has_features = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 12
  %11 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %has_features, align 4
  %or23 = or i32 %12, 1024
  store i32 %or23, ptr %has_features, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end13.if.end24_crit_edge
  %add29 = add nuw nsw i32 %or, -18874300
  %13 = inttoptr i32 %add29 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !623
  %15 = and i8 %14, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp35 = icmp eq i8 %15, 8
  br i1 %cmp35, label %if.then37, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %has_features38 = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 12
  %16 = ptrtoint ptr %has_features38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %has_features38, align 4
  %or39 = or i32 %17, 65536
  store i32 %or39, ptr %has_features38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end24.if.end40_crit_edge
  %add45 = add nuw nsw i32 %or, -18874299
  %18 = inttoptr i32 %add45 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !624
  %20 = and i8 %19, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp51 = icmp eq i8 %20, 8
  br i1 %cmp51, label %if.then53, label %if.end40.if.end56_crit_edge

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %has_features54 = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 12
  %21 = ptrtoint ptr %has_features54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %has_features54, align 4
  %or55 = or i32 %22, 512
  store i32 %or55, ptr %has_features54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end40.if.end56_crit_edge
  %add61 = add nuw nsw i32 %or, -18874298
  %23 = inttoptr i32 %add61 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !625
  %25 = and i8 %24, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %25)
  %cmp67 = icmp eq i8 %25, 8
  br i1 %cmp67, label %if.then69, label %if.end56.exit_crit_edge

if.end56.exit_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then69:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %has_features70 = getelementptr inbounds %struct.dme1737_data, ptr %data, i32 0, i32 12
  %26 = ptrtoint ptr %has_features70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %has_features70, align 4
  %or71 = or i32 %27, 32768
  store i32 %or71, ptr %has_features70, align 4
  br label %exit

exit:                                             ; preds = %if.then69, %if.end56.exit_crit_edge, %if.end.exit_crit_edge, %cond.end.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.then69 ], [ 0, %if.end56.exit_crit_edge ], [ -19, %cond.end.exit_crit_edge ], [ -19, %if.end.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !626
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !612
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dme1737_chmod_group(ptr noundef %dev, ptr nocapture noundef readonly %group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not1 = icmp eq ptr %3, null
  br i1 %tobool.not1, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %dme1737_chmod_file.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %8, %dme1737_chmod_file.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %attr.02 = phi ptr [ %incdec.ptr, %dme1737_chmod_file.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull %4, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.dme1737_chmod_file.exit_crit_edge, label %do.end.i

for.body.dme1737_chmod_file.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_chmod_file.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %6) #13
  br label %dme1737_chmod_file.exit

dme1737_chmod_file.exit:                          ; preds = %do.end.i, %for.body.dme1737_chmod_file.exit_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %attr.02, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %dme1737_chmod_file.exit.for.end_crit_edge, label %dme1737_chmod_file.exit.for.body_crit_edge

dme1737_chmod_file.exit.for.body_crit_edge:       ; preds = %dme1737_chmod_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

dme1737_chmod_file.exit.for.end_crit_edge:        ; preds = %dme1737_chmod_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %dme1737_chmod_file.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dme1737_chmod_file(ptr noundef %dev, ptr noundef %attr, i16 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef %attr, i16 noundef zeroext %mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.194, ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.218)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb11
    i8 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 13, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %6 to i32
  %in_nominal = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 9
  %7 = ptrtoint ptr %in_nominal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_nominal, align 4
  %arrayidx3 = getelementptr i32, ptr %8, i32 %conv
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %mul.i = mul i32 %10, %conv2
  %add.i = add i32 %mul.i, 24576
  %div.i = sdiv i32 %add.i, 49152
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 14, i32 %conv
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %in_nominal8 = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %in_nominal8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_nominal8, align 4
  %arrayidx9 = getelementptr i32, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %mul.i41 = mul i32 %16, %conv7
  %add.i42 = add i32 %mul.i41, 96
  %div.i43 = sdiv i32 %add.i42, 192
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 15, i32 %conv
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %in_nominal14 = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 9
  %19 = ptrtoint ptr %in_nominal14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_nominal14, align 4
  %arrayidx15 = getelementptr i32, ptr %20, i32 %conv
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %mul.i44 = mul i32 %22, %conv13
  %add.i45 = add i32 %mul.i44, 96
  %div.i46 = sdiv i32 %add.i45, 192
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 36
  %23 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alarms, align 4
  %arrayidx18 = getelementptr [8 x i8], ptr @DME1737_BIT_ALARM_IN, i32 0, i32 %conv
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %26 to i32
  %shr = lshr i32 %24, %conv19
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_in.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_in, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !627

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_in.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb17, %sw.bb11, %sw.bb5, %sw.bb
  %res.0 = phi i32 [ 0, %if.then ], [ %and, %sw.bb17 ], [ %div.i46, %sw.bb11 ], [ %div.i43, %sw.bb5 ], [ %div.i, %sw.bb ], [ 0, %sw.default ]
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %res.0)
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dme1737_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %lsb = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lsb) #9
  %2 = getelementptr inbounds [6 x i8], ptr %lsb, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %lsb, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %lsb, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %lsb, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %lsb, i32 0, i32 5
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  %7 = call ptr @memset(ptr %lsb, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_vbat = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %last_vbat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_vbat, align 4
  %add = add i32 %9, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid, align 4, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %14, i8 noundef zeroext 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef 64, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr.i = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %16, 1048575
  %add.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 64) #9, !srcloc !612
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %add8.i = add i32 %19, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %20 = inttoptr i32 %add10.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %21 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  %conv15.i = trunc i32 %val.0.i to i8
  %22 = or i8 %conv15.i, 16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %tobool.not.i624 = icmp eq ptr %24, null
  br i1 %tobool.not.i624, label %do.body3.i633, label %if.then.i627

if.then.i627:                                     ; preds = %dme1737_read.exit
  %call.i625 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %24, i8 noundef zeroext 64, i8 noundef zeroext %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i625)
  %cmp.i626 = icmp slt i32 %call.i625, 0
  br i1 %cmp.i626, label %do.end.i629, label %if.then.i627.dme1737_write.exit_crit_edge

if.then.i627.dme1737_write.exit_crit_edge:        ; preds = %if.then.i627
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_write.exit

do.end.i629:                                      ; preds = %if.then.i627
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i628 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i628, ptr noundef nonnull @.str.50, i32 noundef 64, ptr noundef nonnull @.str.27) #13
  br label %dme1737_write.exit

do.body3.i633:                                    ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %addr.i630 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %addr.i630 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i630, align 4
  %and.i631 = and i32 %26, 1048575
  %add.i632 = or i32 %and.i631, -18874368
  %27 = inttoptr i32 %add.i632 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 64) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %addr.i630 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i630, align 4
  %add11.i = add i32 %29, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %30 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %22) #9, !srcloc !612
  br label %dme1737_write.exit

dme1737_write.exit:                               ; preds = %do.body3.i633, %do.end.i629, %if.then.i627.dme1737_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_vbat to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_vbat, align 4
  br label %if.end

if.end:                                           ; preds = %dme1737_write.exit, %lor.lhs.false.if.end_crit_edge
  %last_update = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_update, align 4
  %add5 = add i32 %34, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub6 = sub i32 %add5, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 0
  br i1 %cmp7, label %if.end.if.then12_crit_edge, label %lor.lhs.false9

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false9:                                   ; preds = %if.end
  %valid10 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %valid10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %valid10, align 4, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool11.not = icmp eq i8 %37, 0
  br i1 %tobool11.not, label %lor.lhs.false9.if.then12_crit_edge, label %lor.lhs.false9.if.end426_crit_edge

lor.lhs.false9.if.end426_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end426

lor.lhs.false9.if.then12_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false9.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %has_features = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %has_features, align 4
  %and = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.if.end19_crit_edge, label %if.then14

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.then12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %tobool.not.i634 = icmp eq ptr %41, null
  br i1 %tobool.not.i634, label %do.body3.i647, label %if.then.i637

if.then.i637:                                     ; preds = %if.then14
  %call.i635 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %41, i8 noundef zeroext 67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i635)
  %cmp.i636 = icmp slt i32 %call.i635, 0
  br i1 %cmp.i636, label %do.end.i639, label %if.then.i637.dme1737_read.exit650_crit_edge

if.then.i637.dme1737_read.exit650_crit_edge:      ; preds = %if.then.i637
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit650

do.end.i639:                                      ; preds = %if.then.i637
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i638 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i638, ptr noundef nonnull @.str.24, i32 noundef 67, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit650

do.body3.i647:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %addr.i640 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %addr.i640 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i640, align 4
  %and.i641 = and i32 %43, 1048575
  %add.i642 = or i32 %and.i641, -18874368
  %44 = inttoptr i32 %add.i642 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 67) #9, !srcloc !612
  %45 = ptrtoint ptr %addr.i640 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i640, align 4
  %add8.i643 = add i32 %46, 1
  %and9.i644 = and i32 %add8.i643, 1048575
  %add10.i645 = or i32 %and9.i644, -18874368
  %47 = inttoptr i32 %add10.i645 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i646 = zext i8 %48 to i32
  br label %dme1737_read.exit650

dme1737_read.exit650:                             ; preds = %do.body3.i647, %do.end.i639, %if.then.i637.dme1737_read.exit650_crit_edge
  %val.0.i648 = phi i32 [ %call.i635, %do.end.i639 ], [ %call.i635, %if.then.i637.dme1737_read.exit650_crit_edge ], [ %conv13.i646, %do.body3.i647 ]
  %conv15.i649 = trunc i32 %val.0.i648 to i8
  %49 = and i8 %conv15.i649, 63
  %vid = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %vid, align 4
  br label %if.end19

if.end19:                                         ; preds = %dme1737_read.exit650, %if.then12.if.end19_crit_edge
  %addr.i657 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %ix.01211 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ix.01211)
  %cmp22 = icmp eq i32 %ix.01211, 7
  br i1 %cmp22, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %for.body
  %51 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %has_features, align 4
  %and25 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true.for.body71.preheader_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

land.lhs.true.for.body71.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71.preheader

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ix.01211)
  %cmp29 = icmp ult i32 %ix.01211, 5
  br i1 %cmp29, label %cond.true, label %if.end28.cond.false_crit_edge

if.end28.cond.false_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.true:                                        ; preds = %if.end28
  %53 = trunc i32 %ix.01211 to i8
  %conv39.c615 = add nuw nsw i8 %53, 32
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %tobool.not.i651 = icmp eq ptr %55, null
  br i1 %tobool.not.i651, label %do.body3.i664, label %if.then.i654

if.then.i654:                                     ; preds = %cond.true
  %call.i652 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %55, i8 noundef zeroext %conv39.c615) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i652)
  %cmp.i653 = icmp slt i32 %call.i652, 0
  br i1 %cmp.i653, label %do.end.i656, label %if.then.i654.dme1737_read.exit667_crit_edge

if.then.i654.dme1737_read.exit667_crit_edge:      ; preds = %if.then.i654
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit667

do.end.i656:                                      ; preds = %if.then.i654
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i655 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  %conv.i = zext i8 %conv39.c615 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i655, ptr noundef nonnull @.str.24, i32 noundef %conv.i, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit667

do.body3.i664:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr.i657, align 4
  %and.i658 = and i32 %57, 1048575
  %add.i659 = or i32 %and.i658, -18874368
  %58 = inttoptr i32 %add.i659 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv39.c615) #9, !srcloc !612
  %59 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i657, align 4
  %add8.i660 = add i32 %60, 1
  %and9.i661 = and i32 %add8.i660, 1048575
  %add10.i662 = or i32 %and9.i661, -18874368
  %61 = inttoptr i32 %add10.i662 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i663 = zext i8 %62 to i32
  br label %dme1737_read.exit667

dme1737_read.exit667:                             ; preds = %do.body3.i664, %do.end.i656, %if.then.i654.dme1737_read.exit667_crit_edge
  %val.0.i665 = phi i32 [ %call.i652, %do.end.i656 ], [ %call.i652, %if.then.i654.dme1737_read.exit667_crit_edge ], [ %conv13.i663, %do.body3.i664 ]
  %63 = trunc i32 %val.0.i665 to i16
  %conv41.c617 = shl i16 %63, 8
  %arrayidx.c619 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 %ix.01211
  %64 = ptrtoint ptr %arrayidx.c619 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv41.c617, ptr %arrayidx.c619, align 2
  %mul = shl nuw nsw i32 %ix.01211, 1
  %65 = trunc i32 %mul to i8
  %conv52.c620 = add nuw nsw i8 %65, 68
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %tobool.not.i668 = icmp eq ptr %67, null
  br i1 %tobool.not.i668, label %do.body3.i682, label %if.then.i671

if.then.i671:                                     ; preds = %dme1737_read.exit667
  %call.i669 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %67, i8 noundef zeroext %conv52.c620) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i669)
  %cmp.i670 = icmp slt i32 %call.i669, 0
  br i1 %cmp.i670, label %do.end.i674, label %if.then.i671.dme1737_read.exit685_crit_edge

if.then.i671.dme1737_read.exit685_crit_edge:      ; preds = %if.then.i671
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit685

do.end.i674:                                      ; preds = %if.then.i671
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i672 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  %conv.i673 = zext i8 %conv52.c620 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i672, ptr noundef nonnull @.str.24, i32 noundef %conv.i673, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit685

do.body3.i682:                                    ; preds = %dme1737_read.exit667
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i657, align 4
  %and.i676 = and i32 %69, 1048575
  %add.i677 = or i32 %and.i676, -18874368
  %70 = inttoptr i32 %add.i677 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %conv52.c620) #9, !srcloc !612
  %71 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr.i657, align 4
  %add8.i678 = add i32 %72, 1
  %and9.i679 = and i32 %add8.i678, 1048575
  %add10.i680 = or i32 %and9.i679, -18874368
  %73 = inttoptr i32 %add10.i680 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i681 = zext i8 %74 to i32
  br label %dme1737_read.exit685

dme1737_read.exit685:                             ; preds = %do.body3.i682, %do.end.i674, %if.then.i671.dme1737_read.exit685_crit_edge
  %val.0.i683 = phi i32 [ %call.i669, %do.end.i674 ], [ %call.i669, %if.then.i671.dme1737_read.exit685_crit_edge ], [ %conv13.i681, %do.body3.i682 ]
  %conv15.i684 = trunc i32 %val.0.i683 to i8
  %arrayidx54.c622 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 14, i32 %ix.01211
  %75 = ptrtoint ptr %arrayidx54.c622 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv15.i684, ptr %arrayidx54.c622, align 1
  %add59 = add nuw nsw i32 %mul, 69
  br label %cond.end63

cond.false:                                       ; preds = %if.end28.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ix.01211)
  %cmp32 = icmp ult i32 %ix.01211, 7
  %76 = trunc i32 %ix.01211 to i8
  %77 = add i8 %76, -108
  %conv39.c = select i1 %cmp32, i8 %77, i8 31
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %tobool.not.i686 = icmp eq ptr %79, null
  br i1 %tobool.not.i686, label %do.body3.i700, label %if.then.i689

if.then.i689:                                     ; preds = %cond.false
  %call.i687 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %79, i8 noundef zeroext %conv39.c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i687)
  %cmp.i688 = icmp slt i32 %call.i687, 0
  br i1 %cmp.i688, label %do.end.i692, label %if.then.i689.dme1737_read.exit703_crit_edge

if.then.i689.dme1737_read.exit703_crit_edge:      ; preds = %if.then.i689
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit703

do.end.i692:                                      ; preds = %if.then.i689
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i690 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  %conv.i691 = zext i8 %conv39.c to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i690, ptr noundef nonnull @.str.24, i32 noundef %conv.i691, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit703

do.body3.i700:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr.i657, align 4
  %and.i694 = and i32 %81, 1048575
  %add.i695 = or i32 %and.i694, -18874368
  %82 = inttoptr i32 %add.i695 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %conv39.c) #9, !srcloc !612
  %83 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr.i657, align 4
  %add8.i696 = add i32 %84, 1
  %and9.i697 = and i32 %add8.i696, 1048575
  %add10.i698 = or i32 %and9.i697, -18874368
  %85 = inttoptr i32 %add10.i698 to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i699 = zext i8 %86 to i32
  br label %dme1737_read.exit703

dme1737_read.exit703:                             ; preds = %do.body3.i700, %do.end.i692, %if.then.i689.dme1737_read.exit703_crit_edge
  %val.0.i701 = phi i32 [ %call.i687, %do.end.i692 ], [ %call.i687, %if.then.i689.dme1737_read.exit703_crit_edge ], [ %conv13.i699, %do.body3.i700 ]
  %87 = trunc i32 %val.0.i701 to i16
  %conv41.c = shl i16 %87, 8
  %arrayidx.c = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 %ix.01211
  %88 = ptrtoint ptr %arrayidx.c to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv41.c, ptr %arrayidx.c, align 2
  %mul48 = shl nuw nsw i32 %ix.01211, 1
  %89 = trunc i32 %mul48 to i8
  %conv52.c = add i8 %89, -111
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %tobool.not.i704 = icmp eq ptr %91, null
  br i1 %tobool.not.i704, label %do.body3.i718, label %if.then.i707

if.then.i707:                                     ; preds = %dme1737_read.exit703
  %call.i705 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %91, i8 noundef zeroext %conv52.c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i705)
  %cmp.i706 = icmp slt i32 %call.i705, 0
  br i1 %cmp.i706, label %do.end.i710, label %if.then.i707.dme1737_read.exit721_crit_edge

if.then.i707.dme1737_read.exit721_crit_edge:      ; preds = %if.then.i707
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit721

do.end.i710:                                      ; preds = %if.then.i707
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i708 = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  %conv.i709 = zext i8 %conv52.c to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i708, ptr noundef nonnull @.str.24, i32 noundef %conv.i709, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit721

do.body3.i718:                                    ; preds = %dme1737_read.exit703
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr.i657, align 4
  %and.i712 = and i32 %93, 1048575
  %add.i713 = or i32 %and.i712, -18874368
  %94 = inttoptr i32 %add.i713 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %conv52.c) #9, !srcloc !612
  %95 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr.i657, align 4
  %add8.i714 = add i32 %96, 1
  %and9.i715 = and i32 %add8.i714, 1048575
  %add10.i716 = or i32 %and9.i715, -18874368
  %97 = inttoptr i32 %add10.i716 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i717 = zext i8 %98 to i32
  br label %dme1737_read.exit721

dme1737_read.exit721:                             ; preds = %do.body3.i718, %do.end.i710, %if.then.i707.dme1737_read.exit721_crit_edge
  %val.0.i719 = phi i32 [ %call.i705, %do.end.i710 ], [ %call.i705, %if.then.i707.dme1737_read.exit721_crit_edge ], [ %conv13.i717, %do.body3.i718 ]
  %conv15.i720 = trunc i32 %val.0.i719 to i8
  %arrayidx54.c = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 14, i32 %ix.01211
  %99 = ptrtoint ptr %arrayidx54.c to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv15.i720, ptr %arrayidx54.c, align 1
  %add62 = add nuw nsw i32 %mul48, 146
  br label %cond.end63

cond.end63:                                       ; preds = %dme1737_read.exit721, %dme1737_read.exit685
  %cond64 = phi i32 [ %add59, %dme1737_read.exit685 ], [ %add62, %dme1737_read.exit721 ]
  %conv65 = trunc i32 %cond64 to i8
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %tobool.not.i722 = icmp eq ptr %101, null
  br i1 %tobool.not.i722, label %do.body3.i736, label %if.then.i725

if.then.i725:                                     ; preds = %cond.end63
  %call.i723 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %101, i8 noundef zeroext %conv65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i723)
  %cmp.i724 = icmp slt i32 %call.i723, 0
  br i1 %cmp.i724, label %do.end.i728, label %if.then.i725.for.inc_crit_edge

if.then.i725.for.inc_crit_edge:                   ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i728:                                      ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i726 = getelementptr inbounds %struct.i2c_client, ptr %101, i32 0, i32 4
  %conv.i727 = and i32 %cond64, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i726, ptr noundef nonnull @.str.24, i32 noundef %conv.i727, ptr noundef nonnull @.str.27) #13
  br label %for.inc

do.body3.i736:                                    ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %102 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i657, align 4
  %and.i730 = and i32 %103, 1048575
  %add.i731 = or i32 %and.i730, -18874368
  %104 = inttoptr i32 %add.i731 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 %conv65) #9, !srcloc !612
  %105 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr.i657, align 4
  %add8.i732 = add i32 %106, 1
  %and9.i733 = and i32 %add8.i732, 1048575
  %add10.i734 = or i32 %and9.i733, -18874368
  %107 = inttoptr i32 %add10.i734 to ptr
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %107) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i735 = zext i8 %108 to i32
  br label %for.inc

for.inc:                                          ; preds = %do.body3.i736, %do.end.i728, %if.then.i725.for.inc_crit_edge
  %val.0.i737 = phi i32 [ %call.i723, %do.end.i728 ], [ %call.i723, %if.then.i725.for.inc_crit_edge ], [ %conv13.i735, %do.body3.i736 ]
  %conv15.i738 = trunc i32 %val.0.i737 to i8
  %arrayidx67 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 15, i32 %ix.01211
  %109 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv15.i738, ptr %arrayidx67, align 1
  %inc = add nuw nsw i32 %ix.01211, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.body71.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.body71.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71.preheader

for.body71.preheader:                             ; preds = %for.inc.for.body71.preheader_crit_edge, %land.lhs.true.for.body71.preheader_crit_edge
  br label %for.body71

for.body71:                                       ; preds = %for.inc104.for.body71_crit_edge, %for.body71.preheader
  %ix.11215 = phi i32 [ %inc105, %for.inc104.for.body71_crit_edge ], [ 0, %for.body71.preheader ]
  %110 = trunc i32 %ix.11215 to i8
  %conv73 = add nuw nsw i8 %110, 37
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %tobool.not.i740 = icmp eq ptr %112, null
  br i1 %tobool.not.i740, label %do.body3.i754, label %if.then.i743

if.then.i743:                                     ; preds = %for.body71
  %call.i741 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %112, i8 noundef zeroext %conv73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i741)
  %cmp.i742 = icmp slt i32 %call.i741, 0
  br i1 %cmp.i742, label %do.end.i746, label %if.then.i743.dme1737_read.exit757_crit_edge

if.then.i743.dme1737_read.exit757_crit_edge:      ; preds = %if.then.i743
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit757

do.end.i746:                                      ; preds = %if.then.i743
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i744 = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 4
  %conv.i745 = zext i8 %conv73 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i744, ptr noundef nonnull @.str.24, i32 noundef %conv.i745, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit757

do.body3.i754:                                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %113 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %addr.i657, align 4
  %and.i748 = and i32 %114, 1048575
  %add.i749 = or i32 %and.i748, -18874368
  %115 = inttoptr i32 %add.i749 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %conv73) #9, !srcloc !612
  %116 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addr.i657, align 4
  %add8.i750 = add i32 %117, 1
  %and9.i751 = and i32 %add8.i750, 1048575
  %add10.i752 = or i32 %and9.i751, -18874368
  %118 = inttoptr i32 %add10.i752 to ptr
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %118) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i753 = zext i8 %119 to i32
  br label %dme1737_read.exit757

dme1737_read.exit757:                             ; preds = %do.body3.i754, %do.end.i746, %if.then.i743.dme1737_read.exit757_crit_edge
  %val.0.i755 = phi i32 [ %call.i741, %do.end.i746 ], [ %call.i741, %if.then.i743.dme1737_read.exit757_crit_edge ], [ %conv13.i753, %do.body3.i754 ]
  %120 = trunc i32 %val.0.i755 to i16
  %conv75 = shl i16 %120, 8
  %arrayidx78 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 16, i32 %ix.11215
  %121 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv75, ptr %arrayidx78, align 2
  %122 = shl i8 %110, 1
  %conv81 = add nuw nsw i8 %122, 78
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %tobool.not.i758 = icmp eq ptr %124, null
  br i1 %tobool.not.i758, label %do.body3.i772, label %if.then.i761

if.then.i761:                                     ; preds = %dme1737_read.exit757
  %call.i759 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %124, i8 noundef zeroext %conv81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i759)
  %cmp.i760 = icmp slt i32 %call.i759, 0
  br i1 %cmp.i760, label %do.end.i764, label %if.then.i761.dme1737_read.exit775_crit_edge

if.then.i761.dme1737_read.exit775_crit_edge:      ; preds = %if.then.i761
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit775

do.end.i764:                                      ; preds = %if.then.i761
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i762 = getelementptr inbounds %struct.i2c_client, ptr %124, i32 0, i32 4
  %conv.i763 = zext i8 %conv81 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i762, ptr noundef nonnull @.str.24, i32 noundef %conv.i763, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit775

do.body3.i772:                                    ; preds = %dme1737_read.exit757
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %addr.i657, align 4
  %and.i766 = and i32 %126, 1048575
  %add.i767 = or i32 %and.i766, -18874368
  %127 = inttoptr i32 %add.i767 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 %conv81) #9, !srcloc !612
  %128 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %addr.i657, align 4
  %add8.i768 = add i32 %129, 1
  %and9.i769 = and i32 %add8.i768, 1048575
  %add10.i770 = or i32 %and9.i769, -18874368
  %130 = inttoptr i32 %add10.i770 to ptr
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %130) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i771 = zext i8 %131 to i32
  br label %dme1737_read.exit775

dme1737_read.exit775:                             ; preds = %do.body3.i772, %do.end.i764, %if.then.i761.dme1737_read.exit775_crit_edge
  %val.0.i773 = phi i32 [ %call.i759, %do.end.i764 ], [ %call.i759, %if.then.i761.dme1737_read.exit775_crit_edge ], [ %conv13.i771, %do.body3.i772 ]
  %conv15.i774 = trunc i32 %val.0.i773 to i8
  %arrayidx83 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 17, i32 %ix.11215
  %132 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv15.i774, ptr %arrayidx83, align 1
  %conv86 = add nuw nsw i8 %122, 79
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %tobool.not.i776 = icmp eq ptr %134, null
  br i1 %tobool.not.i776, label %do.body3.i790, label %if.then.i779

if.then.i779:                                     ; preds = %dme1737_read.exit775
  %call.i777 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %134, i8 noundef zeroext %conv86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i777)
  %cmp.i778 = icmp slt i32 %call.i777, 0
  br i1 %cmp.i778, label %do.end.i782, label %if.then.i779.dme1737_read.exit793_crit_edge

if.then.i779.dme1737_read.exit793_crit_edge:      ; preds = %if.then.i779
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit793

do.end.i782:                                      ; preds = %if.then.i779
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i780 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  %conv.i781 = zext i8 %conv86 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i780, ptr noundef nonnull @.str.24, i32 noundef %conv.i781, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit793

do.body3.i790:                                    ; preds = %dme1737_read.exit775
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %135 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %addr.i657, align 4
  %and.i784 = and i32 %136, 1048575
  %add.i785 = or i32 %and.i784, -18874368
  %137 = inttoptr i32 %add.i785 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %conv86) #9, !srcloc !612
  %138 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %addr.i657, align 4
  %add8.i786 = add i32 %139, 1
  %and9.i787 = and i32 %add8.i786, 1048575
  %add10.i788 = or i32 %and9.i787, -18874368
  %140 = inttoptr i32 %add10.i788 to ptr
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i789 = zext i8 %141 to i32
  br label %dme1737_read.exit793

dme1737_read.exit793:                             ; preds = %do.body3.i790, %do.end.i782, %if.then.i779.dme1737_read.exit793_crit_edge
  %val.0.i791 = phi i32 [ %call.i777, %do.end.i782 ], [ %call.i777, %if.then.i779.dme1737_read.exit793_crit_edge ], [ %conv13.i789, %do.body3.i790 ]
  %conv15.i792 = trunc i32 %val.0.i791 to i8
  %arrayidx88 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 18, i32 %ix.11215
  %142 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv15.i792, ptr %arrayidx88, align 1
  %143 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %has_features, align 4
  %and90 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %dme1737_read.exit793.for.inc104_crit_edge, label %if.then92

dme1737_read.exit793.for.inc104_crit_edge:        ; preds = %dme1737_read.exit793
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.then92:                                        ; preds = %dme1737_read.exit793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ix.11215)
  %cmp93 = icmp eq i32 %ix.11215, 0
  %145 = add i8 %110, 28
  %conv100 = select i1 %cmp93, i8 31, i8 %145
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %tobool.not.i794 = icmp eq ptr %147, null
  br i1 %tobool.not.i794, label %do.body3.i808, label %if.then.i797

if.then.i797:                                     ; preds = %if.then92
  %call.i795 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %147, i8 noundef zeroext %conv100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795)
  %cmp.i796 = icmp slt i32 %call.i795, 0
  br i1 %cmp.i796, label %do.end.i800, label %if.then.i797.dme1737_read.exit811_crit_edge

if.then.i797.dme1737_read.exit811_crit_edge:      ; preds = %if.then.i797
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit811

do.end.i800:                                      ; preds = %if.then.i797
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i798 = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 4
  %conv.i799 = zext i8 %conv100 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i798, ptr noundef nonnull @.str.24, i32 noundef %conv.i799, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit811

do.body3.i808:                                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %148 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %addr.i657, align 4
  %and.i802 = and i32 %149, 1048575
  %add.i803 = or i32 %and.i802, -18874368
  %150 = inttoptr i32 %add.i803 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 %conv100) #9, !srcloc !612
  %151 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %addr.i657, align 4
  %add8.i804 = add i32 %152, 1
  %and9.i805 = and i32 %add8.i804, 1048575
  %add10.i806 = or i32 %and9.i805, -18874368
  %153 = inttoptr i32 %add10.i806 to ptr
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %153) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i807 = zext i8 %154 to i32
  br label %dme1737_read.exit811

dme1737_read.exit811:                             ; preds = %do.body3.i808, %do.end.i800, %if.then.i797.dme1737_read.exit811_crit_edge
  %val.0.i809 = phi i32 [ %call.i795, %do.end.i800 ], [ %call.i795, %if.then.i797.dme1737_read.exit811_crit_edge ], [ %conv13.i807, %do.body3.i808 ]
  %conv15.i810 = trunc i32 %val.0.i809 to i8
  %arrayidx102 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 19, i32 %ix.11215
  %155 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv15.i810, ptr %arrayidx102, align 1
  br label %for.inc104

for.inc104:                                       ; preds = %dme1737_read.exit811, %dme1737_read.exit793.for.inc104_crit_edge
  %inc105 = add nuw nsw i32 %ix.11215, 1
  %exitcond1230.not = icmp eq i32 %inc105, 3
  br i1 %exitcond1230.not, label %for.inc104.for.body110_crit_edge, label %for.inc104.for.body71_crit_edge

for.inc104.for.body71_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71

for.inc104.for.body110_crit_edge:                 ; preds = %for.inc104
  br label %for.body110

for.body110:                                      ; preds = %for.inc123.for.body110_crit_edge, %for.inc104.for.body110_crit_edge
  %ix.21217 = phi i32 [ %inc124, %for.inc123.for.body110_crit_edge ], [ 0, %for.inc104.for.body110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ix.21217)
  %cmp111 = icmp eq i32 %ix.21217, 5
  br i1 %cmp111, label %land.lhs.true113, label %for.body110.if.end118_crit_edge

for.body110.if.end118_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true113:                                 ; preds = %for.body110
  %156 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %has_features, align 4
  %and115 = and i32 %157, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %land.lhs.true113.land.lhs.true132.7_crit_edge, label %land.lhs.true113.if.end118_crit_edge

land.lhs.true113.if.end118_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true113.land.lhs.true132.7_crit_edge:    ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true132.7

if.end118:                                        ; preds = %land.lhs.true113.if.end118_crit_edge, %for.body110.if.end118_crit_edge
  %158 = trunc i32 %ix.21217 to i8
  %conv120 = add nuw nsw i8 %158, -124
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %tobool.not.i812 = icmp eq ptr %160, null
  br i1 %tobool.not.i812, label %do.body3.i826, label %if.then.i815

if.then.i815:                                     ; preds = %if.end118
  %call.i813 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %160, i8 noundef zeroext %conv120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i813)
  %cmp.i814 = icmp slt i32 %call.i813, 0
  br i1 %cmp.i814, label %do.end.i818, label %if.then.i815.for.inc123_crit_edge

if.then.i815.for.inc123_crit_edge:                ; preds = %if.then.i815
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc123

do.end.i818:                                      ; preds = %if.then.i815
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i816 = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 4
  %conv.i817 = zext i8 %conv120 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i816, ptr noundef nonnull @.str.24, i32 noundef %conv.i817, ptr noundef nonnull @.str.27) #13
  br label %for.inc123

do.body3.i826:                                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %161 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %addr.i657, align 4
  %and.i820 = and i32 %162, 1048575
  %add.i821 = or i32 %and.i820, -18874368
  %163 = inttoptr i32 %add.i821 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 %conv120) #9, !srcloc !612
  %164 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %addr.i657, align 4
  %add8.i822 = add i32 %165, 1
  %and9.i823 = and i32 %add8.i822, 1048575
  %add10.i824 = or i32 %and9.i823, -18874368
  %166 = inttoptr i32 %add10.i824 to ptr
  %167 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %166) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i825 = zext i8 %167 to i32
  br label %for.inc123

for.inc123:                                       ; preds = %do.body3.i826, %do.end.i818, %if.then.i815.for.inc123_crit_edge
  %val.0.i827 = phi i32 [ %call.i813, %do.end.i818 ], [ %call.i813, %if.then.i815.for.inc123_crit_edge ], [ %conv13.i825, %do.body3.i826 ]
  %conv15.i828 = trunc i32 %val.0.i827 to i8
  %arrayidx122 = getelementptr [6 x i8], ptr %lsb, i32 0, i32 %ix.21217
  %168 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv15.i828, ptr %arrayidx122, align 1
  %inc124 = add nuw nsw i32 %ix.21217, 1
  %exitcond1231.not = icmp eq i32 %inc124, 6
  br i1 %exitcond1231.not, label %for.inc123.land.lhs.true132.7_crit_edge, label %for.inc123.for.body110_crit_edge

for.inc123.for.body110_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.inc123.land.lhs.true132.7_crit_edge:          ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true132.7

land.lhs.true132.7:                               ; preds = %for.inc123.land.lhs.true132.7_crit_edge, %land.lhs.true113.land.lhs.true132.7_crit_edge
  %169 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %4, align 1
  %conv140 = zext i8 %170 to i16
  %shl143 = shl nuw nsw i16 %conv140, 4
  %arrayidx146 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 0
  %171 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx146, align 2
  %173 = and i16 %shl143, 240
  %conv149 = or i16 %173, %172
  store i16 %conv149, ptr %arrayidx146, align 2
  %174 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %5, align 1
  %conv140.1 = zext i8 %175 to i16
  %shl143.1 = shl nuw nsw i16 %conv140.1, 4
  %arrayidx146.1 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 1
  %176 = ptrtoint ptr %arrayidx146.1 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx146.1, align 2
  %178 = and i16 %shl143.1, 240
  %conv149.1 = or i16 %178, %177
  store i16 %conv149.1, ptr %arrayidx146.1, align 2
  %179 = load i8, ptr %5, align 1
  %arrayidx146.2 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 2
  %180 = ptrtoint ptr %arrayidx146.2 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx146.2, align 2
  %182 = and i8 %179, -16
  %183 = zext i8 %182 to i16
  %conv149.2 = or i16 %181, %183
  store i16 %conv149.2, ptr %arrayidx146.2, align 2
  %184 = load i8, ptr %4, align 1
  %arrayidx146.3 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 3
  %185 = ptrtoint ptr %arrayidx146.3 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx146.3, align 2
  %187 = and i8 %184, -16
  %188 = zext i8 %187 to i16
  %conv149.3 = or i16 %186, %188
  store i16 %conv149.3, ptr %arrayidx146.3, align 2
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %3, align 1
  %arrayidx146.4 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 4
  %191 = ptrtoint ptr %arrayidx146.4 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx146.4, align 2
  %193 = and i8 %190, -16
  %194 = zext i8 %193 to i16
  %conv149.4 = or i16 %192, %194
  store i16 %conv149.4, ptr %arrayidx146.4, align 2
  %195 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %lsb, align 1
  %arrayidx146.5 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 5
  %197 = ptrtoint ptr %arrayidx146.5 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx146.5, align 2
  %199 = and i8 %196, -16
  %200 = zext i8 %199 to i16
  %conv149.5 = or i16 %198, %200
  store i16 %conv149.5, ptr %arrayidx146.5, align 2
  %201 = load i8, ptr %lsb, align 1
  %conv140.6 = zext i8 %201 to i16
  %shl143.6 = shl nuw nsw i16 %conv140.6, 4
  %arrayidx146.6 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 6
  %202 = ptrtoint ptr %arrayidx146.6 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx146.6, align 2
  %204 = and i16 %shl143.6, 240
  %conv149.6 = or i16 %204, %203
  store i16 %conv149.6, ptr %arrayidx146.6, align 2
  %205 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %has_features, align 4
  %and134.7 = and i32 %206, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.7)
  %tobool135.not.7 = icmp eq i32 %and134.7, 0
  br i1 %tobool135.not.7, label %land.lhs.true132.7.for.inc150.7_crit_edge, label %if.end137.7

land.lhs.true132.7.for.inc150.7_crit_edge:        ; preds = %land.lhs.true132.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc150.7

if.end137.7:                                      ; preds = %land.lhs.true132.7
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %6, align 1
  %conv140.7 = zext i8 %208 to i16
  %shl143.7 = shl nuw nsw i16 %conv140.7, 4
  %arrayidx146.7 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 13, i32 7
  %209 = ptrtoint ptr %arrayidx146.7 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx146.7, align 2
  %211 = and i16 %shl143.7, 240
  %conv149.7 = or i16 %211, %210
  store i16 %conv149.7, ptr %arrayidx146.7, align 2
  br label %for.inc150.7

for.inc150.7:                                     ; preds = %if.end137.7, %land.lhs.true132.7.for.inc150.7_crit_edge
  %212 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %2, align 1
  %arrayidx166 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 16, i32 0
  %214 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %arrayidx166, align 2
  %conv160.tr = zext i8 %213 to i16
  %216 = shl nuw nsw i16 %conv160.tr, 4
  %217 = and i16 %216, 240
  %conv169 = or i16 %217, %215
  store i16 %conv169, ptr %arrayidx166, align 2
  %218 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %3, align 1
  %conv160.1 = zext i8 %219 to i16
  %shl163.1 = shl nuw nsw i16 %conv160.1, 4
  %arrayidx166.1 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 16, i32 1
  %220 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx166.1, align 2
  %222 = and i16 %shl163.1, 240
  %conv169.1 = or i16 %222, %221
  store i16 %conv169.1, ptr %arrayidx166.1, align 2
  %arrayidx166.2 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 16, i32 2
  %223 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx166.2, align 2
  %225 = and i8 %213, -16
  %226 = zext i8 %225 to i16
  %conv169.2 = or i16 %224, %226
  store i16 %conv169.2, ptr %arrayidx166.2, align 2
  br label %for.body176

for.body176:                                      ; preds = %for.inc272.for.body176_crit_edge, %for.inc150.7
  %ix.51222 = phi i32 [ 0, %for.inc150.7 ], [ %inc273, %for.inc272.for.body176_crit_edge ]
  %227 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %has_features, align 4
  %shl179 = shl i32 32, %ix.51222
  %and180 = and i32 %228, %shl179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %for.body176.for.inc272_crit_edge, label %if.end183

for.body176.for.inc272_crit_edge:                 ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc272

if.end183:                                        ; preds = %for.body176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ix.51222)
  %cmp184 = icmp ult i32 %ix.51222, 4
  %mul187 = shl nuw nsw i32 %ix.51222, 1
  %cond193.v = select i1 %cmp184, i32 40, i32 161
  %cond193 = add nuw nsw i32 %cond193.v, %mul187
  %conv194 = trunc i32 %cond193 to i8
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 4
  %tobool.not.i830 = icmp eq ptr %230, null
  br i1 %tobool.not.i830, label %do.body3.i844, label %if.then.i833

if.then.i833:                                     ; preds = %if.end183
  %call.i831 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %230, i8 noundef zeroext %conv194) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i831)
  %cmp.i832 = icmp slt i32 %call.i831, 0
  br i1 %cmp.i832, label %do.end.i836, label %if.then.i833.dme1737_read.exit847_crit_edge

if.then.i833.dme1737_read.exit847_crit_edge:      ; preds = %if.then.i833
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit847

do.end.i836:                                      ; preds = %if.then.i833
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i834 = getelementptr inbounds %struct.i2c_client, ptr %230, i32 0, i32 4
  %conv.i835 = and i32 %cond193, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i834, ptr noundef nonnull @.str.24, i32 noundef %conv.i835, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit847

do.body3.i844:                                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %231 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %addr.i657, align 4
  %and.i838 = and i32 %232, 1048575
  %add.i839 = or i32 %and.i838, -18874368
  %233 = inttoptr i32 %add.i839 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %233, i8 %conv194) #9, !srcloc !612
  %234 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr.i657, align 4
  %add8.i840 = add i32 %235, 1
  %and9.i841 = and i32 %add8.i840, 1048575
  %add10.i842 = or i32 %and9.i841, -18874368
  %236 = inttoptr i32 %add10.i842 to ptr
  %237 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %236) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i843 = zext i8 %237 to i32
  br label %dme1737_read.exit847

dme1737_read.exit847:                             ; preds = %do.body3.i844, %do.end.i836, %if.then.i833.dme1737_read.exit847_crit_edge
  %val.0.i845 = phi i32 [ %call.i831, %do.end.i836 ], [ %call.i831, %if.then.i833.dme1737_read.exit847_crit_edge ], [ %conv13.i843, %do.body3.i844 ]
  %238 = trunc i32 %val.0.i845 to i16
  %conv196 = and i16 %238, 255
  %arrayidx197 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 23, i32 %ix.51222
  %239 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv196, ptr %arrayidx197, align 2
  %conv209 = add nuw i8 %conv194, 1
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %tobool.not.i848 = icmp eq ptr %241, null
  br i1 %tobool.not.i848, label %do.body3.i862, label %if.then.i851

if.then.i851:                                     ; preds = %dme1737_read.exit847
  %call.i849 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %241, i8 noundef zeroext %conv209) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i849)
  %cmp.i850 = icmp slt i32 %call.i849, 0
  br i1 %cmp.i850, label %do.end.i854, label %if.then.i851.dme1737_read.exit865_crit_edge

if.then.i851.dme1737_read.exit865_crit_edge:      ; preds = %if.then.i851
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit865

do.end.i854:                                      ; preds = %if.then.i851
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i852 = getelementptr inbounds %struct.i2c_client, ptr %241, i32 0, i32 4
  %conv.i853 = zext i8 %conv209 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i852, ptr noundef nonnull @.str.24, i32 noundef %conv.i853, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit865

do.body3.i862:                                    ; preds = %dme1737_read.exit847
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %242 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %addr.i657, align 4
  %and.i856 = and i32 %243, 1048575
  %add.i857 = or i32 %and.i856, -18874368
  %244 = inttoptr i32 %add.i857 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 %conv209) #9, !srcloc !612
  %245 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %addr.i657, align 4
  %add8.i858 = add i32 %246, 1
  %and9.i859 = and i32 %add8.i858, 1048575
  %add10.i860 = or i32 %and9.i859, -18874368
  %247 = inttoptr i32 %add10.i860 to ptr
  %248 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %247) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i861 = zext i8 %248 to i32
  br label %dme1737_read.exit865

dme1737_read.exit865:                             ; preds = %do.body3.i862, %do.end.i854, %if.then.i851.dme1737_read.exit865_crit_edge
  %val.0.i863 = phi i32 [ %call.i849, %do.end.i854 ], [ %call.i849, %if.then.i851.dme1737_read.exit865_crit_edge ], [ %conv13.i861, %do.body3.i862 ]
  %249 = trunc i32 %val.0.i863 to i16
  %conv211 = shl i16 %249, 8
  %250 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %arrayidx197, align 2
  %or216 = or i16 %conv211, %251
  store i16 %or216, ptr %arrayidx197, align 2
  %cond227.v = select i1 %cmp184, i32 84, i32 165
  %cond227 = add nuw nsw i32 %cond227.v, %mul187
  %conv228 = trunc i32 %cond227 to i8
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %1, align 4
  %tobool.not.i866 = icmp eq ptr %253, null
  br i1 %tobool.not.i866, label %do.body3.i880, label %if.then.i869

if.then.i869:                                     ; preds = %dme1737_read.exit865
  %call.i867 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %253, i8 noundef zeroext %conv228) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i867)
  %cmp.i868 = icmp slt i32 %call.i867, 0
  br i1 %cmp.i868, label %do.end.i872, label %if.then.i869.dme1737_read.exit883_crit_edge

if.then.i869.dme1737_read.exit883_crit_edge:      ; preds = %if.then.i869
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit883

do.end.i872:                                      ; preds = %if.then.i869
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i870 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 4
  %conv.i871 = and i32 %cond227, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i870, ptr noundef nonnull @.str.24, i32 noundef %conv.i871, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit883

do.body3.i880:                                    ; preds = %dme1737_read.exit865
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %254 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %addr.i657, align 4
  %and.i874 = and i32 %255, 1048575
  %add.i875 = or i32 %and.i874, -18874368
  %256 = inttoptr i32 %add.i875 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %256, i8 %conv228) #9, !srcloc !612
  %257 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %addr.i657, align 4
  %add8.i876 = add i32 %258, 1
  %and9.i877 = and i32 %add8.i876, 1048575
  %add10.i878 = or i32 %and9.i877, -18874368
  %259 = inttoptr i32 %add10.i878 to ptr
  %260 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %259) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i879 = zext i8 %260 to i32
  br label %dme1737_read.exit883

dme1737_read.exit883:                             ; preds = %do.body3.i880, %do.end.i872, %if.then.i869.dme1737_read.exit883_crit_edge
  %val.0.i881 = phi i32 [ %call.i867, %do.end.i872 ], [ %call.i867, %if.then.i869.dme1737_read.exit883_crit_edge ], [ %conv13.i879, %do.body3.i880 ]
  %261 = trunc i32 %val.0.i881 to i16
  %conv230 = and i16 %261, 255
  %arrayidx231 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 24, i32 %ix.51222
  %262 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv230, ptr %arrayidx231, align 2
  %conv243 = add nuw i8 %conv228, 1
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %1, align 4
  %tobool.not.i884 = icmp eq ptr %264, null
  br i1 %tobool.not.i884, label %do.body3.i898, label %if.then.i887

if.then.i887:                                     ; preds = %dme1737_read.exit883
  %call.i885 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %264, i8 noundef zeroext %conv243) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i885)
  %cmp.i886 = icmp slt i32 %call.i885, 0
  br i1 %cmp.i886, label %do.end.i890, label %if.then.i887.dme1737_read.exit901_crit_edge

if.then.i887.dme1737_read.exit901_crit_edge:      ; preds = %if.then.i887
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit901

do.end.i890:                                      ; preds = %if.then.i887
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i888 = getelementptr inbounds %struct.i2c_client, ptr %264, i32 0, i32 4
  %conv.i889 = zext i8 %conv243 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i888, ptr noundef nonnull @.str.24, i32 noundef %conv.i889, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit901

do.body3.i898:                                    ; preds = %dme1737_read.exit883
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %265 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %addr.i657, align 4
  %and.i892 = and i32 %266, 1048575
  %add.i893 = or i32 %and.i892, -18874368
  %267 = inttoptr i32 %add.i893 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %267, i8 %conv243) #9, !srcloc !612
  %268 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %addr.i657, align 4
  %add8.i894 = add i32 %269, 1
  %and9.i895 = and i32 %add8.i894, 1048575
  %add10.i896 = or i32 %and9.i895, -18874368
  %270 = inttoptr i32 %add10.i896 to ptr
  %271 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %270) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i897 = zext i8 %271 to i32
  br label %dme1737_read.exit901

dme1737_read.exit901:                             ; preds = %do.body3.i898, %do.end.i890, %if.then.i887.dme1737_read.exit901_crit_edge
  %val.0.i899 = phi i32 [ %call.i885, %do.end.i890 ], [ %call.i885, %if.then.i887.dme1737_read.exit901_crit_edge ], [ %conv13.i897, %do.body3.i898 ]
  %272 = trunc i32 %val.0.i899 to i16
  %conv245 = shl i16 %272, 8
  %273 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx231, align 2
  %or250 = or i16 %conv245, %274
  store i16 %or250, ptr %arrayidx231, align 2
  %cond259.v = select i1 %cmp184, i32 144, i32 178
  %cond259 = add nuw nsw i32 %cond259.v, %ix.51222
  %conv260 = trunc i32 %cond259 to i8
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 4
  %tobool.not.i902 = icmp eq ptr %276, null
  br i1 %tobool.not.i902, label %do.body3.i916, label %if.then.i905

if.then.i905:                                     ; preds = %dme1737_read.exit901
  %call.i903 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %276, i8 noundef zeroext %conv260) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i903)
  %cmp.i904 = icmp slt i32 %call.i903, 0
  br i1 %cmp.i904, label %do.end.i908, label %if.then.i905.dme1737_read.exit919_crit_edge

if.then.i905.dme1737_read.exit919_crit_edge:      ; preds = %if.then.i905
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit919

do.end.i908:                                      ; preds = %if.then.i905
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i906 = getelementptr inbounds %struct.i2c_client, ptr %276, i32 0, i32 4
  %conv.i907 = and i32 %cond259, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i906, ptr noundef nonnull @.str.24, i32 noundef %conv.i907, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit919

do.body3.i916:                                    ; preds = %dme1737_read.exit901
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %277 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %addr.i657, align 4
  %and.i910 = and i32 %278, 1048575
  %add.i911 = or i32 %and.i910, -18874368
  %279 = inttoptr i32 %add.i911 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 %conv260) #9, !srcloc !612
  %280 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %addr.i657, align 4
  %add8.i912 = add i32 %281, 1
  %and9.i913 = and i32 %add8.i912, 1048575
  %add10.i914 = or i32 %and9.i913, -18874368
  %282 = inttoptr i32 %add10.i914 to ptr
  %283 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %282) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i915 = zext i8 %283 to i32
  br label %dme1737_read.exit919

dme1737_read.exit919:                             ; preds = %do.body3.i916, %do.end.i908, %if.then.i905.dme1737_read.exit919_crit_edge
  %val.0.i917 = phi i32 [ %call.i903, %do.end.i908 ], [ %call.i903, %if.then.i905.dme1737_read.exit919_crit_edge ], [ %conv13.i915, %do.body3.i916 ]
  %conv15.i918 = trunc i32 %val.0.i917 to i8
  %arrayidx262 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 26, i32 %ix.51222
  %284 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %conv15.i918, ptr %arrayidx262, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ix.51222)
  %cmp263 = icmp ugt i32 %ix.51222, 3
  br i1 %cmp263, label %if.then265, label %dme1737_read.exit919.for.inc272_crit_edge

dme1737_read.exit919.for.inc272_crit_edge:        ; preds = %dme1737_read.exit919
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc272

if.then265:                                       ; preds = %dme1737_read.exit919
  %285 = trunc i32 %ix.51222 to i8
  %conv267 = add nuw nsw i8 %285, -76
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %1, align 4
  %tobool.not.i920 = icmp eq ptr %287, null
  br i1 %tobool.not.i920, label %do.body3.i934, label %if.then.i923

if.then.i923:                                     ; preds = %if.then265
  %call.i921 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %287, i8 noundef zeroext %conv267) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i921)
  %cmp.i922 = icmp slt i32 %call.i921, 0
  br i1 %cmp.i922, label %do.end.i926, label %if.then.i923.dme1737_read.exit937_crit_edge

if.then.i923.dme1737_read.exit937_crit_edge:      ; preds = %if.then.i923
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit937

do.end.i926:                                      ; preds = %if.then.i923
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i924 = getelementptr inbounds %struct.i2c_client, ptr %287, i32 0, i32 4
  %conv.i925 = zext i8 %conv267 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i924, ptr noundef nonnull @.str.24, i32 noundef %conv.i925, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit937

do.body3.i934:                                    ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %288 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %addr.i657, align 4
  %and.i928 = and i32 %289, 1048575
  %add.i929 = or i32 %and.i928, -18874368
  %290 = inttoptr i32 %add.i929 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %290, i8 %conv267) #9, !srcloc !612
  %291 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %addr.i657, align 4
  %add8.i930 = add i32 %292, 1
  %and9.i931 = and i32 %add8.i930, 1048575
  %add10.i932 = or i32 %and9.i931, -18874368
  %293 = inttoptr i32 %add10.i932 to ptr
  %294 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %293) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i933 = zext i8 %294 to i32
  br label %dme1737_read.exit937

dme1737_read.exit937:                             ; preds = %do.body3.i934, %do.end.i926, %if.then.i923.dme1737_read.exit937_crit_edge
  %val.0.i935 = phi i32 [ %call.i921, %do.end.i926 ], [ %call.i921, %if.then.i923.dme1737_read.exit937_crit_edge ], [ %conv13.i933, %do.body3.i934 ]
  %conv15.i936 = trunc i32 %val.0.i935 to i8
  %sub269 = add nsw i32 %ix.51222, -4
  %arrayidx270 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 25, i32 %sub269
  %295 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv15.i936, ptr %arrayidx270, align 1
  br label %for.inc272

for.inc272:                                       ; preds = %dme1737_read.exit937, %dme1737_read.exit919.for.inc272_crit_edge, %for.body176.for.inc272_crit_edge
  %inc273 = add nuw nsw i32 %ix.51222, 1
  %exitcond1234.not = icmp eq i32 %inc273, 6
  br i1 %exitcond1234.not, label %for.inc272.for.body278_crit_edge, label %for.inc272.for.body176_crit_edge

for.inc272.for.body176_crit_edge:                 ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body176

for.inc272.for.body278_crit_edge:                 ; preds = %for.inc272
  br label %for.body278

for.cond323.preheader:                            ; preds = %for.inc320
  %296 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %1, align 4
  %tobool.not.i1010 = icmp eq ptr %297, null
  br i1 %tobool.not.i1010, label %do.body3.i1024, label %if.then.i1013

for.body278:                                      ; preds = %for.inc320.for.body278_crit_edge, %for.inc272.for.body278_crit_edge
  %ix.61224 = phi i32 [ %inc321, %for.inc320.for.body278_crit_edge ], [ 0, %for.inc272.for.body278_crit_edge ]
  %298 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %has_features, align 4
  %shl281 = shl i32 2048, %ix.61224
  %and282 = and i32 %299, %shl281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %for.body278.for.inc320_crit_edge, label %if.end285

for.body278.for.inc320_crit_edge:                 ; preds = %for.body278
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc320

if.end285:                                        ; preds = %for.body278
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ix.61224)
  %cmp286 = icmp ult i32 %ix.61224, 3
  %cond293.v = select i1 %cmp286, i32 48, i32 161
  %cond293 = add nuw nsw i32 %cond293.v, %ix.61224
  %conv294 = trunc i32 %cond293 to i8
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 4
  %tobool.not.i938 = icmp eq ptr %301, null
  br i1 %tobool.not.i938, label %do.body3.i952, label %if.then.i941

if.then.i941:                                     ; preds = %if.end285
  %call.i939 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %301, i8 noundef zeroext %conv294) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i939)
  %cmp.i940 = icmp slt i32 %call.i939, 0
  br i1 %cmp.i940, label %do.end.i944, label %if.then.i941.dme1737_read.exit955_crit_edge

if.then.i941.dme1737_read.exit955_crit_edge:      ; preds = %if.then.i941
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit955

do.end.i944:                                      ; preds = %if.then.i941
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i942 = getelementptr inbounds %struct.i2c_client, ptr %301, i32 0, i32 4
  %conv.i943 = and i32 %cond293, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i942, ptr noundef nonnull @.str.24, i32 noundef %conv.i943, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit955

do.body3.i952:                                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %302 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %addr.i657, align 4
  %and.i946 = and i32 %303, 1048575
  %add.i947 = or i32 %and.i946, -18874368
  %304 = inttoptr i32 %add.i947 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %304, i8 %conv294) #9, !srcloc !612
  %305 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %addr.i657, align 4
  %add8.i948 = add i32 %306, 1
  %and9.i949 = and i32 %add8.i948, 1048575
  %add10.i950 = or i32 %and9.i949, -18874368
  %307 = inttoptr i32 %add10.i950 to ptr
  %308 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %307) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i951 = zext i8 %308 to i32
  br label %dme1737_read.exit955

dme1737_read.exit955:                             ; preds = %do.body3.i952, %do.end.i944, %if.then.i941.dme1737_read.exit955_crit_edge
  %val.0.i953 = phi i32 [ %call.i939, %do.end.i944 ], [ %call.i939, %if.then.i941.dme1737_read.exit955_crit_edge ], [ %conv13.i951, %do.body3.i952 ]
  %conv15.i954 = trunc i32 %val.0.i953 to i8
  %arrayidx296 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 27, i32 %ix.61224
  %309 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv15.i954, ptr %arrayidx296, align 1
  %cond304.v = select i1 %cmp286, i32 95, i32 163
  %cond304 = add nuw nsw i32 %cond304.v, %ix.61224
  %conv305 = trunc i32 %cond304 to i8
  %310 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %1, align 4
  %tobool.not.i956 = icmp eq ptr %311, null
  br i1 %tobool.not.i956, label %do.body3.i970, label %if.then.i959

if.then.i959:                                     ; preds = %dme1737_read.exit955
  %call.i957 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %311, i8 noundef zeroext %conv305) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i957)
  %cmp.i958 = icmp slt i32 %call.i957, 0
  br i1 %cmp.i958, label %do.end.i962, label %if.then.i959.dme1737_read.exit973_crit_edge

if.then.i959.dme1737_read.exit973_crit_edge:      ; preds = %if.then.i959
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit973

do.end.i962:                                      ; preds = %if.then.i959
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i960 = getelementptr inbounds %struct.i2c_client, ptr %311, i32 0, i32 4
  %conv.i961 = and i32 %cond304, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i960, ptr noundef nonnull @.str.24, i32 noundef %conv.i961, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit973

do.body3.i970:                                    ; preds = %dme1737_read.exit955
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %312 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %addr.i657, align 4
  %and.i964 = and i32 %313, 1048575
  %add.i965 = or i32 %and.i964, -18874368
  %314 = inttoptr i32 %add.i965 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %314, i8 %conv305) #9, !srcloc !612
  %315 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %addr.i657, align 4
  %add8.i966 = add i32 %316, 1
  %and9.i967 = and i32 %add8.i966, 1048575
  %add10.i968 = or i32 %and9.i967, -18874368
  %317 = inttoptr i32 %add10.i968 to ptr
  %318 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %317) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i969 = zext i8 %318 to i32
  br label %dme1737_read.exit973

dme1737_read.exit973:                             ; preds = %do.body3.i970, %do.end.i962, %if.then.i959.dme1737_read.exit973_crit_edge
  %val.0.i971 = phi i32 [ %call.i957, %do.end.i962 ], [ %call.i957, %if.then.i959.dme1737_read.exit973_crit_edge ], [ %conv13.i969, %do.body3.i970 ]
  %conv15.i972 = trunc i32 %val.0.i971 to i8
  %arrayidx307 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 31, i32 %ix.61224
  %319 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv15.i972, ptr %arrayidx307, align 1
  br i1 %cmp286, label %if.then310, label %dme1737_read.exit973.for.inc320_crit_edge

dme1737_read.exit973.for.inc320_crit_edge:        ; preds = %dme1737_read.exit973
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc320

if.then310:                                       ; preds = %dme1737_read.exit973
  %320 = trunc i32 %ix.61224 to i8
  %conv312 = add nuw nsw i8 %320, 92
  %321 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %1, align 4
  %tobool.not.i974 = icmp eq ptr %322, null
  br i1 %tobool.not.i974, label %do.body3.i988, label %if.then.i977

if.then.i977:                                     ; preds = %if.then310
  %call.i975 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %322, i8 noundef zeroext %conv312) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i975)
  %cmp.i976 = icmp slt i32 %call.i975, 0
  br i1 %cmp.i976, label %do.end.i980, label %if.then.i977.dme1737_read.exit991_crit_edge

if.then.i977.dme1737_read.exit991_crit_edge:      ; preds = %if.then.i977
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit991

do.end.i980:                                      ; preds = %if.then.i977
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i978 = getelementptr inbounds %struct.i2c_client, ptr %322, i32 0, i32 4
  %conv.i979 = zext i8 %conv312 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i978, ptr noundef nonnull @.str.24, i32 noundef %conv.i979, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit991

do.body3.i988:                                    ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %323 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %addr.i657, align 4
  %and.i982 = and i32 %324, 1048575
  %add.i983 = or i32 %and.i982, -18874368
  %325 = inttoptr i32 %add.i983 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %325, i8 %conv312) #9, !srcloc !612
  %326 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %addr.i657, align 4
  %add8.i984 = add i32 %327, 1
  %and9.i985 = and i32 %add8.i984, 1048575
  %add10.i986 = or i32 %and9.i985, -18874368
  %328 = inttoptr i32 %add10.i986 to ptr
  %329 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %328) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i987 = zext i8 %329 to i32
  br label %dme1737_read.exit991

dme1737_read.exit991:                             ; preds = %do.body3.i988, %do.end.i980, %if.then.i977.dme1737_read.exit991_crit_edge
  %val.0.i989 = phi i32 [ %call.i975, %do.end.i980 ], [ %call.i975, %if.then.i977.dme1737_read.exit991_crit_edge ], [ %conv13.i987, %do.body3.i988 ]
  %conv15.i990 = trunc i32 %val.0.i989 to i8
  %arrayidx314 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 %ix.61224
  %330 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %conv15.i990, ptr %arrayidx314, align 1
  %conv316 = add nuw nsw i8 %320, 100
  %331 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %1, align 4
  %tobool.not.i992 = icmp eq ptr %332, null
  br i1 %tobool.not.i992, label %do.body3.i1006, label %if.then.i995

if.then.i995:                                     ; preds = %dme1737_read.exit991
  %call.i993 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %332, i8 noundef zeroext %conv316) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i993)
  %cmp.i994 = icmp slt i32 %call.i993, 0
  br i1 %cmp.i994, label %do.end.i998, label %if.then.i995.dme1737_read.exit1009_crit_edge

if.then.i995.dme1737_read.exit1009_crit_edge:     ; preds = %if.then.i995
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1009

do.end.i998:                                      ; preds = %if.then.i995
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i996 = getelementptr inbounds %struct.i2c_client, ptr %332, i32 0, i32 4
  %conv.i997 = zext i8 %conv316 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i996, ptr noundef nonnull @.str.24, i32 noundef %conv.i997, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1009

do.body3.i1006:                                   ; preds = %dme1737_read.exit991
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %333 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %addr.i657, align 4
  %and.i1000 = and i32 %334, 1048575
  %add.i1001 = or i32 %and.i1000, -18874368
  %335 = inttoptr i32 %add.i1001 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %335, i8 %conv316) #9, !srcloc !612
  %336 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %addr.i657, align 4
  %add8.i1002 = add i32 %337, 1
  %and9.i1003 = and i32 %add8.i1002, 1048575
  %add10.i1004 = or i32 %and9.i1003, -18874368
  %338 = inttoptr i32 %add10.i1004 to ptr
  %339 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %338) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1005 = zext i8 %339 to i32
  br label %dme1737_read.exit1009

dme1737_read.exit1009:                            ; preds = %do.body3.i1006, %do.end.i998, %if.then.i995.dme1737_read.exit1009_crit_edge
  %val.0.i1007 = phi i32 [ %call.i993, %do.end.i998 ], [ %call.i993, %if.then.i995.dme1737_read.exit1009_crit_edge ], [ %conv13.i1005, %do.body3.i1006 ]
  %conv15.i1008 = trunc i32 %val.0.i1007 to i8
  %arrayidx318 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 28, i32 %ix.61224
  %340 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv15.i1008, ptr %arrayidx318, align 1
  br label %for.inc320

for.inc320:                                       ; preds = %dme1737_read.exit1009, %dme1737_read.exit973.for.inc320_crit_edge, %for.body278.for.inc320_crit_edge
  %inc321 = add nuw nsw i32 %ix.61224, 1
  %exitcond1235.not = icmp eq i32 %inc321, 6
  br i1 %exitcond1235.not, label %for.cond323.preheader, label %for.inc320.for.body278_crit_edge

for.inc320.for.body278_crit_edge:                 ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body278

if.then.i1013:                                    ; preds = %for.cond323.preheader
  %call.i1011 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %297, i8 noundef zeroext 98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1011)
  %cmp.i1012 = icmp slt i32 %call.i1011, 0
  br i1 %cmp.i1012, label %do.end.i1016, label %if.then.i1013.dme1737_read.exit1027_crit_edge

if.then.i1013.dme1737_read.exit1027_crit_edge:    ; preds = %if.then.i1013
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1027

do.end.i1016:                                     ; preds = %if.then.i1013
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1014 = getelementptr inbounds %struct.i2c_client, ptr %297, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1014, ptr noundef nonnull @.str.24, i32 noundef 98, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1027

do.body3.i1024:                                   ; preds = %for.cond323.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %341 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %addr.i657, align 4
  %and.i1018 = and i32 %342, 1048575
  %add.i1019 = or i32 %and.i1018, -18874368
  %343 = inttoptr i32 %add.i1019 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %343, i8 98) #9, !srcloc !612
  %344 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %addr.i657, align 4
  %add8.i1020 = add i32 %345, 1
  %and9.i1021 = and i32 %add8.i1020, 1048575
  %add10.i1022 = or i32 %and9.i1021, -18874368
  %346 = inttoptr i32 %add10.i1022 to ptr
  %347 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %346) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1023 = zext i8 %347 to i32
  br label %dme1737_read.exit1027

dme1737_read.exit1027:                            ; preds = %do.body3.i1024, %do.end.i1016, %if.then.i1013.dme1737_read.exit1027_crit_edge
  %val.0.i1025 = phi i32 [ %call.i1011, %do.end.i1016 ], [ %call.i1011, %if.then.i1013.dme1737_read.exit1027_crit_edge ], [ %conv13.i1023, %do.body3.i1024 ]
  %conv15.i1026 = trunc i32 %val.0.i1025 to i8
  %arrayidx330 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 32, i32 0
  %348 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv15.i1026, ptr %arrayidx330, align 1
  %349 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %1, align 4
  %tobool.not.i1010.1 = icmp eq ptr %350, null
  br i1 %tobool.not.i1010.1, label %do.body3.i1024.1, label %if.then.i1013.1

if.then.i1013.1:                                  ; preds = %dme1737_read.exit1027
  %call.i1011.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %350, i8 noundef zeroext 99) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1011.1)
  %cmp.i1012.1 = icmp slt i32 %call.i1011.1, 0
  br i1 %cmp.i1012.1, label %do.end.i1016.1, label %if.then.i1013.1.dme1737_read.exit1027.1_crit_edge

if.then.i1013.1.dme1737_read.exit1027.1_crit_edge: ; preds = %if.then.i1013.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1027.1

do.end.i1016.1:                                   ; preds = %if.then.i1013.1
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1014.1 = getelementptr inbounds %struct.i2c_client, ptr %350, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1014.1, ptr noundef nonnull @.str.24, i32 noundef 99, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1027.1

do.body3.i1024.1:                                 ; preds = %dme1737_read.exit1027
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %351 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %addr.i657, align 4
  %and.i1018.1 = and i32 %352, 1048575
  %add.i1019.1 = or i32 %and.i1018.1, -18874368
  %353 = inttoptr i32 %add.i1019.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %353, i8 99) #9, !srcloc !612
  %354 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %addr.i657, align 4
  %add8.i1020.1 = add i32 %355, 1
  %and9.i1021.1 = and i32 %add8.i1020.1, 1048575
  %add10.i1022.1 = or i32 %and9.i1021.1, -18874368
  %356 = inttoptr i32 %add10.i1022.1 to ptr
  %357 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %356) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1023.1 = zext i8 %357 to i32
  br label %dme1737_read.exit1027.1

dme1737_read.exit1027.1:                          ; preds = %do.body3.i1024.1, %do.end.i1016.1, %if.then.i1013.1.dme1737_read.exit1027.1_crit_edge
  %val.0.i1025.1 = phi i32 [ %call.i1011.1, %do.end.i1016.1 ], [ %call.i1011.1, %if.then.i1013.1.dme1737_read.exit1027.1_crit_edge ], [ %conv13.i1023.1, %do.body3.i1024.1 ]
  %conv15.i1026.1 = trunc i32 %val.0.i1025.1 to i8
  %arrayidx330.1 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 32, i32 1
  %358 = ptrtoint ptr %arrayidx330.1 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv15.i1026.1, ptr %arrayidx330.1, align 1
  %type = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 8
  %arrayidx353 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 33, i32 1
  %arrayidx355 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 34, i32 1
  br label %for.body337

for.body337:                                      ; preds = %for.inc367.for.body337_crit_edge, %dme1737_read.exit1027.1
  %ix.81227 = phi i32 [ 0, %dme1737_read.exit1027.1 ], [ %inc368, %for.inc367.for.body337_crit_edge ]
  %359 = zext i32 %ix.81227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %ix.81227, label %for.body337.if.else_crit_edge [
    i32 2, label %land.lhs.true340
    i32 1, label %land.lhs.true348
  ]

for.body337.if.else_crit_edge:                    ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true340:                                 ; preds = %for.body337
  %360 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %has_features, align 4
  %and342 = and i32 %361, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and342)
  %tobool343.not = icmp eq i32 %and342, 0
  br i1 %tobool343.not, label %land.lhs.true340.for.end369_crit_edge, label %land.lhs.true340.if.else_crit_edge

land.lhs.true340.if.else_crit_edge:               ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true340.for.end369_crit_edge:            ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end369

land.lhs.true348:                                 ; preds = %for.body337
  %362 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %363)
  %cmp349 = icmp eq i32 %363, 3
  br i1 %cmp349, label %if.then351, label %land.lhs.true348.if.else_crit_edge

land.lhs.true348.if.else_crit_edge:               ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then351:                                       ; preds = %land.lhs.true348
  %364 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %1, align 4
  %tobool.not.i1028 = icmp eq ptr %365, null
  br i1 %tobool.not.i1028, label %do.body3.i1041, label %if.then.i1031

if.then.i1031:                                    ; preds = %if.then351
  %call.i1029 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %365, i8 noundef zeroext 105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1029)
  %cmp.i1030 = icmp slt i32 %call.i1029, 0
  br i1 %cmp.i1030, label %do.end.i1033, label %if.then.i1031.dme1737_read.exit1044_crit_edge

if.then.i1031.dme1737_read.exit1044_crit_edge:    ; preds = %if.then.i1031
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1044

do.end.i1033:                                     ; preds = %if.then.i1031
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1032 = getelementptr inbounds %struct.i2c_client, ptr %365, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1032, ptr noundef nonnull @.str.24, i32 noundef 105, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1044

do.body3.i1041:                                   ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %366 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %addr.i657, align 4
  %and.i1035 = and i32 %367, 1048575
  %add.i1036 = or i32 %and.i1035, -18874368
  %368 = inttoptr i32 %add.i1036 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %368, i8 105) #9, !srcloc !612
  %369 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %addr.i657, align 4
  %add8.i1037 = add i32 %370, 1
  %and9.i1038 = and i32 %add8.i1037, 1048575
  %add10.i1039 = or i32 %and9.i1038, -18874368
  %371 = inttoptr i32 %add10.i1039 to ptr
  %372 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %371) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1040 = zext i8 %372 to i32
  br label %dme1737_read.exit1044

dme1737_read.exit1044:                            ; preds = %do.body3.i1041, %do.end.i1033, %if.then.i1031.dme1737_read.exit1044_crit_edge
  %val.0.i1042 = phi i32 [ %call.i1029, %do.end.i1033 ], [ %call.i1029, %if.then.i1031.dme1737_read.exit1044_crit_edge ], [ %conv13.i1040, %do.body3.i1041 ]
  %conv15.i1043 = trunc i32 %val.0.i1042 to i8
  %373 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv15.i1043, ptr %arrayidx353, align 1
  %374 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %1, align 4
  %tobool.not.i1045 = icmp eq ptr %375, null
  br i1 %tobool.not.i1045, label %do.body3.i1058, label %if.then.i1048

if.then.i1048:                                    ; preds = %dme1737_read.exit1044
  %call.i1046 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %375, i8 noundef zeroext 108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1046)
  %cmp.i1047 = icmp slt i32 %call.i1046, 0
  br i1 %cmp.i1047, label %do.end.i1050, label %if.then.i1048.dme1737_read.exit1061_crit_edge

if.then.i1048.dme1737_read.exit1061_crit_edge:    ; preds = %if.then.i1048
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1061

do.end.i1050:                                     ; preds = %if.then.i1048
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1049 = getelementptr inbounds %struct.i2c_client, ptr %375, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1049, ptr noundef nonnull @.str.24, i32 noundef 108, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1061

do.body3.i1058:                                   ; preds = %dme1737_read.exit1044
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %376 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %addr.i657, align 4
  %and.i1052 = and i32 %377, 1048575
  %add.i1053 = or i32 %and.i1052, -18874368
  %378 = inttoptr i32 %add.i1053 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %378, i8 108) #9, !srcloc !612
  %379 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %addr.i657, align 4
  %add8.i1054 = add i32 %380, 1
  %and9.i1055 = and i32 %add8.i1054, 1048575
  %add10.i1056 = or i32 %and9.i1055, -18874368
  %381 = inttoptr i32 %add10.i1056 to ptr
  %382 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %381) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1057 = zext i8 %382 to i32
  br label %dme1737_read.exit1061

dme1737_read.exit1061:                            ; preds = %do.body3.i1058, %do.end.i1050, %if.then.i1048.dme1737_read.exit1061_crit_edge
  %val.0.i1059 = phi i32 [ %call.i1046, %do.end.i1050 ], [ %call.i1046, %if.then.i1048.dme1737_read.exit1061_crit_edge ], [ %conv13.i1057, %do.body3.i1058 ]
  %conv15.i1060 = trunc i32 %val.0.i1059 to i8
  %383 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %conv15.i1060, ptr %arrayidx355, align 1
  br label %for.inc367

if.else:                                          ; preds = %land.lhs.true348.if.else_crit_edge, %land.lhs.true340.if.else_crit_edge, %for.body337.if.else_crit_edge
  %384 = trunc i32 %ix.81227 to i8
  %conv357 = add nuw nsw i8 %384, 103
  %385 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %1, align 4
  %tobool.not.i1062 = icmp eq ptr %386, null
  br i1 %tobool.not.i1062, label %do.body3.i1076, label %if.then.i1065

if.then.i1065:                                    ; preds = %if.else
  %call.i1063 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %386, i8 noundef zeroext %conv357) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1063)
  %cmp.i1064 = icmp slt i32 %call.i1063, 0
  br i1 %cmp.i1064, label %do.end.i1068, label %if.then.i1065.dme1737_read.exit1079_crit_edge

if.then.i1065.dme1737_read.exit1079_crit_edge:    ; preds = %if.then.i1065
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1079

do.end.i1068:                                     ; preds = %if.then.i1065
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1066 = getelementptr inbounds %struct.i2c_client, ptr %386, i32 0, i32 4
  %conv.i1067 = zext i8 %conv357 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1066, ptr noundef nonnull @.str.24, i32 noundef %conv.i1067, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1079

do.body3.i1076:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %387 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %addr.i657, align 4
  %and.i1070 = and i32 %388, 1048575
  %add.i1071 = or i32 %and.i1070, -18874368
  %389 = inttoptr i32 %add.i1071 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %389, i8 %conv357) #9, !srcloc !612
  %390 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %addr.i657, align 4
  %add8.i1072 = add i32 %391, 1
  %and9.i1073 = and i32 %add8.i1072, 1048575
  %add10.i1074 = or i32 %and9.i1073, -18874368
  %392 = inttoptr i32 %add10.i1074 to ptr
  %393 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %392) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1075 = zext i8 %393 to i32
  br label %dme1737_read.exit1079

dme1737_read.exit1079:                            ; preds = %do.body3.i1076, %do.end.i1068, %if.then.i1065.dme1737_read.exit1079_crit_edge
  %val.0.i1077 = phi i32 [ %call.i1063, %do.end.i1068 ], [ %call.i1063, %if.then.i1065.dme1737_read.exit1079_crit_edge ], [ %conv13.i1075, %do.body3.i1076 ]
  %conv15.i1078 = trunc i32 %val.0.i1077 to i8
  %arrayidx360 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 33, i32 %ix.81227
  %394 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %conv15.i1078, ptr %arrayidx360, align 1
  %conv362 = add nuw nsw i8 %384, 106
  %395 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %1, align 4
  %tobool.not.i1080 = icmp eq ptr %396, null
  br i1 %tobool.not.i1080, label %do.body3.i1094, label %if.then.i1083

if.then.i1083:                                    ; preds = %dme1737_read.exit1079
  %call.i1081 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %396, i8 noundef zeroext %conv362) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1081)
  %cmp.i1082 = icmp slt i32 %call.i1081, 0
  br i1 %cmp.i1082, label %do.end.i1086, label %if.then.i1083.dme1737_read.exit1097_crit_edge

if.then.i1083.dme1737_read.exit1097_crit_edge:    ; preds = %if.then.i1083
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1097

do.end.i1086:                                     ; preds = %if.then.i1083
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1084 = getelementptr inbounds %struct.i2c_client, ptr %396, i32 0, i32 4
  %conv.i1085 = zext i8 %conv362 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1084, ptr noundef nonnull @.str.24, i32 noundef %conv.i1085, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1097

do.body3.i1094:                                   ; preds = %dme1737_read.exit1079
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %397 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %addr.i657, align 4
  %and.i1088 = and i32 %398, 1048575
  %add.i1089 = or i32 %and.i1088, -18874368
  %399 = inttoptr i32 %add.i1089 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %399, i8 %conv362) #9, !srcloc !612
  %400 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %addr.i657, align 4
  %add8.i1090 = add i32 %401, 1
  %and9.i1091 = and i32 %add8.i1090, 1048575
  %add10.i1092 = or i32 %and9.i1091, -18874368
  %402 = inttoptr i32 %add10.i1092 to ptr
  %403 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %402) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1093 = zext i8 %403 to i32
  br label %dme1737_read.exit1097

dme1737_read.exit1097:                            ; preds = %do.body3.i1094, %do.end.i1086, %if.then.i1083.dme1737_read.exit1097_crit_edge
  %val.0.i1095 = phi i32 [ %call.i1081, %do.end.i1086 ], [ %call.i1081, %if.then.i1083.dme1737_read.exit1097_crit_edge ], [ %conv13.i1093, %do.body3.i1094 ]
  %conv15.i1096 = trunc i32 %val.0.i1095 to i8
  %arrayidx365 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 34, i32 %ix.81227
  %404 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %conv15.i1096, ptr %arrayidx365, align 1
  br label %for.inc367

for.inc367:                                       ; preds = %dme1737_read.exit1097, %dme1737_read.exit1061
  %inc368 = add nuw nsw i32 %ix.81227, 1
  %exitcond1236.not = icmp eq i32 %inc368, 3
  br i1 %exitcond1236.not, label %for.inc367.for.end369_crit_edge, label %for.inc367.for.body337_crit_edge

for.inc367.for.body337_crit_edge:                 ; preds = %for.inc367
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body337

for.inc367.for.end369_crit_edge:                  ; preds = %for.inc367
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end369

for.end369:                                       ; preds = %for.inc367.for.end369_crit_edge, %land.lhs.true340.for.end369_crit_edge
  %405 = ptrtoint ptr %has_features to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %has_features, align 4
  %and371 = and i32 %406, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %for.end369.if.end385_crit_edge, label %for.cond374.preheader

for.end369.if.end385_crit_edge:                   ; preds = %for.end369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end385

for.cond374.preheader:                            ; preds = %for.end369
  %407 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %1, align 4
  %tobool.not.i1098 = icmp eq ptr %408, null
  br i1 %tobool.not.i1098, label %do.body3.i1112, label %if.then.i1101

if.then.i1101:                                    ; preds = %for.cond374.preheader
  %call.i1099 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %408, i8 noundef zeroext 109) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1099)
  %cmp.i1100 = icmp slt i32 %call.i1099, 0
  br i1 %cmp.i1100, label %do.end.i1104, label %if.then.i1101.dme1737_read.exit1115_crit_edge

if.then.i1101.dme1737_read.exit1115_crit_edge:    ; preds = %if.then.i1101
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1115

do.end.i1104:                                     ; preds = %if.then.i1101
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1102 = getelementptr inbounds %struct.i2c_client, ptr %408, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1102, ptr noundef nonnull @.str.24, i32 noundef 109, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1115

do.body3.i1112:                                   ; preds = %for.cond374.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %409 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %addr.i657, align 4
  %and.i1106 = and i32 %410, 1048575
  %add.i1107 = or i32 %and.i1106, -18874368
  %411 = inttoptr i32 %add.i1107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %411, i8 109) #9, !srcloc !612
  %412 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %addr.i657, align 4
  %add8.i1108 = add i32 %413, 1
  %and9.i1109 = and i32 %add8.i1108, 1048575
  %add10.i1110 = or i32 %and9.i1109, -18874368
  %414 = inttoptr i32 %add10.i1110 to ptr
  %415 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %414) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1111 = zext i8 %415 to i32
  br label %dme1737_read.exit1115

dme1737_read.exit1115:                            ; preds = %do.body3.i1112, %do.end.i1104, %if.then.i1101.dme1737_read.exit1115_crit_edge
  %val.0.i1113 = phi i32 [ %call.i1099, %do.end.i1104 ], [ %call.i1099, %if.then.i1101.dme1737_read.exit1115_crit_edge ], [ %conv13.i1111, %do.body3.i1112 ]
  %conv15.i1114 = trunc i32 %val.0.i1113 to i8
  %arrayidx381 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 35, i32 0
  %416 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %conv15.i1114, ptr %arrayidx381, align 1
  %417 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %1, align 4
  %tobool.not.i1098.1 = icmp eq ptr %418, null
  br i1 %tobool.not.i1098.1, label %do.body3.i1112.1, label %if.then.i1101.1

if.then.i1101.1:                                  ; preds = %dme1737_read.exit1115
  %call.i1099.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %418, i8 noundef zeroext 110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1099.1)
  %cmp.i1100.1 = icmp slt i32 %call.i1099.1, 0
  br i1 %cmp.i1100.1, label %do.end.i1104.1, label %if.then.i1101.1.dme1737_read.exit1115.1_crit_edge

if.then.i1101.1.dme1737_read.exit1115.1_crit_edge: ; preds = %if.then.i1101.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1115.1

do.end.i1104.1:                                   ; preds = %if.then.i1101.1
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1102.1 = getelementptr inbounds %struct.i2c_client, ptr %418, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1102.1, ptr noundef nonnull @.str.24, i32 noundef 110, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1115.1

do.body3.i1112.1:                                 ; preds = %dme1737_read.exit1115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %419 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %addr.i657, align 4
  %and.i1106.1 = and i32 %420, 1048575
  %add.i1107.1 = or i32 %and.i1106.1, -18874368
  %421 = inttoptr i32 %add.i1107.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %421, i8 110) #9, !srcloc !612
  %422 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %addr.i657, align 4
  %add8.i1108.1 = add i32 %423, 1
  %and9.i1109.1 = and i32 %add8.i1108.1, 1048575
  %add10.i1110.1 = or i32 %and9.i1109.1, -18874368
  %424 = inttoptr i32 %add10.i1110.1 to ptr
  %425 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %424) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1111.1 = zext i8 %425 to i32
  br label %dme1737_read.exit1115.1

dme1737_read.exit1115.1:                          ; preds = %do.body3.i1112.1, %do.end.i1104.1, %if.then.i1101.1.dme1737_read.exit1115.1_crit_edge
  %val.0.i1113.1 = phi i32 [ %call.i1099.1, %do.end.i1104.1 ], [ %call.i1099.1, %if.then.i1101.1.dme1737_read.exit1115.1_crit_edge ], [ %conv13.i1111.1, %do.body3.i1112.1 ]
  %conv15.i1114.1 = trunc i32 %val.0.i1113.1 to i8
  %arrayidx381.1 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 35, i32 1
  %426 = ptrtoint ptr %arrayidx381.1 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %conv15.i1114.1, ptr %arrayidx381.1, align 1
  br label %if.end385

if.end385:                                        ; preds = %dme1737_read.exit1115.1, %for.end369.if.end385_crit_edge
  %427 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %1, align 4
  %tobool.not.i1116 = icmp eq ptr %428, null
  br i1 %tobool.not.i1116, label %do.body3.i1129, label %if.then.i1119

if.then.i1119:                                    ; preds = %if.end385
  %call.i1117 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %428, i8 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1117)
  %cmp.i1118 = icmp slt i32 %call.i1117, 0
  br i1 %cmp.i1118, label %do.end.i1121, label %if.then.i1119.dme1737_read.exit1132_crit_edge

if.then.i1119.dme1737_read.exit1132_crit_edge:    ; preds = %if.then.i1119
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1132

do.end.i1121:                                     ; preds = %if.then.i1119
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1120 = getelementptr inbounds %struct.i2c_client, ptr %428, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1120, ptr noundef nonnull @.str.24, i32 noundef 65, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1132

do.body3.i1129:                                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %429 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %addr.i657, align 4
  %and.i1123 = and i32 %430, 1048575
  %add.i1124 = or i32 %and.i1123, -18874368
  %431 = inttoptr i32 %add.i1124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %431, i8 65) #9, !srcloc !612
  %432 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %addr.i657, align 4
  %add8.i1125 = add i32 %433, 1
  %and9.i1126 = and i32 %add8.i1125, 1048575
  %add10.i1127 = or i32 %and9.i1126, -18874368
  %434 = inttoptr i32 %add10.i1127 to ptr
  %435 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %434) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1128 = zext i8 %435 to i32
  br label %dme1737_read.exit1132

dme1737_read.exit1132:                            ; preds = %do.body3.i1129, %do.end.i1121, %if.then.i1119.dme1737_read.exit1132_crit_edge
  %val.0.i1130 = phi i32 [ %call.i1117, %do.end.i1121 ], [ %call.i1117, %if.then.i1119.dme1737_read.exit1132_crit_edge ], [ %conv13.i1128, %do.body3.i1129 ]
  %conv387 = and i32 %val.0.i1130, 255
  %alarms = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 36
  %436 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %conv387, ptr %alarms, align 4
  %and389 = and i32 %val.0.i1130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %dme1737_read.exit1132.if.end402_crit_edge, label %if.then391

dme1737_read.exit1132.if.end402_crit_edge:        ; preds = %dme1737_read.exit1132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end402

if.then391:                                       ; preds = %dme1737_read.exit1132
  %437 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %1, align 4
  %tobool.not.i1133 = icmp eq ptr %438, null
  br i1 %tobool.not.i1133, label %do.body3.i1146, label %if.then.i1136

if.then.i1136:                                    ; preds = %if.then391
  %call.i1134 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %438, i8 noundef zeroext 66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1134)
  %cmp.i1135 = icmp slt i32 %call.i1134, 0
  br i1 %cmp.i1135, label %do.end.i1138, label %if.then.i1136.dme1737_read.exit1149_crit_edge

if.then.i1136.dme1737_read.exit1149_crit_edge:    ; preds = %if.then.i1136
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1149

do.end.i1138:                                     ; preds = %if.then.i1136
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1137 = getelementptr inbounds %struct.i2c_client, ptr %438, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1137, ptr noundef nonnull @.str.24, i32 noundef 66, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1149

do.body3.i1146:                                   ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %439 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %addr.i657, align 4
  %and.i1140 = and i32 %440, 1048575
  %add.i1141 = or i32 %and.i1140, -18874368
  %441 = inttoptr i32 %add.i1141 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %441, i8 66) #9, !srcloc !612
  %442 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %addr.i657, align 4
  %add8.i1142 = add i32 %443, 1
  %and9.i1143 = and i32 %add8.i1142, 1048575
  %add10.i1144 = or i32 %and9.i1143, -18874368
  %444 = inttoptr i32 %add10.i1144 to ptr
  %445 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %444) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1145 = zext i8 %445 to i32
  br label %dme1737_read.exit1149

dme1737_read.exit1149:                            ; preds = %do.body3.i1146, %do.end.i1138, %if.then.i1136.dme1737_read.exit1149_crit_edge
  %val.0.i1147 = phi i32 [ %call.i1134, %do.end.i1138 ], [ %call.i1134, %if.then.i1136.dme1737_read.exit1149_crit_edge ], [ %conv13.i1145, %do.body3.i1146 ]
  %conv393 = shl i32 %val.0.i1147, 8
  %shl394 = and i32 %conv393, 65280
  %446 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %alarms, align 4
  %or396 = or i32 %shl394, %447
  store i32 %or396, ptr %alarms, align 4
  %448 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %1, align 4
  %tobool.not.i1150 = icmp eq ptr %449, null
  br i1 %tobool.not.i1150, label %do.body3.i1163, label %if.then.i1153

if.then.i1153:                                    ; preds = %dme1737_read.exit1149
  %call.i1151 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %449, i8 noundef zeroext -125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1151)
  %cmp.i1152 = icmp slt i32 %call.i1151, 0
  br i1 %cmp.i1152, label %do.end.i1155, label %if.then.i1153.dme1737_read.exit1166_crit_edge

if.then.i1153.dme1737_read.exit1166_crit_edge:    ; preds = %if.then.i1153
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit1166

do.end.i1155:                                     ; preds = %if.then.i1153
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1154 = getelementptr inbounds %struct.i2c_client, ptr %449, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1154, ptr noundef nonnull @.str.24, i32 noundef 131, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit1166

do.body3.i1163:                                   ; preds = %dme1737_read.exit1149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  tail call void @arm_heavy_mb() #9
  %450 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %addr.i657, align 4
  %and.i1157 = and i32 %451, 1048575
  %add.i1158 = or i32 %and.i1157, -18874368
  %452 = inttoptr i32 %add.i1158 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %452, i8 -125) #9, !srcloc !612
  %453 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %addr.i657, align 4
  %add8.i1159 = add i32 %454, 1
  %and9.i1160 = and i32 %add8.i1159, 1048575
  %add10.i1161 = or i32 %and9.i1160, -18874368
  %455 = inttoptr i32 %add10.i1161 to ptr
  %456 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %455) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i1162 = zext i8 %456 to i32
  br label %dme1737_read.exit1166

dme1737_read.exit1166:                            ; preds = %do.body3.i1163, %do.end.i1155, %if.then.i1153.dme1737_read.exit1166_crit_edge
  %val.0.i1164 = phi i32 [ %call.i1151, %do.end.i1155 ], [ %call.i1151, %if.then.i1153.dme1737_read.exit1166_crit_edge ], [ %conv13.i1162, %do.body3.i1163 ]
  %conv398 = shl i32 %val.0.i1164, 16
  %shl399 = and i32 %conv398, 16711680
  %457 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %alarms, align 4
  %or401 = or i32 %shl399, %458
  store i32 %or401, ptr %alarms, align 4
  br label %if.end402

if.end402:                                        ; preds = %dme1737_read.exit1166, %dme1737_read.exit1132.if.end402_crit_edge
  %459 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %1, align 4
  %tobool403.not = icmp eq ptr %460, null
  br i1 %tobool403.not, label %if.then404, label %if.end402.if.end423_crit_edge

if.end402.if.end423_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end423

if.then404:                                       ; preds = %if.end402
  %461 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %alarms, align 4
  %and406 = and i32 %462, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and406)
  %tobool407.not = icmp eq i32 %and406, 0
  br i1 %tobool407.not, label %if.then404.if.end410_crit_edge, label %dme1737_write.exit1180

if.then404.if.end410_crit_edge:                   ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410

dme1737_write.exit1180:                           ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %463 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %addr.i657, align 4
  %and.i1174 = and i32 %464, 1048575
  %add.i1175 = or i32 %and.i1174, -18874368
  %465 = inttoptr i32 %add.i1175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %465, i8 -125) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %466 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %addr.i657, align 4
  %add11.i1176 = add i32 %467, 1
  %and12.i1177 = and i32 %add11.i1176, 1048575
  %add13.i1178 = or i32 %and12.i1177, -18874368
  %468 = inttoptr i32 %add13.i1178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %468, i8 -1) #9, !srcloc !612
  br label %if.end410

if.end410:                                        ; preds = %dme1737_write.exit1180, %if.then404.if.end410_crit_edge
  %469 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %alarms, align 4
  %and412 = and i32 %470, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and412)
  %tobool413.not = icmp eq i32 %and412, 0
  br i1 %tobool413.not, label %if.end410.if.end416_crit_edge, label %if.then414

if.end410.if.end416_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.then414:                                       ; preds = %if.end410
  %471 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %1, align 4
  %tobool.not.i1181 = icmp eq ptr %472, null
  br i1 %tobool.not.i1181, label %do.body3.i1193, label %if.then.i1184

if.then.i1184:                                    ; preds = %if.then414
  %call.i1182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %472, i8 noundef zeroext 66, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1182)
  %cmp.i1183 = icmp slt i32 %call.i1182, 0
  br i1 %cmp.i1183, label %do.end.i1186, label %if.then.i1184.if.end416_crit_edge

if.then.i1184.if.end416_crit_edge:                ; preds = %if.then.i1184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

do.end.i1186:                                     ; preds = %if.then.i1184
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1185 = getelementptr inbounds %struct.i2c_client, ptr %472, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1185, ptr noundef nonnull @.str.50, i32 noundef 66, ptr noundef nonnull @.str.27) #13
  br label %if.end416

do.body3.i1193:                                   ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %473 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %addr.i657, align 4
  %and.i1188 = and i32 %474, 1048575
  %add.i1189 = or i32 %and.i1188, -18874368
  %475 = inttoptr i32 %add.i1189 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %475, i8 66) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %476 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %addr.i657, align 4
  %add11.i1190 = add i32 %477, 1
  %and12.i1191 = and i32 %add11.i1190, 1048575
  %add13.i1192 = or i32 %and12.i1191, -18874368
  %478 = inttoptr i32 %add13.i1192 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %478, i8 -1) #9, !srcloc !612
  br label %if.end416

if.end416:                                        ; preds = %do.body3.i1193, %do.end.i1186, %if.then.i1184.if.end416_crit_edge, %if.end410.if.end416_crit_edge
  %479 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %alarms, align 4
  %and418 = and i32 %480, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  br i1 %tobool419.not, label %if.end416.if.end423_crit_edge, label %if.then420

if.end416.if.end423_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end423

if.then420:                                       ; preds = %if.end416
  %481 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %1, align 4
  %tobool.not.i1195 = icmp eq ptr %482, null
  br i1 %tobool.not.i1195, label %do.body3.i1207, label %if.then.i1198

if.then.i1198:                                    ; preds = %if.then420
  %call.i1196 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %482, i8 noundef zeroext 65, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1196)
  %cmp.i1197 = icmp slt i32 %call.i1196, 0
  br i1 %cmp.i1197, label %do.end.i1200, label %if.then.i1198.if.end423_crit_edge

if.then.i1198.if.end423_crit_edge:                ; preds = %if.then.i1198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end423

do.end.i1200:                                     ; preds = %if.then.i1198
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i1199 = getelementptr inbounds %struct.i2c_client, ptr %482, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i1199, ptr noundef nonnull @.str.50, i32 noundef 65, ptr noundef nonnull @.str.27) #13
  br label %if.end423

do.body3.i1207:                                   ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  tail call void @arm_heavy_mb() #9
  %483 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %addr.i657, align 4
  %and.i1202 = and i32 %484, 1048575
  %add.i1203 = or i32 %and.i1202, -18874368
  %485 = inttoptr i32 %add.i1203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %485, i8 65) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  tail call void @arm_heavy_mb() #9
  %486 = ptrtoint ptr %addr.i657 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %addr.i657, align 4
  %add11.i1204 = add i32 %487, 1
  %and12.i1205 = and i32 %add11.i1204, 1048575
  %add13.i1206 = or i32 %and12.i1205, -18874368
  %488 = inttoptr i32 %add13.i1206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %488, i8 -1) #9, !srcloc !612
  br label %if.end423

if.end423:                                        ; preds = %do.body3.i1207, %do.end.i1200, %if.then.i1198.if.end423_crit_edge, %if.end416.if.end423_crit_edge, %if.end402.if.end423_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %489 = load volatile i32, ptr @jiffies, align 128
  %490 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %489, ptr %last_update, align 4
  %valid425 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 5
  %491 = ptrtoint ptr %valid425 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 1, ptr %valid425, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.end423, %lor.lhs.false9.if.end426_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lsb) #9
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %in_nominal = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %in_nominal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_nominal, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = call i32 @llvm.smax.i32(i32 %9, i32 0) #9
  %mul.i = mul i32 %13, 255
  %div.i = sdiv i32 %mul.i, 192
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 %div.i) #9
  %mul7.i = mul nsw i32 %15, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp9.i = icmp slt i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10.i = icmp sgt i32 %13, 0
  %cmp12.i = xor i1 %cmp10.i, %cmp9.i
  %add.pn.v.v.i = select i1 %cmp12.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %13, %add.pn.v.v.i
  %add.pn.i = add i32 %mul7.i, %add.pn.v.i
  %cond21.i = sdiv i32 %add.pn.i, %13
  %conv4 = trunc i32 %cond21.i to i8
  %arrayidx5 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 14, i32 %conv
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ult i8 %3, 5
  %mul = shl i8 %3, 1
  %cond.v = select i1 %cmp, i8 68, i8 -111
  %cond = add i8 %cond.v, %mul
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond, i8 noundef zeroext %conv4)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %in_nominal14 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %in_nominal14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_nominal14, align 4
  %arrayidx15 = getelementptr i32, ptr %20, i32 %conv
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %23 = call i32 @llvm.smax.i32(i32 %18, i32 0) #9
  %mul.i71 = mul i32 %22, 255
  %div.i72 = sdiv i32 %mul.i71, 192
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 %div.i72) #9
  %mul7.i73 = mul nsw i32 %24, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp9.i74 = icmp slt i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp10.i75 = icmp sgt i32 %22, 0
  %cmp12.i76 = xor i1 %cmp10.i75, %cmp9.i74
  %add.pn.v.v.i77 = select i1 %cmp12.i76, i32 2, i32 -2
  %add.pn.v.i78 = sdiv i32 %22, %add.pn.v.v.i77
  %add.pn.i79 = add i32 %mul7.i73, %add.pn.v.i78
  %cond21.i80 = sdiv i32 %add.pn.i79, %22
  %conv17 = trunc i32 %cond21.i80 to i8
  %arrayidx18 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 15, i32 %conv
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv17, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp19 = icmp ult i8 %3, 5
  %mul22 = shl i8 %3, 1
  %cond28.v = select i1 %cmp19, i8 69, i8 -110
  %cond28 = add i8 %cond28.v, %mul22
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond28, i8 noundef zeroext %conv17)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_in.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_in, %sw.epilog)) #9
          to label %if.then39 [label %sw.epilog], !srcloc !627

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_in.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %do.body, %sw.bb13, %sw.bb
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
    i8 2, label %sw.bb8
    i8 3, label %sw.bb12
    i8 4, label %sw.bb16
    i8 5, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 16, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %6 to i32
  %mul.i = mul nsw i32 %conv2, 1000
  %shr.i = ashr i32 %mul.i, 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 17, i32 %conv
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %mul.i44 = mul nsw i32 %conv6, 1000
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 18, i32 %conv
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %mul.i45 = mul nsw i32 %conv10, 1000
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 19, i32 %conv
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %mul.i46 = mul nsw i32 %conv14, 1000
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 36
  %13 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alarms, align 4
  %arrayidx17 = getelementptr [3 x i8], ptr @DME1737_BIT_ALARM_TEMP, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  %shr = lshr i32 %14, %conv18
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 16, i32 %conv
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx21, align 2
  %19 = and i16 %18, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp = icmp eq i16 %19, -32768
  %conv24 = zext i1 %cmp to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_temp.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_temp, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !627

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_temp.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb19, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb
  %res.0 = phi i32 [ 0, %if.then ], [ %conv24, %sw.bb19 ], [ %and, %sw.bb16 ], [ %mul.i46, %sw.bb12 ], [ %mul.i45, %sw.bb8 ], [ %mul.i44, %sw.bb4 ], [ %shr.i, %sw.bb ], [ 0, %sw.default ]
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %res.0)
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
    i8 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 -128000) #9
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.i = icmp sgt i32 %10, 0
  %cond19.in.v.i = select i1 %cmp8.i, i32 500, i32 -500
  %cond19.in.i = add nsw i32 %cond19.in.v.i, %11
  %cond19.i = sdiv i32 %cond19.in.i, 1000
  %conv4 = trunc i32 %cond19.i to i8
  %arrayidx = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 17, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %arrayidx, align 1
  %mul = shl i8 %3, 1
  %add = add i8 %mul, 78
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add, i8 noundef zeroext %conv4)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 -128000) #9
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i66 = icmp sgt i32 %15, 0
  %cond19.in.v.i67 = select i1 %cmp8.i66, i32 500, i32 -500
  %cond19.in.i68 = add nsw i32 %cond19.in.v.i67, %16
  %cond19.i69 = sdiv i32 %cond19.in.i68, 1000
  %conv11 = trunc i32 %cond19.i69 to i8
  %arrayidx12 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 18, i32 %conv
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %arrayidx12, align 1
  %mul13 = shl i8 %3, 1
  %add14 = add i8 %mul13, 79
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add14, i8 noundef zeroext %conv11)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 -128000) #9
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.i70 = icmp sgt i32 %20, 0
  %cond19.in.v.i71 = select i1 %cmp8.i70, i32 500, i32 -500
  %cond19.in.i72 = add nsw i32 %cond19.in.v.i71, %21
  %cond19.i73 = sdiv i32 %cond19.in.i72, 1000
  %conv21 = trunc i32 %cond19.i73 to i8
  %arrayidx22 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 19, i32 %conv
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv21, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %add24 = add i8 %3, 28
  %spec.select = select i1 %cmp, i8 31, i8 %add24
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %spec.select, i8 noundef zeroext %conv21)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_temp, %sw.epilog)) #9
          to label %if.then35 [label %sw.epilog], !srcloc !627

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %do.body, %sw.bb19, %sw.bb9, %sw.bb
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_zone(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
    i8 2, label %sw.bb12
    i8 3, label %sw.bb17
    i8 4, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %config2 = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 21
  %5 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config2, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %shl = shl nuw i32 1, %conv
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 33, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp7 = icmp eq i8 %1, 2
  %conv8 = zext i1 %cmp7 to i32
  %arrayidx9 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 35, i32 %conv8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  %12 = lshr i32 %conv10, 4
  %cond.i = select i1 %cmp.i, i32 %conv10, i32 %12
  %and.i = and i32 %cond.i, 15
  %reass.add = sub nsw i32 %conv5, %and.i
  %reass.mul = mul nsw i32 %reass.add, 1000
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 33, i32 %conv
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %mul.i56 = mul nsw i32 %conv15, 1000
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 33, i32 %conv
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %16 to i32
  %mul.i57 = mul nsw i32 %conv20, 1000
  %arrayidx22 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 31, i32 %conv
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22, align 1
  %19 = lshr i8 %18, 4
  %20 = zext i8 %19 to i32
  %arrayidx.i = getelementptr [16 x i32], ptr @TEMP_RANGE, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %mul.i57, %22
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx26 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 34, i32 %conv
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %24 to i32
  %mul.i59 = mul nsw i32 %conv27, 1000
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_zone.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_zone, %sw.epilog)) #9
          to label %if.then35 [label %sw.epilog], !srcloc !627

if.then35:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_zone.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %sw.default, %sw.bb25, %sw.bb17, %sw.bb12, %sw.bb4, %if.else, %land.lhs.true.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %if.then35 ], [ %mul.i59, %sw.bb25 ], [ %add, %sw.bb17 ], [ %mul.i56, %sw.bb12 ], [ %reass.mul, %sw.bb4 ], [ %shl, %if.else ], [ 4, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %res.0)
  ret i32 %call37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_zone(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
    i8 3, label %sw.bb38
    i8 4, label %sw.bb85
  ]

sw.bb:                                            ; preds = %if.end
  %add = add i8 %3, 103
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call.i167 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %9, i8 noundef zeroext %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp.i = icmp slt i32 %call.i167, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %conv.i = zext i8 %add to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %conv.i, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %11, 1048575
  %add.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %add) #9, !srcloc !612
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %add8.i = add i32 %14, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %15 = inttoptr i32 %add10.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %16 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i167, %do.end.i ], [ %call.i167, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  %conv15.i = trunc i32 %val.0.i to i8
  %arrayidx = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 33, i32 %conv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15.i, ptr %arrayidx, align 1
  %sext234 = shl i32 %val.0.i, 24
  %conv7 = ashr exact i32 %sext234, 24
  %mul.i = mul nsw i32 %conv7, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %conv9 = zext i1 %cmp to i32
  %conv11 = select i1 %cmp, i8 110, i8 109
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %tobool.not.i168 = icmp eq ptr %19, null
  br i1 %tobool.not.i168, label %do.body3.i182, label %if.then.i171

if.then.i171:                                     ; preds = %dme1737_read.exit
  %call.i169 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %19, i8 noundef zeroext %conv11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp.i170 = icmp slt i32 %call.i169, 0
  br i1 %cmp.i170, label %do.end.i174, label %if.then.i171.dme1737_read.exit185_crit_edge

if.then.i171.dme1737_read.exit185_crit_edge:      ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit185

do.end.i174:                                      ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i172 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv.i173 = zext i8 %conv11 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i172, ptr noundef nonnull @.str.24, i32 noundef %conv.i173, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit185

do.body3.i182:                                    ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i175 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %addr.i175 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i175, align 4
  %and.i176 = and i32 %21, 1048575
  %add.i177 = or i32 %and.i176, -18874368
  %22 = inttoptr i32 %add.i177 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv11) #9, !srcloc !612
  %23 = ptrtoint ptr %addr.i175 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i175, align 4
  %add8.i178 = add i32 %24, 1
  %and9.i179 = and i32 %add8.i178, 1048575
  %add10.i180 = or i32 %and9.i179, -18874368
  %25 = inttoptr i32 %add10.i180 to ptr
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i181 = zext i8 %26 to i32
  br label %dme1737_read.exit185

dme1737_read.exit185:                             ; preds = %do.body3.i182, %do.end.i174, %if.then.i171.dme1737_read.exit185_crit_edge
  %val.0.i183 = phi i32 [ %call.i169, %do.end.i174 ], [ %call.i169, %if.then.i171.dme1737_read.exit185_crit_edge ], [ %conv13.i181, %do.body3.i182 ]
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %sub.i = add nsw i32 %mul.i, -15000
  %29 = call i32 @llvm.smax.i32(i32 %sub.i, i32 %28) #9
  %30 = call i32 @llvm.smin.i32(i32 %29, i32 %mul.i) #9
  %sub7.i = sub nsw i32 %mul.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp9.i = icmp sgt i32 %sub7.i, 0
  %cond21.in.v.i = select i1 %cmp9.i, i32 500, i32 -500
  %cond21.in.i = add nsw i32 %cond21.in.v.i, %sub7.i
  %cond21.i = sdiv i32 %cond21.in.i, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp22.i = icmp eq i8 %3, 1
  %and.i186 = and i32 %val.0.i183, 240
  %or.i = or i32 %cond21.i, %and.i186
  %and26.i = and i32 %val.0.i183, 15
  %shl.i = shl nsw i32 %cond21.i, 4
  %or27.i = or i32 %shl.i, %and26.i
  %cond29.i = select i1 %cmp22.i, i32 %or.i, i32 %or27.i
  %conv15 = trunc i32 %cond29.i to i8
  %arrayidx18 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 35, i32 %conv9
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15, ptr %arrayidx18, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv11, i8 noundef zeroext %conv15)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %34 = call i32 @llvm.smax.i32(i32 %33, i32 -128000) #9
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp8.i = icmp sgt i32 %34, 0
  %cond19.in.v.i = select i1 %cmp8.i, i32 500, i32 -500
  %cond19.in.i = add nsw i32 %cond19.in.v.i, %35
  %cond19.i = sdiv i32 %cond19.in.i, 1000
  %conv30 = trunc i32 %cond19.i to i8
  %arrayidx32 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 33, i32 %conv
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv30, ptr %arrayidx32, align 1
  %add33 = add i8 %3, 103
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add33, i8 noundef zeroext %conv30)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  %add39 = add i8 %3, 103
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %tobool.not.i187 = icmp eq ptr %38, null
  br i1 %tobool.not.i187, label %do.body3.i201, label %if.then.i190

if.then.i190:                                     ; preds = %sw.bb38
  %call.i188 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %38, i8 noundef zeroext %add39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp.i189 = icmp slt i32 %call.i188, 0
  br i1 %cmp.i189, label %do.end.i193, label %if.then.i190.dme1737_read.exit204_crit_edge

if.then.i190.dme1737_read.exit204_crit_edge:      ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit204

do.end.i193:                                      ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i191 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %conv.i192 = zext i8 %add39 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i191, ptr noundef nonnull @.str.24, i32 noundef %conv.i192, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit204

do.body3.i201:                                    ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i194 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %addr.i194 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr.i194, align 4
  %and.i195 = and i32 %40, 1048575
  %add.i196 = or i32 %and.i195, -18874368
  %41 = inttoptr i32 %add.i196 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %add39) #9, !srcloc !612
  %42 = ptrtoint ptr %addr.i194 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i194, align 4
  %add8.i197 = add i32 %43, 1
  %and9.i198 = and i32 %add8.i197, 1048575
  %add10.i199 = or i32 %and9.i198, -18874368
  %44 = inttoptr i32 %add10.i199 to ptr
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i200 = zext i8 %45 to i32
  br label %dme1737_read.exit204

dme1737_read.exit204:                             ; preds = %do.body3.i201, %do.end.i193, %if.then.i190.dme1737_read.exit204_crit_edge
  %val.0.i202 = phi i32 [ %call.i188, %do.end.i193 ], [ %call.i188, %if.then.i190.dme1737_read.exit204_crit_edge ], [ %conv13.i200, %do.body3.i201 ]
  %conv15.i203 = trunc i32 %val.0.i202 to i8
  %arrayidx43 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 33, i32 %conv
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i203, ptr %arrayidx43, align 1
  %sext = shl i32 %val.0.i202, 24
  %conv46 = ashr exact i32 %sext, 24
  %mul.i205 = mul nsw i32 %conv46, 1000
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 %mul.i205)
  %add51 = add nsw i32 %mul.i205, 80000
  %50 = call i32 @llvm.smin.i32(i32 %49, i32 %add51)
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp59 = icmp ult i8 %3, 3
  %cond66.v = select i1 %cmp59, i8 95, i8 -93
  %cond66 = add i8 %cond66.v, %3
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %tobool.not.i206 = icmp eq ptr %53, null
  br i1 %tobool.not.i206, label %do.body3.i220, label %if.then.i209

if.then.i209:                                     ; preds = %dme1737_read.exit204
  %call.i207 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %53, i8 noundef zeroext %cond66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp.i208 = icmp slt i32 %call.i207, 0
  br i1 %cmp.i208, label %do.end.i212, label %if.then.i209.dme1737_read.exit223_crit_edge

if.then.i209.dme1737_read.exit223_crit_edge:      ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit223

do.end.i212:                                      ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i210 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  %conv.i211 = zext i8 %cond66 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i210, ptr noundef nonnull @.str.24, i32 noundef %conv.i211, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit223

do.body3.i220:                                    ; preds = %dme1737_read.exit204
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i213 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %addr.i213 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i213, align 4
  %and.i214 = and i32 %55, 1048575
  %add.i215 = or i32 %and.i214, -18874368
  %56 = inttoptr i32 %add.i215 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %cond66) #9, !srcloc !612
  %57 = ptrtoint ptr %addr.i213 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i213, align 4
  %add8.i216 = add i32 %58, 1
  %and9.i217 = and i32 %add8.i216, 1048575
  %add10.i218 = or i32 %and9.i217, -18874368
  %59 = inttoptr i32 %add10.i218 to ptr
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i219 = zext i8 %60 to i32
  br label %dme1737_read.exit223

dme1737_read.exit223:                             ; preds = %do.body3.i220, %do.end.i212, %if.then.i209.dme1737_read.exit223_crit_edge
  %val.0.i221 = phi i32 [ %call.i207, %do.end.i212 ], [ %call.i207, %if.then.i209.dme1737_read.exit223_crit_edge ], [ %conv13.i219, %do.body3.i220 ]
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %sub = sub i32 %62, %mul.i205
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %dme1737_read.exit223
  %i.0.i = phi i32 [ 15, %dme1737_read.exit223 ], [ %sub.i224, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %for.cond.i.TEMP_RANGE_TO_REG.exit_crit_edge, label %for.body.i

for.cond.i.TEMP_RANGE_TO_REG.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %TEMP_RANGE_TO_REG.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr [16 x i32], ptr @TEMP_RANGE, i32 0, i32 %i.0.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %sub.i224 = add nsw i32 %i.0.i, -1
  %arrayidx1.i = getelementptr [16 x i32], ptr @TEMP_RANGE, i32 0, i32 %sub.i224
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx1.i, align 4
  %add.i225 = add i32 %64, 1
  %add2.i = add i32 %add.i225, %66
  %div.i = sdiv i32 %add2.i, 2
  %cmp3.i = icmp slt i32 %div.i, %sub
  br i1 %cmp3.i, label %for.body.i.TEMP_RANGE_TO_REG.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.TEMP_RANGE_TO_REG.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %TEMP_RANGE_TO_REG.exit

TEMP_RANGE_TO_REG.exit:                           ; preds = %for.body.i.TEMP_RANGE_TO_REG.exit_crit_edge, %for.cond.i.TEMP_RANGE_TO_REG.exit_crit_edge
  %and.i226 = and i32 %val.0.i221, 15
  %shl.i227 = shl i32 %i.0.i, 4
  %or.i228 = or i32 %shl.i227, %and.i226
  %conv71 = trunc i32 %or.i228 to i8
  %arrayidx72 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 31, i32 %conv
  %67 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv71, ptr %arrayidx72, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond66, i8 noundef zeroext %conv71)
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val, align 4
  %70 = call i32 @llvm.smax.i32(i32 %69, i32 -128000) #9
  %71 = call i32 @llvm.smin.i32(i32 %70, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp8.i229 = icmp sgt i32 %70, 0
  %cond19.in.v.i230 = select i1 %cmp8.i229, i32 500, i32 -500
  %cond19.in.i231 = add nsw i32 %cond19.in.v.i230, %71
  %cond19.i232 = sdiv i32 %cond19.in.i231, 1000
  %conv87 = trunc i32 %cond19.i232 to i8
  %arrayidx88 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 34, i32 %conv
  %72 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv87, ptr %arrayidx88, align 1
  %add89 = add i8 %3, 106
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add89, i8 noundef zeroext %conv87)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_zone.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_zone, %sw.epilog)) #9
          to label %if.then100 [label %sw.epilog], !srcloc !627

if.then100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_zone.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then100, %do.body, %sw.bb85, %TEMP_RANGE_TO_REG.exit, %sw.bb28, %dme1737_read.exit185
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vrm = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 4
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 22
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb22
    i8 3, label %sw.bb26
    i8 4, label %sw.bb29
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 23, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ult i8 %1, 4
  br i1 %cmp, label %sw.bb.if.else.i_crit_edge, label %cond.false

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

cond.false:                                       ; preds = %sw.bb
  %arrayidx4 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 26, i32 %conv
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %and.i = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %cond.false.if.else.i_crit_edge

cond.false.if.else.i_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i = and i32 %conv5, 3
  %shr.i = lshr i32 60, %and1.i
  %mul.i = mul nuw nsw i32 %shr.i, %conv2
  br label %sw.epilog

if.else.i:                                        ; preds = %cond.false.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %9 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.226)
  switch i16 %6, label %cond.false.i [
    i16 0, label %if.else.i.sw.epilog_crit_edge
    i16 -1, label %if.else.i.sw.epilog_crit_edge82
  ]

if.else.i.sw.epilog_crit_edge82:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i80 = udiv i32 5400000, %conv2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %arrayidx9 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 24, i32 %conv
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp11 = icmp ult i8 %1, 4
  br i1 %cmp11, label %sw.bb8.if.else.i67_crit_edge, label %cond.false14

sw.bb8.if.else.i67_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i67

cond.false14:                                     ; preds = %sw.bb8
  %arrayidx16 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 26, i32 %conv
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %and.i59 = and i32 %conv17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.then.i66, label %cond.false14.if.else.i67_crit_edge

cond.false14.if.else.i67_crit_edge:               ; preds = %cond.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i67

if.then.i66:                                      ; preds = %cond.false14
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i61 = and i32 %conv17, 3
  %shr.i62 = lshr i32 60, %and1.i61
  %mul.i65 = mul nuw nsw i32 %shr.i62, %conv10
  br label %sw.epilog

if.else.i67:                                      ; preds = %cond.false14.if.else.i67_crit_edge, %sw.bb8.if.else.i67_crit_edge
  %14 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.227)
  switch i16 %11, label %cond.false.i69 [
    i16 0, label %if.else.i67.sw.epilog_crit_edge
    i16 -1, label %if.else.i67.sw.epilog_crit_edge83
  ]

if.else.i67.sw.epilog_crit_edge83:                ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else.i67.sw.epilog_crit_edge:                  ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false.i69:                                   ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #11
  %div.i6881 = udiv i32 5400000, %conv10
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -4
  %arrayidx23 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 25, i32 %sub
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.228)
  switch i8 %16, label %for.inc.9.i [
    i8 14, label %sw.bb22.sw.epilog_crit_edge
    i8 15, label %for.end.fold.split.i
    i8 17, label %for.end.fold.split6.i
    i8 18, label %for.end.fold.split7.i
    i8 21, label %for.end.fold.split8.i
    i8 24, label %for.end.fold.split9.i
    i8 28, label %for.end.fold.split10.i
    i8 33, label %for.end.fold.split11.i
    i8 42, label %for.end.fold.split12.i
    i8 56, label %for.end.fold.split13.i
  ]

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.inc.9.i:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split.i:                             ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split6.i:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split7.i:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split8.i:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split9.i:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split10.i:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split11.i:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split12.i:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.end.fold.split13.i:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 36
  %18 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alarms, align 4
  %arrayidx27 = getelementptr [6 x i8], ptr @DME1737_BIT_ALARM_FAN, i32 0, i32 %conv
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %shr = lshr i32 %19, %conv28
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx31 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 26, i32 %conv
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31, align 1
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 3
  %and.i72 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not.i = icmp eq i8 %25, 0
  %sub.i = add nsw i32 %and.i72, -1
  %shl.i = shl nuw nsw i32 1, %sub.i
  %cond.i73 = select i1 %cmp.not.i, i32 0, i32 %shl.i
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_fan.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_fan, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !627

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_fan.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb29, %sw.bb26, %for.end.fold.split13.i, %for.end.fold.split12.i, %for.end.fold.split11.i, %for.end.fold.split10.i, %for.end.fold.split9.i, %for.end.fold.split8.i, %for.end.fold.split7.i, %for.end.fold.split6.i, %for.end.fold.split.i, %for.inc.9.i, %sw.bb22.sw.epilog_crit_edge, %cond.false.i69, %if.else.i67.sw.epilog_crit_edge, %if.else.i67.sw.epilog_crit_edge83, %if.then.i66, %cond.false.i, %if.else.i.sw.epilog_crit_edge, %if.else.i.sw.epilog_crit_edge82, %if.then.i
  %res.0 = phi i32 [ 0, %if.then ], [ %cond.i73, %sw.bb29 ], [ %and, %sw.bb26 ], [ %mul.i, %if.then.i ], [ %div.i80, %cond.false.i ], [ 0, %if.else.i.sw.epilog_crit_edge ], [ 0, %if.else.i.sw.epilog_crit_edge82 ], [ %mul.i65, %if.then.i66 ], [ %div.i6881, %cond.false.i69 ], [ 0, %if.else.i67.sw.epilog_crit_edge ], [ 0, %if.else.i67.sw.epilog_crit_edge83 ], [ 6000, %sw.bb22.sw.epilog_crit_edge ], [ 1000, %for.inc.9.i ], [ 5500, %for.end.fold.split.i ], [ 5000, %for.end.fold.split6.i ], [ 4500, %for.end.fold.split7.i ], [ 4000, %for.end.fold.split8.i ], [ 3500, %for.end.fold.split9.i ], [ 3000, %for.end.fold.split10.i ], [ 2500, %for.end.fold.split11.i ], [ 2000, %for.end.fold.split12.i ], [ 1500, %for.end.fold.split13.i ], [ 0, %sw.default ]
  %call39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %res.0)
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %5, label %do.body101 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb54
    i8 4, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ult i8 %3, 4
  br i1 %cmp, label %if.then4, label %cond.end

if.then4:                                         ; preds = %sw.bb
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7.i = icmp slt i32 %9, 1
  br i1 %cmp7.i, label %if.then4.FAN_TO_REG.exit_crit_edge, label %cond.false9.i

if.then4.FAN_TO_REG.exit_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

cond.false9.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %div1036.i = udiv i32 5400000, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5400000, i32 %9)
  %cmp12.not.i = icmp ugt i32 %9, 5400000
  %10 = call i32 @llvm.umin.i32(i32 %div1036.i, i32 65534) #9
  %11 = trunc i32 %10 to i16
  %phi.cast = select i1 %cmp12.not.i, i16 0, i16 %11
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %cond.false9.i, %if.then4.FAN_TO_REG.exit_crit_edge
  %retval.0.i166 = phi i16 [ %phi.cast, %cond.false9.i ], [ -1, %if.then4.FAN_TO_REG.exit_crit_edge ]
  %arrayidx = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 24, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %retval.0.i166, ptr %arrayidx, align 2
  %mul = shl nuw nsw i8 %3, 1
  %add25 = add nuw nsw i8 %mul, 84
  br label %cond.end29

cond.end:                                         ; preds = %sw.bb
  %add9 = add i8 %3, -78
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  %call.i167 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %14, i8 noundef zeroext %add9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp.i = icmp slt i32 %call.i167, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %conv.i = zext i8 %add9 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %conv.i, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %16, 1048575
  %add.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %add9) #9, !srcloc !612
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %add8.i = add i32 %19, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %20 = inttoptr i32 %add10.i to ptr
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %21 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i167, %do.end.i ], [ %call.i167, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  %conv15.i = trunc i32 %val.0.i to i8
  %arrayidx12 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 26, i32 %conv
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv15.i, ptr %arrayidx12, align 1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %and.i168 = and i32 %val.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %if.then.i171, label %if.else.i

if.then.i171:                                     ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i = and i32 %val.0.i, 3
  %shr.i = lshr i32 60, %and1.i
  %div.i = sdiv i32 %24, %shr.i
  %25 = call i32 @llvm.smax.i32(i32 %div.i, i32 0) #9
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 65535) #9
  br label %FAN_TO_REG.exit177

if.else.i:                                        ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp7.i172 = icmp slt i32 %24, 1
  br i1 %cmp7.i172, label %if.else.i.FAN_TO_REG.exit177_crit_edge, label %cond.false9.i175

if.else.i.FAN_TO_REG.exit177_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit177

cond.false9.i175:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div1036.i173 = udiv i32 5400000, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5400000, i32 %24)
  %cmp12.not.i174 = icmp ugt i32 %24, 5400000
  %27 = call i32 @llvm.umin.i32(i32 %div1036.i173, i32 65534) #9
  %28 = select i1 %cmp12.not.i174, i32 0, i32 %27
  br label %FAN_TO_REG.exit177

FAN_TO_REG.exit177:                               ; preds = %cond.false9.i175, %if.else.i.FAN_TO_REG.exit177_crit_edge, %if.then.i171
  %retval.0.i176 = phi i32 [ %26, %if.then.i171 ], [ %28, %cond.false9.i175 ], [ 65535, %if.else.i.FAN_TO_REG.exit177_crit_edge ]
  %conv18 = trunc i32 %retval.0.i176 to i16
  %arrayidx20 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 24, i32 %conv
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv18, ptr %arrayidx20, align 2
  %mul27 = shl i8 %3, 1
  %add28 = add i8 %mul27, -91
  br label %cond.end29

cond.end29:                                       ; preds = %FAN_TO_REG.exit177, %FAN_TO_REG.exit
  %mul40.pre-phi = phi i8 [ %mul27, %FAN_TO_REG.exit177 ], [ %mul, %FAN_TO_REG.exit ]
  %cond46.v = phi i8 [ -91, %FAN_TO_REG.exit177 ], [ 84, %FAN_TO_REG.exit ]
  %cond30 = phi i8 [ %add28, %FAN_TO_REG.exit177 ], [ %add25, %FAN_TO_REG.exit ]
  %arrayidx33 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 24, i32 %conv
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx33, align 2
  %conv35 = trunc i16 %31 to i8
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond30, i8 noundef zeroext %conv35)
  %cond46 = or i8 %mul40.pre-phi, 1
  %add47 = add i8 %cond46, %cond46.v
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx33, align 2
  %34 = lshr i16 %33, 8
  %conv52 = trunc i16 %34 to i8
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add47, i8 noundef zeroext %conv52)
  br label %exit

sw.bb54:                                          ; preds = %if.end
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5500, i32 %36)
  %cmp1.i = icmp sgt i32 %36, 5500
  br i1 %cmp1.i, label %sw.bb54.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.i

sw.bb54.FAN_MAX_TO_REG.exit_crit_edge:            ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.i:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %36)
  %cmp1.1.i = icmp sgt i32 %36, 5000
  br i1 %cmp1.1.i, label %for.inc.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.1.i

for.inc.i.FAN_MAX_TO_REG.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500, i32 %36)
  %cmp1.2.i = icmp sgt i32 %36, 4500
  br i1 %cmp1.2.i, label %for.inc.1.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %36)
  %cmp1.3.i = icmp sgt i32 %36, 4000
  br i1 %cmp1.3.i, label %for.inc.2.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500, i32 %36)
  %cmp1.4.i = icmp sgt i32 %36, 3500
  br i1 %cmp1.4.i, label %for.inc.3.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %36)
  %cmp1.5.i = icmp sgt i32 %36, 3000
  br i1 %cmp1.5.i, label %for.inc.4.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %36)
  %cmp1.6.i = icmp sgt i32 %36, 2500
  br i1 %cmp1.6.i, label %for.inc.5.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %36)
  %cmp1.7.i = icmp sgt i32 %36, 2000
  br i1 %cmp1.7.i, label %for.inc.6.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %36)
  %cmp1.8.i = icmp sgt i32 %36, 1500
  br i1 %cmp1.8.i, label %for.inc.7.i.FAN_MAX_TO_REG.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.FAN_MAX_TO_REG.exit_crit_edge:        ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_MAX_TO_REG.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %36)
  %cmp1.9.i = icmp sgt i32 %36, 1000
  %spec.select.i = zext i1 %cmp1.9.i to i32
  br label %FAN_MAX_TO_REG.exit

FAN_MAX_TO_REG.exit:                              ; preds = %for.inc.8.i, %for.inc.7.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.6.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.5.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.4.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.3.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.2.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.1.i.FAN_MAX_TO_REG.exit_crit_edge, %for.inc.i.FAN_MAX_TO_REG.exit_crit_edge, %sw.bb54.FAN_MAX_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 10, %sw.bb54.FAN_MAX_TO_REG.exit_crit_edge ], [ 9, %for.inc.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 8, %for.inc.1.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 7, %for.inc.2.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 6, %for.inc.3.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 5, %for.inc.4.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 4, %for.inc.5.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 3, %for.inc.6.i.FAN_MAX_TO_REG.exit_crit_edge ], [ 2, %for.inc.7.i.FAN_MAX_TO_REG.exit_crit_edge ], [ %spec.select.i, %for.inc.8.i ]
  %arrayidx.i = getelementptr [11 x i32], ptr @FAN_MAX, i32 0, i32 %i.0.lcssa.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %conv56 = trunc i32 %38 to i8
  %sub = add nsw i32 %conv, -4
  %arrayidx57 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 25, i32 %sub
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv56, ptr %arrayidx57, align 1
  %add58 = add i8 %3, -76
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add58, i8 noundef zeroext %conv56)
  br label %exit

sw.bb64:                                          ; preds = %if.end
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %41, label %if.then72 [
    i32 1, label %sw.bb64.if.end73_crit_edge
    i32 2, label %sw.bb64.if.end73_crit_edge200
    i32 4, label %sw.bb64.if.end73_crit_edge201
  ]

sw.bb64.if.end73_crit_edge201:                    ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

sw.bb64.if.end73_crit_edge200:                    ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

sw.bb64.if.end73_crit_edge:                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then72:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %41) #13
  br label %exit

if.end73:                                         ; preds = %sw.bb64.if.end73_crit_edge, %sw.bb64.if.end73_crit_edge200, %sw.bb64.if.end73_crit_edge201
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp74 = icmp ult i8 %3, 4
  %cond81.v = select i1 %cmp74, i8 -112, i8 -78
  %cond81 = add i8 %cond81.v, %3
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %tobool.not.i178 = icmp eq ptr %44, null
  br i1 %tobool.not.i178, label %do.body3.i192, label %if.then.i181

if.then.i181:                                     ; preds = %if.end73
  %call.i179 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %44, i8 noundef zeroext %cond81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %cmp.i180 = icmp slt i32 %call.i179, 0
  br i1 %cmp.i180, label %do.end.i184, label %if.then.i181.dme1737_read.exit195_crit_edge

if.then.i181.dme1737_read.exit195_crit_edge:      ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit195

do.end.i184:                                      ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i182 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %conv.i183 = zext i8 %cond81 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i182, ptr noundef nonnull @.str.24, i32 noundef %conv.i183, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit195

do.body3.i192:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i185 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %addr.i185 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i185, align 4
  %and.i186 = and i32 %46, 1048575
  %add.i187 = or i32 %and.i186, -18874368
  %47 = inttoptr i32 %add.i187 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %cond81) #9, !srcloc !612
  %48 = ptrtoint ptr %addr.i185 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i185, align 4
  %add8.i188 = add i32 %49, 1
  %and9.i189 = and i32 %add8.i188, 1048575
  %add10.i190 = or i32 %and9.i189, -18874368
  %50 = inttoptr i32 %add10.i190 to ptr
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i191 = zext i8 %51 to i32
  br label %dme1737_read.exit195

dme1737_read.exit195:                             ; preds = %do.body3.i192, %do.end.i184, %if.then.i181.dme1737_read.exit195_crit_edge
  %val.0.i193 = phi i32 [ %call.i179, %do.end.i184 ], [ %call.i179, %if.then.i181.dme1737_read.exit195_crit_edge ], [ %conv13.i191, %do.body3.i192 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i196 = icmp eq i32 %41, 4
  %phi.bo.i = shl nuw nsw i32 %41, 1
  %spec.select.i197 = select i1 %cmp.i196, i32 6, i32 %phi.bo.i
  %and.i198 = and i32 %val.0.i193, 249
  %or.i = or i32 %and.i198, %spec.select.i197
  %conv86 = trunc i32 %or.i to i8
  %arrayidx88 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 26, i32 %conv
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv86, ptr %arrayidx88, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond81, i8 noundef zeroext %conv86)
  br label %exit

do.body101:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_fan.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_fan, %exit)) #9
          to label %if.then108 [label %exit], !srcloc !627

if.then108:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_fan.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %exit

exit:                                             ; preds = %if.then108, %do.body101, %dme1737_read.exit195, %if.then72, %FAN_MAX_TO_REG.exit, %cond.end29
  %count.addr.0 = phi i32 [ %count, %if.then108 ], [ %count, %dme1737_read.exit195 ], [ -22, %if.then72 ], [ %count, %FAN_MAX_TO_REG.exit ], [ %count, %cond.end29 ], [ %count, %do.body101 ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dme1737_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.231)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb11
    i8 3, label %sw.bb21
    i8 4, label %sw.bb27
    i8 5, label %sw.bb43
    i8 6, label %sw.bb53
    i8 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 29, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %.mask = and i8 %6, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 96
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 27, i32 %conv
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 31, i32 %conv
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %11 = and i8 %10, 15
  %and.i92 = zext i8 %11 to i32
  %arrayidx.i93 = getelementptr [16 x i32], ptr @PWM_FREQ, i32 0, i32 %and.i92
  %12 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i93, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp12 = icmp ugt i8 %1, 2
  br i1 %cmp12, label %sw.bb11.sw.epilog_crit_edge, label %if.else15

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 29, i32 %conv
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %16 = lshr i8 %15, 5
  %17 = zext i8 %16 to i32
  %arrayidx.i95 = getelementptr [8 x i32], ptr @PWM_EN_FROM_REG.en, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i95, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22 = icmp ne i8 %1, 0
  %conv23 = zext i1 %cmp22 to i32
  %arrayidx24 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 32, i32 %conv23
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  %shr.i104 = lshr i32 %conv25, 4
  %cond.i = select i1 %cmp.i, i32 %shr.i104, i32 %conv25
  %and.i96 = and i32 %cond.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i, label %sw.bb21.sw.epilog_crit_edge, label %cond.true1.i

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.true1.i:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i = and i32 %cond.i, 7
  %arrayidx.i97 = getelementptr [8 x i8], ptr @PWM_RR, i32 0, i32 %and2.i
  %22 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i97, align 1
  %conv.i = zext i8 %23 to i32
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %arrayidx29 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 29, i32 %conv
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29, align 1
  %26 = lshr i8 %25, 5
  %27 = zext i8 %26 to i32
  %28 = lshr i32 103, %27
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32.not = icmp eq i32 %29, 0
  br i1 %cmp32.not, label %if.else39, label %if.then34

if.then34:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i101 = getelementptr [8 x i32], ptr @PWM_ACZ_FROM_REG.acz, i32 0, i32 %27
  %30 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i101, align 4
  br label %sw.epilog

if.else39:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx40 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 30, i32 %conv
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %33 to i32
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %pwm_rr44 = getelementptr inbounds %struct.dme1737_data, ptr %call, i32 0, i32 32
  %34 = ptrtoint ptr %pwm_rr44 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pwm_rr44, align 1
  %conv46 = zext i8 %35 to i32
  %36 = shl i32 32, %conv
  %37 = and i32 %36, %conv46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %sw.bb43.sw.epilog_crit_edge, label %if.then48

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then48:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx49 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 28, i32 %conv
  %38 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %39 to i32
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx55 = getelementptr %struct.dme1737_data, ptr %call, i32 0, i32 28, i32 %conv
  %40 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %41 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_pwm.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_pwm, %sw.epilog)) #9
          to label %if.then64 [label %sw.epilog], !srcloc !627

if.then64:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_pwm.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then64, %sw.default, %sw.bb53, %if.then48, %sw.bb43.sw.epilog_crit_edge, %if.else39, %if.then34, %cond.true1.i, %sw.bb21.sw.epilog_crit_edge, %if.else15, %sw.bb11.sw.epilog_crit_edge, %sw.bb7, %if.else, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %if.then64 ], [ %conv56, %sw.bb53 ], [ %conv50, %if.then48 ], [ %31, %if.then34 ], [ %conv41, %if.else39 ], [ %19, %if.else15 ], [ %13, %sw.bb7 ], [ %conv6, %if.else ], [ 255, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb11.sw.epilog_crit_edge ], [ 0, %sw.bb43.sw.epilog_crit_edge ], [ 255, %entry.sw.epilog_crit_edge ], [ %conv.i, %cond.true1.i ], [ 0, %sw.bb21.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %call66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %res.0)
  ret i32 %call66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !609
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %5, label %do.body360 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb24
    i8 2, label %sw.bb51
    i8 3, label %sw.bb200
    i8 4, label %sw.bb260
    i8 5, label %sw.bb308
    i8 6, label %sw.bb337
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 255)
  %conv12 = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 27, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp13 = icmp ult i8 %3, 3
  %cond19.v = select i1 %cmp13, i8 48, i8 -95
  %cond19 = add i8 %cond19.v, %3
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond19, i8 noundef zeroext %conv12)
  br label %exit

sw.bb24:                                          ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp25 = icmp ult i8 %3, 3
  %cond32.v = select i1 %cmp25, i8 95, i8 -93
  %cond32 = add i8 %cond32.v, %3
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb24
  %call.i553 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %16, i8 noundef zeroext %cond32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i553)
  %cmp.i = icmp slt i32 %call.i553, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.dme1737_read.exit_crit_edge

if.then.i.dme1737_read.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %conv.i = zext i8 %cond32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %conv.i, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit

do.body3.i:                                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %18, 1048575
  %add.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %cond32) #9, !srcloc !612
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 4
  %add8.i = add i32 %21, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %22 = inttoptr i32 %add10.i to ptr
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i = zext i8 %23 to i32
  br label %dme1737_read.exit

dme1737_read.exit:                                ; preds = %do.body3.i, %do.end.i, %if.then.i.dme1737_read.exit_crit_edge
  %val.0.i = phi i32 [ %call.i553, %do.end.i ], [ %call.i553, %if.then.i.dme1737_read.exit_crit_edge ], [ %conv13.i, %do.body3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 27500, i32 %14)
  %cmp.i554 = icmp sgt i32 %14, 27500
  br i1 %cmp.i554, label %dme1737_read.exit.PWM_FREQ_TO_REG.exit_crit_edge, label %if.else.i

dme1737_read.exit.PWM_FREQ_TO_REG.exit_crit_edge: ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

if.else.i:                                        ; preds = %dme1737_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 22500, i32 %14)
  %cmp1.i = icmp sgt i32 %14, 22500
  br i1 %cmp1.i, label %if.else.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.preheader.i

if.else.i.PWM_FREQ_TO_REG.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.preheader.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17500, i32 %14)
  %cmp7.i = icmp sgt i32 %14, 17500
  br i1 %cmp7.i, label %for.cond.preheader.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.1.i

for.cond.preheader.i.PWM_FREQ_TO_REG.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.1.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7544, i32 %14)
  %cmp7.1.i = icmp sgt i32 %14, 7544
  br i1 %cmp7.1.i, label %for.cond.1.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %14)
  %cmp7.2.i = icmp sgt i32 %14, 74
  br i1 %cmp7.2.i, label %for.cond.2.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %14)
  %cmp7.3.i = icmp sgt i32 %14, 52
  br i1 %cmp7.3.i, label %for.cond.3.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %14)
  %cmp7.4.i = icmp sgt i32 %14, 40
  br i1 %cmp7.4.i, label %for.cond.4.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp7.5.i = icmp sgt i32 %14, 32
  br i1 %cmp7.5.i, label %for.cond.5.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %14)
  %cmp7.6.i = icmp sgt i32 %14, 26
  br i1 %cmp7.6.i, label %for.cond.6.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %14)
  %cmp7.7.i = icmp sgt i32 %14, 19
  br i1 %cmp7.7.i, label %for.cond.7.i.PWM_FREQ_TO_REG.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.PWM_FREQ_TO_REG.exit_crit_edge:      ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_FREQ_TO_REG.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %14)
  %cmp7.8.i = icmp sgt i32 %14, 13
  %spec.select.i = zext i1 %cmp7.8.i to i32
  br label %PWM_FREQ_TO_REG.exit

PWM_FREQ_TO_REG.exit:                             ; preds = %for.cond.8.i, %for.cond.7.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.6.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.5.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.4.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.3.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.2.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.1.i.PWM_FREQ_TO_REG.exit_crit_edge, %for.cond.preheader.i.PWM_FREQ_TO_REG.exit_crit_edge, %if.else.i.PWM_FREQ_TO_REG.exit_crit_edge, %dme1737_read.exit.PWM_FREQ_TO_REG.exit_crit_edge
  %i.1.i = phi i32 [ 10, %dme1737_read.exit.PWM_FREQ_TO_REG.exit_crit_edge ], [ 11, %if.else.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 9, %for.cond.preheader.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 8, %for.cond.1.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 7, %for.cond.2.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 6, %for.cond.3.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 5, %for.cond.4.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 4, %for.cond.5.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 3, %for.cond.6.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ 2, %for.cond.7.i.PWM_FREQ_TO_REG.exit_crit_edge ], [ %spec.select.i, %for.cond.8.i ]
  %and.i555 = and i32 %val.0.i, 240
  %or.i = or i32 %i.1.i, %and.i555
  %conv37 = trunc i32 %or.i to i8
  %arrayidx38 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 31, i32 %conv
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv37, ptr %arrayidx38, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %cond32, i8 noundef zeroext %conv37)
  br label %exit

sw.bb51:                                          ; preds = %if.end
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %if.then56, label %if.end57

if.then56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %26) #13
  br label %exit

if.end57:                                         ; preds = %sw.bb51
  %add58 = add i8 %3, 92
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %tobool.not.i556 = icmp eq ptr %29, null
  br i1 %tobool.not.i556, label %do.body3.i570, label %if.then.i559

if.then.i559:                                     ; preds = %if.end57
  %call.i557 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %29, i8 noundef zeroext %add58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i557)
  %cmp.i558 = icmp slt i32 %call.i557, 0
  br i1 %cmp.i558, label %do.end.i562, label %if.then.i559.dme1737_read.exit573_crit_edge

if.then.i559.dme1737_read.exit573_crit_edge:      ; preds = %if.then.i559
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit573

do.end.i562:                                      ; preds = %if.then.i559
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i560 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %conv.i561 = zext i8 %add58 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i560, ptr noundef nonnull @.str.24, i32 noundef %conv.i561, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit573

do.body3.i570:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i563 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %addr.i563 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i563, align 4
  %and.i564 = and i32 %31, 1048575
  %add.i565 = or i32 %and.i564, -18874368
  %32 = inttoptr i32 %add.i565 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %add58) #9, !srcloc !612
  %33 = ptrtoint ptr %addr.i563 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i563, align 4
  %add8.i566 = add i32 %34, 1
  %and9.i567 = and i32 %add8.i566, 1048575
  %add10.i568 = or i32 %and9.i567, -18874368
  %35 = inttoptr i32 %add10.i568 to ptr
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i569 = zext i8 %36 to i32
  br label %dme1737_read.exit573

dme1737_read.exit573:                             ; preds = %do.body3.i570, %do.end.i562, %if.then.i559.dme1737_read.exit573_crit_edge
  %val.0.i571 = phi i32 [ %call.i557, %do.end.i562 ], [ %call.i557, %if.then.i559.dme1737_read.exit573_crit_edge ], [ %conv13.i569, %do.body3.i570 ]
  %conv15.i572 = trunc i32 %val.0.i571 to i8
  %arrayidx61 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 %conv
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv15.i572, ptr %arrayidx61, align 1
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %conv64 = lshr i32 %val.0.i571, 5
  %40 = and i32 %conv64, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @PWM_EN_FROM_REG.en, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %42)
  %cmp66 = icmp eq i32 %39, %42
  br i1 %cmp66, label %dme1737_read.exit573.exit_crit_edge, label %if.end69

dme1737_read.exit573.exit_crit_edge:              ; preds = %dme1737_read.exit573
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end69:                                         ; preds = %dme1737_read.exit573
  %43 = lshr i32 103, %40
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp74.not = icmp eq i32 %44, 0
  br i1 %cmp74.not, label %if.end69.if.end126_crit_edge, label %if.then76

if.end69.if.end126_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then76:                                        ; preds = %if.end69
  %arrayidx.i578 = getelementptr [8 x i32], ptr @PWM_ACZ_FROM_REG.acz, i32 0, i32 %40
  %45 = ptrtoint ptr %arrayidx.i578 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i578, align 4
  %conv81 = trunc i32 %46 to i8
  %arrayidx82 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 30, i32 %conv
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv81, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp83 = icmp ne i8 %3, 0
  %conv84 = zext i1 %cmp83 to i32
  %conv86 = select i1 %cmp83, i8 99, i8 98
  %call87 = call fastcc zeroext i8 @dme1737_read(ptr noundef %1, i8 noundef zeroext %conv86)
  %arrayidx90 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 32, i32 %conv84
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call87, ptr %arrayidx90, align 1
  %shl = shl nuw i32 1, %conv
  %pwm_rr_en = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 11
  %49 = ptrtoint ptr %pwm_rr_en to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pwm_rr_en, align 1
  %51 = trunc i32 %shl to i8
  %52 = xor i8 %51, -1
  %conv92 = and i8 %50, %52
  store i8 %conv92, ptr %pwm_rr_en, align 1
  %conv97 = zext i8 %call87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 1
  %53 = lshr i32 %conv97, 4
  %cond.i.i = select i1 %cmp.i.i, i32 %53, i32 %conv97
  %54 = and i32 %cond.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool99.not = icmp eq i32 %54, 0
  br i1 %tobool99.not, label %if.then76.if.end126_crit_edge, label %if.then100

if.then76.if.end126_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then100:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %conv104 = or i8 %50, %51
  %55 = ptrtoint ptr %pwm_rr_en to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv104, ptr %pwm_rr_en, align 1
  %neg.i = select i1 %cmp.i.i, i8 127, i8 -9
  %and.i581 = and i8 %call87, %neg.i
  %56 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %and.i581, ptr %arrayidx90, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv86, i8 noundef zeroext %and.i581)
  br label %if.end126

if.end126:                                        ; preds = %if.then100, %if.then76.if.end126_crit_edge, %if.end69.if.end126_crit_edge
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %58, label %if.end126.exit_crit_edge [
    i32 0, label %sw.bb127
    i32 1, label %sw.bb141
    i32 2, label %sw.bb155
  ]

if.end126.exit_crit_edge:                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

sw.bb127:                                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx128 = getelementptr [0 x ptr], ptr @dme1737_pwm_chmod_attr, i32 0, i32 %conv
  %60 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx128, align 4
  call fastcc void @dme1737_chmod_file(ptr noundef %dev, ptr noundef %61, i16 noundef zeroext 292)
  %62 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx61, align 1
  %64 = and i8 %63, 31
  %65 = or i8 %64, 96
  store i8 %65, ptr %arrayidx61, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add58, i8 noundef zeroext %65)
  br label %exit

sw.bb141:                                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx61, align 1
  %68 = or i8 %67, -32
  store i8 %68, ptr %arrayidx61, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add58, i8 noundef zeroext %68)
  %arrayidx154 = getelementptr [0 x ptr], ptr @dme1737_pwm_chmod_attr, i32 0, i32 %conv
  %69 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx154, align 4
  call fastcc void @dme1737_chmod_file(ptr noundef %dev, ptr noundef %70, i16 noundef zeroext 420)
  br label %exit

sw.bb155:                                         ; preds = %if.end126
  %arrayidx156 = getelementptr [0 x ptr], ptr @dme1737_pwm_chmod_attr, i32 0, i32 %conv
  %71 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx156, align 4
  call fastcc void @dme1737_chmod_file(ptr noundef %dev, ptr noundef %72, i16 noundef zeroext 292)
  %arrayidx158 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 30, i32 %conv
  %73 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx158, align 1
  %75 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %74)
  %cmp.i586 = icmp eq i8 %74, 4
  %sub.i = shl i8 %74, 5
  %phi.bo.i = add i8 %sub.i, -32
  %cond.i587 = select i1 %cmp.i586, i8 64, i8 %phi.bo.i
  %77 = and i8 %76, 31
  %or.i589 = or i8 %cond.i587, %77
  %78 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or.i589, ptr %arrayidx61, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add58, i8 noundef zeroext %or.i589)
  %pwm_rr_en172 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 11
  %79 = ptrtoint ptr %pwm_rr_en172 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pwm_rr_en172, align 1
  %conv173 = zext i8 %80 to i32
  %shl174 = shl nuw i32 1, %conv
  %and175 = and i32 %shl174, %conv173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %sw.bb155.exit_crit_edge, label %if.then177

sw.bb155.exit_crit_edge:                          ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then177:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp178 = icmp ne i8 %3, 0
  %conv179 = zext i1 %cmp178 to i32
  %conv181 = select i1 %cmp178, i8 99, i8 98
  %call182 = call fastcc zeroext i8 @dme1737_read(ptr noundef %1, i8 noundef zeroext %conv181)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i590 = icmp eq i8 %3, 1
  %cond.i591 = select i1 %cmp.i590, i8 -128, i8 8
  %or.i592 = or i8 %call182, %cond.i591
  %arrayidx189 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 32, i32 %conv179
  %81 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %or.i592, ptr %arrayidx189, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv181, i8 noundef zeroext %or.i592)
  br label %exit

sw.bb200:                                         ; preds = %if.end
  %add201 = add i8 %3, 92
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %tobool.not.i595 = icmp eq ptr %83, null
  br i1 %tobool.not.i595, label %do.body3.i609, label %if.then.i598

if.then.i598:                                     ; preds = %sw.bb200
  %call.i596 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %83, i8 noundef zeroext %add201) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i596)
  %cmp.i597 = icmp slt i32 %call.i596, 0
  br i1 %cmp.i597, label %do.end.i601, label %if.then.i598.dme1737_read.exit612_crit_edge

if.then.i598.dme1737_read.exit612_crit_edge:      ; preds = %if.then.i598
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit612

do.end.i601:                                      ; preds = %if.then.i598
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i599 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  %conv.i600 = zext i8 %add201 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i599, ptr noundef nonnull @.str.24, i32 noundef %conv.i600, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit612

do.body3.i609:                                    ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i602 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %addr.i602 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr.i602, align 4
  %and.i603 = and i32 %85, 1048575
  %add.i604 = or i32 %and.i603, -18874368
  %86 = inttoptr i32 %add.i604 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %add201) #9, !srcloc !612
  %87 = ptrtoint ptr %addr.i602 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i602, align 4
  %add8.i605 = add i32 %88, 1
  %and9.i606 = and i32 %add8.i605, 1048575
  %add10.i607 = or i32 %and9.i606, -18874368
  %89 = inttoptr i32 %add10.i607 to ptr
  %90 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i608 = zext i8 %90 to i32
  br label %dme1737_read.exit612

dme1737_read.exit612:                             ; preds = %do.body3.i609, %do.end.i601, %if.then.i598.dme1737_read.exit612_crit_edge
  %val.0.i610 = phi i32 [ %call.i596, %do.end.i601 ], [ %call.i596, %if.then.i598.dme1737_read.exit612_crit_edge ], [ %conv13.i608, %do.body3.i609 ]
  %conv15.i611 = trunc i32 %val.0.i610 to i8
  %arrayidx205 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 %conv
  %91 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv15.i611, ptr %arrayidx205, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp206 = icmp ne i8 %3, 0
  %conv207 = zext i1 %cmp206 to i32
  %conv209 = select i1 %cmp206, i8 99, i8 98
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %tobool.not.i613 = icmp eq ptr %93, null
  br i1 %tobool.not.i613, label %do.body3.i627, label %if.then.i616

if.then.i616:                                     ; preds = %dme1737_read.exit612
  %call.i614 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %93, i8 noundef zeroext %conv209) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i614)
  %cmp.i615 = icmp slt i32 %call.i614, 0
  br i1 %cmp.i615, label %do.end.i619, label %if.then.i616.dme1737_read.exit630_crit_edge

if.then.i616.dme1737_read.exit630_crit_edge:      ; preds = %if.then.i616
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit630

do.end.i619:                                      ; preds = %if.then.i616
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i617 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 4
  %conv.i618 = zext i8 %conv209 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i617, ptr noundef nonnull @.str.24, i32 noundef %conv.i618, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit630

do.body3.i627:                                    ; preds = %dme1737_read.exit612
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i620 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %addr.i620 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i620, align 4
  %and.i621 = and i32 %95, 1048575
  %add.i622 = or i32 %and.i621, -18874368
  %96 = inttoptr i32 %add.i622 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %conv209) #9, !srcloc !612
  %97 = ptrtoint ptr %addr.i620 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.i620, align 4
  %add8.i623 = add i32 %98, 1
  %and9.i624 = and i32 %add8.i623, 1048575
  %add10.i625 = or i32 %and9.i624, -18874368
  %99 = inttoptr i32 %add10.i625 to ptr
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i626 = zext i8 %100 to i32
  br label %dme1737_read.exit630

dme1737_read.exit630:                             ; preds = %do.body3.i627, %do.end.i619, %if.then.i616.dme1737_read.exit630_crit_edge
  %val.0.i628 = phi i32 [ %call.i614, %do.end.i619 ], [ %call.i614, %if.then.i616.dme1737_read.exit630_crit_edge ], [ %conv13.i626, %do.body3.i627 ]
  %conv15.i629 = trunc i32 %val.0.i628 to i8
  %arrayidx214 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 32, i32 %conv207
  %101 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv15.i629, ptr %arrayidx214, align 1
  %102 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp215 = icmp sgt i32 %103, 0
  br i1 %cmp215, label %if.then217, label %dme1737_read.exit630.if.end229_crit_edge

dme1737_read.exit630.if.end229_crit_edge:         ; preds = %dme1737_read.exit630
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

if.then217:                                       ; preds = %dme1737_read.exit630
  call void @__sanitizer_cov_trace_const_cmp4(i32 155, i32 %103)
  %cmp5.i = icmp ugt i32 %103, 155
  br i1 %cmp5.i, label %if.then217.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.1.i631

if.then217.PWM_RR_TO_REG.exit_crit_edge:          ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.1.i631:                                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %103)
  %cmp5.1.i = icmp ugt i32 %103, 87
  br i1 %cmp5.1.i, label %for.cond.1.i631.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.2.i632

for.cond.1.i631.PWM_RR_TO_REG.exit_crit_edge:     ; preds = %for.cond.1.i631
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.2.i632:                                  ; preds = %for.cond.1.i631
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %103)
  %cmp5.2.i = icmp ugt i32 %103, 55
  br i1 %cmp5.2.i, label %for.cond.2.i632.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.3.i633

for.cond.2.i632.PWM_RR_TO_REG.exit_crit_edge:     ; preds = %for.cond.2.i632
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.3.i633:                                  ; preds = %for.cond.2.i632
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %103)
  %cmp5.3.i = icmp ugt i32 %103, 34
  br i1 %cmp5.3.i, label %for.cond.3.i633.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.4.i634

for.cond.3.i633.PWM_RR_TO_REG.exit_crit_edge:     ; preds = %for.cond.3.i633
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.4.i634:                                  ; preds = %for.cond.3.i633
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %103)
  %cmp5.4.i = icmp ugt i32 %103, 22
  br i1 %cmp5.4.i, label %for.cond.4.i634.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.5.i635

for.cond.4.i634.PWM_RR_TO_REG.exit_crit_edge:     ; preds = %for.cond.4.i634
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.5.i635:                                  ; preds = %for.cond.4.i634
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %103)
  %cmp5.5.i = icmp ugt i32 %103, 14
  br i1 %cmp5.5.i, label %for.cond.5.i635.PWM_RR_TO_REG.exit_crit_edge, label %for.cond.6.i637

for.cond.5.i635.PWM_RR_TO_REG.exit_crit_edge:     ; preds = %for.cond.5.i635
  call void @__sanitizer_cov_trace_pc() #11
  br label %PWM_RR_TO_REG.exit

for.cond.6.i637:                                  ; preds = %for.cond.5.i635
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %103)
  %cmp5.6.i = icmp ugt i32 %103, 8
  %spec.select.i636 = select i1 %cmp5.6.i, i32 6, i32 7
  br label %PWM_RR_TO_REG.exit

PWM_RR_TO_REG.exit:                               ; preds = %for.cond.6.i637, %for.cond.5.i635.PWM_RR_TO_REG.exit_crit_edge, %for.cond.4.i634.PWM_RR_TO_REG.exit_crit_edge, %for.cond.3.i633.PWM_RR_TO_REG.exit_crit_edge, %for.cond.2.i632.PWM_RR_TO_REG.exit_crit_edge, %for.cond.1.i631.PWM_RR_TO_REG.exit_crit_edge, %if.then217.PWM_RR_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then217.PWM_RR_TO_REG.exit_crit_edge ], [ 1, %for.cond.1.i631.PWM_RR_TO_REG.exit_crit_edge ], [ 2, %for.cond.2.i632.PWM_RR_TO_REG.exit_crit_edge ], [ 3, %for.cond.3.i633.PWM_RR_TO_REG.exit_crit_edge ], [ 4, %for.cond.4.i634.PWM_RR_TO_REG.exit_crit_edge ], [ 5, %for.cond.5.i635.PWM_RR_TO_REG.exit_crit_edge ], [ %spec.select.i636, %for.cond.6.i637 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp7.i638 = icmp eq i8 %3, 1
  %and.i639 = and i32 %val.0.i628, 143
  %shl.i = shl nuw nsw i32 %i.0.lcssa.i, 4
  %or.i640 = or i32 %shl.i, %and.i639
  %and9.i641 = and i32 %val.0.i628, 248
  %or10.i = or i32 %i.0.lcssa.i, %and9.i641
  %cond.i642 = select i1 %cmp7.i638, i32 %or.i640, i32 %or10.i
  %conv224 = trunc i32 %cond.i642 to i8
  %104 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv224, ptr %arrayidx214, align 1
  br label %if.end229

if.end229:                                        ; preds = %PWM_RR_TO_REG.exit, %dme1737_read.exit630.if.end229_crit_edge
  %105 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx205, align 1
  %107 = lshr i8 %106, 5
  %108 = zext i8 %107 to i32
  %109 = lshr i32 103, %108
  %110 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp234.not = icmp eq i32 %110, 0
  br i1 %cmp234.not, label %if.end229.if.end250_crit_edge, label %if.then236

if.end229.if.end250_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.then236:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp237 = icmp slt i32 %112, 1
  %113 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx214, align 1
  %conv243 = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i645 = icmp eq i8 %3, 1
  %cond.i646 = select i1 %cmp.i645, i32 128, i32 8
  %or.i648 = or i32 %cond.i646, %conv243
  %neg.i649 = xor i32 %cond.i646, -1
  %and.i650 = and i32 %conv243, %neg.i649
  %cond1.i = select i1 %cmp237, i32 %and.i650, i32 %or.i648
  %conv245 = trunc i32 %cond1.i to i8
  %115 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv245, ptr %arrayidx214, align 1
  br label %if.end250

if.end250:                                        ; preds = %if.then236, %if.end229.if.end250_crit_edge
  %116 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx214, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %conv209, i8 noundef zeroext %117)
  br label %exit

sw.bb260:                                         ; preds = %if.end
  %118 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %119, label %if.then275 [
    i32 1, label %sw.bb260.if.end279_crit_edge
    i32 2, label %sw.bb260.if.end279_crit_edge750
    i32 4, label %sw.bb260.if.end279_crit_edge751
    i32 6, label %sw.bb260.if.end279_crit_edge752
    i32 7, label %sw.bb260.if.end279_crit_edge753
  ]

sw.bb260.if.end279_crit_edge753:                  ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

sw.bb260.if.end279_crit_edge752:                  ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

sw.bb260.if.end279_crit_edge751:                  ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

sw.bb260.if.end279_crit_edge750:                  ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

sw.bb260.if.end279_crit_edge:                     ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

if.then275:                                       ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.163, i32 noundef %119) #13
  br label %exit

if.end279:                                        ; preds = %sw.bb260.if.end279_crit_edge, %sw.bb260.if.end279_crit_edge750, %sw.bb260.if.end279_crit_edge751, %sw.bb260.if.end279_crit_edge752, %sw.bb260.if.end279_crit_edge753
  %add280 = add i8 %3, 92
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %tobool.not.i651 = icmp eq ptr %122, null
  br i1 %tobool.not.i651, label %do.body3.i665, label %if.then.i654

if.then.i654:                                     ; preds = %if.end279
  %call.i652 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %122, i8 noundef zeroext %add280) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i652)
  %cmp.i653 = icmp slt i32 %call.i652, 0
  br i1 %cmp.i653, label %do.end.i657, label %if.then.i654.dme1737_read.exit668_crit_edge

if.then.i654.dme1737_read.exit668_crit_edge:      ; preds = %if.then.i654
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit668

do.end.i657:                                      ; preds = %if.then.i654
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i655 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  %conv.i656 = zext i8 %add280 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i655, ptr noundef nonnull @.str.24, i32 noundef %conv.i656, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit668

do.body3.i665:                                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i658 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %123 = ptrtoint ptr %addr.i658 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr.i658, align 4
  %and.i659 = and i32 %124, 1048575
  %add.i660 = or i32 %and.i659, -18874368
  %125 = inttoptr i32 %add.i660 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %add280) #9, !srcloc !612
  %126 = ptrtoint ptr %addr.i658 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr.i658, align 4
  %add8.i661 = add i32 %127, 1
  %and9.i662 = and i32 %add8.i661, 1048575
  %add10.i663 = or i32 %and9.i662, -18874368
  %128 = inttoptr i32 %add10.i663 to ptr
  %129 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %128) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i664 = zext i8 %129 to i32
  br label %dme1737_read.exit668

dme1737_read.exit668:                             ; preds = %do.body3.i665, %do.end.i657, %if.then.i654.dme1737_read.exit668_crit_edge
  %val.0.i666 = phi i32 [ %call.i652, %do.end.i657 ], [ %call.i652, %if.then.i654.dme1737_read.exit668_crit_edge ], [ %conv13.i664, %do.body3.i665 ]
  %conv15.i667 = trunc i32 %val.0.i666 to i8
  %arrayidx284 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 29, i32 %conv
  %130 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv15.i667, ptr %arrayidx284, align 1
  %conv287 = lshr i32 %val.0.i666, 5
  %131 = and i32 %conv287, 7
  %132 = lshr i32 103, %131
  %133 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp289.not = icmp eq i32 %133, 0
  %134 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val, align 4
  br i1 %cmp289.not, label %if.else, label %if.then291

if.then291:                                       ; preds = %dme1737_read.exit668
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %135)
  %cmp.i671 = icmp eq i32 %135, 4
  %sub.i672 = shl i32 %135, 5
  %phi.bo.i673 = add i32 %sub.i672, 224
  %cond.i675 = select i1 %cmp.i671, i32 64, i32 %phi.bo.i673
  %and.i676 = and i32 %val.0.i666, 31
  %or.i677 = or i32 %cond.i675, %and.i676
  %conv296 = trunc i32 %or.i677 to i8
  %136 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv296, ptr %arrayidx284, align 1
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add280, i8 noundef zeroext %conv296)
  br label %exit

if.else:                                          ; preds = %dme1737_read.exit668
  call void @__sanitizer_cov_trace_pc() #11
  %conv304 = trunc i32 %135 to i8
  %arrayidx306 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 30, i32 %conv
  %137 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv304, ptr %arrayidx306, align 1
  br label %exit

sw.bb308:                                         ; preds = %if.end
  %add309 = add i8 %3, 100
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %tobool.not.i678 = icmp eq ptr %139, null
  br i1 %tobool.not.i678, label %do.body3.i692, label %if.then.i681

if.then.i681:                                     ; preds = %sw.bb308
  %call.i679 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %139, i8 noundef zeroext %add309) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i679)
  %cmp.i680 = icmp slt i32 %call.i679, 0
  br i1 %cmp.i680, label %do.end.i684, label %if.then.i681.dme1737_read.exit695_crit_edge

if.then.i681.dme1737_read.exit695_crit_edge:      ; preds = %if.then.i681
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit695

do.end.i684:                                      ; preds = %if.then.i681
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i682 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 4
  %conv.i683 = zext i8 %add309 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i682, ptr noundef nonnull @.str.24, i32 noundef %conv.i683, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit695

do.body3.i692:                                    ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i685 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %140 = ptrtoint ptr %addr.i685 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %addr.i685, align 4
  %and.i686 = and i32 %141, 1048575
  %add.i687 = or i32 %and.i686, -18874368
  %142 = inttoptr i32 %add.i687 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 %add309) #9, !srcloc !612
  %143 = ptrtoint ptr %addr.i685 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %addr.i685, align 4
  %add8.i688 = add i32 %144, 1
  %and9.i689 = and i32 %add8.i688, 1048575
  %add10.i690 = or i32 %and9.i689, -18874368
  %145 = inttoptr i32 %add10.i690 to ptr
  %146 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i691 = zext i8 %146 to i32
  br label %dme1737_read.exit695

dme1737_read.exit695:                             ; preds = %do.body3.i692, %do.end.i684, %if.then.i681.dme1737_read.exit695_crit_edge
  %val.0.i693 = phi i32 [ %call.i679, %do.end.i684 ], [ %call.i679, %if.then.i681.dme1737_read.exit695_crit_edge ], [ %conv13.i691, %do.body3.i692 ]
  %conv15.i694 = trunc i32 %val.0.i693 to i8
  %arrayidx312 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 28, i32 %conv
  %147 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv15.i694, ptr %arrayidx312, align 1
  %148 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val, align 4
  %conv315 = and i32 %val.0.i693, 255
  %add316 = add nuw nsw i32 %conv315, 1
  %div551 = lshr i32 %add316, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %div551)
  %cmp317 = icmp sgt i32 %149, %div551
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %tobool.not.i696 = icmp eq ptr %151, null
  br i1 %cmp317, label %if.then319, label %if.else326

if.then319:                                       ; preds = %dme1737_read.exit695
  br i1 %tobool.not.i696, label %do.body3.i709, label %if.then.i699

if.then.i699:                                     ; preds = %if.then319
  %call.i697 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %151, i8 noundef zeroext 98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i697)
  %cmp.i698 = icmp slt i32 %call.i697, 0
  br i1 %cmp.i698, label %do.end.i701, label %if.then.i699.dme1737_read.exit712_crit_edge

if.then.i699.dme1737_read.exit712_crit_edge:      ; preds = %if.then.i699
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit712

do.end.i701:                                      ; preds = %if.then.i699
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i700 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i700, ptr noundef nonnull @.str.24, i32 noundef 98, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit712

do.body3.i709:                                    ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i702 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %152 = ptrtoint ptr %addr.i702 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %addr.i702, align 4
  %and.i703 = and i32 %153, 1048575
  %add.i704 = or i32 %and.i703, -18874368
  %154 = inttoptr i32 %add.i704 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 98) #9, !srcloc !612
  %155 = ptrtoint ptr %addr.i702 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %addr.i702, align 4
  %add8.i705 = add i32 %156, 1
  %and9.i706 = and i32 %add8.i705, 1048575
  %add10.i707 = or i32 %and9.i706, -18874368
  %157 = inttoptr i32 %add10.i707 to ptr
  %158 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %157) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i708 = zext i8 %158 to i32
  br label %dme1737_read.exit712

dme1737_read.exit712:                             ; preds = %do.body3.i709, %do.end.i701, %if.then.i699.dme1737_read.exit712_crit_edge
  %val.0.i710 = phi i32 [ %call.i697, %do.end.i701 ], [ %call.i697, %if.then.i699.dme1737_read.exit712_crit_edge ], [ %conv13.i708, %do.body3.i709 ]
  %shl.i714 = shl i32 32, %conv
  %or.i717 = or i32 %val.0.i710, %shl.i714
  br label %if.end333

if.else326:                                       ; preds = %dme1737_read.exit695
  br i1 %tobool.not.i696, label %do.body3.i731, label %if.then.i721

if.then.i721:                                     ; preds = %if.else326
  %call.i719 = call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %151, i8 noundef zeroext 98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i719)
  %cmp.i720 = icmp slt i32 %call.i719, 0
  br i1 %cmp.i720, label %do.end.i723, label %if.then.i721.dme1737_read.exit734_crit_edge

if.then.i721.dme1737_read.exit734_crit_edge:      ; preds = %if.then.i721
  call void @__sanitizer_cov_trace_pc() #11
  br label %dme1737_read.exit734

do.end.i723:                                      ; preds = %if.then.i721
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i722 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i722, ptr noundef nonnull @.str.24, i32 noundef 98, ptr noundef nonnull @.str.27) #13
  br label %dme1737_read.exit734

do.body3.i731:                                    ; preds = %if.else326
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !611
  call void @arm_heavy_mb() #9
  %addr.i724 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %159 = ptrtoint ptr %addr.i724 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr.i724, align 4
  %and.i725 = and i32 %160, 1048575
  %add.i726 = or i32 %and.i725, -18874368
  %161 = inttoptr i32 %add.i726 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 98) #9, !srcloc !612
  %162 = ptrtoint ptr %addr.i724 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %addr.i724, align 4
  %add8.i727 = add i32 %163, 1
  %and9.i728 = and i32 %add8.i727, 1048575
  %add10.i729 = or i32 %and9.i728, -18874368
  %164 = inttoptr i32 %add10.i729 to ptr
  %165 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %164) #9, !srcloc !613
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !614
  %conv13.i730 = zext i8 %165 to i32
  br label %dme1737_read.exit734

dme1737_read.exit734:                             ; preds = %do.body3.i731, %do.end.i723, %if.then.i721.dme1737_read.exit734_crit_edge
  %val.0.i732 = phi i32 [ %call.i719, %do.end.i723 ], [ %call.i719, %if.then.i721.dme1737_read.exit734_crit_edge ], [ %conv13.i730, %do.body3.i731 ]
  %shl.i736 = shl i32 32, %conv
  %neg.i737 = xor i32 %shl.i736, -1
  %and.i738 = and i32 %val.0.i732, %neg.i737
  br label %if.end333

if.end333:                                        ; preds = %dme1737_read.exit734, %dme1737_read.exit712
  %and.i738.sink = phi i32 [ %and.i738, %dme1737_read.exit734 ], [ %or.i717, %dme1737_read.exit712 ]
  %conv330 = trunc i32 %and.i738.sink to i8
  %pwm_rr331 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 32
  %166 = ptrtoint ptr %pwm_rr331 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv330, ptr %pwm_rr331, align 1
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %tobool.not.i739 = icmp eq ptr %168, null
  br i1 %tobool.not.i739, label %do.body3.i748, label %if.then.i742

if.then.i742:                                     ; preds = %if.end333
  %call.i740 = call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %168, i8 noundef zeroext 98, i8 noundef zeroext %conv330) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i740)
  %cmp.i741 = icmp slt i32 %call.i740, 0
  br i1 %cmp.i741, label %do.end.i744, label %if.then.i742.exit_crit_edge

if.then.i742.exit_crit_edge:                      ; preds = %if.then.i742
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end.i744:                                      ; preds = %if.then.i742
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i743 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i743, ptr noundef nonnull @.str.50, i32 noundef 98, ptr noundef nonnull @.str.27) #13
  br label %exit

do.body3.i748:                                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !615
  call void @arm_heavy_mb() #9
  %addr.i745 = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 3
  %169 = ptrtoint ptr %addr.i745 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %addr.i745, align 4
  %and.i746 = and i32 %170, 1048575
  %add.i747 = or i32 %and.i746, -18874368
  %171 = inttoptr i32 %add.i747 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 98) #9, !srcloc !612
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !616
  call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %addr.i745 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %addr.i745, align 4
  %add11.i = add i32 %173, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %174 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 %conv330) #9, !srcloc !612
  br label %exit

sw.bb337:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val, align 4
  %177 = call i32 @llvm.smax.i32(i32 %176, i32 0)
  %178 = call i32 @llvm.umin.i32(i32 %177, i32 255)
  %conv352 = trunc i32 %178 to i8
  %arrayidx354 = getelementptr %struct.dme1737_data, ptr %1, i32 0, i32 28, i32 %conv
  %179 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv352, ptr %arrayidx354, align 1
  %add355 = add i8 %3, 100
  call fastcc void @dme1737_write(ptr noundef %1, i8 noundef zeroext %add355, i8 noundef zeroext %conv352)
  br label %exit

do.body360:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_pwm.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_pwm, %exit)) #9
          to label %if.then367 [label %exit], !srcloc !627

if.then367:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_pwm.__UNIQUE_ID_ddebug335, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv1) #9
  br label %exit

exit:                                             ; preds = %if.then367, %do.body360, %sw.bb337, %do.body3.i748, %do.end.i744, %if.then.i742.exit_crit_edge, %if.else, %if.then291, %if.then275, %if.end250, %if.then177, %sw.bb155.exit_crit_edge, %sw.bb141, %sw.bb127, %if.end126.exit_crit_edge, %dme1737_read.exit573.exit_crit_edge, %if.then56, %PWM_FREQ_TO_REG.exit, %sw.bb
  %count.addr.0 = phi i32 [ %count, %if.then367 ], [ %count, %sw.bb337 ], [ %count, %if.then291 ], [ %count, %if.else ], [ -22, %if.then275 ], [ %count, %if.end250 ], [ -22, %if.then56 ], [ %count, %dme1737_read.exit573.exit_crit_edge ], [ %count, %if.end126.exit_crit_edge ], [ %count, %if.then177 ], [ %count, %sw.bb155.exit_crit_edge ], [ %count, %sw.bb141 ], [ %count, %sw.bb127 ], [ %count, %PWM_FREQ_TO_REG.exit ], [ %count, %sw.bb ], [ %count, %if.then.i742.exit_crit_edge ], [ %count, %do.end.i744 ], [ %count, %do.body3.i748 ], [ %count, %do.body360 ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_chmod_file(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.dme1737_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call fastcc void @dme1737_remove_files(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @i2c_match_id(ptr noundef nonnull @dme1737_id, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call2, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name4, align 4
  %update_lock = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @dme1737_i2c_probe.__key) #9
  %call5 = tail call fastcc i32 @dme1737_init_device(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call fastcc i32 @dme1737_create_files(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.dme1737_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #13
  %7 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmon_dev, align 4
  %9 = ptrtoint ptr %8 to i32
  tail call fastcc void @dme1737_remove_files(ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end18.cleanup_crit_edge, %do.end17, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ %call12, %do.end17 ], [ %9, %do.end25 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dme1737_i2c_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  %conv6 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %conv6)
  %cmp = icmp eq i32 %conv6, 92
  %conv8 = and i32 %call4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %conv8)
  %cmp9 = icmp eq i32 %conv8, 105
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %if.else

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else:                                          ; preds = %if.end
  %and = and i32 %call4, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and)
  %cmp17 = icmp eq i32 %and, 136
  %or.cond41 = select i1 %cmp, i1 %cmp17, i1 false
  br i1 %or.cond41, label %if.else.do.end_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.else.do.end_crit_edge, %if.end.do.end_crit_edge
  %name.0 = phi ptr [ @.str.201, %if.end.do.end_crit_edge ], [ @.str, %if.else.do.end_crit_edge ]
  %cond = select i1 %cmp9, ptr @.str.204, ptr @.str.205
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %conv26 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.202, ptr noundef nonnull %cond, i32 noundef %conv26, i32 noundef %conv8) #13
  %call28 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dme1737_isa_detect(i32 noundef %sio_cip, ptr nocapture noundef writeonly %addr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !617
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %sio_cip, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 85) #9, !srcloc !612
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #9, !srcloc !612
  %add1.i = add i32 %sio_cip, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i = zext i8 %3 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %conv6.i, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %4 = zext i16 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.235)
  switch i16 %cond, label %cond.end.exit_crit_edge [
    i16 124, label %cond.end.if.end_crit_edge
    i16 125, label %cond.end.if.end_crit_edge47
    i16 127, label %cond.end.if.end_crit_edge48
    i16 134, label %cond.end.if.end_crit_edge49
  ]

cond.end.if.end_crit_edge49:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.if.end_crit_edge48:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.if.end_crit_edge47:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.exit_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %cond.end.if.end_crit_edge47, %cond.end.if.end_crit_edge48, %cond.end.if.end_crit_edge49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !620
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !621
  tail call void @arm_heavy_mb() #9
  %add4.i = add i32 %sio_cip, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %5 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 10) #9, !srcloc !612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 96) #9, !srcloc !612
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i38 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv6.i38, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !618
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 97) #9, !srcloc !612
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !619
  %conv6.i44 = zext i8 %7 to i16
  %or = or i16 %shl, %conv6.i44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool14.not = icmp eq i16 %or, 0
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #13
  br label %exit

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv19 = add i16 %or, 112
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv19, ptr %addr, align 2
  br label %exit

exit:                                             ; preds = %if.end17, %do.end, %cond.end.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end17 ], [ -19, %do.end ], [ -19, %cond.end.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !626
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !612
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dme1737_isa_device_add(i16 noundef zeroext %addr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %conv = zext i16 %addr to i32
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %2, align 4
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call3 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #9
  store ptr %call3, ptr @pdev, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = call i32 @platform_device_add_resources(ptr noundef nonnull %call3, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %call8) #13
  br label %exit_device_put

if.end16:                                         ; preds = %if.end7
  %9 = load ptr, ptr @pdev, align 4
  %call17 = call i32 @platform_device_add(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %do.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %call17) #13
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end22, %do.end13
  %err.0 = phi i32 [ %call8, %do.end13 ], [ %call17, %do.end22 ]
  %10 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %10) #9
  store ptr null, ptr @pdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end16.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 396)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 396)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !53, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !138, !140, !142, !144, !145, !147, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !165, !166, !167, !168, !169, !170, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !217, !218, !219, !220, !221, !222, !223, !224, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !239, !240, !241, !242, !243, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !267, !268, !270, !271, !273, !275, !276, !277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !288, !289, !290, !291, !293, !295, !296, !297, !298, !299, !300, !301, !303, !305, !307, !308, !310, !311, !313, !315, !317, !318, !319, !320, !321, !322, !323, !324, !326, !328, !329, !330, !331, !332, !333, !334, !336, !338, !340, !341, !342, !343, !344, !345, !346, !347, !349, !351, !353, !354, !356, !357, !359, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !373, !374, !376, !378, !379, !380, !381, !382, !383, !384, !385, !387, !389, !390, !391, !392, !393, !394, !395, !396, !398, !400, !401, !402, !403, !404, !405, !406, !407, !409, !411, !412, !413, !414, !415, !416, !417, !418, !420, !422, !423, !424, !425, !426, !427, !428, !429, !431, !433, !435, !436, !438, !439, !441, !443, !445, !447, !448, !449, !450, !452, !453, !454, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !506, !507, !508, !509, !510, !511, !513, !515, !516, !517, !518, !519, !520, !522, !523, !524, !525, !526, !527, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !551, !552, !553, !555, !557, !559, !561, !562, !563, !565, !566, !568, !569, !571, !573, !575, !576, !577, !578, !579, !580, !582, !584, !585, !586, !587, !589, !590, !591, !592, !594, !595, !596, !598, !599}
!llvm.module.flags = !{!600, !601, !602, !603, !604, !605, !606, !607}
!llvm.ident = !{!608}

!0 = !{ptr @__param_force_start, !1, !"__param_force_start", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/dme1737.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_starttype288, !1, !"__UNIQUE_ID_force_starttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_start289, !4, !"__UNIQUE_ID_force_start289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/dme1737.c", i32 37, i32 1}
!5 = !{ptr @__param_force_id, !6, !"__param_force_id", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/dme1737.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_force_idtype290, !6, !"__UNIQUE_ID_force_idtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force_id291, !9, !"__UNIQUE_ID_force_id291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/dme1737.c", i32 41, i32 1}
!10 = !{ptr @__param_probe_all_addr, !11, !"__param_probe_all_addr", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/dme1737.c", i32 44, i32 1}
!12 = !{ptr @__UNIQUE_ID_probe_all_addrtype292, !11, !"__UNIQUE_ID_probe_all_addrtype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_probe_all_addr293, !14, !"__UNIQUE_ID_probe_all_addr293", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/dme1737.c", i32 45, i32 1}
!15 = !{ptr @__UNIQUE_ID_author336, !16, !"__UNIQUE_ID_author336", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/dme1737.c", i32 2784, i32 1}
!17 = !{ptr @__UNIQUE_ID_description337, !18, !"__UNIQUE_ID_description337", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/dme1737.c", i32 2785, i32 1}
!19 = !{ptr @__UNIQUE_ID_file338, !20, !"__UNIQUE_ID_file338", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/dme1737.c", i32 2786, i32 1}
!21 = !{ptr @__UNIQUE_ID_license339, !20, !"__UNIQUE_ID_license339", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_dme1737__340_2788_dme1737_init6, !23, !"__initcall__kmod_dme1737__340_2788_dme1737_init6", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/dme1737.c", i32 2788, i32 1}
!24 = !{ptr @__exitcall_dme1737_exit, !25, !"__exitcall_dme1737_exit", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/dme1737.c", i32 2789, i32 1}
!26 = !{ptr @pdev, !27, !"pdev", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/dme1737.c", i32 32, i32 32}
!28 = !{ptr @force_start, !29, !"force_start", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/dme1737.c", i32 35, i32 13}
!30 = !{ptr @force_id, !31, !"force_id", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/dme1737.c", i32 39, i32 23}
!32 = !{ptr @probe_all_addr, !33, !"probe_all_addr", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/dme1737.c", i32 43, i32 13}
!34 = !{ptr @__param_str_force_start, !1, !"__param_str_force_start", i1 false, i1 false}
!35 = !{ptr @__param_str_force_id, !6, !"__param_str_force_id", i1 false, i1 false}
!36 = !{ptr @__param_str_probe_all_addr, !11, !"__param_str_probe_all_addr", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/dme1737.c", i32 2727, i32 11}
!39 = !{ptr @dme1737_isa_driver, !40, !"dme1737_isa_driver", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/dme1737.c", i32 2725, i32 31}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/dme1737.c", i32 2637, i32 3}
!43 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dme1737_isa_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @dme1737_isa_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/dme1737.c", i32 2676, i32 16}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/dme1737.c", i32 2678, i32 16}
!53 = !{ptr @dme1737_isa_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/dme1737.c", i32 2681, i32 2}
!55 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/dme1737.c", i32 2683, i32 2}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dme1737_isa_probe._entry.9, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dme1737_isa_probe._entry_ptr.12, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/dme1737.c", i32 2689, i32 3}
!65 = !{ptr @dme1737_isa_probe._entry.15, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dme1737_isa_probe._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/dme1737.c", i32 2696, i32 3}
!69 = !{ptr @dme1737_isa_probe._entry.18, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dme1737_isa_probe._entry_ptr.20, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/dme1737.c", i32 2703, i32 3}
!73 = !{ptr @dme1737_isa_probe._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dme1737_isa_probe._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/dme1737.c", i32 561, i32 4}
!77 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dme1737_read._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @dme1737_read._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/dme1737.c", i32 2246, i32 4}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dme1737_init_device._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dme1737_init_device._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/dme1737.c", i32 2257, i32 3}
!89 = !{ptr @dme1737_init_device._entry.30, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dme1737_init_device._entry_ptr.32, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/dme1737.c", i32 2287, i32 4}
!93 = !{ptr @dme1737_init_device._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dme1737_init_device._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/dme1737.c", i32 2315, i32 2}
!97 = !{ptr @dme1737_init_device._entry.36, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dme1737_init_device._entry_ptr.38, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/dme1737.c", i32 2328, i32 3}
!103 = !{ptr @dme1737_init_device._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dme1737_init_device._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/dme1737.c", i32 2334, i32 3}
!107 = !{ptr @dme1737_init_device._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dme1737_init_device._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/dme1737.c", i32 2351, i32 5}
!111 = !{ptr @dme1737_init_device._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @dme1737_init_device._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @IN_NOMINAL_SCH311x, !114, !"IN_NOMINAL_SCH311x", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/dme1737.c", i32 246, i32 18}
!115 = !{ptr @IN_NOMINAL_SCH5027, !116, !"IN_NOMINAL_SCH5027", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/dme1737.c", i32 248, i32 18}
!117 = !{ptr @IN_NOMINAL_SCH5127, !118, !"IN_NOMINAL_SCH5127", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/dme1737.c", i32 250, i32 18}
!119 = !{ptr @IN_NOMINAL_DME1737, !120, !"IN_NOMINAL_DME1737", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/dme1737.c", i32 244, i32 18}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/dme1737.c", i32 582, i32 4}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dme1737_write._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dme1737_write._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @PWM_EN_FROM_REG.en, !127, !"en", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/dme1737.c", i32 421, i32 19}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/dme1737.c", i32 2177, i32 3}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @dme1737_create_files._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @dme1737_create_files._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/dme1737.c", i32 1641, i32 8}
!135 = !{ptr @dev_attr_name, !134, !"dev_attr_name", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/dme1737.c", i32 1502, i32 22}
!138 = !{ptr @dme1737_group, !139, !"dme1737_group", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/dme1737.c", i32 1707, i32 37}
!140 = !{ptr @dme1737_attr, !141, !"dme1737_attr", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/dme1737.c", i32 1649, i32 26}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/dme1737.c", i32 1521, i32 1}
!144 = !{ptr @sensor_dev_attr_in0_input, !143, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/dme1737.c", i32 824, i32 3}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @show_in.__UNIQUE_ID_ddebug314, !146, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/dme1737.c", i32 827, i32 22}
!151 = distinct !{null, !152, !"DME1737_REG_IN_LSB", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/dme1737.c", i32 100, i32 17}
!153 = distinct !{null, !154, !"DME1737_REG_IN_LSB_SHL", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/dme1737.c", i32 101, i32 17}
!155 = distinct !{null, !156, !"DME1737_REG_TEMP_LSB", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/dme1737.c", i32 102, i32 17}
!157 = distinct !{null, !158, !"DME1737_REG_TEMP_LSB_SHL", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/dme1737.c", i32 103, i32 17}
!159 = !{ptr @DME1737_BIT_ALARM_IN, !160, !"DME1737_BIT_ALARM_IN", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/dme1737.c", i32 148, i32 17}
!161 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @sensor_dev_attr_in0_min, !143, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/dme1737.c", i32 858, i32 3}
!165 = !{ptr @set_in.__UNIQUE_ID_ddebug315, !164, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!166 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @sensor_dev_attr_in0_max, !143, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!168 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @sensor_dev_attr_in0_alarm, !143, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/dme1737.c", i32 1522, i32 1}
!172 = !{ptr @sensor_dev_attr_in1_input, !171, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!173 = !{ptr @.str.65, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sensor_dev_attr_in1_min, !171, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!175 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @sensor_dev_attr_in1_max, !171, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!177 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @sensor_dev_attr_in1_alarm, !171, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/dme1737.c", i32 1523, i32 1}
!181 = !{ptr @sensor_dev_attr_in2_input, !180, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!182 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @sensor_dev_attr_in2_min, !180, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!184 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @sensor_dev_attr_in2_max, !180, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!186 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @sensor_dev_attr_in2_alarm, !180, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/dme1737.c", i32 1524, i32 1}
!190 = !{ptr @sensor_dev_attr_in3_input, !189, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!191 = !{ptr @.str.73, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @sensor_dev_attr_in3_min, !189, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!193 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @sensor_dev_attr_in3_max, !189, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!195 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @sensor_dev_attr_in3_alarm, !189, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/dme1737.c", i32 1525, i32 1}
!199 = !{ptr @sensor_dev_attr_in4_input, !198, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!200 = !{ptr @.str.77, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @sensor_dev_attr_in4_min, !198, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!202 = !{ptr @.str.78, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @sensor_dev_attr_in4_max, !198, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!204 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @sensor_dev_attr_in4_alarm, !198, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!206 = !{ptr @.str.80, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/dme1737.c", i32 1526, i32 1}
!208 = !{ptr @sensor_dev_attr_in5_input, !207, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!209 = !{ptr @.str.81, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @sensor_dev_attr_in5_min, !207, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!211 = !{ptr @.str.82, !207, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sensor_dev_attr_in5_max, !207, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!213 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @sensor_dev_attr_in5_alarm, !207, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/dme1737.c", i32 1527, i32 1}
!217 = !{ptr @sensor_dev_attr_in6_input, !216, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!218 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @sensor_dev_attr_in6_min, !216, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!220 = !{ptr @.str.86, !216, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @sensor_dev_attr_in6_max, !216, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!222 = !{ptr @.str.87, !216, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @sensor_dev_attr_in6_alarm, !216, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!224 = !{ptr @.str.88, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/dme1737.c", i32 1546, i32 1}
!226 = !{ptr @sensor_dev_attr_temp1_input, !225, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/dme1737.c", i32 908, i32 3}
!229 = !{ptr @show_temp.__UNIQUE_ID_ddebug316, !228, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!230 = !{ptr @DME1737_BIT_ALARM_TEMP, !231, !"DME1737_BIT_ALARM_TEMP", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/dme1737.c", i32 149, i32 17}
!232 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @sensor_dev_attr_temp1_min, !225, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!234 = !{ptr @.str.91, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/dme1737.c", i32 947, i32 3}
!236 = !{ptr @set_temp.__UNIQUE_ID_ddebug317, !235, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!237 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @sensor_dev_attr_temp1_max, !225, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!239 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @sensor_dev_attr_temp1_alarm, !225, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!241 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @sensor_dev_attr_temp1_fault, !225, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!243 = !{ptr @.str.95, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/dme1737.c", i32 1547, i32 1}
!245 = !{ptr @sensor_dev_attr_temp2_input, !244, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!246 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @sensor_dev_attr_temp2_min, !244, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!248 = !{ptr @.str.97, !244, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @sensor_dev_attr_temp2_max, !244, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!250 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @sensor_dev_attr_temp2_alarm, !244, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!252 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @sensor_dev_attr_temp2_fault, !244, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!254 = !{ptr @.str.100, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/dme1737.c", i32 1548, i32 1}
!256 = !{ptr @sensor_dev_attr_temp3_input, !255, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!257 = !{ptr @.str.101, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @sensor_dev_attr_temp3_min, !255, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!259 = !{ptr @.str.102, !255, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @sensor_dev_attr_temp3_max, !255, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!261 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @sensor_dev_attr_temp3_alarm, !255, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!263 = !{ptr @.str.104, !255, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @sensor_dev_attr_temp3_fault, !255, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!265 = !{ptr @.str.105, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/dme1737.c", i32 1564, i32 1}
!267 = !{ptr @sensor_dev_attr_zone1_auto_point1_temp, !266, !"sensor_dev_attr_zone1_auto_point1_temp", i1 false, i1 false}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/dme1737.c", i32 1000, i32 3}
!270 = !{ptr @show_zone.__UNIQUE_ID_ddebug318, !269, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!271 = !{ptr @TEMP_RANGE, !272, !"TEMP_RANGE", i1 false, i1 false}
!272 = !{!"../drivers/hwmon/dme1737.c", i32 291, i32 18}
!273 = !{ptr @.str.107, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/dme1737.c", i32 1062, i32 3}
!275 = !{ptr @set_zone.__UNIQUE_ID_ddebug323, !274, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!276 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @sensor_dev_attr_zone1_auto_point2_temp, !266, !"sensor_dev_attr_zone1_auto_point2_temp", i1 false, i1 false}
!278 = !{ptr @.str.109, !266, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @sensor_dev_attr_zone1_auto_point3_temp, !266, !"sensor_dev_attr_zone1_auto_point3_temp", i1 false, i1 false}
!280 = !{ptr @.str.110, !266, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @sensor_dev_attr_zone1_auto_channels_temp, !266, !"sensor_dev_attr_zone1_auto_channels_temp", i1 false, i1 false}
!282 = !{ptr @.str.111, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/dme1737.c", i32 1565, i32 1}
!284 = !{ptr @sensor_dev_attr_zone2_auto_point1_temp, !283, !"sensor_dev_attr_zone2_auto_point1_temp", i1 false, i1 false}
!285 = !{ptr @.str.112, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @sensor_dev_attr_zone2_auto_point2_temp, !283, !"sensor_dev_attr_zone2_auto_point2_temp", i1 false, i1 false}
!287 = !{ptr @.str.113, !283, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @sensor_dev_attr_zone2_auto_point3_temp, !283, !"sensor_dev_attr_zone2_auto_point3_temp", i1 false, i1 false}
!289 = !{ptr @.str.114, !283, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @sensor_dev_attr_zone2_auto_channels_temp, !283, !"sensor_dev_attr_zone2_auto_channels_temp", i1 false, i1 false}
!291 = !{ptr @dme1737_temp_offset_group, !292, !"dme1737_temp_offset_group", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/dme1737.c", i32 1723, i32 37}
!293 = !{ptr @dme1737_temp_offset_attr, !294, !"dme1737_temp_offset_attr", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/dme1737.c", i32 1716, i32 26}
!295 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @sensor_dev_attr_temp1_offset, !225, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!297 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @sensor_dev_attr_temp2_offset, !244, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!299 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @sensor_dev_attr_temp3_offset, !255, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!301 = !{ptr @dme1737_vid_group, !302, !"dme1737_vid_group", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/dme1737.c", i32 1738, i32 37}
!303 = !{ptr @dme1737_vid_attr, !304, !"dme1737_vid_attr", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/dme1737.c", i32 1732, i32 26}
!305 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hwmon/dme1737.c", i32 1639, i32 8}
!307 = !{ptr @dev_attr_vrm, !306, !"dev_attr_vrm", i1 false, i1 false}
!308 = !{ptr @.str.119, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/dme1737.c", i32 1640, i32 8}
!310 = !{ptr @dev_attr_cpu0_vid, !309, !"dev_attr_cpu0_vid", i1 false, i1 false}
!311 = !{ptr @dme1737_zone3_group, !312, !"dme1737_zone3_group", i1 false, i1 false}
!312 = !{!"../drivers/hwmon/dme1737.c", i32 1755, i32 37}
!313 = !{ptr @dme1737_zone3_attr, !314, !"dme1737_zone3_attr", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/dme1737.c", i32 1747, i32 26}
!315 = !{ptr @.str.120, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/dme1737.c", i32 1566, i32 1}
!317 = !{ptr @sensor_dev_attr_zone3_auto_point1_temp, !316, !"sensor_dev_attr_zone3_auto_point1_temp", i1 false, i1 false}
!318 = !{ptr @.str.121, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @sensor_dev_attr_zone3_auto_point2_temp, !316, !"sensor_dev_attr_zone3_auto_point2_temp", i1 false, i1 false}
!320 = !{ptr @.str.122, !316, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @sensor_dev_attr_zone3_auto_point3_temp, !316, !"sensor_dev_attr_zone3_auto_point3_temp", i1 false, i1 false}
!322 = !{ptr @.str.123, !316, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @sensor_dev_attr_zone3_auto_channels_temp, !316, !"sensor_dev_attr_zone3_auto_channels_temp", i1 false, i1 false}
!324 = !{ptr @dme1737_zone_hyst_group, !325, !"dme1737_zone_hyst_group", i1 false, i1 false}
!325 = !{!"../drivers/hwmon/dme1737.c", i32 1772, i32 37}
!326 = !{ptr @dme1737_zone_hyst_attr, !327, !"dme1737_zone_hyst_attr", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/dme1737.c", i32 1765, i32 26}
!328 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @sensor_dev_attr_zone1_auto_point1_temp_hyst, !266, !"sensor_dev_attr_zone1_auto_point1_temp_hyst", i1 false, i1 false}
!330 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @sensor_dev_attr_zone2_auto_point1_temp_hyst, !283, !"sensor_dev_attr_zone2_auto_point1_temp_hyst", i1 false, i1 false}
!332 = !{ptr @.str.126, !316, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @sensor_dev_attr_zone3_auto_point1_temp_hyst, !316, !"sensor_dev_attr_zone3_auto_point1_temp_hyst", i1 false, i1 false}
!334 = !{ptr @dme1737_in7_group, !335, !"dme1737_in7_group", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/dme1737.c", i32 1789, i32 37}
!336 = !{ptr @dme1737_in7_attr, !337, !"dme1737_in7_attr", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/dme1737.c", i32 1781, i32 26}
!338 = !{ptr @.str.127, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/dme1737.c", i32 1528, i32 1}
!340 = !{ptr @sensor_dev_attr_in7_input, !339, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!341 = !{ptr @.str.128, !339, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @sensor_dev_attr_in7_min, !339, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!343 = !{ptr @.str.129, !339, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @sensor_dev_attr_in7_max, !339, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!345 = !{ptr @.str.130, !339, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @sensor_dev_attr_in7_alarm, !339, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!347 = !{ptr @dme1737_fan_group, !348, !"dme1737_fan_group", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/dme1737.c", i32 1909, i32 37}
!349 = !{ptr @dme1737_fan1_attr, !350, !"dme1737_fan1_attr", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/dme1737.c", i32 1866, i32 26}
!351 = !{ptr @.str.131, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/hwmon/dme1737.c", i32 1580, i32 1}
!353 = !{ptr @sensor_dev_attr_fan1_input, !352, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!354 = !{ptr @.str.132, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/hwmon/dme1737.c", i32 1114, i32 3}
!356 = !{ptr @show_fan.__UNIQUE_ID_ddebug324, !355, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!357 = !{ptr @FAN_MAX, !358, !"FAN_MAX", i1 false, i1 false}
!358 = !{!"../drivers/hwmon/dme1737.c", i32 380, i32 18}
!359 = !{ptr @DME1737_BIT_ALARM_FAN, !360, !"DME1737_BIT_ALARM_FAN", i1 false, i1 false}
!360 = !{!"../drivers/hwmon/dme1737.c", i32 150, i32 17}
!361 = !{ptr @.str.133, !352, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @sensor_dev_attr_fan1_min, !352, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!363 = !{ptr @.str.134, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/dme1737.c", i32 1163, i32 4}
!365 = !{ptr @.str.135, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @set_fan._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @set_fan._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @set_fan.__UNIQUE_ID_ddebug325, !369, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/dme1737.c", i32 1174, i32 3}
!370 = !{ptr @.str.136, !352, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @sensor_dev_attr_fan1_alarm, !352, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!372 = !{ptr @.str.137, !352, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @sensor_dev_attr_fan1_type, !352, !"sensor_dev_attr_fan1_type", i1 false, i1 false}
!374 = !{ptr @dme1737_fan2_attr, !375, !"dme1737_fan2_attr", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/dme1737.c", i32 1873, i32 26}
!376 = !{ptr @.str.138, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/dme1737.c", i32 1581, i32 1}
!378 = !{ptr @sensor_dev_attr_fan2_input, !377, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!379 = !{ptr @.str.139, !377, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @sensor_dev_attr_fan2_min, !377, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!381 = !{ptr @.str.140, !377, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @sensor_dev_attr_fan2_alarm, !377, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!383 = !{ptr @.str.141, !377, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @sensor_dev_attr_fan2_type, !377, !"sensor_dev_attr_fan2_type", i1 false, i1 false}
!385 = !{ptr @dme1737_fan3_attr, !386, !"dme1737_fan3_attr", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/dme1737.c", i32 1880, i32 26}
!387 = !{ptr @.str.142, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/dme1737.c", i32 1582, i32 1}
!389 = !{ptr @sensor_dev_attr_fan3_input, !388, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!390 = !{ptr @.str.143, !388, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @sensor_dev_attr_fan3_min, !388, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!392 = !{ptr @.str.144, !388, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @sensor_dev_attr_fan3_alarm, !388, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!394 = !{ptr @.str.145, !388, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @sensor_dev_attr_fan3_type, !388, !"sensor_dev_attr_fan3_type", i1 false, i1 false}
!396 = !{ptr @dme1737_fan4_attr, !397, !"dme1737_fan4_attr", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/dme1737.c", i32 1887, i32 26}
!398 = !{ptr @.str.146, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/hwmon/dme1737.c", i32 1583, i32 1}
!400 = !{ptr @sensor_dev_attr_fan4_input, !399, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!401 = !{ptr @.str.147, !399, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @sensor_dev_attr_fan4_min, !399, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!403 = !{ptr @.str.148, !399, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @sensor_dev_attr_fan4_alarm, !399, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!405 = !{ptr @.str.149, !399, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @sensor_dev_attr_fan4_type, !399, !"sensor_dev_attr_fan4_type", i1 false, i1 false}
!407 = !{ptr @dme1737_fan5_attr, !408, !"dme1737_fan5_attr", i1 false, i1 false}
!408 = !{!"../drivers/hwmon/dme1737.c", i32 1894, i32 26}
!409 = !{ptr @.str.150, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/dme1737.c", i32 1597, i32 1}
!411 = !{ptr @sensor_dev_attr_fan5_input, !410, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!412 = !{ptr @.str.151, !410, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @sensor_dev_attr_fan5_min, !410, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!414 = !{ptr @.str.152, !410, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @sensor_dev_attr_fan5_alarm, !410, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!416 = !{ptr @.str.153, !410, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @sensor_dev_attr_fan5_max, !410, !"sensor_dev_attr_fan5_max", i1 false, i1 false}
!418 = !{ptr @dme1737_fan6_attr, !419, !"dme1737_fan6_attr", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/dme1737.c", i32 1901, i32 26}
!420 = !{ptr @.str.154, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/dme1737.c", i32 1598, i32 1}
!422 = !{ptr @sensor_dev_attr_fan6_input, !421, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!423 = !{ptr @.str.155, !421, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @sensor_dev_attr_fan6_min, !421, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!425 = !{ptr @.str.156, !421, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @sensor_dev_attr_fan6_alarm, !421, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!427 = !{ptr @.str.157, !421, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @sensor_dev_attr_fan6_max, !421, !"sensor_dev_attr_fan6_max", i1 false, i1 false}
!429 = !{ptr @dme1737_pwm_group, !430, !"dme1737_pwm_group", i1 false, i1 false}
!430 = !{!"../drivers/hwmon/dme1737.c", i32 1841, i32 37}
!431 = !{ptr @dme1737_pwm1_attr, !432, !"dme1737_pwm1_attr", i1 false, i1 false}
!432 = !{!"../drivers/hwmon/dme1737.c", i32 1798, i32 26}
!433 = !{ptr @.str.158, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/hwmon/dme1737.c", i32 1620, i32 1}
!435 = !{ptr @sensor_dev_attr_pwm1, !434, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!436 = !{ptr @.str.159, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/dme1737.c", i32 1250, i32 3}
!438 = !{ptr @show_pwm.__UNIQUE_ID_ddebug326, !437, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!439 = !{ptr @PWM_FREQ, !440, !"PWM_FREQ", i1 false, i1 false}
!440 = !{!"../drivers/hwmon/dme1737.c", i32 461, i32 18}
!441 = !{ptr @PWM_RR, !442, !"PWM_RR", i1 false, i1 false}
!442 = !{!"../drivers/hwmon/dme1737.c", i32 494, i32 17}
!443 = !{ptr @PWM_ACZ_FROM_REG.acz, !444, !"acz", i1 false, i1 false}
!444 = !{!"../drivers/hwmon/dme1737.c", i32 448, i32 19}
!445 = !{ptr @.str.160, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/hwmon/dme1737.c", i32 1290, i32 4}
!447 = !{ptr @.str.161, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @set_pwm._entry, !446, !"_entry", i1 false, i1 false}
!449 = !{ptr @set_pwm._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.163, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/dme1737.c", i32 1395, i32 4}
!452 = !{ptr @set_pwm._entry.162, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @set_pwm._entry_ptr.164, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @set_pwm.__UNIQUE_ID_ddebug335, !455, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/dme1737.c", i32 1450, i32 3}
!456 = !{ptr @.str.165, !434, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @sensor_dev_attr_pwm1_freq, !434, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!458 = !{ptr @.str.166, !434, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @sensor_dev_attr_pwm1_enable, !434, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!460 = !{ptr @.str.167, !434, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @sensor_dev_attr_pwm1_ramp_rate, !434, !"sensor_dev_attr_pwm1_ramp_rate", i1 false, i1 false}
!462 = !{ptr @.str.168, !434, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @sensor_dev_attr_pwm1_auto_channels_zone, !434, !"sensor_dev_attr_pwm1_auto_channels_zone", i1 false, i1 false}
!464 = !{ptr @.str.169, !434, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !434, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!466 = !{ptr @.str.170, !434, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !434, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!468 = !{ptr @dme1737_pwm2_attr, !469, !"dme1737_pwm2_attr", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/dme1737.c", i32 1808, i32 26}
!470 = !{ptr @.str.171, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/hwmon/dme1737.c", i32 1621, i32 1}
!472 = !{ptr @sensor_dev_attr_pwm2, !471, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!473 = !{ptr @.str.172, !471, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @sensor_dev_attr_pwm2_freq, !471, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!475 = !{ptr @.str.173, !471, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @sensor_dev_attr_pwm2_enable, !471, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!477 = !{ptr @.str.174, !471, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @sensor_dev_attr_pwm2_ramp_rate, !471, !"sensor_dev_attr_pwm2_ramp_rate", i1 false, i1 false}
!479 = !{ptr @.str.175, !471, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @sensor_dev_attr_pwm2_auto_channels_zone, !471, !"sensor_dev_attr_pwm2_auto_channels_zone", i1 false, i1 false}
!481 = !{ptr @.str.176, !471, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !471, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!483 = !{ptr @.str.177, !471, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !471, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!485 = !{ptr @dme1737_pwm3_attr, !486, !"dme1737_pwm3_attr", i1 false, i1 false}
!486 = !{!"../drivers/hwmon/dme1737.c", i32 1818, i32 26}
!487 = !{ptr @.str.178, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/hwmon/dme1737.c", i32 1622, i32 1}
!489 = !{ptr @sensor_dev_attr_pwm3, !488, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!490 = !{ptr @.str.179, !488, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @sensor_dev_attr_pwm3_freq, !488, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!492 = !{ptr @.str.180, !488, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @sensor_dev_attr_pwm3_enable, !488, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!494 = !{ptr @.str.181, !488, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @sensor_dev_attr_pwm3_ramp_rate, !488, !"sensor_dev_attr_pwm3_ramp_rate", i1 false, i1 false}
!496 = !{ptr @.str.182, !488, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @sensor_dev_attr_pwm3_auto_channels_zone, !488, !"sensor_dev_attr_pwm3_auto_channels_zone", i1 false, i1 false}
!498 = !{ptr @.str.183, !488, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !488, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!500 = !{ptr @.str.184, !488, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !488, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!502 = !{ptr @dme1737_pwm5_attr, !503, !"dme1737_pwm5_attr", i1 false, i1 false}
!503 = !{!"../drivers/hwmon/dme1737.c", i32 1828, i32 26}
!504 = !{ptr @.str.185, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/hwmon/dme1737.c", i32 1634, i32 1}
!506 = !{ptr @sensor_dev_attr_pwm5, !505, !"sensor_dev_attr_pwm5", i1 false, i1 false}
!507 = !{ptr @.str.186, !505, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @sensor_dev_attr_pwm5_freq, !505, !"sensor_dev_attr_pwm5_freq", i1 false, i1 false}
!509 = !{ptr @.str.187, !505, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @sensor_dev_attr_pwm5_enable, !505, !"sensor_dev_attr_pwm5_enable", i1 false, i1 false}
!511 = !{ptr @dme1737_pwm6_attr, !512, !"dme1737_pwm6_attr", i1 false, i1 false}
!512 = !{!"../drivers/hwmon/dme1737.c", i32 1834, i32 26}
!513 = !{ptr @.str.188, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/hwmon/dme1737.c", i32 1635, i32 1}
!515 = !{ptr @sensor_dev_attr_pwm6, !514, !"sensor_dev_attr_pwm6", i1 false, i1 false}
!516 = !{ptr @.str.189, !514, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @sensor_dev_attr_pwm6_freq, !514, !"sensor_dev_attr_pwm6_freq", i1 false, i1 false}
!518 = !{ptr @.str.190, !514, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @sensor_dev_attr_pwm6_enable, !514, !"sensor_dev_attr_pwm6_enable", i1 false, i1 false}
!520 = !{ptr @dme1737_auto_pwm_min_attr, !521, !"dme1737_auto_pwm_min_attr", i1 false, i1 false}
!521 = !{!"../drivers/hwmon/dme1737.c", i32 1855, i32 26}
!522 = !{ptr @.str.191, !434, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @sensor_dev_attr_pwm1_auto_pwm_min, !434, !"sensor_dev_attr_pwm1_auto_pwm_min", i1 false, i1 false}
!524 = !{ptr @.str.192, !471, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @sensor_dev_attr_pwm2_auto_pwm_min, !471, !"sensor_dev_attr_pwm2_auto_pwm_min", i1 false, i1 false}
!526 = !{ptr @.str.193, !488, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @sensor_dev_attr_pwm3_auto_pwm_min, !488, !"sensor_dev_attr_pwm3_auto_pwm_min", i1 false, i1 false}
!528 = !{ptr @dme1737_zone_chmod_group, !529, !"dme1737_zone_chmod_group", i1 false, i1 false}
!529 = !{!"../drivers/hwmon/dme1737.c", i32 1932, i32 37}
!530 = !{ptr @dme1737_zone_chmod_attr, !531, !"dme1737_zone_chmod_attr", i1 false, i1 false}
!531 = !{!"../drivers/hwmon/dme1737.c", i32 1922, i32 26}
!532 = !{ptr @dme1737_zone3_chmod_group, !533, !"dme1737_zone3_chmod_group", i1 false, i1 false}
!533 = !{!"../drivers/hwmon/dme1737.c", i32 1948, i32 37}
!534 = !{ptr @dme1737_zone3_chmod_attr, !535, !"dme1737_zone3_chmod_attr", i1 false, i1 false}
!535 = !{!"../drivers/hwmon/dme1737.c", i32 1941, i32 26}
!536 = !{ptr @dme1737_pwm_chmod_group, !537, !"dme1737_pwm_chmod_group", i1 false, i1 false}
!537 = !{!"../drivers/hwmon/dme1737.c", i32 1992, i32 37}
!538 = !{ptr @dme1737_pwm1_chmod_attr, !539, !"dme1737_pwm1_chmod_attr", i1 false, i1 false}
!539 = !{!"../drivers/hwmon/dme1737.c", i32 1957, i32 26}
!540 = !{ptr @dme1737_pwm2_chmod_attr, !541, !"dme1737_pwm2_chmod_attr", i1 false, i1 false}
!541 = !{!"../drivers/hwmon/dme1737.c", i32 1965, i32 26}
!542 = !{ptr @dme1737_pwm3_chmod_attr, !543, !"dme1737_pwm3_chmod_attr", i1 false, i1 false}
!543 = !{!"../drivers/hwmon/dme1737.c", i32 1973, i32 26}
!544 = !{ptr @dme1737_pwm5_chmod_attr, !545, !"dme1737_pwm5_chmod_attr", i1 false, i1 false}
!545 = !{!"../drivers/hwmon/dme1737.c", i32 1981, i32 26}
!546 = !{ptr @dme1737_pwm6_chmod_attr, !547, !"dme1737_pwm6_chmod_attr", i1 false, i1 false}
!547 = !{!"../drivers/hwmon/dme1737.c", i32 1986, i32 26}
!548 = !{ptr @.str.194, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/hwmon/dme1737.c", i32 2047, i32 3}
!550 = !{ptr @.str.195, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @dme1737_chmod_file._entry, !549, !"_entry", i1 false, i1 false}
!552 = !{ptr @dme1737_chmod_file._entry_ptr, !549, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @dme1737_pwm_chmod_attr, !554, !"dme1737_pwm_chmod_attr", i1 false, i1 false}
!554 = !{!"../drivers/hwmon/dme1737.c", i32 2005, i32 26}
!555 = !{ptr @dme1737_i2c_driver, !556, !"dme1737_i2c_driver", i1 false, i1 false}
!556 = !{!"../drivers/hwmon/dme1737.c", i32 2528, i32 26}
!557 = !{ptr @dme1737_i2c_probe.__key, !558, !"__key", i1 false, i1 false}
!558 = !{!"../drivers/hwmon/dme1737.c", i32 2480, i32 2}
!559 = !{ptr @.str.196, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/hwmon/dme1737.c", i32 2485, i32 3}
!561 = !{ptr @dme1737_i2c_probe._entry, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @dme1737_i2c_probe._entry_ptr, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @dme1737_i2c_probe._entry.197, !564, !"_entry", i1 false, i1 false}
!564 = !{!"../drivers/hwmon/dme1737.c", i32 2492, i32 3}
!565 = !{ptr @dme1737_i2c_probe._entry_ptr.198, !564, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @dme1737_i2c_probe._entry.199, !567, !"_entry", i1 false, i1 false}
!567 = !{!"../drivers/hwmon/dme1737.c", i32 2499, i32 3}
!568 = !{ptr @dme1737_i2c_probe._entry_ptr.200, !567, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @dme1737_id, !570, !"dme1737_id", i1 false, i1 false}
!570 = !{!"../drivers/hwmon/dme1737.c", i32 2521, i32 35}
!571 = !{ptr @.str.201, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/hwmon/dme1737.c", i32 2448, i32 10}
!573 = !{ptr @.str.202, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/hwmon/dme1737.c", i32 2456, i32 2}
!575 = !{ptr @.str.203, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @dme1737_i2c_detect._entry, !574, !"_entry", i1 false, i1 false}
!577 = !{ptr @dme1737_i2c_detect._entry_ptr, !574, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.204, !574, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @.str.205, !574, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @normal_i2c, !581, !"normal_i2c", i1 false, i1 false}
!581 = !{!"../drivers/hwmon/dme1737.c", i32 49, i32 29}
!582 = !{ptr @.str.206, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/hwmon/dme1737.c", i32 2569, i32 3}
!584 = !{ptr @.str.207, !583, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @dme1737_isa_detect._entry, !583, !"_entry", i1 false, i1 false}
!586 = !{ptr @dme1737_isa_detect._entry_ptr, !583, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.208, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/hwmon/dme1737.c", i32 2601, i32 3}
!589 = !{ptr @.str.209, !588, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @dme1737_isa_device_add._entry, !588, !"_entry", i1 false, i1 false}
!591 = !{ptr @dme1737_isa_device_add._entry_ptr, !588, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.211, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/hwmon/dme1737.c", i32 2608, i32 3}
!594 = !{ptr @dme1737_isa_device_add._entry.210, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @dme1737_isa_device_add._entry_ptr.212, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.214, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/hwmon/dme1737.c", i32 2614, i32 3}
!598 = !{ptr @dme1737_isa_device_add._entry.213, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @dme1737_isa_device_add._entry_ptr.215, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{i32 1, !"wchar_size", i32 2}
!601 = !{i32 1, !"min_enum_size", i32 4}
!602 = !{i32 8, !"branch-target-enforcement", i32 0}
!603 = !{i32 8, !"sign-return-address", i32 0}
!604 = !{i32 8, !"sign-return-address-all", i32 0}
!605 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!606 = !{i32 7, !"uwtable", i32 1}
!607 = !{i32 7, !"frame-pointer", i32 2}
!608 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!609 = !{!"auto-init"}
!610 = !{i8 0, i8 2}
!611 = !{i64 2155710642}
!612 = !{i64 6900350}
!613 = !{i64 6900745}
!614 = !{i64 2155711050}
!615 = !{i64 2155713051}
!616 = !{i64 2155713385}
!617 = !{i64 2156085624}
!618 = !{i64 2156086611}
!619 = !{i64 2156087010}
!620 = !{i64 2156087387}
!621 = !{i64 2156087715}
!622 = !{i64 2156109982}
!623 = !{i64 2156110285}
!624 = !{i64 2156110589}
!625 = !{i64 2156110892}
!626 = !{i64 2156086118}
!627 = !{i64 2149030734, i64 2149030739, i64 2149030752, i64 2149030796, i64 2149030830, i64 2149030851}
